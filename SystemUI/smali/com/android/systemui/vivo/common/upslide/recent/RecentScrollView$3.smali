.class Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RecentScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->startThrowAnimation(Landroid/view/View;Landroid/view/View;IF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;

.field final synthetic val$removeView:Landroid/view/View;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 462
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$3;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;

    iput-object p2, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$3;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$3;->val$removeView:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 10
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const-wide/16 v8, 0xc8

    const v3, 0x3f4ccccd    # 0.8f

    const/4 v6, 0x0

    .line 471
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$3;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->access$500(Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 472
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$3;->val$view:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 475
    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 476
    .local v0, "animator":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 477
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 478
    new-instance v1, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$3$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$3$1;-><init>(Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$3;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 484
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 487
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$3;->val$view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$3;->val$view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    iget-object v5, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$3;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;

    invoke-static {v5}, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->access$900(Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;)F

    move-result v5

    mul-float/2addr v4, v5

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-static {}, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->access$1000()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$3$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$3$3;-><init>(Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$3;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$3$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$3$2;-><init>(Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$3;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 517
    return-void

    .line 475
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$3;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->access$002(Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;Z)Z

    .line 467
    return-void
.end method
