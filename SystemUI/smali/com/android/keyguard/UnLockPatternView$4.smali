.class Lcom/android/keyguard/UnLockPatternView$4;
.super Ljava/lang/Object;
.source "UnLockPatternView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/UnLockPatternView;->startSizeAnimation(FFJLandroid/view/animation/Interpolator;Lcom/android/internal/widget/LockPatternView$CellState;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/UnLockPatternView;

.field final synthetic val$state:Lcom/android/internal/widget/LockPatternView$CellState;


# direct methods
.method constructor <init>(Lcom/android/keyguard/UnLockPatternView;Lcom/android/internal/widget/LockPatternView$CellState;)V
    .locals 0

    .prologue
    .line 571
    iput-object p1, p0, Lcom/android/keyguard/UnLockPatternView$4;->this$0:Lcom/android/keyguard/UnLockPatternView;

    iput-object p2, p0, Lcom/android/keyguard/UnLockPatternView$4;->val$state:Lcom/android/internal/widget/LockPatternView$CellState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 574
    iget-object v1, p0, Lcom/android/keyguard/UnLockPatternView$4;->val$state:Lcom/android/internal/widget/LockPatternView$CellState;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, v1, Lcom/android/internal/widget/LockPatternView$CellState;->size:F

    .line 575
    iget-object v0, p0, Lcom/android/keyguard/UnLockPatternView$4;->this$0:Lcom/android/keyguard/UnLockPatternView;

    invoke-virtual {v0}, Lcom/android/keyguard/UnLockPatternView;->invalidate()V

    .line 576
    return-void
.end method
