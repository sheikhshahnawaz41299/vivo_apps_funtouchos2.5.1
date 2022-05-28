.class Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$3$2;
.super Ljava/lang/Object;
.source "RecentScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 503
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$3$2;->this$1:Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 506
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$3$2;->this$1:Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$3;

    iget-object v0, v0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$3;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$3$2;->this$1:Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$3;

    iget-object v1, v1, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$3;->val$removeView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->access$600(Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;Landroid/view/View;)V

    .line 507
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$3$2;->this$1:Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$3;

    iget-object v0, v0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$3;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->access$700(Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;)Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->dismissPopupToolbar()V

    .line 508
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$3$2;->this$1:Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$3;

    iget-object v0, v0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$3;->val$view:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 509
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$3$2;->this$1:Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$3;

    iget-object v0, v0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$3;->val$view:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    .line 510
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$3$2;->this$1:Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$3;

    iget-object v0, v0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$3;->val$view:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 511
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$3$2;->this$1:Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$3;

    iget-object v0, v0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$3;->val$view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    .line 512
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$3$2;->this$1:Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$3;

    iget-object v0, v0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$3;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->access$300(Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;)V

    .line 513
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$3$2;->this$1:Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$3;

    iget-object v0, v0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$3;->this$0:Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->access$400(Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3e9

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 514
    return-void
.end method
