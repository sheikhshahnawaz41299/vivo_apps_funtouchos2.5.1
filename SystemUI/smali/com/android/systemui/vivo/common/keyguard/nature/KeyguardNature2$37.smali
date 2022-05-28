.class Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$37;
.super Ljava/lang/Object;
.source "KeyguardNature2.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->hideQuickChargeViewWithAnim(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

.field final synthetic val$reason:I


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;I)V
    .locals 0

    .prologue
    .line 2723
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$37;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    iput p2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$37;->val$reason:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2766
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 2727
    sget-object v0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->TAG:Ljava/lang/String;

    const-string v1, "hideQuickChargeView onAnimationEnd"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2728
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$37;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v0, v4}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$8100(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;Z)V

    .line 2729
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$37;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$8200(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->setVisibility(I)V

    .line 2730
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$37;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$8300(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->setAlpha(F)V

    .line 2731
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$37;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$8400(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->setTranslationY(F)V

    .line 2732
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$37;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$1800(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2733
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$37;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$1800(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 2734
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$37;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$4600(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2735
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$37;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$3800(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 2736
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$37;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$3800(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2738
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$37;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$8500(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    .line 2739
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$37;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$8500(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 2740
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$37;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$8600(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)V

    .line 2741
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$37;->val$reason:I

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->hideNormalChargeView(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2742
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$37;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$8700(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)V

    .line 2746
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$37;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v0, v4}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$8902(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;Z)Z

    .line 2747
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$37;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$9002(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 2748
    return-void

    .line 2744
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$37;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$8800(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2770
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 2752
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$37;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$8500(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 2753
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$37;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$8500(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2755
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$37;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$4600(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2756
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$37;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-virtual {v0, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->updateBgView(Z)V

    .line 2757
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$37;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$3800(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2758
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$37;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$3800(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2762
    :cond_0
    return-void
.end method
