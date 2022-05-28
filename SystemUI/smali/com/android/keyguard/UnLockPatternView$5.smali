.class Lcom/android/keyguard/UnLockPatternView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "UnLockPatternView.java"


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

.field final synthetic val$endRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/keyguard/UnLockPatternView;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 579
    iput-object p1, p0, Lcom/android/keyguard/UnLockPatternView$5;->this$0:Lcom/android/keyguard/UnLockPatternView;

    iput-object p2, p0, Lcom/android/keyguard/UnLockPatternView$5;->val$endRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 582
    iget-object v0, p0, Lcom/android/keyguard/UnLockPatternView$5;->val$endRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 583
    return-void
.end method
