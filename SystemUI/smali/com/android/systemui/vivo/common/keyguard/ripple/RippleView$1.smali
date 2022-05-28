.class Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView$1;
.super Landroid/os/Handler;
.source "RippleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 44
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 51
    :goto_0
    return-void

    .line 46
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;

    iget v1, p1, Landroid/os/Message;->arg1:I

    int-to-float v1, v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->drop(FF)V

    goto :goto_0

    .line 44
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
