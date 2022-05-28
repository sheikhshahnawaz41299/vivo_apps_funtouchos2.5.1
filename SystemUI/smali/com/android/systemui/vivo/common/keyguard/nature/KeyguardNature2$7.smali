.class Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardNature2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->showIconSelector(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)V
    .locals 0

    .prologue
    .line 784
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$7;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 8
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 786
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$7;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$1600(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Landroid/widget/RelativeLayout;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 787
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$7;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$1200(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 789
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 790
    .local v0, "animContinue":Landroid/animation/AnimatorSet;
    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 791
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$7;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v4}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$1700(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;

    move-result-object v4

    const-string v5, "alpha"

    new-array v6, v1, [F

    aput v7, v6, v2

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v2

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$7;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v4}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$1800(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Landroid/widget/TextView;

    move-result-object v4

    const-string v5, "alpha"

    new-array v6, v1, [F

    aput v7, v6, v2

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 793
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 794
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$7;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$1900(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$7;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$2000(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 795
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$7;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    const/16 v4, 0xc8

    invoke-static {v3, v1, v4}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$2100(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;ZI)V

    .line 799
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$7;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$2300(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->removeAllViews()V

    .line 800
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$7;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$2400(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 801
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$7;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v3, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$400(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;Z)V

    .line 803
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$7;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$7;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v4}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$300(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$7;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v4}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$1400(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Z

    move-result v4

    if-nez v4, :cond_3

    :goto_1
    invoke-static {v3, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$2500(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;Z)V

    .line 804
    return-void

    .line 797
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$7;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v3, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$2200(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;Z)V

    goto :goto_0

    :cond_3
    move v1, v2

    .line 803
    goto :goto_1
.end method
