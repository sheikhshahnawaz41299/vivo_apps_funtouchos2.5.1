.class Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$3$1;
.super Ljava/lang/Object;
.source "RecentScrollView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$3;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$3;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$3;)V
    .locals 0

    .prologue
    .line 478
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$3$1;->this$1:Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 481
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$3$1;->this$1:Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$3;

    iget-object v0, v0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$3;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->access$400(Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$TranslationTask;

    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$3$1;->this$1:Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$3;

    iget-object v3, v0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$3;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {v2, v3, v0}, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$TranslationTask;-><init>(Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;F)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 482
    return-void
.end method
