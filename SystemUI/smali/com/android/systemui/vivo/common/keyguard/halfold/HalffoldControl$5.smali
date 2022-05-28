.class Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$5;
.super Landroid/os/Handler;
.source "HalffoldControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;)V
    .locals 0

    .prologue
    .line 582
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$5;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 585
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$5;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handle message, msg is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$100(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;Ljava/lang/String;)V

    .line 586
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 604
    :goto_0
    return-void

    .line 588
    :sswitch_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$5;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->onUnlockDeviceAndRecycle()V

    goto :goto_0

    .line 591
    :sswitch_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$5;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$2100(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;)V

    .line 592
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$5;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    const-wide/16 v2, 0x64

    invoke-static {v0, v2, v3}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$302(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;J)J

    .line 593
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$5;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    iput-boolean v4, v0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->isShoting:Z

    goto :goto_0

    .line 596
    :sswitch_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$5;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$500(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xde

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 597
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$5;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-static {v0, v4}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$2202(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;Z)Z

    .line 598
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$5;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-static {v0, v4}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$2000(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;I)V

    .line 599
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$5;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->startChargingAnimation()V

    goto :goto_0

    .line 586
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_1
        0xde -> :sswitch_2
    .end sparse-switch
.end method
