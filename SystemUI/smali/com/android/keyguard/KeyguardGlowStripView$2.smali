.class Lcom/android/keyguard/KeyguardGlowStripView$2;
.super Ljava/lang/Object;
.source "KeyguardGlowStripView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardGlowStripView;->makeEmGo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardGlowStripView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardGlowStripView;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/keyguard/KeyguardGlowStripView$2;->this$0:Lcom/android/keyguard/KeyguardGlowStripView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 131
    iget-object v1, p0, Lcom/android/keyguard/KeyguardGlowStripView$2;->this$0:Lcom/android/keyguard/KeyguardGlowStripView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/android/keyguard/KeyguardGlowStripView;->access$102(Lcom/android/keyguard/KeyguardGlowStripView;F)F

    .line 132
    iget-object v0, p0, Lcom/android/keyguard/KeyguardGlowStripView$2;->this$0:Lcom/android/keyguard/KeyguardGlowStripView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardGlowStripView;->invalidate()V

    .line 133
    return-void
.end method
