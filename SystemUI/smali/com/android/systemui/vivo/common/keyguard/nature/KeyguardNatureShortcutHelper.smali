.class public Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;
.super Ljava/lang/Object;
.source "KeyguardNatureShortcutHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper$Callback;
    }
.end annotation


# static fields
.field private static final BACKGROUND_RADIUS_SCALE_FACTOR:F = 0.15f

.field public static final SWIPE_RESTING_ALPHA_AMOUNT:F = 0.5f


# instance fields
.field private mAnimationEndRunnable:Ljava/lang/Runnable;

.field private mCallback:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper$Callback;

.field private final mContext:Landroid/content/Context;

.field private mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field private mFlingEndListener:Landroid/animation/AnimatorListenerAdapter;

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

.field private mMinBackgroundRadius:I

.field private mMinFlingVelocity:I

.field private mMinTranslationAmount:I

.field private mMotionPerformedByUser:Z

.field private mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

.field private mSwipeAnimator:Landroid/animation/Animator;

.field private mSwipingInProgress:Z

.field private mTouchSlop:I

.field private mTrackingPointer:I

.field private mTranslation:F

.field private mTranslationOnDown:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper$Callback;Landroid/content/Context;)V
    .locals 6
    .param p1, "callback"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper$Callback;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper$1;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mFlingEndListener:Landroid/animation/AnimatorListenerAdapter;

    .line 66
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper$2;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mAnimationEndRunnable:Ljava/lang/Runnable;

    .line 74
    iput-object p2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mContext:Landroid/content/Context;

    .line 75
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mCallback:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper$Callback;

    .line 76
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->initIcons()V

    .line 77
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FFZZ)V

    .line 78
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FFZZ)V

    .line 79
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->initDimens()V

    .line 80
    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;
    .param p1, "x1"    # Landroid/animation/Animator;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mSwipeAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->setSwipingInProgress(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;)Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mCallback:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper$Callback;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;
    .param p1, "x1"    # F

    .prologue
    .line 35
    iput p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mTranslation:F

    return p1
.end method

.method private cancelAnimation()V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mSwipeAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mSwipeAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 192
    :cond_0
    return-void
.end method

.method private fling(FZ)V
    .locals 6
    .param p1, "vel"    # F
    .param p2, "snapBack"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 217
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mCallback:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper$Callback;

    invoke-interface {v4}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper$Callback;->getPageHeight()F

    move-result v4

    neg-float v1, v4

    .line 218
    .local v1, "target":F
    if-eqz p2, :cond_0

    const/4 v1, 0x0

    .line 220
    :cond_0
    const/4 v4, 0x2

    new-array v4, v4, [F

    iget v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mTranslation:F

    aput v5, v4, v3

    aput v1, v4, v2

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 221
    .local v0, "animator":Landroid/animation/ValueAnimator;
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mTranslation:F

    invoke-virtual {v4, v0, v5, v1, p1}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFF)V

    .line 222
    new-instance v4, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper$3;

    invoke-direct {v4, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper$3;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 228
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mFlingEndListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 229
    if-nez p2, :cond_2

    .line 230
    const/high16 v4, 0x3ec00000    # 0.375f

    mul-float/2addr v4, p1

    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mAnimationEndRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->startFinishingCircleAnimation(FLjava/lang/Runnable;)V

    .line 231
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mCallback:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper$Callback;

    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->isLeftPage()Z

    move-result v5

    if-nez v5, :cond_1

    :goto_0
    invoke-interface {v4, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper$Callback;->onAnimationToSideStarted(Z)V

    .line 235
    :goto_1
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 236
    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mSwipeAnimator:Landroid/animation/Animator;

    .line 237
    return-void

    :cond_1
    move v2, v3

    .line 231
    goto :goto_0

    .line 233
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->reset(Z)V

    goto :goto_1
.end method

.method private flingWithCurrentVelocity(Z)V
    .locals 8
    .param p1, "forceSnapBack"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 195
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->getCurrentVelocity()F

    move-result v1

    .line 198
    .local v1, "vel":F
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->isBelowFalsingThreshold()Z

    move-result v0

    .line 201
    .local v0, "snapBack":Z
    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mTranslation:F

    mul-float/2addr v6, v1

    cmpg-float v6, v6, v5

    if-gez v6, :cond_3

    move v2, v3

    .line 202
    .local v2, "velIsInWrongDirection":Z
    :goto_0
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mMinFlingVelocity:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_4

    if-eqz v2, :cond_4

    move v6, v3

    :goto_1
    or-int/2addr v0, v6

    .line 203
    xor-int v6, v0, v2

    if-eqz v6, :cond_0

    move v1, v5

    .line 204
    :cond_0
    if-nez v0, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    move v4, v3

    :cond_2
    invoke-direct {p0, v1, v4}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->fling(FZ)V

    .line 205
    return-void

    .end local v2    # "velIsInWrongDirection":Z
    :cond_3
    move v2, v4

    .line 201
    goto :goto_0

    .restart local v2    # "velIsInWrongDirection":Z
    :cond_4
    move v6, v4

    .line 202
    goto :goto_1
.end method

.method private getCurrentVelocity()F
    .locals 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 329
    const/4 v0, 0x0

    .line 332
    :goto_0
    return v0

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 332
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    goto :goto_0
.end method

.method private getMinTranslationAmount()I
    .locals 2

    .prologue
    .line 212
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mCallback:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper$Callback;

    invoke-interface {v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper$Callback;->getAffordanceFalsingFactor()F

    move-result v0

    .line 213
    .local v0, "factor":F
    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mMinTranslationAmount:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    return v1
.end method

.method private getRadiusFromTranslation(F)F
    .locals 2
    .param p1, "translation"    # F

    .prologue
    .line 284
    const v0, 0x3e19999a    # 0.15f

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mMinBackgroundRadius:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method private getScale(F)F
    .locals 3
    .param p1, "alpha"    # F

    .prologue
    .line 309
    const/high16 v1, 0x3f000000    # 0.5f

    div-float v1, p1, v1

    const v2, 0x3e4ccccd    # 0.2f

    mul-float/2addr v1, v2

    const v2, 0x3f4ccccd    # 0.8f

    add-float v0, v1, v2

    .line 311
    .local v0, "scale":F
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    return v1
.end method

.method private getTranslationFromRadius(F)F
    .locals 3
    .param p1, "circleSize"    # F

    .prologue
    .line 279
    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mMinBackgroundRadius:I

    int-to-float v1, v1

    sub-float v1, p1, v1

    const v2, 0x3e19999a    # 0.15f

    div-float v0, v1, v2

    .line 280
    .local v0, "translation":F
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    return v1
.end method

.method private initDimens()V
    .locals 4

    .prologue
    .line 83
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 84
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mTouchSlop:I

    .line 85
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mMinFlingVelocity:I

    .line 86
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f007e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mMinTranslationAmount:I

    .line 88
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f007f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mMinBackgroundRadius:I

    .line 90
    new-instance v1, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mContext:Landroid/content/Context;

    const v3, 0x3ecccccd    # 0.4f

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;F)V

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .line 91
    return-void
.end method

.method private initIcons()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mCallback:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper$Callback;

    invoke-interface {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper$Callback;->getLeftIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 95
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mCallback:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper$Callback;

    invoke-interface {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper$Callback;->getRightIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 96
    return-void
.end method

.method private initVelocityTracker()V
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 324
    :cond_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 325
    return-void
.end method

.method private isBelowFalsingThreshold()Z
    .locals 3

    .prologue
    .line 208
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mTranslation:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mTranslationOnDown:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->getMinTranslationAmount()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLeftPage()Z
    .locals 2

    .prologue
    .line 344
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mInitialTouchX:F

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mCallback:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper$Callback;

    invoke-interface {v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper$Callback;->getPageWidth()F

    move-result v1

    float-to-int v1, v1

    shr-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private leftSwipePossible()Z
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private rightSwipePossible()Z
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setSwipingInProgress(Z)V
    .locals 1
    .param p1, "inProgress"    # Z

    .prologue
    .line 170
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mSwipingInProgress:Z

    .line 171
    if-eqz p1, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mCallback:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper$Callback;

    invoke-interface {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper$Callback;->onSwipingStarted()V

    .line 174
    :cond_0
    return-void
.end method

.method private setTranslation(FZZ)V
    .locals 12
    .param p1, "translation"    # F
    .param p2, "isReset"    # Z
    .param p3, "animateReset"    # Z

    .prologue
    .line 247
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v10

    .line 248
    .local v10, "absTranslation":F
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mTranslationOnDown:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->getMinTranslationAmount()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v0, v4

    cmpl-float v0, v10, v0

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mMotionPerformedByUser:Z

    if-eqz v0, :cond_1

    .line 250
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mMotionPerformedByUser:Z

    .line 252
    :cond_1
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mTranslation:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_3

    .line 253
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->isLeftPage()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 254
    .local v1, "targetView":Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->isLeftPage()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v11, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 255
    .local v11, "otherView":Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->getMinTranslationAmount()I

    move-result v0

    int-to-float v0, v0

    div-float v3, v10, v0

    .line 258
    .local v3, "alpha":F
    const/high16 v0, 0x3f000000    # 0.5f

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v3

    mul-float v7, v0, v4

    .line 259
    .local v7, "fadeOutAlpha":F
    const/4 v0, 0x0

    invoke-static {v0, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 262
    add-float/2addr v3, v7

    .line 264
    if-eqz p2, :cond_6

    if-eqz p3, :cond_6

    const/4 v8, 0x1

    .line 265
    .local v8, "animateIcons":Z
    :goto_2
    invoke-direct {p0, v10}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->getRadiusFromTranslation(F)F

    move-result v2

    .line 266
    .local v2, "radius":F
    if-eqz p2, :cond_7

    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->isBelowFalsingThreshold()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v9, 0x1

    .line 267
    .local v9, "slowAnimation":Z
    :goto_3
    if-nez p2, :cond_8

    .line 268
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FFZZ)V

    .line 272
    :goto_4
    const/4 v6, 0x0

    move-object v4, p0

    move-object v5, v11

    invoke-direct/range {v4 .. v9}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FFZZ)V

    .line 274
    iput p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mTranslation:F

    .line 276
    .end local v1    # "targetView":Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .end local v2    # "radius":F
    .end local v3    # "alpha":F
    .end local v7    # "fadeOutAlpha":F
    .end local v8    # "animateIcons":Z
    .end local v9    # "slowAnimation":Z
    .end local v11    # "otherView":Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    :cond_3
    return-void

    .line 253
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    goto :goto_0

    .line 254
    .restart local v1    # "targetView":Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    :cond_5
    iget-object v11, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    goto :goto_1

    .line 264
    .restart local v3    # "alpha":F
    .restart local v7    # "fadeOutAlpha":F
    .restart local v11    # "otherView":Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    :cond_6
    const/4 v8, 0x0

    goto :goto_2

    .line 266
    .restart local v2    # "radius":F
    .restart local v8    # "animateIcons":Z
    :cond_7
    const/4 v9, 0x0

    goto :goto_3

    .line 270
    .restart local v9    # "slowAnimation":Z
    :cond_8
    const/4 v6, 0x0

    move-object v4, p0

    move-object v5, v1

    invoke-direct/range {v4 .. v9}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FFZZ)V

    goto :goto_4
.end method

.method private startFinishingCircleAnimation(FLjava/lang/Runnable;)V
    .locals 2
    .param p1, "velocity"    # F
    .param p2, "mAnimationEndRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 240
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->isLeftPage()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 241
    .local v0, "targetView":Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->finishAnimation(FLjava/lang/Runnable;)V

    .line 242
    return-void

    .line 240
    .end local v0    # "targetView":Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    goto :goto_0
.end method

.method private trackMovement(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 318
    :cond_0
    return-void
.end method

.method private updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FFZZ)V
    .locals 1
    .param p1, "view"    # Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .param p2, "circleRadius"    # F
    .param p3, "alpha"    # F
    .param p4, "animate"    # Z
    .param p5, "slowRadiusAnimation"    # Z

    .prologue
    .line 294
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    :goto_0
    return-void

    .line 297
    :cond_0
    invoke-virtual {p1, p2, p5}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setCircleRadius(FZ)V

    .line 298
    invoke-direct {p0, p1, p3, p4}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->updateIconAlpha(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FZ)V

    goto :goto_0
.end method

.method private updateIconAlpha(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FZ)V
    .locals 2
    .param p1, "view"    # Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .param p2, "alpha"    # F
    .param p3, "animate"    # Z

    .prologue
    .line 302
    invoke-direct {p0, p2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->getScale(F)F

    move-result v0

    .line 303
    .local v0, "scale":F
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 304
    invoke-virtual {p1, p2, p3}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageAlpha(FZ)V

    .line 305
    invoke-virtual {p1, v0, p3}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageScale(FZ)V

    .line 306
    return-void
.end method


# virtual methods
.method public animateHideLeftRightIcon()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 288
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-object v0, p0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FFZZ)V

    .line 289
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-object v0, p0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FFZZ)V

    .line 290
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 99
    iget v11, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mTrackingPointer:I

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    .line 100
    .local v5, "pointerIndex":I
    if-gez v5, :cond_0

    .line 101
    const/4 v5, 0x0

    .line 102
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v11

    iput v11, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mTrackingPointer:I

    .line 104
    :cond_0
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    .line 105
    .local v9, "y":F
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    .line 107
    .local v8, "x":F
    const/4 v1, 0x0

    .line 108
    .local v1, "isUp":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v11

    packed-switch v11, :pswitch_data_0

    .line 166
    :cond_1
    :goto_0
    :pswitch_0
    return v10

    .line 110
    :pswitch_1
    iget-boolean v11, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mSwipingInProgress:Z

    if-eqz v11, :cond_2

    .line 111
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->cancelAnimation()V

    .line 113
    :cond_2
    iput v9, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mInitialTouchY:F

    .line 114
    iput v8, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mInitialTouchX:F

    .line 115
    iget v11, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mTranslation:F

    iput v11, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mTranslationOnDown:F

    .line 116
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->initVelocityTracker()V

    .line 117
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->trackMovement(Landroid/view/MotionEvent;)V

    .line 118
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mMotionPerformedByUser:Z

    goto :goto_0

    .line 122
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v11

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    .line 123
    .local v6, "upPointer":I
    iget v11, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mTrackingPointer:I

    if-ne v11, v6, :cond_1

    .line 125
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v11

    if-eq v11, v6, :cond_3

    .line 126
    .local v2, "newIndex":I
    :goto_1
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 127
    .local v4, "newY":F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 128
    .local v3, "newX":F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v11

    iput v11, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mTrackingPointer:I

    .line 129
    iput v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mInitialTouchY:F

    .line 130
    iput v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mInitialTouchX:F

    .line 131
    iget v11, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mTranslation:F

    iput v11, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mTranslationOnDown:F

    goto :goto_0

    .end local v2    # "newIndex":I
    .end local v3    # "newX":F
    .end local v4    # "newY":F
    :cond_3
    move v2, v10

    .line 125
    goto :goto_1

    .line 136
    .end local v6    # "upPointer":I
    :pswitch_3
    iget v11, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mInitialTouchX:F

    sub-float v7, v8, v11

    .line 137
    .local v7, "w":F
    iget v11, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mInitialTouchY:F

    sub-float v0, v9, v11

    .line 138
    .local v0, "h":F
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->trackMovement(Landroid/view/MotionEvent;)V

    .line 139
    iget v11, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mTouchSlop:I

    neg-int v11, v11

    int-to-float v11, v11

    cmpg-float v11, v0, v11

    if-gez v11, :cond_4

    iget-boolean v11, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mSwipingInProgress:Z

    if-nez v11, :cond_4

    .line 141
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->cancelAnimation()V

    .line 142
    iput v9, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mInitialTouchY:F

    .line 143
    iput v8, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mInitialTouchX:F

    .line 144
    iget v11, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mTranslation:F

    iput v11, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mTranslationOnDown:F

    .line 145
    invoke-direct {p0, v10}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->setSwipingInProgress(Z)V

    .line 147
    :cond_4
    iget-boolean v11, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mSwipingInProgress:Z

    if-eqz v11, :cond_1

    .line 148
    iget v11, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mTranslationOnDown:F

    add-float/2addr v11, v9

    iget v12, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mInitialTouchY:F

    sub-float/2addr v11, v12

    invoke-direct {p0, v11, v2, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->setTranslation(FZZ)V

    goto :goto_0

    .line 153
    .end local v0    # "h":F
    .end local v7    # "w":F
    :pswitch_4
    const/4 v1, 0x1

    .line 155
    :pswitch_5
    const/4 v11, -0x1

    iput v11, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mTrackingPointer:I

    .line 156
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->trackMovement(Landroid/view/MotionEvent;)V

    .line 157
    iget-boolean v11, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mSwipingInProgress:Z

    if-eqz v11, :cond_6

    .line 158
    if-nez v1, :cond_5

    move v2, v10

    :cond_5
    invoke-direct {p0, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->flingWithCurrentVelocity(Z)V

    .line 160
    :cond_6
    iget-object v11, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v11, :cond_1

    .line 161
    iget-object v11, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v11}, Landroid/view/VelocityTracker;->recycle()V

    .line 162
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_0

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public reset(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mSwipeAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->mSwipeAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 339
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->setTranslation(FZZ)V

    .line 340
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->setSwipingInProgress(Z)V

    .line 341
    return-void
.end method
