.class Lcom/android/keyguard/VivoPatternView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "VivoPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/VivoPatternView;->createAnimation(Lcom/android/internal/widget/LockPatternView$CellState;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/VivoPatternView;

.field final synthetic val$finishListener:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/keyguard/VivoPatternView;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 619
    iput-object p1, p0, Lcom/android/keyguard/VivoPatternView$5;->this$0:Lcom/android/keyguard/VivoPatternView;

    iput-object p2, p0, Lcom/android/keyguard/VivoPatternView$5;->val$finishListener:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 622
    iget-object v0, p0, Lcom/android/keyguard/VivoPatternView$5;->val$finishListener:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 623
    return-void
.end method
