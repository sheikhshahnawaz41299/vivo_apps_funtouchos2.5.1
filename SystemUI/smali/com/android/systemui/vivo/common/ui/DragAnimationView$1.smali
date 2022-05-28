.class Lcom/android/systemui/vivo/common/ui/DragAnimationView$1;
.super Ljava/lang/Object;
.source "DragAnimationView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/ui/DragAnimationView;->startAnim(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/ui/DragAnimationView;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/ui/DragAnimationView;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView$1;->this$0:Lcom/android/systemui/vivo/common/ui/DragAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView$1;->this$0:Lcom/android/systemui/vivo/common/ui/DragAnimationView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView$1;->this$0:Lcom/android/systemui/vivo/common/ui/DragAnimationView;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->access$100(Lcom/android/systemui/vivo/common/ui/DragAnimationView;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->access$002(Lcom/android/systemui/vivo/common/ui/DragAnimationView;F)F

    .line 152
    iget-object v1, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView$1;->this$0:Lcom/android/systemui/vivo/common/ui/DragAnimationView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->access$102(Lcom/android/systemui/vivo/common/ui/DragAnimationView;F)F

    .line 153
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView$1;->this$0:Lcom/android/systemui/vivo/common/ui/DragAnimationView;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->access$100(Lcom/android/systemui/vivo/common/ui/DragAnimationView;)F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView$1;->this$0:Lcom/android/systemui/vivo/common/ui/DragAnimationView;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->access$000(Lcom/android/systemui/vivo/common/ui/DragAnimationView;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 156
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView$1;->this$0:Lcom/android/systemui/vivo/common/ui/DragAnimationView;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->invalidate()V

    goto :goto_0
.end method
