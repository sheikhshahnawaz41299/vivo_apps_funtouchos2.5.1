.class Lcom/android/keyguard/VivoBaseView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "VivoBaseView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/VivoBaseView;->moveLefOrRight(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/VivoBaseView;

.field final synthetic val$ldBtn:Landroid/view/View;

.field final synthetic val$lrBtn:Landroid/view/View;

.field final synthetic val$rdBtn:Landroid/view/View;

.field final synthetic val$rrBtn:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/keyguard/VivoBaseView;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/android/keyguard/VivoBaseView$1;->this$0:Lcom/android/keyguard/VivoBaseView;

    iput-object p2, p0, Lcom/android/keyguard/VivoBaseView$1;->val$lrBtn:Landroid/view/View;

    iput-object p3, p0, Lcom/android/keyguard/VivoBaseView$1;->val$ldBtn:Landroid/view/View;

    iput-object p4, p0, Lcom/android/keyguard/VivoBaseView$1;->val$rrBtn:Landroid/view/View;

    iput-object p5, p0, Lcom/android/keyguard/VivoBaseView$1;->val$rdBtn:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x1

    .line 224
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 226
    iget-object v0, p0, Lcom/android/keyguard/VivoBaseView$1;->val$lrBtn:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 227
    iget-object v0, p0, Lcom/android/keyguard/VivoBaseView$1;->val$ldBtn:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 228
    iget-object v0, p0, Lcom/android/keyguard/VivoBaseView$1;->val$rrBtn:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 229
    iget-object v0, p0, Lcom/android/keyguard/VivoBaseView$1;->val$rdBtn:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 231
    iget-object v0, p0, Lcom/android/keyguard/VivoBaseView$1;->this$0:Lcom/android/keyguard/VivoBaseView;

    iget-object v1, p0, Lcom/android/keyguard/VivoBaseView$1;->this$0:Lcom/android/keyguard/VivoBaseView;

    iget v1, v1, Lcom/android/keyguard/VivoBaseView;->mDragDirection:I

    invoke-virtual {v0, v1}, Lcom/android/keyguard/VivoBaseView;->setGesture(I)V

    .line 232
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/keyguard/VivoBaseView;->mCurPadNormal:Z

    .line 233
    iget-object v0, p0, Lcom/android/keyguard/VivoBaseView$1;->this$0:Lcom/android/keyguard/VivoBaseView;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/VivoBaseView;->setPinStatus(Z)V

    .line 235
    const-string v0, "VivoBaseView"

    const-string v1, " onAnimationEnd"

    invoke-static {v0, v1}, Lcom/android/keyguard/vivo/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    return-void
.end method
