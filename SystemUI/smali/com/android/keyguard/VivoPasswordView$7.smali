.class Lcom/android/keyguard/VivoPasswordView$7;
.super Ljava/lang/Object;
.source "VivoPasswordView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/VivoPasswordView;->passwordbgAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/VivoPasswordView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/VivoPasswordView;)V
    .locals 0

    .prologue
    .line 640
    iput-object p1, p0, Lcom/android/keyguard/VivoPasswordView$7;->this$0:Lcom/android/keyguard/VivoPasswordView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 642
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 643
    .local v0, "value":F
    iget-object v1, p0, Lcom/android/keyguard/VivoPasswordView$7;->this$0:Lcom/android/keyguard/VivoPasswordView;

    iget-object v1, v1, Lcom/android/keyguard/VivoPasswordView;->mMixPwEntry:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 644
    return-void
.end method
