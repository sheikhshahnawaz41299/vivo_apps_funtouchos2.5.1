.class Lcom/android/systemui/vivo/common/upslide/utils/ScrollViewAdjust$1;
.super Ljava/lang/Object;
.source "ScrollViewAdjust.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/upslide/utils/ScrollViewAdjust;->adjust()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/upslide/utils/ScrollViewAdjust;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/utils/ScrollViewAdjust;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/utils/ScrollViewAdjust$1;->this$0:Lcom/android/systemui/vivo/common/upslide/utils/ScrollViewAdjust;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 58
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 59
    .local v0, "currentPosition":I
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/utils/ScrollViewAdjust$1;->this$0:Lcom/android/systemui/vivo/common/upslide/utils/ScrollViewAdjust;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/upslide/utils/ScrollViewAdjust;->access$000(Lcom/android/systemui/vivo/common/upslide/utils/ScrollViewAdjust;)Landroid/widget/HorizontalScrollView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/utils/ScrollViewAdjust$1;->this$0:Lcom/android/systemui/vivo/common/upslide/utils/ScrollViewAdjust;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/utils/ScrollViewAdjust;->access$000(Lcom/android/systemui/vivo/common/upslide/utils/ScrollViewAdjust;)Landroid/widget/HorizontalScrollView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/HorizontalScrollView;->getScrollY()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 60
    return-void
.end method
