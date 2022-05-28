.class Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView$7;
.super Ljava/lang/Object;
.source "KeyguardSmartWakeView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->startAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;)V
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView$7;->this$0:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 282
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView$7;->this$0:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->access$600(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 278
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 286
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView$7;->this$0:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->access$1000(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 273
    return-void
.end method
