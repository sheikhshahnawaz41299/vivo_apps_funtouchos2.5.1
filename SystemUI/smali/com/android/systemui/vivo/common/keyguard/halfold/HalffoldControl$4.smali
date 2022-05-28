.class Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$4;
.super Ljava/lang/Object;
.source "HalffoldControl.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->clickAnimator(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;)V
    .locals 0

    .prologue
    .line 561
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$4;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 574
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 569
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$4;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$1900(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;I)V

    .line 570
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl$4;->this$0:Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;->access$2000(Lcom/android/systemui/vivo/common/keyguard/halfold/HalffoldControl;I)V

    .line 571
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 566
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 563
    return-void
.end method
