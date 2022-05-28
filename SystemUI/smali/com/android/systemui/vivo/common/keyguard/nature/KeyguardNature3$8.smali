.class Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardNature3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->fling(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)V
    .locals 0

    .prologue
    .line 674
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$8;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 7
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/16 v6, 0x8

    const/4 v0, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 693
    const-string v2, "KeyguardNature3"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mTouchCancelFling = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$8;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v4}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$4600(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mTouchOnShortcut = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$8;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v4}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$4000(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mIsSecureCameraLauching = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$8;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v4}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$4700(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$8;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$4600(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 695
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$8;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$4602(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;Z)Z

    .line 696
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$8;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$2402(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;Z)Z

    .line 715
    :goto_0
    return-void

    .line 700
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$8;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$4200(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$8;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$4300(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$8;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$100(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 701
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$8;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$2700(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setAlpha(F)V

    .line 702
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$8;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$2700(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 704
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$8;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$4000(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 705
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$8;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$3800(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 706
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$8;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$4800(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setAlpha(F)V

    .line 707
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$8;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$4800(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 710
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$8;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$4900(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 711
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$8;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v2, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$5000(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;Z)V

    .line 713
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$8;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$8;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$1400(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$8;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$1500(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Z

    move-result v3

    if-nez v3, :cond_4

    :goto_1
    invoke-static {v2, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$5100(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;Z)V

    .line 714
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$8;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$3900(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;Z)V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 713
    goto :goto_1
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 677
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$8;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$2402(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;Z)Z

    .line 678
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$8;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$4000(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 679
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$8;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$4102(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;Z)Z

    .line 681
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$8;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$2500(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$8;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$2600(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$8;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$4000(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 682
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$8;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$2700(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 683
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$8;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$2700(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 685
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$8;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$4200(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$8;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$4300(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$8;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$100(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 686
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$8;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v0, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$4400(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;Z)V

    .line 687
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$8;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$8;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$3500(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$8;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$4500(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Lcom/android/systemui/vivo/common/keyguard/nature/widget/MovableDrawable;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$3700(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;Landroid/view/View;Lcom/android/systemui/vivo/common/keyguard/nature/widget/MovableDrawable;)V

    .line 689
    :cond_2
    return-void
.end method
