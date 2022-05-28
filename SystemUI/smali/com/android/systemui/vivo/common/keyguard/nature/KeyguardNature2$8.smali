.class Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$8;
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
    .line 829
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$8;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 8
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 831
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$8;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$1800(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 832
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$8;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$2600(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 833
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$8;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$2700(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->setVisibility(I)V

    .line 834
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 835
    .local v0, "anim":Landroid/animation/AnimatorSet;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 836
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$8;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$2600(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, "alpha"

    new-array v4, v6, [F

    aput v7, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$8;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$2700(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    move-result-object v2

    const-string v3, "alpha"

    new-array v4, v6, [F

    aput v7, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 838
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 839
    return-void
.end method
