.class Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$3;
.super Landroid/os/Handler;
.source "KeyguardNature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 274
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 275
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 286
    :goto_0
    return-void

    .line 277
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->access$1100(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;)V

    goto :goto_0

    .line 280
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->access$1200(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;)V

    goto :goto_0

    .line 283
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->access$1300(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;)V

    goto :goto_0

    .line 275
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
