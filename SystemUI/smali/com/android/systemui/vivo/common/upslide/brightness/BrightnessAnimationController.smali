.class public Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessAnimationController;
.super Ljava/lang/Object;
.source "BrightnessAnimationController.java"


# static fields
.field public static final ALPHA_IN:Landroid/view/animation/Interpolator;

.field public static final ALPHA_OUT:Landroid/view/animation/Interpolator;

.field public static final TAG:Ljava/lang/String; = "BrightnessAnimationController"

.field public static final TRANSITION_DURATION_IN:J = 0x96L

.field public static final TRANSITION_DURATION_OUT:J = 0x96L


# instance fields
.field private mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessAnimationController;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 16
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessAnimationController;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;)V
    .locals 0
    .param p1, "helper"    # Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessAnimationController;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    .line 26
    return-void
.end method


# virtual methods
.method public performHideAnimation()V
    .locals 4

    .prologue
    .line 29
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessAnimationController;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->getAlphaView()Landroid/view/View;

    move-result-object v0

    .line 30
    .local v0, "alphaView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessAnimationController;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    .line 31
    return-void
.end method

.method public performShowAnimation()V
    .locals 4

    .prologue
    .line 34
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessAnimationController;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->getAlphaView()Landroid/view/View;

    move-result-object v0

    .line 35
    .local v0, "alphaView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessAnimationController;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    .line 36
    return-void
.end method
