.class Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiHandler;
.super Landroid/os/Handler;
.source "NetworkControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WifiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;)V
    .locals 0

    .prologue
    .line 996
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 999
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 1015
    :goto_0
    return-void

    .line 1001
    :sswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_0

    .line 1002
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->access$300(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x11001

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 1005
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mTag:Ljava/lang/String;

    const-string v1, "Failed to connect to wifi"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1009
    :sswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->setActivity(I)V

    goto :goto_0

    .line 999
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x11000 -> :sswitch_0
    .end sparse-switch
.end method
