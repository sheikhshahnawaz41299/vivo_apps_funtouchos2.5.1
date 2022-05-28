.class Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$10;
.super Ljava/lang/Object;
.source "KeyguardNature2.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->rotateAnim(Landroid/view/View;Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

.field final synthetic val$animNext:Lcom/android/systemui/vivo/common/keyguard/nature/utils/Rotate3dAnimation;

.field final synthetic val$canceled:Z

.field final synthetic val$currentView:Landroid/view/View;

.field final synthetic val$nextView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;Landroid/view/View;ZLandroid/view/View;Lcom/android/systemui/vivo/common/keyguard/nature/utils/Rotate3dAnimation;)V
    .locals 0

    .prologue
    .line 887
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$10;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    iput-object p2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$10;->val$currentView:Landroid/view/View;

    iput-boolean p3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$10;->val$canceled:Z

    iput-object p4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$10;->val$nextView:Landroid/view/View;

    iput-object p5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$10;->val$animNext:Lcom/android/systemui/vivo/common/keyguard/nature/utils/Rotate3dAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 898
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$10;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$2800(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)V

    .line 899
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$10;->val$currentView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 900
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$10;->val$canceled:Z

    if-eqz v0, :cond_0

    .line 901
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$10;->val$nextView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 905
    :goto_0
    return-void

    .line 903
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$10;->val$nextView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$10;->val$animNext:Lcom/android/systemui/vivo/common/keyguard/nature/utils/Rotate3dAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 894
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 890
    return-void
.end method
