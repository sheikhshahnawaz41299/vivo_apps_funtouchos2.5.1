.class Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple$1;
.super Landroid/os/Handler;
.source "KeyguardRipple.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 89
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 106
    :goto_0
    :pswitch_0
    return-void

    .line 91
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->refreshInCallViews()V

    .line 92
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->refreshMsgViews()V

    goto :goto_0

    .line 95
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->access$000(Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;)V

    goto :goto_0

    .line 98
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->access$101(Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;)V

    goto :goto_0

    .line 101
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->access$200(Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;)V

    goto :goto_0

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
