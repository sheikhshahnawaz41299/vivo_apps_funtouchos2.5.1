.class Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView$1;
.super Landroid/os/Handler;
.source "KeyguardCarrierInfoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 56
    iget v0, p1, Landroid/os/Message;->what:I

    .line 57
    .local v0, "what":I
    packed-switch v0, :pswitch_data_0

    .line 62
    :goto_0
    return-void

    .line 59
    :pswitch_0
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;->access$000(Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;ILjava/lang/String;)V

    goto :goto_0

    .line 57
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
