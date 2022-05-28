.class Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardNature2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->switchNameInfo()V
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
    .line 844
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$9;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 8
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v4, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 846
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$9;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$2600(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 847
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$9;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$2700(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->setVisibility(I)V

    .line 848
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$9;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$1800(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 849
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 850
    .local v0, "anim":Landroid/animation/AnimatorSet;
    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 851
    new-array v3, v1, [Landroid/animation/Animator;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$9;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v4}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$1800(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Landroid/widget/TextView;

    move-result-object v4

    const-string v5, "alpha"

    new-array v6, v1, [F

    const/high16 v7, 0x3f800000    # 1.0f

    aput v7, v6, v2

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 852
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 853
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$9;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$9;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v4}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$300(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$9;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v4}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$1400(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Z

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    invoke-static {v3, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$2500(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;Z)V

    .line 854
    return-void

    :cond_0
    move v1, v2

    .line 853
    goto :goto_0
.end method
