.class Lcom/vivo/SmartKey/j;
.super Ljava/lang/Object;
.source "MyService.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic Z:Lcom/vivo/SmartKey/MyService;


# direct methods
.method constructor <init>(Lcom/vivo/SmartKey/MyService;)V
    .locals 0

    .prologue
    .line 719
    iput-object p1, p0, Lcom/vivo/SmartKey/j;->Z:Lcom/vivo/SmartKey/MyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 744
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 734
    const-string v0, "MyService"

    const-string v1, "endTrackAnimation... anim end..."

    invoke-static {v0, v1}, Lcom/vivo/SmartKey/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    iget-object v0, p0, Lcom/vivo/SmartKey/j;->Z:Lcom/vivo/SmartKey/MyService;

    invoke-static {v0}, Lcom/vivo/SmartKey/MyService;->o(Lcom/vivo/SmartKey/MyService;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 736
    iget-object v0, p0, Lcom/vivo/SmartKey/j;->Z:Lcom/vivo/SmartKey/MyService;

    invoke-static {v0}, Lcom/vivo/SmartKey/MyService;->p(Lcom/vivo/SmartKey/MyService;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/SmartKey/j;->Z:Lcom/vivo/SmartKey/MyService;

    invoke-static {v1}, Lcom/vivo/SmartKey/MyService;->o(Lcom/vivo/SmartKey/MyService;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 737
    iget-object v0, p0, Lcom/vivo/SmartKey/j;->Z:Lcom/vivo/SmartKey/MyService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vivo/SmartKey/MyService;->a(Lcom/vivo/SmartKey/MyService;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    .line 739
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 729
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 724
    return-void
.end method
