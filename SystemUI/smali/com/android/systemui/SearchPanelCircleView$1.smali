.class Lcom/android/systemui/SearchPanelCircleView$1;
.super Ljava/lang/Object;
.source "SearchPanelCircleView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/SearchPanelCircleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/SearchPanelCircleView;


# direct methods
.method constructor <init>(Lcom/android/systemui/SearchPanelCircleView;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/systemui/SearchPanelCircleView$1;->this$0:Lcom/android/systemui/SearchPanelCircleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 74
    iget-object v1, p0, Lcom/android/systemui/SearchPanelCircleView$1;->this$0:Lcom/android/systemui/SearchPanelCircleView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/android/systemui/SearchPanelCircleView;->access$000(Lcom/android/systemui/SearchPanelCircleView;F)V

    .line 75
    iget-object v0, p0, Lcom/android/systemui/SearchPanelCircleView$1;->this$0:Lcom/android/systemui/SearchPanelCircleView;

    invoke-static {v0}, Lcom/android/systemui/SearchPanelCircleView;->access$100(Lcom/android/systemui/SearchPanelCircleView;)V

    .line 76
    return-void
.end method
