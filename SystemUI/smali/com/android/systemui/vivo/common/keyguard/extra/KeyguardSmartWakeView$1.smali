.class Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView$1;
.super Landroid/os/Handler;
.source "KeyguardSmartWakeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 83
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 84
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 86
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->access$000(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->access$002(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;Z)Z

    .line 89
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->access$100(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;)Landroid/os/PowerManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->access$200(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;)I

    move-result v0

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->access$100(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->goToSleep(J)V

    goto :goto_0

    .line 94
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->access$200(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;)I

    move-result v0

    if-nez v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->access$300(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;Z)V

    goto :goto_0

    .line 97
    :cond_1
    const-string v0, "KeyguardSmartWakeView"

    const-string v1, "phone is busy,do nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
