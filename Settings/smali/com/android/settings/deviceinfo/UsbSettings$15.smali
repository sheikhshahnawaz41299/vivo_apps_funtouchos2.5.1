.class Lcom/android/settings/deviceinfo/UsbSettings$15;
.super Ljava/lang/Thread;
.source "UsbSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/UsbSettings;->installVivoAssistant()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/UsbSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/UsbSettings;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 915
    iput-object p1, p0, Lcom/android/settings/deviceinfo/UsbSettings$15;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 917
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings$15;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/UsbSettings;->access$2400(Lcom/android/settings/deviceinfo/UsbSettings;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 918
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings$15;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/UsbSettings;->access$2500(Lcom/android/settings/deviceinfo/UsbSettings;)Lcom/vivo/pctools/helper/server/RemoteServiceConnection;

    move-result-object v1

    const-string v2, "PCTools"

    invoke-virtual {v1, v2, v4}, Lcom/vivo/pctools/helper/server/RemoteServiceConnection;->installApp(Ljava/lang/String;I)I

    move-result v0

    .line 920
    .local v0, "result":I
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings$15;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/UsbSettings;->access$2400(Lcom/android/settings/deviceinfo/UsbSettings;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 921
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings$15;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/UsbSettings;->access$2400(Lcom/android/settings/deviceinfo/UsbSettings;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 924
    :cond_0
    const-string v1, "UsbSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    const/4 v1, -0x3

    if-ne v0, v1, :cond_1

    .line 926
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings$15;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/UsbSettings;->access$2400(Lcom/android/settings/deviceinfo/UsbSettings;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 927
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings$15;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/UsbSettings;->access$2400(Lcom/android/settings/deviceinfo/UsbSettings;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 934
    :goto_0
    return-void

    .line 928
    :cond_1
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    if-ne v0, v5, :cond_3

    .line 930
    :cond_2
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings$15;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/UsbSettings;->access$2400(Lcom/android/settings/deviceinfo/UsbSettings;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 932
    :cond_3
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings$15;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/UsbSettings;->access$2400(Lcom/android/settings/deviceinfo/UsbSettings;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
