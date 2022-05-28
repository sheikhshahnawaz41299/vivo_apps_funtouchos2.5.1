.class public Lcom/android/systemui/ExpandHelper;
.super Ljava/lang/Object;
.source "ExpandHelper.java"

# interfaces
.implements Lcom/android/systemui/Gefingerpoken;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/ExpandHelper$ViewScaler;,
        Lcom/android/systemui/ExpandHelper$Callback;
    }
.end annotation


# static fields
.field private static final BLINDS:I = 0x1

.field protected static final DEBUG:Z = false

.field protected static final DEBUG_SCALE:Z = false

.field private static final EXPAND_DURATION:F = 0.3f

.field private static final GLOW_BASE:F = 0.5f

.field private static final NONE:I = 0x0

.field private static final PULL:I = 0x2

.field private static final STRETCH:I = 0x4

.field private static final STRETCH_INTERVAL:F = 2.0f

.field private static final TAG:Ljava/lang/String; = "ExpandHelper"

.field private static final USE_DRAG:Z = true

.field private static final USE_SPAN:Z = true

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;


# instance fields
.field private mCallback:Lcom/android/systemui/ExpandHelper$Callback;

.field private mContext:Landroid/content/Context;

.field private mCurrentHeight:F

.field private mEnabled:Z

.field private mEventSource:Landroid/view/View;

.field private mExpanding:Z

.field private mExpansionStyle:I

.field private mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field private mGravity:I

.field private mHasPopped:Z

.field private mInitialTouchFocusY:F

.field private mInitialTouchSpan:F

.field private mInitialTouchY:F

.field private mLargeSize:I

.field private mLastFocusY:F

.field private mLastMotionY:F

.field private mLastSpanY:F

.field private mMaximumStretch:F

.field private mNaturalHeight:F

.field private mOldHeight:F

.field private mOnlyMovements:Z

.field private mPopDuration:I

.field private mPullGestureMinXSpan:F

.field private mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

.field private mSGD:Landroid/view/ScaleGestureDetector;

.field private mScaleAnimation:Landroid/animation/ObjectAnimator;

.field private mScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

.field private mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

.field private mScrollAdapter:Lcom/android/systemui/statusbar/policy/ScrollAdapter;

.field private mSmallSize:I

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVibrator:Landroid/os/Vibrator;

.field private mWatchingForPull:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 72
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/ExpandHelper;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/ExpandHelper$Callback;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/systemui/ExpandHelper$Callback;
    .param p3, "small"    # I
    .param p4, "large"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput v5, p0, Lcom/android/systemui/ExpandHelper;->mExpansionStyle:I

    .line 105
    iput-boolean v3, p0, Lcom/android/systemui/ExpandHelper;->mEnabled:Z

    .line 120
    new-instance v1, Lcom/android/systemui/ExpandHelper$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/ExpandHelper$1;-><init>(Lcom/android/systemui/ExpandHelper;)V

    iput-object v1, p0, Lcom/android/systemui/ExpandHelper;->mScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 186
    iput p3, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    .line 187
    iget v1, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/ExpandHelper;->mMaximumStretch:F

    .line 188
    iput p4, p0, Lcom/android/systemui/ExpandHelper;->mLargeSize:I

    .line 189
    iput-object p1, p0, Lcom/android/systemui/ExpandHelper;->mContext:Landroid/content/Context;

    .line 190
    iput-object p2, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    .line 191
    new-instance v1, Lcom/android/systemui/ExpandHelper$ViewScaler;

    invoke-direct {v1, p0}, Lcom/android/systemui/ExpandHelper$ViewScaler;-><init>(Lcom/android/systemui/ExpandHelper;)V

    iput-object v1, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    .line 192
    const/16 v1, 0x30

    iput v1, p0, Lcom/android/systemui/ExpandHelper;->mGravity:I

    .line 193
    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    const-string v2, "height"

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v4, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    .line 194
    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/ExpandHelper;->mPopDuration:I

    .line 195
    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0036

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/ExpandHelper;->mPullGestureMinXSpan:F

    .line 197
    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 198
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/ExpandHelper;->mTouchSlop:I

    .line 200
    new-instance v1, Landroid/view/ScaleGestureDetector;

    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-direct {v1, p1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    .line 201
    new-instance v1, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    const v2, 0x3e99999a    # 0.3f

    invoke-direct {v1, p1, v2}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;F)V

    iput-object v1, p0, Lcom/android/systemui/ExpandHelper;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .line 202
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/ExpandHelper;)Lcom/android/systemui/statusbar/ExpandableView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/ExpandHelper;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/ExpandHelper;Lcom/android/systemui/statusbar/ExpandableView;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/ExpandHelper;
    .param p1, "x1"    # Lcom/android/systemui/statusbar/ExpandableView;
    .param p2, "x2"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/ExpandHelper;->startExpanding(Lcom/android/systemui/statusbar/ExpandableView;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/ExpandHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/ExpandHelper;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/ExpandHelper;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/ExpandHelper;

    .prologue
    .line 41
    iget v0, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    return v0
.end method

.method static synthetic access$402(Lcom/android/systemui/ExpandHelper;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/ExpandHelper;
    .param p1, "x1"    # F

    .prologue
    .line 41
    iput p1, p0, Lcom/android/systemui/ExpandHelper;->mCurrentHeight:F

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/ExpandHelper;)Lcom/android/systemui/ExpandHelper$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/ExpandHelper;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/ExpandHelper;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/ExpandHelper;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method private clamp(F)F
    .locals 2
    .param p1, "target"    # F

    .prologue
    .line 222
    move v0, p1

    .line 223
    .local v0, "out":F
    iget v1, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    iget v1, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float v0, v1

    .line 224
    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    iget v0, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    .line 225
    :cond_1
    return v0

    .line 223
    :cond_2
    iget v1, p0, Lcom/android/systemui/ExpandHelper;->mLargeSize:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iget v1, p0, Lcom/android/systemui/ExpandHelper;->mLargeSize:I

    int-to-float v0, v1

    goto :goto_0
.end method

.method private clearView()V
    .locals 1

    .prologue
    .line 592
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    .line 593
    return-void
.end method

.method private findView(FF)Lcom/android/systemui/statusbar/ExpandableView;
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 230
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mEventSource:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 231
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 232
    .local v0, "location":[I
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mEventSource:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 233
    const/4 v2, 0x0

    aget v2, v0, v2

    int-to-float v2, v2

    add-float/2addr p1, v2

    .line 234
    const/4 v2, 0x1

    aget v2, v0, v2

    int-to-float v2, v2

    add-float/2addr p2, v2

    .line 235
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    invoke-interface {v2, p1, p2}, Lcom/android/systemui/ExpandHelper$Callback;->getChildAtRawPosition(FF)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v1

    .line 239
    .end local v0    # "location":[I
    .local v1, "v":Lcom/android/systemui/statusbar/ExpandableView;
    :goto_0
    return-object v1

    .line 237
    .end local v1    # "v":Lcom/android/systemui/statusbar/ExpandableView;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    invoke-interface {v2, p1, p2}, Lcom/android/systemui/ExpandHelper$Callback;->getChildAtPosition(FF)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v1

    .restart local v1    # "v":Lcom/android/systemui/statusbar/ExpandableView;
    goto :goto_0
.end method

.method private finishExpanding(ZF)V
    .locals 10
    .param p1, "force"    # Z
    .param p2, "velocity"    # F

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 546
    iget-boolean v5, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    if-nez v5, :cond_0

    .line 589
    :goto_0
    return-void

    .line 550
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    invoke-virtual {v5}, Lcom/android/systemui/ExpandHelper$ViewScaler;->getHeight()F

    move-result v0

    .line 551
    .local v0, "currentHeight":F
    iget v5, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float v3, v5

    .line 552
    .local v3, "targetHeight":F
    iget-object v5, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    invoke-virtual {v5}, Lcom/android/systemui/ExpandHelper$ViewScaler;->getHeight()F

    move-result v1

    .line 553
    .local v1, "h":F
    iget v5, p0, Lcom/android/systemui/ExpandHelper;->mOldHeight:F

    iget v8, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float v8, v8

    cmpl-float v5, v5, v8

    if-nez v5, :cond_3

    move v4, v6

    .line 554
    .local v4, "wasClosed":Z
    :goto_1
    if-eqz v4, :cond_5

    .line 555
    if-nez p1, :cond_1

    iget v5, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float v5, v5

    cmpl-float v5, v0, v5

    if-lez v5, :cond_4

    :cond_1
    iget v3, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    .line 559
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 560
    iget-object v5, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 562
    :cond_2
    iget-object v8, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    iget-object v9, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    iget v5, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    cmpl-float v5, v3, v5

    if-nez v5, :cond_8

    move v5, v6

    :goto_3
    invoke-interface {v8, v9, v5}, Lcom/android/systemui/ExpandHelper$Callback;->setUserExpandedChild(Landroid/view/View;Z)V

    .line 563
    iget-object v5, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    invoke-interface {v5, v7}, Lcom/android/systemui/ExpandHelper$Callback;->expansionStateChanged(Z)V

    .line 564
    cmpl-float v5, v3, v0

    if-eqz v5, :cond_9

    .line 565
    iget-object v5, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    new-array v6, v6, [F

    aput v3, v6, v7

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 566
    iget-object v5, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->setupStartValues()V

    .line 567
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    .line 568
    .local v2, "scaledView":Landroid/view/View;
    iget-object v5, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    new-instance v6, Lcom/android/systemui/ExpandHelper$2;

    invoke-direct {v6, p0, v2}, Lcom/android/systemui/ExpandHelper$2;-><init>(Lcom/android/systemui/ExpandHelper;Landroid/view/View;)V

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 575
    iget-object v5, p0, Lcom/android/systemui/ExpandHelper;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v5, v6, v0, v3, p2}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFF)V

    .line 576
    iget-object v5, p0, Lcom/android/systemui/ExpandHelper;->mScaleAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->start()V

    .line 581
    .end local v2    # "scaledView":Landroid/view/View;
    :goto_4
    iput-boolean v7, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    .line 582
    iput v7, p0, Lcom/android/systemui/ExpandHelper;->mExpansionStyle:I

    goto :goto_0

    .end local v4    # "wasClosed":Z
    :cond_3
    move v4, v7

    .line 553
    goto :goto_1

    .line 555
    .restart local v4    # "wasClosed":Z
    :cond_4
    iget v5, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float v3, v5

    goto :goto_2

    .line 557
    :cond_5
    if-nez p1, :cond_6

    iget v5, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    cmpg-float v5, v0, v5

    if-gez v5, :cond_7

    :cond_6
    iget v5, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float v3, v5

    :goto_5
    goto :goto_2

    :cond_7
    iget v3, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    goto :goto_5

    :cond_8
    move v5, v7

    .line 562
    goto :goto_3

    .line 578
    :cond_9
    iget-object v5, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-interface {v5, v6, v7}, Lcom/android/systemui/ExpandHelper$Callback;->setUserLockedChild(Landroid/view/View;Z)V

    goto :goto_4
.end method

.method private getCurrentVelocity()F
    .locals 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 393
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    .line 395
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEnabled()Z
    .locals 1

    .prologue
    .line 404
    iget-boolean v0, p0, Lcom/android/systemui/ExpandHelper;->mEnabled:Z

    return v0
.end method

.method private isFullyExpanded(Lcom/android/systemui/statusbar/ExpandableView;)Z
    .locals 2
    .param p1, "underFocus"    # Lcom/android/systemui/statusbar/ExpandableView;

    .prologue
    .line 408
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getMaxHeight()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInside(Landroid/view/View;FF)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 245
    if-nez p1, :cond_0

    .line 263
    :goto_0
    return v4

    .line 249
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mEventSource:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 250
    new-array v1, v6, [I

    .line 251
    .local v1, "location":[I
    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mEventSource:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 252
    aget v2, v1, v4

    int-to-float v2, v2

    add-float/2addr p2, v2

    .line 253
    aget v2, v1, v3

    int-to-float v2, v2

    add-float/2addr p3, v2

    .line 256
    .end local v1    # "location":[I
    :cond_1
    new-array v1, v6, [I

    .line 257
    .restart local v1    # "location":[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 258
    aget v2, v1, v4

    int-to-float v2, v2

    sub-float/2addr p2, v2

    .line 259
    aget v2, v1, v3

    int-to-float v2, v2

    sub-float/2addr p3, v2

    .line 262
    cmpl-float v2, p2, v5

    if-lez v2, :cond_4

    cmpl-float v2, p3, v5

    if-lez v2, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gez v2, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v5, p3, v5

    if-gez v5, :cond_3

    move v5, v3

    :goto_2
    and-int/2addr v2, v5

    if-eqz v2, :cond_4

    move v0, v3

    .local v0, "inside":Z
    :goto_3
    move v4, v0

    .line 263
    goto :goto_0

    .end local v0    # "inside":Z
    :cond_2
    move v2, v4

    .line 262
    goto :goto_1

    :cond_3
    move v5, v4

    goto :goto_2

    :cond_4
    move v0, v4

    goto :goto_3
.end method

.method private maybeRecycleVelocityTracker(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 386
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 388
    :cond_1
    return-void
.end method

.method private startExpanding(Lcom/android/systemui/statusbar/ExpandableView;I)Z
    .locals 3
    .param p1, "v"    # Lcom/android/systemui/statusbar/ExpandableView;
    .param p2, "expandType"    # I

    .prologue
    const/4 v0, 0x1

    .line 519
    instance-of v1, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v1, :cond_1

    .line 520
    const/4 v0, 0x0

    .line 542
    :cond_0
    :goto_0
    return v0

    .line 522
    :cond_1
    iput p2, p0, Lcom/android/systemui/ExpandHelper;->mExpansionStyle:I

    .line 523
    iget-boolean v1, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    if-eq p1, v1, :cond_0

    .line 526
    :cond_2
    iput-boolean v0, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    .line 527
    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    invoke-interface {v1, v0}, Lcom/android/systemui/ExpandHelper$Callback;->expansionStateChanged(Z)V

    .line 529
    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    invoke-interface {v1, p1, v0}, Lcom/android/systemui/ExpandHelper$Callback;->setUserLockedChild(Landroid/view/View;Z)V

    .line 530
    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    invoke-virtual {v1, p1}, Lcom/android/systemui/ExpandHelper$ViewScaler;->setView(Lcom/android/systemui/statusbar/ExpandableView;)V

    .line 531
    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    invoke-virtual {v1}, Lcom/android/systemui/ExpandHelper$ViewScaler;->getHeight()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/ExpandHelper;->mOldHeight:F

    .line 532
    iget v1, p0, Lcom/android/systemui/ExpandHelper;->mOldHeight:F

    iput v1, p0, Lcom/android/systemui/ExpandHelper;->mCurrentHeight:F

    .line 533
    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    invoke-interface {v1, p1}, Lcom/android/systemui/ExpandHelper$Callback;->canChildBeExpanded(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 535
    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    iget v2, p0, Lcom/android/systemui/ExpandHelper;->mLargeSize:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/ExpandHelper$ViewScaler;->getNaturalHeight(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    goto :goto_0

    .line 538
    :cond_3
    iget v1, p0, Lcom/android/systemui/ExpandHelper;->mOldHeight:F

    iput v1, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    goto :goto_0
.end method

.method private trackVelocity(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 361
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 362
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 380
    :goto_0
    :pswitch_0
    return-void

    .line 364
    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_0

    .line 365
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 369
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 367
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_1

    .line 372
    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_1

    .line 373
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 375
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 362
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private updateExpansion()V
    .locals 9

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    .line 207
    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v6}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v6

    iget v8, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchSpan:F

    sub-float v4, v6, v8

    .line 208
    .local v4, "span":F
    mul-float/2addr v4, v7

    .line 209
    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v6}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v6

    iget v8, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchFocusY:F

    sub-float v0, v6, v8

    .line 210
    .local v0, "drag":F
    mul-float/2addr v0, v7

    .line 211
    iget v6, p0, Lcom/android/systemui/ExpandHelper;->mGravity:I

    const/16 v8, 0x50

    if-ne v6, v8, :cond_0

    const/high16 v6, -0x40800000    # -1.0f

    :goto_0
    mul-float/2addr v0, v6

    .line 212
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v8

    add-float/2addr v6, v8

    add-float v3, v6, v7

    .line 213
    .local v3, "pull":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    mul-float/2addr v6, v0

    div-float/2addr v6, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v7

    mul-float/2addr v7, v4

    div-float/2addr v7, v3

    add-float v1, v6, v7

    .line 214
    .local v1, "hand":F
    iget v6, p0, Lcom/android/systemui/ExpandHelper;->mOldHeight:F

    add-float v5, v1, v6

    .line 215
    .local v5, "target":F
    invoke-direct {p0, v5}, Lcom/android/systemui/ExpandHelper;->clamp(F)F

    move-result v2

    .line 216
    .local v2, "newHeight":F
    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    invoke-virtual {v6, v2}, Lcom/android/systemui/ExpandHelper$ViewScaler;->setHeight(F)V

    .line 217
    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v6}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v6

    iput v6, p0, Lcom/android/systemui/ExpandHelper;->mLastFocusY:F

    .line 218
    iget-object v6, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v6}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v6

    iput v6, p0, Lcom/android/systemui/ExpandHelper;->mLastSpanY:F

    .line 219
    return-void

    .end local v1    # "hand":F
    .end local v2    # "newHeight":F
    .end local v3    # "pull":F
    .end local v5    # "target":F
    :cond_0
    move v6, v7

    .line 211
    goto :goto_0
.end method

.method private declared-synchronized vibrate(J)V
    .locals 3
    .param p1, "duration"    # J

    .prologue
    .line 622
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/systemui/ExpandHelper;->mVibrator:Landroid/os/Vibrator;

    .line 626
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mVibrator:Landroid/os/Vibrator;

    sget-object v1, Lcom/android/systemui/ExpandHelper;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v0, p1, p2, v1}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 627
    monitor-exit p0

    return-void

    .line 622
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    .line 599
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/ExpandHelper;->finishExpanding(ZF)V

    .line 600
    invoke-direct {p0}, Lcom/android/systemui/ExpandHelper;->clearView()V

    .line 603
    new-instance v0, Landroid/view/ScaleGestureDetector;

    iget-object v1, p0, Lcom/android/systemui/ExpandHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/ExpandHelper;->mScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    .line 604
    return-void
.end method

.method public clearViewScaler(Lcom/android/systemui/statusbar/ExpandableView;)V
    .locals 2
    .param p1, "view"    # Lcom/android/systemui/statusbar/ExpandableView;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    iget-object v0, v0, Lcom/android/systemui/ExpandHelper$ViewScaler;->mView:Lcom/android/systemui/statusbar/ExpandableView;

    if-ne v0, p1, :cond_0

    .line 171
    const-string v0, "ExpandHelper"

    const-string v1, "clearViewScaler"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v0, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/ExpandHelper$ViewScaler;->setView(Lcom/android/systemui/statusbar/ExpandableView;)V

    .line 174
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 280
    invoke-direct {p0}, Lcom/android/systemui/ExpandHelper;->isEnabled()Z

    move-result v7

    if-nez v7, :cond_1

    move v5, v6

    .line 356
    :cond_0
    :goto_0
    return v5

    .line 283
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/ExpandHelper;->trackVelocity(Landroid/view/MotionEvent;)V

    .line 284
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 291
    .local v0, "action":I
    iget-object v7, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v7, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 292
    iget-object v7, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v7}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v7

    float-to-int v1, v7

    .line 293
    .local v1, "x":I
    iget-object v7, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v7}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v7

    float-to-int v3, v7

    .line 295
    .local v3, "y":I
    int-to-float v7, v3

    iput v7, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchFocusY:F

    .line 296
    iget-object v7, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v7}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v7

    iput v7, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchSpan:F

    .line 297
    iget v7, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchFocusY:F

    iput v7, p0, Lcom/android/systemui/ExpandHelper;->mLastFocusY:F

    .line 298
    iget v7, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchSpan:F

    iput v7, p0, Lcom/android/systemui/ExpandHelper;->mLastSpanY:F

    .line 301
    iget-boolean v7, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    if-eqz v7, :cond_2

    .line 302
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    iput v6, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:F

    .line 303
    invoke-direct {p0, p1}, Lcom/android/systemui/ExpandHelper;->maybeRecycleVelocityTracker(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 306
    :cond_2
    if-ne v0, v9, :cond_3

    iget v7, p0, Lcom/android/systemui/ExpandHelper;->mExpansionStyle:I

    and-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_0

    .line 310
    :cond_3
    and-int/lit16 v7, v0, 0xff

    packed-switch v7, :pswitch_data_0

    .line 354
    :cond_4
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    iput v5, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:F

    .line 355
    invoke-direct {p0, p1}, Lcom/android/systemui/ExpandHelper;->maybeRecycleVelocityTracker(Landroid/view/MotionEvent;)V

    .line 356
    iget-boolean v5, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    goto :goto_0

    .line 312
    :pswitch_0
    iget-object v7, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v7}, Landroid/view/ScaleGestureDetector;->getCurrentSpanX()F

    move-result v2

    .line 315
    .local v2, "xspan":F
    iget v7, p0, Lcom/android/systemui/ExpandHelper;->mPullGestureMinXSpan:F

    cmpl-float v7, v2, v7

    if-lez v7, :cond_5

    iget-object v7, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v7}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    move-result v7

    const/high16 v8, 0x41200000    # 10.0f

    add-float/2addr v7, v8

    cmpl-float v7, v2, v7

    if-lez v7, :cond_5

    iget-boolean v7, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    if-nez v7, :cond_5

    .line 319
    iget-object v7, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-direct {p0, v7, v9}, Lcom/android/systemui/ExpandHelper;->startExpanding(Lcom/android/systemui/statusbar/ExpandableView;I)Z

    .line 320
    iput-boolean v6, p0, Lcom/android/systemui/ExpandHelper;->mWatchingForPull:Z

    .line 322
    :cond_5
    iget-boolean v7, p0, Lcom/android/systemui/ExpandHelper;->mWatchingForPull:Z

    if-eqz v7, :cond_4

    .line 323
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    iget v8, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    sub-float v4, v7, v8

    .line 324
    .local v4, "yDiff":F
    iget v7, p0, Lcom/android/systemui/ExpandHelper;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v7, v4, v7

    if-lez v7, :cond_4

    .line 326
    iput-boolean v6, p0, Lcom/android/systemui/ExpandHelper;->mWatchingForPull:Z

    .line 327
    iget-object v7, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-direct {p0, v7}, Lcom/android/systemui/ExpandHelper;->isFullyExpanded(Lcom/android/systemui/statusbar/ExpandableView;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 328
    iget-object v7, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-direct {p0, v7, v5}, Lcom/android/systemui/ExpandHelper;->startExpanding(Lcom/android/systemui/statusbar/ExpandableView;I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 329
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    iput v5, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:F

    .line 330
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    iput v5, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    .line 331
    iput-boolean v6, p0, Lcom/android/systemui/ExpandHelper;->mHasPopped:Z

    goto :goto_1

    .line 340
    .end local v2    # "xspan":F
    .end local v4    # "yDiff":F
    :pswitch_1
    iget-object v7, p0, Lcom/android/systemui/ExpandHelper;->mScrollAdapter:Lcom/android/systemui/statusbar/policy/ScrollAdapter;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/systemui/ExpandHelper;->mScrollAdapter:Lcom/android/systemui/statusbar/policy/ScrollAdapter;

    invoke-interface {v7}, Lcom/android/systemui/statusbar/policy/ScrollAdapter;->getHostView()Landroid/view/View;

    move-result-object v7

    int-to-float v8, v1

    int-to-float v9, v3

    invoke-direct {p0, v7, v8, v9}, Lcom/android/systemui/ExpandHelper;->isInside(Landroid/view/View;FF)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/systemui/ExpandHelper;->mScrollAdapter:Lcom/android/systemui/statusbar/policy/ScrollAdapter;

    invoke-interface {v7}, Lcom/android/systemui/statusbar/policy/ScrollAdapter;->isScrolledToTop()Z

    move-result v7

    if-eqz v7, :cond_6

    :goto_2
    iput-boolean v5, p0, Lcom/android/systemui/ExpandHelper;->mWatchingForPull:Z

    .line 343
    int-to-float v5, v1

    int-to-float v6, v3

    invoke-direct {p0, v5, v6}, Lcom/android/systemui/ExpandHelper;->findView(FF)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    .line 344
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    goto/16 :goto_1

    :cond_6
    move v5, v6

    .line 340
    goto :goto_2

    .line 350
    :pswitch_2
    invoke-direct {p0}, Lcom/android/systemui/ExpandHelper;->getCurrentVelocity()F

    move-result v5

    invoke-direct {p0, v6, v5}, Lcom/android/systemui/ExpandHelper;->finishExpanding(ZF)V

    .line 351
    invoke-direct {p0}, Lcom/android/systemui/ExpandHelper;->clearView()V

    goto/16 :goto_1

    .line 310
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 413
    invoke-direct {p0}, Lcom/android/systemui/ExpandHelper;->isEnabled()Z

    move-result v8

    if-nez v8, :cond_0

    .line 512
    :goto_0
    return v10

    .line 416
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/ExpandHelper;->trackVelocity(Landroid/view/MotionEvent;)V

    .line 417
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 424
    .local v0, "action":I
    iget-object v8, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v8, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 425
    iget-object v8, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v8}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v8

    float-to-int v5, v8

    .line 426
    .local v5, "x":I
    iget-object v8, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v8}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v8

    float-to-int v6, v8

    .line 428
    .local v6, "y":I
    iget-boolean v8, p0, Lcom/android/systemui/ExpandHelper;->mOnlyMovements:Z

    if-eqz v8, :cond_1

    .line 429
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    iput v8, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:F

    goto :goto_0

    .line 432
    :cond_1
    packed-switch v0, :pswitch_data_0

    .line 510
    :cond_2
    :goto_1
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    iput v8, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:F

    .line 511
    invoke-direct {p0, p1}, Lcom/android/systemui/ExpandHelper;->maybeRecycleVelocityTracker(Landroid/view/MotionEvent;)V

    .line 512
    iget-object v8, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v8, :cond_a

    :goto_2
    move v10, v9

    goto :goto_0

    .line 434
    :pswitch_1
    iget-object v8, p0, Lcom/android/systemui/ExpandHelper;->mScrollAdapter:Lcom/android/systemui/statusbar/policy/ScrollAdapter;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/systemui/ExpandHelper;->mScrollAdapter:Lcom/android/systemui/statusbar/policy/ScrollAdapter;

    invoke-interface {v8}, Lcom/android/systemui/statusbar/policy/ScrollAdapter;->getHostView()Landroid/view/View;

    move-result-object v8

    int-to-float v11, v5

    int-to-float v12, v6

    invoke-direct {p0, v8, v11, v12}, Lcom/android/systemui/ExpandHelper;->isInside(Landroid/view/View;FF)Z

    move-result v8

    if-eqz v8, :cond_3

    move v8, v9

    :goto_3
    iput-boolean v8, p0, Lcom/android/systemui/ExpandHelper;->mWatchingForPull:Z

    .line 436
    int-to-float v8, v5

    int-to-float v11, v6

    invoke-direct {p0, v8, v11}, Lcom/android/systemui/ExpandHelper;->findView(FF)Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    .line 437
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iput v8, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    goto :goto_1

    :cond_3
    move v8, v10

    .line 434
    goto :goto_3

    .line 440
    :pswitch_2
    iget-boolean v8, p0, Lcom/android/systemui/ExpandHelper;->mWatchingForPull:Z

    if-eqz v8, :cond_4

    .line 441
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    iget v11, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    sub-float v7, v8, v11

    .line 442
    .local v7, "yDiff":F
    iget v8, p0, Lcom/android/systemui/ExpandHelper;->mTouchSlop:I

    int-to-float v8, v8

    cmpl-float v8, v7, v8

    if-lez v8, :cond_4

    .line 444
    iput-boolean v10, p0, Lcom/android/systemui/ExpandHelper;->mWatchingForPull:Z

    .line 445
    iget-object v8, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-direct {p0, v8}, Lcom/android/systemui/ExpandHelper;->isFullyExpanded(Lcom/android/systemui/statusbar/ExpandableView;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 446
    iget-object v8, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-direct {p0, v8, v9}, Lcom/android/systemui/ExpandHelper;->startExpanding(Lcom/android/systemui/statusbar/ExpandableView;I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 447
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    iput v8, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    .line 448
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    iput v8, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:F

    .line 449
    iput-boolean v10, p0, Lcom/android/systemui/ExpandHelper;->mHasPopped:Z

    .line 454
    .end local v7    # "yDiff":F
    :cond_4
    iget-boolean v8, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    if-eqz v8, :cond_9

    iget v8, p0, Lcom/android/systemui/ExpandHelper;->mExpansionStyle:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_9

    .line 455
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    iget v11, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:F

    sub-float/2addr v8, v11

    iget v11, p0, Lcom/android/systemui/ExpandHelper;->mCurrentHeight:F

    add-float v4, v8, v11

    .line 456
    .local v4, "rawHeight":F
    invoke-direct {p0, v4}, Lcom/android/systemui/ExpandHelper;->clamp(F)F

    move-result v3

    .line 457
    .local v3, "newHeight":F
    const/4 v2, 0x0

    .line 458
    .local v2, "isFinished":Z
    const/4 v1, 0x0

    .line 459
    .local v1, "expanded":Z
    iget v8, p0, Lcom/android/systemui/ExpandHelper;->mNaturalHeight:F

    cmpl-float v8, v4, v8

    if-lez v8, :cond_5

    .line 460
    const/4 v2, 0x1

    .line 461
    const/4 v1, 0x1

    .line 463
    :cond_5
    iget v8, p0, Lcom/android/systemui/ExpandHelper;->mSmallSize:I

    int-to-float v8, v8

    cmpg-float v8, v4, v8

    if-gez v8, :cond_6

    .line 464
    const/4 v2, 0x1

    .line 465
    const/4 v1, 0x0

    .line 468
    :cond_6
    iget-boolean v8, p0, Lcom/android/systemui/ExpandHelper;->mHasPopped:Z

    if-nez v8, :cond_7

    .line 469
    iget v8, p0, Lcom/android/systemui/ExpandHelper;->mPopDuration:I

    int-to-long v12, v8

    invoke-direct {p0, v12, v13}, Lcom/android/systemui/ExpandHelper;->vibrate(J)V

    .line 470
    iput-boolean v9, p0, Lcom/android/systemui/ExpandHelper;->mHasPopped:Z

    .line 473
    :cond_7
    iget-object v8, p0, Lcom/android/systemui/ExpandHelper;->mScaler:Lcom/android/systemui/ExpandHelper$ViewScaler;

    invoke-virtual {v8, v3}, Lcom/android/systemui/ExpandHelper$ViewScaler;->setHeight(F)V

    .line 474
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    iput v8, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:F

    .line 475
    if-eqz v2, :cond_8

    .line 476
    iget-object v8, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    iget-object v9, p0, Lcom/android/systemui/ExpandHelper;->mResizedView:Lcom/android/systemui/statusbar/ExpandableView;

    invoke-interface {v8, v9, v1}, Lcom/android/systemui/ExpandHelper$Callback;->setUserExpandedChild(Landroid/view/View;Z)V

    .line 477
    iget-object v8, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    invoke-interface {v8, v10}, Lcom/android/systemui/ExpandHelper$Callback;->expansionStateChanged(Z)V

    goto/16 :goto_0

    .line 480
    :cond_8
    iget-object v8, p0, Lcom/android/systemui/ExpandHelper;->mCallback:Lcom/android/systemui/ExpandHelper$Callback;

    invoke-interface {v8, v9}, Lcom/android/systemui/ExpandHelper$Callback;->expansionStateChanged(Z)V

    move v10, v9

    .line 482
    goto/16 :goto_0

    .line 485
    .end local v1    # "expanded":Z
    .end local v2    # "isFinished":Z
    .end local v3    # "newHeight":F
    .end local v4    # "rawHeight":F
    :cond_9
    iget-boolean v8, p0, Lcom/android/systemui/ExpandHelper;->mExpanding:Z

    if-eqz v8, :cond_2

    .line 488
    invoke-direct {p0}, Lcom/android/systemui/ExpandHelper;->updateExpansion()V

    .line 489
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    iput v8, p0, Lcom/android/systemui/ExpandHelper;->mLastMotionY:F

    move v10, v9

    .line 490
    goto/16 :goto_0

    .line 499
    :pswitch_3
    iget v8, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    iget-object v11, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v11}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v11

    iget v12, p0, Lcom/android/systemui/ExpandHelper;->mLastFocusY:F

    sub-float/2addr v11, v12

    add-float/2addr v8, v11

    iput v8, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchY:F

    .line 500
    iget v8, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchSpan:F

    iget-object v11, p0, Lcom/android/systemui/ExpandHelper;->mSGD:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v11}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v11

    iget v12, p0, Lcom/android/systemui/ExpandHelper;->mLastSpanY:F

    sub-float/2addr v11, v12

    add-float/2addr v8, v11

    iput v8, p0, Lcom/android/systemui/ExpandHelper;->mInitialTouchSpan:F

    goto/16 :goto_1

    .line 506
    :pswitch_4
    invoke-direct {p0}, Lcom/android/systemui/ExpandHelper;->getCurrentVelocity()F

    move-result v8

    invoke-direct {p0, v10, v8}, Lcom/android/systemui/ExpandHelper;->finishExpanding(ZF)V

    .line 507
    invoke-direct {p0}, Lcom/android/systemui/ExpandHelper;->clearView()V

    goto/16 :goto_1

    :cond_a
    move v9, v10

    .line 512
    goto/16 :goto_2

    .line 432
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public onlyObserveMovements(Z)V
    .locals 0
    .param p1, "onlyMovements"    # Z

    .prologue
    .line 615
    iput-boolean p1, p0, Lcom/android/systemui/ExpandHelper;->mOnlyMovements:Z

    .line 616
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 400
    iput-boolean p1, p0, Lcom/android/systemui/ExpandHelper;->mEnabled:Z

    .line 401
    return-void
.end method

.method public setEventSource(Landroid/view/View;)V
    .locals 0
    .param p1, "eventSource"    # Landroid/view/View;

    .prologue
    .line 267
    iput-object p1, p0, Lcom/android/systemui/ExpandHelper;->mEventSource:Landroid/view/View;

    .line 268
    return-void
.end method

.method public setGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    .prologue
    .line 271
    iput p1, p0, Lcom/android/systemui/ExpandHelper;->mGravity:I

    .line 272
    return-void
.end method

.method public setScrollAdapter(Lcom/android/systemui/statusbar/policy/ScrollAdapter;)V
    .locals 0
    .param p1, "adapter"    # Lcom/android/systemui/statusbar/policy/ScrollAdapter;

    .prologue
    .line 275
    iput-object p1, p0, Lcom/android/systemui/ExpandHelper;->mScrollAdapter:Lcom/android/systemui/statusbar/policy/ScrollAdapter;

    .line 276
    return-void
.end method
