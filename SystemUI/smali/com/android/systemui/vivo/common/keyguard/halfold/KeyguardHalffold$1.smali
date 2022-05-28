.class Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold$1;
.super Landroid/os/Handler;
.source "KeyguardHalffold.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 58
    iget v0, p1, Landroid/os/Message;->what:I

    .line 59
    .local v0, "what":I
    packed-switch v0, :pswitch_data_0

    .line 65
    :goto_0
    return-void

    .line 61
    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->refreshInCallViews()V

    .line 62
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/keyguard/halfold/KeyguardHalffold;->refreshMsgViews()V

    goto :goto_0

    .line 59
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
