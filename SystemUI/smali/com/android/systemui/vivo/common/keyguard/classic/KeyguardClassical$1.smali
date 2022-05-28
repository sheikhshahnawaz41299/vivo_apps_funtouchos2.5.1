.class Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical$1;
.super Landroid/os/Handler;
.source "KeyguardClassical.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 69
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 74
    :goto_0
    return-void

    .line 71
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->access$000(Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;)V

    goto :goto_0

    .line 69
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
