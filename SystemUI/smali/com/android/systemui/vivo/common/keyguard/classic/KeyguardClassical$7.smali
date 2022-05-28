.class Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardClassical.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->notificationAnim(ZZ)V
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
    .line 423
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical$7;->this$0:Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical$7;->this$0:Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->updateBgView(Z)V

    .line 427
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical$7;->this$0:Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->access$100(Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 428
    return-void
.end method
