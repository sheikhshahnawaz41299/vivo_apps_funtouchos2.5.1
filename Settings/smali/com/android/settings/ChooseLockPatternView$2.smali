.class Lcom/android/settings/ChooseLockPatternView$2;
.super Ljava/lang/Object;
.source "ChooseLockPatternView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ChooseLockPatternView;->onDrawAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ChooseLockPatternView;


# direct methods
.method constructor <init>(Lcom/android/settings/ChooseLockPatternView;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/settings/ChooseLockPatternView$2;->this$0:Lcom/android/settings/ChooseLockPatternView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 208
    iget-object v1, p0, Lcom/android/settings/ChooseLockPatternView$2;->this$0:Lcom/android/settings/ChooseLockPatternView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/android/settings/ChooseLockPatternView;->access$002(Lcom/android/settings/ChooseLockPatternView;F)F

    .line 209
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternView$2;->this$0:Lcom/android/settings/ChooseLockPatternView;

    invoke-virtual {v0}, Lcom/android/settings/ChooseLockPatternView;->invalidate()V

    .line 210
    return-void
.end method
