.class Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardClassical.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->bouncerChangedAnim(Z)V
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
    .line 379
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical$4;->this$0:Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 382
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical$4;->this$0:Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->access$100(Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 383
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical$4;->this$0:Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;

    invoke-virtual {v0, v2}, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->updateBgView(Z)V

    .line 384
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical$4;->this$0:Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->access$400(Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 385
    return-void
.end method
