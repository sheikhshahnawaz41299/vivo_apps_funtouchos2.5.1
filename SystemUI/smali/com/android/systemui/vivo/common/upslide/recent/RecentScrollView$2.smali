.class Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RecentScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->startBackoffAnimation(Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;)V
    .locals 0

    .prologue
    .line 435
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$2;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 444
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$2;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->access$100(Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f11027e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 445
    .local v1, "textView":Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v4, 0x32

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 447
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$2;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->access$100(Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f11027b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 448
    .local v0, "imageView":Landroid/widget/ImageView;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 449
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$2;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->access$300(Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;)V

    .line 450
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$2;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->access$400(Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x3e9

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 451
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 439
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$2;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->access$002(Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;Z)Z

    .line 440
    return-void
.end method
