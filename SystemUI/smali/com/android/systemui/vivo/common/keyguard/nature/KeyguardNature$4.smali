.class Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$4;
.super Ljava/lang/Object;
.source "KeyguardNature.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;)V
    .locals 0

    .prologue
    .line 324
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$4;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$4;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->access$1400(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;)Landroid/widget/ViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    if-nez v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$4;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;->access$1500(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;)Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->removeAllViews()V

    .line 338
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 331
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 327
    return-void
.end method
