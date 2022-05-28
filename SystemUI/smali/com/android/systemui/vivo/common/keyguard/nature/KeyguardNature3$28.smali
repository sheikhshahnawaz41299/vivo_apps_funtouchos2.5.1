.class Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$28;
.super Ljava/lang/Object;
.source "KeyguardNature3.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->showUnlockTipAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)V
    .locals 0

    .prologue
    .line 2137
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$28;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2141
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2145
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$28;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$4102(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;Z)Z

    .line 2146
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$28;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v0, v3}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$5000(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;Z)V

    .line 2147
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$28;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$2200(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 2148
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$28;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$2500(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2149
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$28;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    invoke-static {v0, v2, v3}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$2300(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;FZ)V

    .line 2151
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$28;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$8102(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 2152
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2156
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2160
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$28;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$4102(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;Z)Z

    .line 2161
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$28;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->access$5000(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;Z)V

    .line 2162
    return-void
.end method
