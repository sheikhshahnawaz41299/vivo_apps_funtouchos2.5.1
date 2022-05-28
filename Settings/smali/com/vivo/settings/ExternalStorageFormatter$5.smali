.class Lcom/vivo/settings/ExternalStorageFormatter$5;
.super Ljava/lang/Thread;
.source "ExternalStorageFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/settings/ExternalStorageFormatter;->stopInner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/ExternalStorageFormatter;


# direct methods
.method constructor <init>(Lcom/vivo/settings/ExternalStorageFormatter;)V
    .locals 0

    .prologue
    .line 479
    iput-object p1, p0, Lcom/vivo/settings/ExternalStorageFormatter$5;->this$0:Lcom/vivo/settings/ExternalStorageFormatter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 481
    const-string v0, "Settings.ESF"

    const-string v1, "send socket msg"

    invoke-static {v0, v1}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    invoke-static {}, Lcom/vivo/settings/SocketClient;->clearNetworkLock()Z

    .line 483
    const-string v0, "Settings.ESF"

    const-string v1, "send master clear msg"

    invoke-static {v0, v1}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    iget-object v0, p0, Lcom/vivo/settings/ExternalStorageFormatter$5;->this$0:Lcom/vivo/settings/ExternalStorageFormatter;

    invoke-static {v0}, Lcom/vivo/settings/ExternalStorageFormatter;->access$400(Lcom/vivo/settings/ExternalStorageFormatter;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 485
    return-void
.end method
