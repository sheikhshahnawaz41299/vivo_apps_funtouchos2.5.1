.class public abstract Lcom/android/systemui/statusbar/phone/PanelView;
.super Landroid/widget/FrameLayout;
.source "PanelView.java"


# static fields
.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String;


# instance fields
.field mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

.field private mBounceInterpolator:Landroid/view/animation/Interpolator;

.field private mClosing:Z

.field private mCollapseAfterPeek:Z

.field private mDozingOnDown:Z

.field private mEdgeTapAreaWidth:I

.field private mExpandedFraction:F

.field protected mExpandedHeight:F

.field private mExpanding:Z

.field private mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field private final mFlingCollapseRunnable:Ljava/lang/Runnable;

.field private mGestureWaitForTouchSlop:Z

.field private mHasLayoutedSinceDown:Z

.field private mHeightAnimator:Landroid/animation/ValueAnimator;

.field protected mHintAnimationRunning:Z

.field private mHintDistance:F

.field private mIngoreTouchEvent:Z

.field private mInitialOffsetOnTouch:F

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private mInstantExpanding:Z

.field private mJustPeeked:Z

.field private mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mOverExpandedBeforeFling:Z

.field private mPanelClosedOnDown:Z

.field private mPeekAnimator:Landroid/animation/ObjectAnimator;

.field private mPeekHeight:F

.field private mPeekPending:Z

.field private mPeekRunnable:Ljava/lang/Runnable;

.field private mPeekTouching:Z

.field private final mPostCollapseRunnable:Ljava/lang/Runnable;

.field protected mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mTouchAboveFalsingThreshold:Z

.field private mTouchDisabled:Z

.field private mTouchOffset:F

.field protected mTouchSlop:I

.field private mTouchSlopExceeded:Z

.field private mTouchStartedInEmptyArea:Z

.field protected mTracking:Z

.field private mTrackingPointer:I

.field private mUnlockFalsingThreshold:I

.field private mUpdateFlingOnLayout:Z

.field private mUpdateFlingVelocity:F

.field private mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

.field private mViewName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 189
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F

    .line 64
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mIngoreTouchEvent:Z

    .line 115
    new-instance v0, Lcom/android/systemui/statusbar/phone/PanelView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PanelView$1;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekRunnable:Ljava/lang/Runnable;

    .line 1045
    new-instance v0, Lcom/android/systemui/statusbar/phone/PanelView$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PanelView$6;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingCollapseRunnable:Ljava/lang/Runnable;

    .line 1273
    new-instance v0, Lcom/android/systemui/statusbar/phone/PanelView$12;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PanelView$12;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPostCollapseRunnable:Ljava/lang/Runnable;

    .line 190
    new-instance v0, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    const v1, 0x3f19999a    # 0.6f

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;F)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .line 191
    const v0, 0x10c000d

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 193
    const v0, 0x10c000e

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 195
    new-instance v0, Lcom/android/systemui/statusbar/phone/BounceInterpolator;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/BounceInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBounceInterpolator:Landroid/view/animation/Interpolator;

    .line 196
    return-void
.end method

.method private abortAnimations()V
    .locals 1

    .prologue
    .line 1128
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelPeek()V

    .line 1129
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelHeightAnimator()V

    .line 1130
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPostCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1131
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1132
    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/PanelView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PanelView;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekPending:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PanelView;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->runPeekAnimation()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/phone/PanelView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PanelView;
    .param p1, "x1"    # Landroid/animation/ObjectAnimator;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/PanelView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PanelView;

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mCollapseAfterPeek:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/phone/PanelView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PanelView;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mCollapseAfterPeek:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PanelView;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyBarPanelExpansionChanged()V

    return-void
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/phone/PanelView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PanelView;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PanelView;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingFinished()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/PanelView;FI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PanelView;
    .param p1, "x1"    # F
    .param p2, "x2"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedFraction(FI)V

    return-void
.end method

.method static synthetic access$802(Lcom/android/systemui/statusbar/phone/PanelView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PanelView;
    .param p1, "x1"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInstantExpanding:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/PanelView;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PanelView;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->startUnlockHintAnimationPhase2(Ljava/lang/Runnable;)V

    return-void
.end method

.method private cancelHeightAnimator()V
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 608
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->endClosing()V

    .line 609
    return-void
.end method

.method private createHeightAnimator(F)Landroid/animation/ValueAnimator;
    .locals 4
    .param p1, "targetHeight"    # F

    .prologue
    .line 1227
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1228
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/android/systemui/statusbar/phone/PanelView$11;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PanelView$11;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1237
    return-object v0
.end method

.method private endClosing()V
    .locals 1

    .prologue
    .line 612
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    if-eqz v0, :cond_0

    .line 613
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    .line 614
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onClosingFinished()V

    .line 616
    :cond_0
    return-void
.end method

.method private getFalsingThreshold()I
    .locals 2

    .prologue
    .line 469
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isScreenOnComingFromTouch()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v0, 0x3fc00000    # 1.5f

    .line 470
    .local v0, "factor":F
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mUnlockFalsingThreshold:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    return v1

    .line 469
    .end local v0    # "factor":F
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method private initVelocityTracker()V
    .locals 1

    .prologue
    .line 619
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    if-eqz v0, :cond_0

    .line 620
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;->recycle()V

    .line 622
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/VelocityTrackerFactory;->obtain(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    .line 623
    return-void
.end method

.method private isBelowFalsingThreshold()Z
    .locals 1

    .prologue
    .line 664
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchAboveFalsingThreshold:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isFalsingThresholdNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final varargs logf(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "fmt"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 55
    sget-object v1, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mViewName:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mViewName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return-void

    .line 55
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private notifyBarPanelExpansionChanged()V
    .locals 4

    .prologue
    .line 1241
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekPending:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, p0, v2, v0}, Lcom/android/systemui/statusbar/phone/PanelBar;->panelExpansionChanged(Lcom/android/systemui/statusbar/phone/PanelView;FZ)V

    .line 1243
    return-void

    .line 1241
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyExpandingFinished()V
    .locals 1

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpanding:Z

    if-eqz v0, :cond_0

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpanding:Z

    .line 141
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onExpandingFinished()V

    .line 143
    :cond_0
    return-void
.end method

.method private notifyExpandingStarted()V
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpanding:Z

    if-nez v0, :cond_0

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpanding:Z

    .line 134
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onExpandingStarted()V

    .line 136
    :cond_0
    return-void
.end method

.method private onMiddleClicked()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1280
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1299
    :cond_0
    :goto_0
    return v0

    .line 1282
    :pswitch_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mDozingOnDown:Z

    if-nez v2, :cond_0

    .line 1283
    const/4 v2, 0x3

    invoke-static {v2, v1, v1}, Lcom/android/systemui/EventLogTags;->writeSysuiLockscreenGesture(III)V

    .line 1286
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->startUnlockHintAnimation()V

    goto :goto_0

    .line 1290
    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->goToKeyguard()V

    goto :goto_0

    .line 1296
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPostCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->post(Ljava/lang/Runnable;)Z

    move v0, v1

    .line 1297
    goto :goto_0

    .line 1280
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private runPeekAnimation()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 153
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getPeekHeight()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekHeight:F

    .line 155
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 186
    :goto_0
    return-void

    .line 158
    :cond_0
    const-string v0, "expandedHeight"

    new-array v1, v4, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekHeight:F

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    .line 160
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 161
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/phone/PanelView$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PanelView$2;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 183
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingStarted()V

    .line 184
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 185
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z

    goto :goto_0
.end method

.method private schedulePeek()V
    .locals 3

    .prologue
    .line 146
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekPending:Z

    .line 147
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v2

    int-to-long v0, v2

    .line 148
    .local v0, "timeout":J
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 149
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyBarPanelExpansionChanged()V

    .line 150
    return-void
.end method

.method private setExpandedFraction(FI)V
    .locals 1
    .param p1, "frac"    # F
    .param p2, "barState"    # I

    .prologue
    .line 987
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-direct {p0, v0, p2}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedHeight(FI)V

    .line 988
    return-void
.end method

.method private setExpandedHeight(FI)V
    .locals 1
    .param p1, "height"    # F
    .param p2, "barState"    # I

    .prologue
    .line 818
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getOverExpansionPixels()F

    move-result v0

    add-float/2addr v0, p1

    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedHeightInternal(FI)V

    .line 819
    return-void
.end method

.method private startUnlockHintAnimationPhase1(Ljava/lang/Runnable;)V
    .locals 5
    .param p1, "onAnimationFinished"    # Ljava/lang/Runnable;

    .prologue
    .line 1164
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintDistance:F

    sub-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 1165
    .local v1, "target":F
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->createHeightAnimator(F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1166
    .local v0, "animator":Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1167
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1168
    new-instance v2, Lcom/android/systemui/statusbar/phone/PanelView$9;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView$9;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1186
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1187
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    .line 1206
    return-void
.end method

.method private startUnlockHintAnimationPhase2(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "onAnimationFinished"    # Ljava/lang/Runnable;

    .prologue
    .line 1212
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->createHeightAnimator(F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1213
    .local v0, "animator":Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0x1c2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1214
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBounceInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1215
    new-instance v1, Lcom/android/systemui/statusbar/phone/PanelView$10;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView$10;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1222
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1223
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    .line 1224
    return-void
.end method

.method private trackMovement(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 210
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float v0, v2, v3

    .line 211
    .local v0, "deltaX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float v1, v2, v3

    .line 212
    .local v1, "deltaY":F
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 213
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    invoke-interface {v2, p1}, Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;->addMovement(Landroid/view/MotionEvent;)V

    .line 214
    :cond_0
    neg-float v2, v0

    neg-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 215
    return-void
.end method


# virtual methods
.method protected abstract animateCollapseFloor(Landroid/animation/AnimatorListenerAdapter;)V
.end method

.method protected abstract animateExpandFloor()V
.end method

.method public cancelPeek()V
    .locals 1

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 1065
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1067
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1068
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekPending:Z

    .line 1072
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyBarPanelExpansionChanged()V

    .line 1073
    return-void
.end method

.method public collapse(Z)V
    .locals 4
    .param p1, "delayed"    # Z

    .prologue
    const/4 v1, 0x1

    .line 1021
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekPending:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    .line 1022
    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mCollapseAfterPeek:Z

    .line 1023
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekPending:Z

    if-eqz v0, :cond_1

    .line 1027
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1028
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1043
    :cond_1
    :goto_0
    return-void

    .line 1032
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    if-nez v0, :cond_1

    .line 1034
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelHeightAnimator()V

    .line 1035
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    .line 1036
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingStarted()V

    .line 1037
    if-eqz p1, :cond_3

    .line 1038
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingCollapseRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x78

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/systemui/statusbar/phone/PanelView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1040
    :cond_3
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->fling(FZ)V

    goto :goto_0
.end method

.method protected abstract drawFloor(F)V
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1308
    const-string v1, "[PanelView(%s): expandedHeight=%f maxPanelHeight=%d closing=%s tracking=%s justPeeked=%s peekAnim=%s%s timeAnim=%s%s touchDisabled=%s]"

    const/16 v0, 0xb

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedHeight()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    if-eqz v0, :cond_0

    const-string v0, "T"

    :goto_0
    aput-object v0, v2, v3

    const/4 v3, 0x4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-eqz v0, :cond_1

    const-string v0, "T"

    :goto_1
    aput-object v0, v2, v3

    const/4 v3, 0x5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z

    if-eqz v0, :cond_2

    const-string v0, "T"

    :goto_2
    aput-object v0, v2, v3

    const/4 v0, 0x6

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    aput-object v3, v2, v0

    const/4 v3, 0x7

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, " (started)"

    :goto_3
    aput-object v0, v2, v3

    const/16 v0, 0x8

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    aput-object v3, v2, v0

    const/16 v3, 0x9

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, " (started)"

    :goto_4
    aput-object v0, v2, v3

    const/16 v3, 0xa

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchDisabled:Z

    if-eqz v0, :cond_5

    const-string v0, "T"

    :goto_5
    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1321
    return-void

    .line 1308
    :cond_0
    const-string v0, "f"

    goto :goto_0

    :cond_1
    const-string v0, "f"

    goto :goto_1

    :cond_2
    const-string v0, "f"

    goto :goto_2

    :cond_3
    const-string v0, ""

    goto :goto_3

    :cond_4
    const-string v0, ""

    goto :goto_4

    :cond_5
    const-string v0, "f"

    goto :goto_5
.end method

.method public expand()V
    .locals 2

    .prologue
    .line 1054
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1055
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->startOpeningPanel(Lcom/android/systemui/statusbar/phone/PanelView;)V

    .line 1056
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingStarted()V

    .line 1057
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->fling(FZ)V

    .line 1061
    :cond_0
    return-void
.end method

.method protected fling(FZ)V
    .locals 11
    .param p1, "vel"    # F
    .param p2, "expand"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 668
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelPeek()V

    .line 669
    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v8

    int-to-float v4, v8

    .line 674
    .local v4, "target":F
    :goto_0
    if-eqz p2, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->fullyExpandedClearAllVisible()Z

    move-result v8

    if-eqz v8, :cond_5

    iget v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v9

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getClearAllHeight()I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isClearAllVisible()Z

    move-result v8

    if-nez v8, :cond_5

    move v1, v6

    .line 677
    .local v1, "clearAllExpandHack":Z
    :goto_1
    if-eqz v1, :cond_0

    .line 678
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getClearAllHeight()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v4, v8

    .line 680
    :cond_0
    iget v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    cmpl-float v8, v4, v8

    if-eqz v8, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getOverExpansionAmount()F

    move-result v8

    cmpl-float v8, v8, v5

    if-lez v8, :cond_7

    if-eqz p2, :cond_7

    .line 682
    :cond_1
    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    cmpl-float v6, v6, v5

    if-eqz v6, :cond_6

    .line 683
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->animateExpandFloor()V

    .line 693
    :cond_2
    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingFinished()V

    .line 764
    :cond_3
    :goto_3
    return-void

    .end local v1    # "clearAllExpandHack":Z
    .end local v4    # "target":F
    :cond_4
    move v4, v5

    .line 669
    goto :goto_0

    .restart local v4    # "target":F
    :cond_5
    move v1, v7

    .line 674
    goto :goto_1

    .line 684
    .restart local v1    # "clearAllExpandHack":Z
    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getFloorBottomPosition()F

    move-result v6

    cmpl-float v5, v6, v5

    if-eqz v5, :cond_2

    .line 685
    new-instance v5, Lcom/android/systemui/statusbar/phone/PanelView$3;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/phone/PanelView$3;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;)V

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/PanelView;->animateCollapseFloor(Landroid/animation/AnimatorListenerAdapter;)V

    goto :goto_2

    .line 696
    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getOverExpansionAmount()F

    move-result v8

    cmpl-float v5, v8, v5

    if-lez v5, :cond_8

    move v5, v6

    :goto_4
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mOverExpandedBeforeFling:Z

    .line 697
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/PanelView;->createHeightAnimator(F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 718
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 719
    iget v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    sub-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/systemui/vivo/common/utils/DisplayUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v5, v8

    const/high16 v8, 0x43fa0000    # 500.0f

    mul-float/2addr v5, v8

    float-to-int v5, v5

    int-to-long v8, v5

    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 721
    new-instance v5, Lcom/android/systemui/statusbar/phone/PanelView$4;

    invoke-direct {v5, p0, v1}, Lcom/android/systemui/statusbar/phone/PanelView$4;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;Z)V

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 743
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    .line 745
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/StateUtils;->getInstance()Lcom/android/systemui/vivo/common/utils/StateUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/vivo/common/utils/StateUtils;->isKeyguardShowingWithShade()Z

    move-result v3

    .line 746
    .local v3, "flingOnKeyguard":Z
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/StateUtils;->getInstance()Lcom/android/systemui/vivo/common/utils/StateUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/vivo/common/utils/StateUtils;->isKeyguardShowing()Z

    move-result v5

    if-nez v5, :cond_9

    move v2, v6

    .line 747
    .local v2, "flingAfterUnlock":Z
    :goto_5
    if-eqz p2, :cond_a

    .line 748
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->animateExpandFloor()V

    .line 758
    :goto_6
    if-nez v3, :cond_3

    if-nez v2, :cond_3

    .line 763
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_3

    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    .end local v2    # "flingAfterUnlock":Z
    .end local v3    # "flingOnKeyguard":Z
    :cond_8
    move v5, v7

    .line 696
    goto :goto_4

    .restart local v0    # "animator":Landroid/animation/ValueAnimator;
    .restart local v3    # "flingOnKeyguard":Z
    :cond_9
    move v2, v7

    .line 746
    goto :goto_5

    .line 750
    .restart local v2    # "flingAfterUnlock":Z
    :cond_a
    new-instance v5, Lcom/android/systemui/statusbar/phone/PanelView$5;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/phone/PanelView$5;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;)V

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/PanelView;->animateCollapseFloor(Landroid/animation/AnimatorListenerAdapter;)V

    goto :goto_6
.end method

.method protected flingExpands(FF)Z
    .locals 4
    .param p1, "vel"    # F
    .param p2, "vectorVel"    # F

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 656
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->getMinVelocityPxPerSecond()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 657
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedFraction()F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 659
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 657
    goto :goto_0

    .line 659
    :cond_2
    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method protected abstract fullyExpandedClearAllVisible()Z
.end method

.method protected abstract getCannedFlingDurationFactor()F
.end method

.method protected abstract getClearAllHeight()I
.end method

.method protected getContentHeight()F
    .locals 1

    .prologue
    .line 630
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    return v0
.end method

.method public getExpandedFraction()F
    .locals 1

    .prologue
    .line 996
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F

    return v0
.end method

.method public getExpandedHeight()F
    .locals 1

    .prologue
    .line 992
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    return v0
.end method

.method public abstract getFloorBottomContentHeight()F
.end method

.method public abstract getFloorBottomPosition()F
.end method

.method protected abstract getMaxPanelHeight()I
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 804
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mViewName:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract getOverExpansionAmount()F
.end method

.method protected abstract getOverExpansionPixels()F
.end method

.method protected abstract getPeekHeight()F
.end method

.method protected abstract hasConflictingGestures()Z
.end method

.method public instantCollapse()V
    .locals 1

    .prologue
    .line 1120
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->abortAnimations()V

    .line 1121
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedFraction(F)V

    .line 1122
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpanding:Z

    if-eqz v0, :cond_0

    .line 1123
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingFinished()V

    .line 1125
    :cond_0
    return-void
.end method

.method public instantExpand()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1076
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInstantExpanding:Z

    .line 1077
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mUpdateFlingOnLayout:Z

    .line 1078
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->abortAnimations()V

    .line 1079
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelPeek()V

    .line 1080
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-eqz v1, :cond_0

    .line 1081
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/PanelView;->onTrackingStopped(Z)V

    .line 1083
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpanding:Z

    if-eqz v1, :cond_1

    .line 1084
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingFinished()V

    .line 1086
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/PanelView;->setVisibility(I)V

    .line 1088
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/StateUtils;->getInstance()Lcom/android/systemui/vivo/common/utils/StateUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/utils/StateUtils;->getStatusBarState()I

    move-result v0

    .line 1091
    .local v0, "barState":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/phone/PanelView$7;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView$7;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1116
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->requestLayout()V

    .line 1117
    return-void
.end method

.method protected abstract isAnimatorRunning()Z
.end method

.method protected abstract isClearAllVisible()Z
.end method

.method public isCollapsing()Z
    .locals 1

    .prologue
    .line 1008
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    return v0
.end method

.method protected abstract isDozing()Z
.end method

.method protected abstract isFloorFullyExpand()Z
.end method

.method public isFullyCollapsed()Z
    .locals 2

    .prologue
    .line 1004
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFullyExpanded()Z
    .locals 2

    .prologue
    .line 1000
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract isInContentBounds(FF)Z
.end method

.method protected isScrolledToBottom()Z
    .locals 1

    .prologue
    .line 626
    const/4 v0, 0x1

    return v0
.end method

.method public isTracking()Z
    .locals 1

    .prologue
    .line 1012
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    return v0
.end method

.method protected abstract isTrackingBlocked()Z
.end method

.method protected loadDimens()V
    .locals 3

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 200
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 201
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlop:I

    .line 202
    const v2, 0x7f0f0088

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintDistance:F

    .line 203
    const v2, 0x7f0f0089

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mEdgeTapAreaWidth:I

    .line 204
    const v2, 0x7f0f0076

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mUnlockFalsingThreshold:I

    .line 205
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 799
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 800
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mViewName:Ljava/lang/String;

    .line 801
    return-void
.end method

.method protected onClosingFinished()V
    .locals 1

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onClosingFinished()V

    .line 1136
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 641
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 642
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->loadDimens()V

    .line 643
    return-void
.end method

.method protected abstract onEdgeClicked(Z)V
.end method

.method protected onEmptySpaceClick(F)Z
    .locals 1
    .param p1, "x"    # F

    .prologue
    .line 1254
    const/4 v0, 0x0

    return v0
.end method

.method protected onExpandingFinished()V
    .locals 1

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->endClosing()V

    .line 125
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onExpandingFinished()V

    .line 126
    return-void
.end method

.method protected onExpandingStarted()V
    .locals 0

    .prologue
    .line 129
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 635
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 636
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->loadDimens()V

    .line 637
    return-void
.end method

.method public onFloorAnimateEnd(ZZI)V
    .locals 2
    .param p1, "collapse"    # Z
    .param p2, "canceled"    # Z
    .param p3, "startState"    # I

    .prologue
    const/16 v1, -0xa

    .line 768
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/StateUtils;->getInstance()Lcom/android/systemui/vivo/common/utils/StateUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/utils/StateUtils;->isKeyguardShowing()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    .line 772
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedHeightInternal(FI)V

    .line 780
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    .line 781
    if-nez p2, :cond_1

    .line 782
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateCollapsingRunnable()V

    .line 783
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingFinished()V

    .line 785
    :cond_1
    if-eqz p1, :cond_2

    const/4 v0, 0x2

    if-ne p3, v0, :cond_2

    .line 786
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->forceRunPostCollapseRunnables()V

    .line 788
    :cond_2
    return-void

    .line 775
    :cond_3
    if-nez p1, :cond_0

    .line 777
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/vivo/common/utils/DisplayUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedHeightInternal(FI)V

    goto :goto_0
.end method

.method protected abstract onHeightUpdated(F)V
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 491
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInstantExpanding:Z

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v7

    if-eqz v7, :cond_2

    :cond_0
    move v8, v9

    .line 596
    :cond_1
    :goto_0
    return v8

    .line 505
    :cond_2
    iget v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 506
    .local v2, "pointerIndex":I
    if-gez v2, :cond_3

    .line 507
    const/4 v2, 0x0

    .line 508
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I

    .line 510
    :cond_3
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 511
    .local v5, "x":F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 512
    .local v6, "y":F
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isScrolledToBottom()Z

    move-result v3

    .line 514
    .local v3, "scrolledToBottom":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    :cond_4
    :goto_1
    :pswitch_0
    move v8, v9

    .line 596
    goto :goto_0

    .line 516
    :pswitch_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->userActivity()V

    .line 518
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isAnimatorRunning()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 519
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mIngoreTouchEvent:Z

    .line 520
    sget-object v7, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    const-string v9, "onInterceptTouchEvent,animation running,set mIngoreTouchEvent = true"

    invoke-static {v7, v9}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 523
    :cond_5
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mIngoreTouchEvent:Z

    .line 524
    sget-object v7, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    const-string v10, "onInterceptTouchEvent,animation running,set mIngoreTouchEvent = false"

    invoke-static {v7, v10}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v7, :cond_6

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintAnimationRunning:Z

    if-eqz v7, :cond_7

    :cond_6
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekPending:Z

    if-nez v7, :cond_7

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v7, :cond_8

    .line 530
    :cond_7
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelHeightAnimator()V

    .line 531
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelPeek()V

    .line 532
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlopExceeded:Z

    goto :goto_0

    .line 535
    :cond_8
    iput v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    .line 536
    iput v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchX:F

    .line 537
    invoke-virtual {p0, v5, v6}, Lcom/android/systemui/statusbar/phone/PanelView;->isInContentBounds(FF)Z

    move-result v7

    if-nez v7, :cond_9

    move v7, v8

    :goto_2
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchStartedInEmptyArea:Z

    .line 538
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlopExceeded:Z

    .line 539
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z

    .line 540
    iget v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    const/4 v10, 0x0

    cmpl-float v7, v7, v10

    if-nez v7, :cond_a

    :goto_3
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPanelClosedOnDown:Z

    .line 541
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHasLayoutedSinceDown:Z

    .line 542
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mUpdateFlingOnLayout:Z

    .line 543
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchAboveFalsingThreshold:Z

    .line 544
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isDozing()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mDozingOnDown:Z

    .line 545
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->initVelocityTracker()V

    .line 546
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->trackMovement(Landroid/view/MotionEvent;)V

    goto :goto_1

    :cond_9
    move v7, v9

    .line 537
    goto :goto_2

    :cond_a
    move v8, v9

    .line 540
    goto :goto_3

    .line 549
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 550
    .local v4, "upPointer":I
    iget v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I

    if-ne v7, v4, :cond_4

    .line 552
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    if-eq v7, v4, :cond_b

    move v1, v9

    .line 553
    .local v1, "newIndex":I
    :goto_4
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I

    .line 554
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    iput v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchX:F

    .line 555
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    iput v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    goto/16 :goto_1

    .end local v1    # "newIndex":I
    :cond_b
    move v1, v8

    .line 552
    goto :goto_4

    .line 561
    .end local v4    # "upPointer":I
    :pswitch_3
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mIngoreTouchEvent:Z

    if-nez v7, :cond_1

    .line 565
    iget v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    sub-float v0, v6, v7

    .line 566
    .local v0, "h":F
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->trackMovement(Landroid/view/MotionEvent;)V

    .line 573
    const/4 v3, 0x0

    .line 575
    if-nez v3, :cond_c

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchStartedInEmptyArea:Z

    if-eqz v7, :cond_4

    .line 576
    :cond_c
    iget v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlop:I

    neg-int v7, v7

    int-to-float v7, v7

    cmpg-float v7, v0, v7

    if-gez v7, :cond_4

    iget v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchX:F

    sub-float v7, v5, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    neg-float v7, v7

    cmpg-float v7, v0, v7

    if-gez v7, :cond_4

    .line 577
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelHeightAnimator()V

    .line 578
    iget v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    iput v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialOffsetOnTouch:F

    .line 579
    iput v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    .line 580
    iput v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchX:F

    .line 581
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    .line 582
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlopExceeded:Z

    .line 583
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onTrackingStarted()V

    goto/16 :goto_0

    .line 591
    .end local v0    # "h":F
    :pswitch_4
    sget-object v7, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    const-string v8, "onInterceptTouchEvent,up event"

    invoke-static {v7, v8}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mIngoreTouchEvent:Z

    goto/16 :goto_1

    .line 514
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v1, 0x1

    .line 824
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 825
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->requestPanelHeightUpdate()V

    .line 826
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHasLayoutedSinceDown:Z

    .line 827
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mUpdateFlingOnLayout:Z

    if-eqz v0, :cond_0

    .line 828
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->abortAnimations()V

    .line 829
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mUpdateFlingVelocity:F

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->fling(FZ)V

    .line 830
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mUpdateFlingOnLayout:Z

    .line 832
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 24
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 223
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mInstantExpanding:Z

    move/from16 v20, v0

    if-nez v20, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchDisabled:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1

    .line 224
    :cond_0
    const/16 v20, 0x0

    .line 465
    :goto_0
    return v20

    .line 228
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/statusbar/phone/PanelBar;->isPanelDisabledBySecureKeyguard()Z

    move-result v20

    if-eqz v20, :cond_2

    .line 229
    const/16 v20, 0x1

    goto :goto_0

    .line 231
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->panelsEnabled()Z

    move-result v20

    if-nez v20, :cond_3

    .line 232
    const/16 v20, 0x1

    goto :goto_0

    .line 237
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mIngoreTouchEvent:Z

    move/from16 v20, v0

    if-eqz v20, :cond_5

    .line 238
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 239
    sget-object v20, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    const-string v21, "onTouchEvent,event up"

    invoke-static/range {v20 .. v21}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mIngoreTouchEvent:Z

    .line 242
    :cond_4
    const/16 v20, 0x1

    goto :goto_0

    .line 255
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v12

    .line 256
    .local v12, "pointerIndex":I
    if-gez v12, :cond_6

    .line 257
    const/4 v12, 0x0

    .line 258
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I

    .line 260
    :cond_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v18

    .line 261
    .local v18, "y":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    .line 263
    .local v17, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v20

    if-nez v20, :cond_7

    .line 264
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    move/from16 v20, v0

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-nez v20, :cond_b

    const/16 v20, 0x1

    :goto_1
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mGestureWaitForTouchSlop:Z

    .line 266
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelView;->hasConflictingGestures()Z

    move-result v20

    if-nez v20, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mGestureWaitForTouchSlop:Z

    move/from16 v20, v0

    if-eqz v20, :cond_c

    :cond_8
    const/16 v16, 0x1

    .line 268
    .local v16, "waitForTouchSlop":Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v20

    packed-switch v20, :pswitch_data_0

    .line 465
    :cond_9
    :goto_3
    :pswitch_0
    if-eqz v16, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2b

    :cond_a
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 264
    .end local v16    # "waitForTouchSlop":Z
    :cond_b
    const/16 v20, 0x0

    goto :goto_1

    .line 266
    :cond_c
    const/16 v16, 0x0

    goto :goto_2

    .line 272
    .restart local v16    # "waitForTouchSlop":Z
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isAnimatorRunning()Z

    move-result v20

    if-eqz v20, :cond_d

    .line 273
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mIngoreTouchEvent:Z

    .line 274
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 276
    :cond_d
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mIngoreTouchEvent:Z

    .line 280
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    .line 281
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchX:F

    .line 282
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialOffsetOnTouch:F

    .line 285
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFloorFullyExpand()Z

    move-result v20

    if-eqz v20, :cond_14

    .line 286
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/systemui/vivo/common/utils/DisplayUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    sub-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchOffset:F

    .line 294
    :goto_4
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlopExceeded:Z

    .line 295
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z

    .line 296
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    move/from16 v20, v0

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-nez v20, :cond_16

    const/16 v20, 0x1

    :goto_5
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mPanelClosedOnDown:Z

    .line 297
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mHasLayoutedSinceDown:Z

    .line 298
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mUpdateFlingOnLayout:Z

    .line 299
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mPanelClosedOnDown:Z

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekTouching:Z

    .line 300
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchAboveFalsingThreshold:Z

    .line 301
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isDozing()Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mDozingOnDown:Z

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    move-object/from16 v20, v0

    if-nez v20, :cond_e

    .line 303
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelView;->initVelocityTracker()V

    .line 305
    :cond_e
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/phone/PanelView;->trackMovement(Landroid/view/MotionEvent;)V

    .line 306
    if-eqz v16, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v20, v0

    if-eqz v20, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintAnimationRunning:Z

    move/from16 v20, v0

    if-eqz v20, :cond_10

    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekPending:Z

    move/from16 v20, v0

    if-nez v20, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v20, v0

    if-eqz v20, :cond_13

    .line 308
    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelHeightAnimator()V

    .line 309
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelPeek()V

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v20, v0

    if-eqz v20, :cond_11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintAnimationRunning:Z

    move/from16 v20, v0

    if-eqz v20, :cond_12

    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekPending:Z

    move/from16 v20, v0

    if-nez v20, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v20, v0

    if-eqz v20, :cond_17

    :cond_12
    const/16 v20, 0x1

    :goto_6
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlopExceeded:Z

    .line 312
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onTrackingStarted()V

    .line 314
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    move/from16 v20, v0

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-nez v20, :cond_9

    goto/16 :goto_3

    .line 287
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getFloorBottomPosition()F

    move-result v20

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-nez v20, :cond_15

    .line 288
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchOffset:F

    goto/16 :goto_4

    .line 290
    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    move/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getFloorBottomPosition()F

    move-result v21

    sub-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchOffset:F

    goto/16 :goto_4

    .line 296
    :cond_16
    const/16 v20, 0x0

    goto/16 :goto_5

    .line 310
    :cond_17
    const/16 v20, 0x0

    goto :goto_6

    .line 323
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v20

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v13

    .line 324
    .local v13, "upPointer":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ne v0, v13, :cond_9

    .line 326
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v20

    move/from16 v0, v20

    if-eq v0, v13, :cond_18

    const/4 v9, 0x0

    .line 327
    .local v9, "newIndex":I
    :goto_7
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    .line 328
    .local v11, "newY":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    .line 329
    .local v10, "newX":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I

    .line 330
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialOffsetOnTouch:F

    .line 331
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    .line 332
    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchX:F

    goto/16 :goto_3

    .line 326
    .end local v9    # "newIndex":I
    .end local v10    # "newX":F
    .end local v11    # "newY":F
    :cond_18
    const/4 v9, 0x1

    goto :goto_7

    .line 337
    .end local v13    # "upPointer":I
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    move/from16 v20, v0

    sub-float v7, v18, v20

    .line 341
    .local v7, "h":F
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlop:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    cmpl-float v20, v20, v21

    if-lez v20, :cond_1b

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchX:F

    move/from16 v21, v0

    sub-float v21, v17, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v21

    cmpl-float v20, v20, v21

    if-gtz v20, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialOffsetOnTouch:F

    move/from16 v20, v0

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-nez v20, :cond_1b

    .line 344
    :cond_19
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlopExceeded:Z

    .line 345
    if-eqz v16, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    move/from16 v20, v0

    if-nez v20, :cond_1b

    .line 346
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z

    move/from16 v20, v0

    if-nez v20, :cond_1a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialOffsetOnTouch:F

    move/from16 v20, v0

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-eqz v20, :cond_1a

    .line 347
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialOffsetOnTouch:F

    .line 348
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchX:F

    .line 349
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    .line 350
    const/4 v7, 0x0

    .line 352
    :cond_1a
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelHeightAnimator()V

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekRunnable:Ljava/lang/Runnable;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 354
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekPending:Z

    .line 355
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onTrackingStarted()V

    .line 360
    :cond_1b
    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchOffset:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    add-float v21, v21, v7

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v21

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 363
    .local v8, "newHeight":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekHeight:F

    move/from16 v20, v0

    cmpl-float v20, v8, v20

    if-lez v20, :cond_1d

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1c

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 367
    :cond_1c
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z

    .line 369
    :cond_1d
    neg-float v0, v7

    move/from16 v20, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getFalsingThreshold()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    cmpl-float v20, v20, v21

    if-ltz v20, :cond_1e

    .line 370
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchAboveFalsingThreshold:Z

    .line 372
    :cond_1e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z

    move/from16 v20, v0

    if-nez v20, :cond_20

    if-eqz v16, :cond_1f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    move/from16 v20, v0

    if-eqz v20, :cond_20

    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isTrackingBlocked()Z

    move-result v20

    if-nez v20, :cond_20

    .line 374
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchOffset:F

    move/from16 v20, v0

    sub-float v20, v18, v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->drawFloor(F)V

    .line 379
    const/16 v20, -0xa

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v8, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedHeightInternal(FI)V

    .line 385
    :cond_20
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/phone/PanelView;->trackMovement(Landroid/view/MotionEvent;)V

    goto/16 :goto_3

    .line 391
    .end local v7    # "h":F
    .end local v8    # "newHeight":F
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/statusbar/phone/PanelBar;->getBarHeight()F

    move-result v21

    cmpg-float v20, v20, v21

    if-gtz v20, :cond_21

    .line 393
    sget-object v20, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    const-string v21, "PanelView, MotionEvent.ACTION_CANCEL, onHoodClick()"

    invoke-static/range {v20 .. v21}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->onHoodClick()V

    .line 398
    :cond_21
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I

    .line 399
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/phone/PanelView;->trackMovement(Landroid/view/MotionEvent;)V

    .line 402
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFloorFullyExpand()Z

    move-result v20

    if-nez v20, :cond_28

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getFloorBottomPosition()F

    move-result v20

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-eqz v20, :cond_28

    const/4 v5, 0x1

    .line 403
    .local v5, "expanding":Z
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    move/from16 v20, v0

    if-eqz v20, :cond_22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlopExceeded:Z

    move/from16 v20, v0

    if-nez v20, :cond_23

    :cond_22
    if-nez v5, :cond_23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchX:F

    move/from16 v20, v0

    sub-float v20, v17, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlop:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    cmpl-float v20, v20, v21

    if-gtz v20, :cond_23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    move/from16 v20, v0

    sub-float v20, v18, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchSlop:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    cmpl-float v20, v20, v21

    if-gtz v20, :cond_23

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v20

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2a

    .line 408
    :cond_23
    const/4 v15, 0x0

    .line 409
    .local v15, "vel":F
    const/4 v14, 0x0

    .line 410
    .local v14, "vectorVel":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    move-object/from16 v20, v0

    if-eqz v20, :cond_24

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    move-object/from16 v20, v0

    const/16 v21, 0x3e8

    invoke-interface/range {v20 .. v21}, Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;->computeCurrentVelocity(I)V

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;->getYVelocity()F

    move-result v15

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;->getXVelocity()F

    move-result v20

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;->getYVelocity()F

    move-result v22

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v14, v0

    .line 420
    :cond_24
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v14}, Lcom/android/systemui/statusbar/phone/PanelView;->flingExpands(FF)Z

    move-result v4

    .line 428
    .local v4, "expand":Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    move/from16 v20, v0

    sub-float v20, v20, v18

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v19, v0

    .line 429
    .local v19, "yDistance":I
    if-eqz v4, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/systemui/vivo/common/utils/DisplayUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v20

    shr-int/lit8 v20, v20, 0x1

    add-int/lit8 v20, v20, -0x64

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_25

    .line 432
    const/4 v4, 0x0

    .line 435
    :cond_25
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/PanelView;->onTrackingStopped(Z)V

    .line 436
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchAboveFalsingThreshold:Z

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isFalsingThresholdNeeded()Z

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isScreenOnComingFromTouch()Z

    move-result v22

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v4, v0, v1, v2}, Lcom/android/systemui/doze/DozeLog;->traceFling(ZZZZ)V

    .line 448
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v4}, Lcom/android/systemui/statusbar/phone/PanelView;->fling(FZ)V

    .line 449
    if-eqz v4, :cond_29

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mPanelClosedOnDown:Z

    move/from16 v20, v0

    if-eqz v20, :cond_29

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mHasLayoutedSinceDown:Z

    move/from16 v20, v0

    if-nez v20, :cond_29

    const/16 v20, 0x1

    :goto_9
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mUpdateFlingOnLayout:Z

    .line 450
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mUpdateFlingOnLayout:Z

    move/from16 v20, v0

    if-eqz v20, :cond_26

    .line 451
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mUpdateFlingVelocity:F

    .line 458
    .end local v4    # "expand":Z
    .end local v14    # "vectorVel":F
    .end local v15    # "vel":F
    .end local v19    # "yDistance":I
    :cond_26
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    move-object/from16 v20, v0

    if-eqz v20, :cond_27

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;->recycle()V

    .line 460
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/VelocityTrackerInterface;

    .line 462
    :cond_27
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekTouching:Z

    goto/16 :goto_3

    .line 402
    .end local v5    # "expanding":Z
    :cond_28
    const/4 v5, 0x0

    goto/16 :goto_8

    .line 449
    .restart local v4    # "expand":Z
    .restart local v5    # "expanding":Z
    .restart local v14    # "vectorVel":F
    .restart local v15    # "vel":F
    .restart local v19    # "yDistance":I
    :cond_29
    const/16 v20, 0x0

    goto :goto_9

    .line 454
    .end local v4    # "expand":Z
    .end local v14    # "vectorVel":F
    .end local v15    # "vel":F
    .end local v19    # "yDistance":I
    :cond_2a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchX:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->onEmptySpaceClick(F)Z

    move-result v6

    .line 455
    .local v6, "expands":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/phone/PanelView;->onTrackingStopped(Z)V

    goto :goto_a

    .line 465
    .end local v5    # "expanding":Z
    .end local v6    # "expands":Z
    :cond_2b
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 268
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onTrackingStarted()V
    .locals 1

    .prologue
    .line 481
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->endClosing()V

    .line 482
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    .line 483
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mCollapseAfterPeek:Z

    .line 484
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onTrackingStarted(Lcom/android/systemui/statusbar/phone/PanelView;)V

    .line 485
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingStarted()V

    .line 486
    return-void
.end method

.method protected onTrackingStopped(Z)V
    .locals 1
    .param p1, "expand"    # Z

    .prologue
    .line 476
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    .line 477
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->onTrackingStopped(Lcom/android/systemui/statusbar/phone/PanelView;Z)V

    .line 478
    return-void
.end method

.method protected requestPanelHeightUpdate()V
    .locals 3

    .prologue
    .line 835
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v1

    int-to-float v0, v1

    .line 838
    .local v0, "currentMaxPanelHeight":F
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isTrackingBlocked()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isAnimatorRunning()Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekPending:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekTouching:Z

    if-nez v1, :cond_1

    .line 849
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedHeight(F)V

    .line 851
    :cond_1
    return-void
.end method

.method public abstract resetViews()V
.end method

.method public setBar(Lcom/android/systemui/statusbar/phone/PanelBar;)V
    .locals 0
    .param p1, "panelBar"    # Lcom/android/systemui/statusbar/phone/PanelBar;

    .prologue
    .line 1016
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    .line 1017
    return-void
.end method

.method public setExpandedFraction(F)V
    .locals 1
    .param p1, "frac"    # F

    .prologue
    .line 982
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedHeight(F)V

    .line 983
    return-void
.end method

.method public setExpandedHeight(F)V
    .locals 2
    .param p1, "height"    # F

    .prologue
    .line 811
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getOverExpansionPixels()F

    move-result v0

    add-float/2addr v0, p1

    const/16 v1, -0xa

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedHeightInternal(FI)V

    .line 814
    return-void
.end method

.method public setExpandedHeightInternal(FI)V
    .locals 6
    .param p1, "h"    # F
    .param p2, "barState"    # I

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 856
    const/16 v2, -0xa

    if-ne p2, v2, :cond_3

    .line 857
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/StateUtils;->getInstance()Lcom/android/systemui/vivo/common/utils/StateUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/utils/StateUtils;->getStatusBarState()I

    move-result p2

    .line 864
    :goto_0
    cmpl-float v2, p1, v3

    if-nez v2, :cond_7

    .line 865
    invoke-static {p2}, Lcom/android/systemui/vivo/common/utils/StateUtils;->isKeyguardShowing(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 866
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    if-nez v2, :cond_4

    .line 869
    const p1, 0x3dcccccd    # 0.1f

    .line 894
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getMaxPanelHeight()I

    move-result v2

    int-to-float v0, v2

    .line 909
    .local v0, "fhWithoutOverExpansion":F
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getFloorBottomContentHeight()F

    move-result v1

    .line 911
    .local v1, "floorBottomContentHeight":F
    cmpl-float v2, p1, v3

    if-eqz v2, :cond_8

    .line 912
    sub-float v2, p1, v1

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    .line 918
    :goto_2
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mOverExpandedBeforeFling:Z

    if-eqz v2, :cond_1

    .line 919
    sub-float v2, p1, v0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Lcom/android/systemui/statusbar/phone/PanelView;->setOverExpansion(FZ)V

    .line 923
    :cond_1
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    .line 924
    cmpl-float v2, v0, v3

    if-nez v2, :cond_9

    move v2, v3

    :goto_3
    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F

    .line 927
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/PanelView;->onHeightUpdated(F)V

    .line 929
    invoke-static {p2}, Lcom/android/systemui/vivo/common/utils/StateUtils;->isKeyguardShowing(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    if-nez v2, :cond_2

    .line 934
    iput v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F

    .line 937
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyBarPanelExpansionChanged()V

    .line 938
    return-void

    .line 859
    .end local v0    # "fhWithoutOverExpansion":F
    .end local v1    # "floorBottomContentHeight":F
    :cond_3
    sget-object v2, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    const-string v4, "call form ViewTreeChangeObserver"

    invoke-static {v2, v4}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 871
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isAnimatorRunning()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 872
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->stopFloorAnimator()V

    .line 874
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getFloorBottomPosition()F

    move-result v2

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 875
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/PanelView;->drawFloor(F)V

    goto :goto_1

    .line 879
    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getFloorBottomPosition()F

    move-result v2

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 880
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/PanelView;->drawFloor(F)V

    goto :goto_1

    .line 884
    :cond_7
    invoke-static {p2}, Lcom/android/systemui/vivo/common/utils/StateUtils;->isKeyguardShowingWithoutShade(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 885
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getFloorBottomPosition()F

    move-result v2

    cmpl-float v2, p1, v2

    if-eqz v2, :cond_0

    .line 886
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getFloorBottomPosition()F

    move-result p1

    goto/16 :goto_1

    .line 914
    .restart local v0    # "fhWithoutOverExpansion":F
    .restart local v1    # "floorBottomContentHeight":F
    :cond_8
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    goto :goto_2

    .line 924
    :cond_9
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    div-float/2addr v2, v0

    goto :goto_3
.end method

.method public setHeightAnimatorNull()V
    .locals 1

    .prologue
    .line 793
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    .line 794
    return-void
.end method

.method protected abstract setOverExpansion(FZ)V
.end method

.method public setTouchDisabled(Z)V
    .locals 0
    .param p1, "disabled"    # Z

    .prologue
    .line 218
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchDisabled:Z

    .line 219
    return-void
.end method

.method protected startUnlockHintAnimation()V
    .locals 1

    .prologue
    .line 1143
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHeightAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-eqz v0, :cond_1

    .line 1158
    :cond_0
    :goto_0
    return-void

    .line 1146
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->cancelPeek()V

    .line 1147
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyExpandingStarted()V

    .line 1148
    new-instance v0, Lcom/android/systemui/statusbar/phone/PanelView$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PanelView$8;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->startUnlockHintAnimationPhase1(Ljava/lang/Runnable;)V

    .line 1156
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->onUnlockHintStarted()V

    .line 1157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHintAnimationRunning:Z

    goto :goto_0
.end method

.method protected abstract stopFloorAnimator()V
.end method
