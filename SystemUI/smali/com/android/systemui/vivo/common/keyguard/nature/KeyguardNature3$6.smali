.class Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$6;
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
    .line 610
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$6;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    .line 624
    const-string v0, "KeyguardNature3"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOnlyAffordanceInThisMotion = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$6;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$2800(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCancleDismiss = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$6;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$2900(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$6;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$2800(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 627
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$6;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$3000(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 628
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$6;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$3002(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;Z)Z

    .line 635
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$6;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$3200(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 636
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$6;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v0, v3}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$3302(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;Z)Z

    .line 637
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$6;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$2500(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$6;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$2600(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$6;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$900(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->ifShowLiveWallpaper()Z

    move-result v0

    if-nez v0, :cond_1

    .line 640
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$6;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v0, v3}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$3400(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;Z)V

    .line 641
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$6;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$6;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$3500(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$6;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$3600(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Lcom/android/systemui/vivo/common/keyguard/nature/widget/MovableDrawable;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$3700(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;Landroid/view/View;Lcom/android/systemui/vivo/common/keyguard/nature/widget/MovableDrawable;)V

    .line 642
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$6;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$2700(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 643
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$6;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$2700(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 646
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$6;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$3800(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 647
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$6;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v0, v3}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$3900(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;Z)V

    .line 648
    return-void

    .line 629
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$6;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$2900(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 630
    const-string v0, "KeyguardNature3"

    const-string v1, "unlock anim dismiss keyguard"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$6;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v0, v3}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$3102(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;Z)Z

    .line 632
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$6;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->dismiss()V

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 613
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$6;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v0, v3}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$2402(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;Z)Z

    .line 614
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$6;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$2500(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$6;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$2600(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$6;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$2700(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 616
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$6;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$2700(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 618
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$6;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v0, v2, v3}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$2300(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;FZ)V

    .line 621
    :cond_0
    return-void
.end method
