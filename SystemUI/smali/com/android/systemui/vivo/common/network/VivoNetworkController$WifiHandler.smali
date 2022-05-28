.class Lcom/android/systemui/vivo/common/network/VivoNetworkController$WifiHandler;
.super Landroid/os/Handler;
.source "VivoNetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/network/VivoNetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WifiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/network/VivoNetworkController;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/network/VivoNetworkController;)V
    .locals 0

    .prologue
    .line 404
    iput-object p1, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController$WifiHandler;->this$0:Lcom/android/systemui/vivo/common/network/VivoNetworkController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 407
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 425
    :cond_0
    :goto_0
    return-void

    .line 409
    :sswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_1

    .line 410
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController$WifiHandler;->this$0:Lcom/android/systemui/vivo/common/network/VivoNetworkController;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->access$000(Lcom/android/systemui/vivo/common/network/VivoNetworkController;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x11001

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 412
    :cond_1
    const-string v0, "VivoNetworkController"

    const-string v1, "Failed to connect to wifi"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 416
    :sswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController$WifiHandler;->this$0:Lcom/android/systemui/vivo/common/network/VivoNetworkController;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->access$100(Lcom/android/systemui/vivo/common/network/VivoNetworkController;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 417
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController$WifiHandler;->this$0:Lcom/android/systemui/vivo/common/network/VivoNetworkController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->access$102(Lcom/android/systemui/vivo/common/network/VivoNetworkController;I)I

    .line 418
    iget-object v0, p0, Lcom/android/systemui/vivo/common/network/VivoNetworkController$WifiHandler;->this$0:Lcom/android/systemui/vivo/common/network/VivoNetworkController;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->access$200(Lcom/android/systemui/vivo/common/network/VivoNetworkController;)V

    goto :goto_0

    .line 407
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x11000 -> :sswitch_0
    .end sparse-switch
.end method
