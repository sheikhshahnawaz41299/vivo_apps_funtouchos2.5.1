.class Lcom/android/keyguard/VivoPasswordView$8;
.super Ljava/lang/Object;
.source "VivoPasswordView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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
    .line 647
    iput-object p1, p0, Lcom/android/keyguard/VivoPasswordView$8;->this$0:Lcom/android/keyguard/VivoPasswordView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 674
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 665
    const-string v0, "VivoPasswordView"

    const-string v1, "onAnimationEnd "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView$8;->this$0:Lcom/android/keyguard/VivoPasswordView;

    iget-object v0, v0, Lcom/android/keyguard/VivoPasswordView;->mMixPwEntry:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 667
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView$8;->this$0:Lcom/android/keyguard/VivoPasswordView;

    iget-object v0, v0, Lcom/android/keyguard/VivoPasswordView;->mMixPwEntry:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 668
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 660
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 652
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView$8;->this$0:Lcom/android/keyguard/VivoPasswordView;

    iget-object v0, v0, Lcom/android/keyguard/VivoPasswordView;->mMixPwEntry:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 654
    return-void
.end method
