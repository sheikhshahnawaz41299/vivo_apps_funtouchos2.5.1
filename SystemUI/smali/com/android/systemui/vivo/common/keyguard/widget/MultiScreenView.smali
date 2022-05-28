.class public Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;
.super Landroid/view/ViewGroup;
.source "MultiScreenView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView$MultiScreenCallback;,
        Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView$MultiScreenViewOvershootInterpolator;
    }
.end annotation


# static fields
.field private static final BASELINE_FLING_VELOCITY:F = 2500.0f

.field private static final DEBUG:Z = true

.field private static final FLING_VELOCITY_INFLUENCE:F = 0.4f

.field private static final INVALID_POINTER:I = -0x1

.field private static final INVALID_SCREEN:I = -0x1

.field private static final NANOTIME_DIV:F = 1.0E9f

.field private static final SMOOTHING_CONSTANT:F

.field private static final SMOOTHING_SPEED:F = 0.75f

.field private static final SNAP_VELOCITY:I = 0xc8

.field private static TAG:Ljava/lang/String; = null

.field private static final TOUCH_STATE_REST:I = 0x0

.field private static final TOUCH_STATE_SCROLLING:I = 0x1


# instance fields
.field private final FORBID_MOVE_TO_SPACE:Z

.field private canMoveDown:Z

.field private isScrolling:Z

.field private mActivePointerId:I

.field private mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView$MultiScreenCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentScreen:I

.field private mDefaultScreen:I

.field private mFirstLayout:Z

.field private mInitScreen:I

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mMaximumVelocity:I

.field private mNextScreen:I

.field private mPanelListener:Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel$OnLockPanelListener;

.field private mRejectEventEnable:Z

.field private mScrollInterpolator:Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView$MultiScreenViewOvershootInterpolator;

.field private mScroller:Landroid/widget/Scroller;

.field private mSmoothingTime:F

.field private mTotalScreen:I

.field private mTouchSlop:I

.field private mTouchState:I

.field private mTouchX:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field start:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 38
    const-string v0, "MultiScreenView"

    sput-object v0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->TAG:Ljava/lang/String;

    .line 97
    const-wide v0, 0x3f90624dd2f1a9fcL    # 0.016

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->SMOOTHING_CONSTANT:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 135
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 142
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    iput-boolean v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mFirstLayout:Z

    .line 55
    iput v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mTotalScreen:I

    .line 60
    iput v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mDefaultScreen:I

    .line 62
    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mInitScreen:I

    .line 67
    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mCurrentScreen:I

    .line 68
    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mNextScreen:I

    .line 70
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->isScrolling:Z

    .line 72
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mRejectEventEnable:Z

    .line 74
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->start:F

    .line 75
    iput-boolean v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->FORBID_MOVE_TO_SPACE:Z

    .line 87
    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mActivePointerId:I

    .line 93
    iput v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mTouchState:I

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mCallbacks:Ljava/util/ArrayList;

    .line 107
    iput-boolean v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->canMoveDown:Z

    .line 143
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->init()V

    .line 144
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 148
    .local v1, "context":Landroid/content/Context;
    new-instance v2, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView$MultiScreenViewOvershootInterpolator;

    invoke-direct {v2}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView$MultiScreenViewOvershootInterpolator;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mScrollInterpolator:Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView$MultiScreenViewOvershootInterpolator;

    .line 149
    new-instance v2, Landroid/widget/Scroller;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mScrollInterpolator:Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView$MultiScreenViewOvershootInterpolator;

    invoke-direct {v2, v1, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mScroller:Landroid/widget/Scroller;

    .line 151
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 152
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mTouchSlop:I

    .line 153
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mMaximumVelocity:I

    .line 154
    return-void
.end method

.method private notifyCallbacks()V
    .locals 5

    .prologue
    .line 1079
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1080
    .local v1, "callbackCount":I
    const/4 v0, 0x0

    .line 1081
    .local v0, "callback":Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView$MultiScreenCallback;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1082
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "callback":Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView$MultiScreenCallback;
    check-cast v0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView$MultiScreenCallback;

    .line 1083
    .restart local v0    # "callback":Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView$MultiScreenCallback;
    iget v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mTotalScreen:I

    iget v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mCurrentScreen:I

    invoke-interface {v0, p0, v3, v4}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView$MultiScreenCallback;->screenChanged(Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;II)V

    .line 1081
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1085
    :cond_0
    return-void
.end method

.method private snapToScreen(IIZZ)V
    .locals 10
    .param p1, "whichScreen"    # I
    .param p2, "velocity"    # I
    .param p3, "settle"    # Z
    .param p4, "immediately"    # Z

    .prologue
    const v9, 0x451c4000    # 2500.0f

    const/4 v2, 0x0

    .line 934
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 936
    iput p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mNextScreen:I

    .line 938
    sget-object v0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "snapToScreen, mNextScreen is "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mNextScreen:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->getFocusedChild()Landroid/view/View;

    move-result-object v6

    .line 941
    .local v6, "focusedChild":Landroid/view/View;
    if-eqz v6, :cond_0

    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mCurrentScreen:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v6, v0, :cond_0

    .line 942
    invoke-virtual {v6}, Landroid/view/View;->clearFocus()V

    .line 945
    :cond_0
    const/4 v0, 0x1

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mCurrentScreen:I

    sub-int v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 946
    .local v8, "screenDelta":I
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->getWidth()I

    move-result v0

    mul-int v7, p1, v0

    .line 947
    .local v7, "newX":I
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->getScrollX()I

    move-result v0

    sub-int v3, v7, v0

    .line 949
    .local v3, "delta":I
    const/4 v5, 0x0

    .line 950
    .local v5, "duration":I
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mCurrentScreen:I

    sub-int v0, p1, v0

    if-nez v0, :cond_2

    .line 951
    mul-int/lit8 v5, v8, 0x64

    .line 958
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 959
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 962
    :cond_1
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 963
    if-lez p2, :cond_3

    .line 964
    int-to-float v0, v5

    int-to-float v1, v5

    int-to-float v4, p2

    div-float/2addr v4, v9

    div-float/2addr v1, v4

    const v4, 0x3ecccccd    # 0.4f

    mul-float/2addr v1, v4

    add-float/2addr v0, v1

    float-to-int v5, v0

    .line 969
    :goto_1
    if-eqz p3, :cond_4

    int-to-float v0, p2

    cmpl-float v0, v0, v9

    if-ltz v0, :cond_4

    .line 970
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mScrollInterpolator:Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView$MultiScreenViewOvershootInterpolator;

    invoke-virtual {v0, v8}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView$MultiScreenViewOvershootInterpolator;->setDistance(I)V

    .line 974
    :goto_2
    if-eqz p4, :cond_5

    .line 975
    const/4 v5, 0x0

    .line 981
    :goto_3
    sget-object v0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "snap to screen, whichScreen - mCurrentScreen is "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mCurrentScreen:I

    sub-int v4, p1, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    sget-object v0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "snap to screen , screenDelta is "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    sget-object v0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "snap to screen , velocity is "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    sget-object v0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "snap to screen , duration is "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    invoke-virtual {p0, v5}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->awakenScrollBars(I)Z

    .line 988
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->getScrollX()I

    move-result v1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 989
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->invalidate()V

    .line 990
    return-void

    .line 954
    :cond_2
    mul-int/lit8 v5, v8, 0x64

    goto/16 :goto_0

    .line 966
    :cond_3
    add-int/lit8 v5, v5, 0x64

    goto/16 :goto_1

    .line 972
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mScrollInterpolator:Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView$MultiScreenViewOvershootInterpolator;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView$MultiScreenViewOvershootInterpolator;->disableSettle()V

    goto/16 :goto_2

    .line 977
    :cond_5
    const/16 v5, 0x12c

    goto/16 :goto_3
.end method


# virtual methods
.method public addScreen(ILandroid/view/View;)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 698
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->getChildCount()I

    move-result v0

    .line 699
    .local v0, "childCount":I
    if-ltz p1, :cond_0

    if-le p1, v0, :cond_1

    .line 700
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->addScreen(Landroid/view/View;)V

    .line 725
    :goto_0
    return-void

    .line 704
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 705
    .local v1, "context":Landroid/content/Context;
    const/4 v2, 0x0

    .line 706
    .local v2, "screen":Landroid/widget/LinearLayout;
    new-instance v2, Landroid/widget/LinearLayout;

    .end local v2    # "screen":Landroid/widget/LinearLayout;
    invoke-direct {v2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 707
    .restart local v2    # "screen":Landroid/widget/LinearLayout;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 708
    invoke-virtual {v2, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 709
    invoke-virtual {p0, v2, p1}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->addView(Landroid/view/View;I)V

    .line 710
    iget v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mTotalScreen:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mTotalScreen:I

    .line 712
    const/4 v3, 0x0

    .line 713
    .local v3, "snapTo":I
    iget v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mCurrentScreen:I

    if-gt p1, v4, :cond_4

    .line 714
    iget v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mCurrentScreen:I

    add-int/lit8 v3, v4, 0x1

    .line 718
    :goto_1
    if-gez v3, :cond_2

    .line 719
    const/4 v3, 0x0

    .line 721
    :cond_2
    iget v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mTotalScreen:I

    if-lt v3, v4, :cond_3

    .line 722
    iget v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mTotalScreen:I

    add-int/lit8 v3, v4, -0x1

    .line 724
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->snapToScreen(I)V

    goto :goto_0

    .line 716
    :cond_4
    iget v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mCurrentScreen:I

    goto :goto_1
.end method

.method public addScreen(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 735
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 736
    .local v0, "screen":Landroid/widget/LinearLayout;
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 737
    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->addView(Landroid/view/View;)V

    .line 738
    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mTotalScreen:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mTotalScreen:I

    .line 739
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->notifyCallbacks()V

    .line 740
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->invalidate()V

    .line 741
    return-void
.end method

.method public addScreen(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    const/4 v3, -0x1

    .line 744
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 745
    .local v1, "screen":Landroid/widget/LinearLayout;
    invoke-virtual {v1, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 747
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 749
    .local v0, "llp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x11

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 750
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 752
    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mTotalScreen:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mTotalScreen:I

    .line 753
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->notifyCallbacks()V

    .line 754
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->invalidate()V

    .line 755
    return-void
.end method

.method public changeScreenPosition(II)V
    .locals 1
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 762
    invoke-virtual {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 763
    .local v0, "screen":Landroid/widget/LinearLayout;
    invoke-virtual {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->removeScreen(I)V

    .line 764
    invoke-virtual {p0, p2, v0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->addScreen(ILandroid/view/View;)V

    .line 765
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->notifyCallbacks()V

    .line 766
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->postInvalidate()V

    .line 767
    return-void
.end method

.method public computeScroll()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    const v6, 0x4e6e6b28    # 1.0E9f

    const/4 v7, 0x0

    .line 1033
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1034
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mTouchX:F

    .line 1035
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    invoke-virtual {p0, v4, v7}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->scrollTo(II)V

    .line 1036
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mTouchX:F

    .line 1038
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    long-to-float v4, v4

    div-float/2addr v4, v6

    iput v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mSmoothingTime:F

    .line 1040
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->postInvalidate()V

    .line 1043
    sget-object v4, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "computeScroll: mScroller.computeScrollOffset() --- mScrollX = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->getScrollX()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mScrollY = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->getScrollY()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    :cond_0
    :goto_0
    return-void

    .line 1046
    :cond_1
    iget v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mNextScreen:I

    if-eq v4, v8, :cond_2

    .line 1048
    sget-object v4, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "computeScroll:mNextScreen != INVALID_SCREEN ---mNextScreen =  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mNextScreen:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    iget v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mNextScreen:I

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mCurrentScreen:I

    .line 1052
    iput-boolean v7, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->isScrolling:Z

    .line 1053
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->notifyCallbacks()V

    .line 1054
    iput v8, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mNextScreen:I

    goto :goto_0

    .line 1056
    :cond_2
    iget v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mTouchState:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 1057
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    long-to-float v4, v4

    div-float v2, v4, v6

    .line 1058
    .local v2, "now":F
    iget v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mSmoothingTime:F

    sub-float v4, v2, v4

    sget v5, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->SMOOTHING_CONSTANT:F

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    double-to-float v1, v4

    .line 1059
    .local v1, "e":F
    iget v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mTouchX:F

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->getScrollX()I

    move-result v5

    int-to-float v5, v5

    sub-float v0, v4, v5

    .line 1061
    .local v0, "dx":F
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->getScrollX()I

    move-result v4

    int-to-float v4, v4

    mul-float v5, v0, v1

    add-float/2addr v4, v5

    float-to-int v3, v4

    .line 1062
    .local v3, "temp":I
    invoke-virtual {p0, v3, v7}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->scrollTo(II)V

    .line 1064
    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mSmoothingTime:F

    .line 1068
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v0, v4

    if-gtz v4, :cond_3

    const/high16 v4, -0x40800000    # -1.0f

    cmpg-float v4, v0, v4

    if-gez v4, :cond_4

    .line 1069
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->postInvalidate()V

    .line 1073
    :cond_4
    sget-object v4, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "computeScroll: mTouchState == TOUCH_STATE_SCROLLING --- mScrollX = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mScrollX:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x1

    .line 163
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->getChildCount()I

    move-result v10

    if-eqz v10, :cond_5

    .line 164
    const/4 v6, 0x0

    .line 165
    .local v6, "restore":Z
    const/4 v7, 0x0

    .line 166
    .local v7, "restoreCount":I
    const/4 v0, 0x0

    .line 168
    .local v0, "child":Landroid/view/View;
    iget v10, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mTouchState:I

    if-eq v10, v4, :cond_2

    iget v10, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mNextScreen:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_2

    .line 170
    .local v4, "fastDraw":Z
    :goto_0
    if-eqz v4, :cond_3

    .line 171
    iget v10, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mCurrentScreen:I

    invoke-virtual {p0, v10}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 172
    if-eqz v0, :cond_0

    .line 174
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->getDrawingTime()J

    move-result-wide v10

    invoke-virtual {p0, p1, v0, v10, v11}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :cond_0
    :goto_1
    if-eqz v6, :cond_1

    .line 207
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 212
    .end local v0    # "child":Landroid/view/View;
    .end local v4    # "fastDraw":Z
    .end local v6    # "restore":Z
    .end local v7    # "restoreCount":I
    :cond_1
    :goto_2
    return-void

    .line 168
    .restart local v0    # "child":Landroid/view/View;
    .restart local v6    # "restore":Z
    .restart local v7    # "restoreCount":I
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 175
    .restart local v4    # "fastDraw":Z
    :catch_0
    move-exception v1

    .line 176
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1

    .line 180
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->getDrawingTime()J

    move-result-wide v2

    .line 181
    .local v2, "drawingTime":J
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->getScrollX()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->getWidth()I

    move-result v11

    int-to-float v11, v11

    div-float v9, v10, v11

    .line 182
    .local v9, "scrollPos":F
    float-to-int v5, v9

    .line 183
    .local v5, "leftScreen":I
    add-int/lit8 v8, v5, 0x1

    .line 184
    .local v8, "rightScreen":I
    if-ltz v5, :cond_4

    .line 185
    invoke-virtual {p0, v5}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 187
    if-eqz v0, :cond_4

    .line 189
    :try_start_1
    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 194
    :cond_4
    :goto_3
    int-to-float v10, v5

    cmpl-float v10, v9, v10

    if-eqz v10, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->getChildCount()I

    move-result v10

    if-ge v8, v10, :cond_0

    .line 195
    invoke-virtual {p0, v8}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 197
    if-eqz v0, :cond_0

    .line 199
    :try_start_2
    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 200
    :catch_1
    move-exception v1

    .line 201
    .restart local v1    # "e":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1

    .line 190
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v1

    .line 191
    .restart local v1    # "e":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_3

    .line 210
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "e":Ljava/lang/RuntimeException;
    .end local v2    # "drawingTime":J
    .end local v4    # "fastDraw":Z
    .end local v5    # "leftScreen":I
    .end local v6    # "restore":Z
    .end local v7    # "restoreCount":I
    .end local v8    # "rightScreen":I
    .end local v9    # "scrollPos":F
    :cond_5
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_2
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 300
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mRejectEventEnable:Z

    if-eqz v0, :cond_0

    .line 301
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 302
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 303
    const/4 v0, 0x0

    .line 305
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public getCurrentSreen()I
    .locals 1

    .prologue
    .line 635
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mCurrentScreen:I

    return v0
.end method

.method public getDefaultScreen()I
    .locals 1

    .prologue
    .line 666
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mDefaultScreen:I

    return v0
.end method

.method public getScreenContent(I)Landroid/view/View;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 875
    invoke-virtual {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 876
    .local v0, "screen":Landroid/widget/LinearLayout;
    if-nez v0, :cond_0

    .line 877
    const/4 v1, 0x0

    .line 878
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method public getTotalScreen()I
    .locals 1

    .prologue
    .line 645
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mTotalScreen:I

    return v0
.end method

.method public ifCanMoveDown()Z
    .locals 1

    .prologue
    .line 921
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->canMoveDown:Z

    return v0
.end method

.method public isScrolling()Z
    .locals 1

    .prologue
    .line 911
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->isScrolling:Z

    return v0
.end method

.method public moveToCurrentScreen()V
    .locals 1

    .prologue
    .line 904
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->snapToScreen(I)V

    .line 905
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 215
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 216
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->computeScroll()V

    .line 218
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 219
    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 220
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 221
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 218
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 224
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    sget-object v2, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->TAG:Ljava/lang/String;

    const-string v3, "Lockscreen MultiScreen onAttachedToWindow..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .prologue
    .line 228
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 230
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 231
    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 232
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 233
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 230
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 235
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    sget-object v2, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->TAG:Ljava/lang/String;

    const-string v3, "Lockscreen MultiScreen onDetachedToWindow..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 315
    sget-object v10, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MultiScreenView onInterceptTouchEvent action is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " isScrolling "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->isScrolling:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 330
    .local v0, "action":I
    const/4 v10, 0x2

    if-ne v0, v10, :cond_0

    iget v10, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mTouchState:I

    if-eqz v10, :cond_0

    .line 331
    const/4 v10, 0x1

    .line 430
    :goto_0
    return v10

    .line 334
    :cond_0
    iget-object v10, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v10, :cond_1

    .line 335
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 338
    :cond_1
    iget-object v10, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 340
    and-int/lit16 v10, v0, 0xff

    packed-switch v10, :pswitch_data_0

    .line 430
    :cond_2
    :goto_1
    iget v10, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mTouchState:I

    if-eqz v10, :cond_9

    const/4 v10, 0x1

    goto :goto_0

    .line 343
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 344
    .local v4, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 346
    .local v7, "y":F
    iput v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mLastMotionX:F

    .line 347
    iput v7, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mLastMotionY:F

    .line 348
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    iput v10, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mActivePointerId:I

    .line 351
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->getScrollX()I

    move-result v10

    int-to-float v10, v10

    iput v10, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->start:F

    .line 358
    iget-object v10, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v10}, Landroid/widget/Scroller;->isFinished()Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v10, 0x0

    :goto_2
    iput v10, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mTouchState:I

    .line 360
    iget-object v10, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v10}, Landroid/widget/Scroller;->isFinished()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 361
    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->setCanMoveDownFlag(Ljava/lang/Boolean;)V

    goto :goto_1

    .line 358
    :cond_3
    const/4 v10, 0x1

    goto :goto_2

    .line 372
    .end local v4    # "x":F
    .end local v7    # "y":F
    :pswitch_1
    iget v10, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mActivePointerId:I

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 373
    .local v2, "pointerIndex":I
    if-gez v2, :cond_4

    .line 374
    const/4 v2, 0x0

    .line 377
    :cond_4
    :try_start_0
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 378
    .restart local v4    # "x":F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    .line 379
    .restart local v7    # "y":F
    iget v10, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mLastMotionX:F

    sub-float v10, v4, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v5, v10

    .line 380
    .local v5, "xDiff":I
    iget v10, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mLastMotionY:F

    sub-float v10, v7, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v8, v10

    .line 382
    .local v8, "yDiff":I
    iget v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mTouchSlop:I

    .line 383
    .local v3, "touchSlop":I
    if-le v5, v3, :cond_7

    const/4 v6, 0x1

    .line 384
    .local v6, "xMoved":Z
    :goto_3
    if-le v8, v3, :cond_8

    const/4 v9, 0x1

    .line 386
    .local v9, "yMoved":Z
    :goto_4
    if-eqz v6, :cond_5

    .line 387
    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->setCanMoveDownFlag(Ljava/lang/Boolean;)V

    .line 389
    :cond_5
    if-nez v6, :cond_6

    if-eqz v9, :cond_2

    .line 391
    :cond_6
    if-eqz v6, :cond_2

    .line 393
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->isScrolling:Z

    .line 394
    const/4 v10, 0x1

    iput v10, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mTouchState:I

    .line 395
    iput v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mLastMotionX:F

    .line 396
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->getScrollX()I

    move-result v10

    int-to-float v10, v10

    iput v10, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mTouchX:F

    .line 397
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    long-to-float v10, v10

    const v11, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v10, v11

    iput v10, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mSmoothingTime:F
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 400
    .end local v3    # "touchSlop":I
    .end local v4    # "x":F
    .end local v5    # "xDiff":I
    .end local v6    # "xMoved":Z
    .end local v7    # "y":F
    .end local v8    # "yDiff":I
    .end local v9    # "yMoved":Z
    :catch_0
    move-exception v1

    .line 401
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-virtual {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    goto/16 :goto_1

    .line 383
    .end local v1    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v3    # "touchSlop":I
    .restart local v4    # "x":F
    .restart local v5    # "xDiff":I
    .restart local v7    # "y":F
    .restart local v8    # "yDiff":I
    :cond_7
    const/4 v6, 0x0

    goto :goto_3

    .line 384
    .restart local v6    # "xMoved":Z
    :cond_8
    const/4 v9, 0x0

    goto :goto_4

    .line 409
    .end local v2    # "pointerIndex":I
    .end local v3    # "touchSlop":I
    .end local v4    # "x":F
    .end local v5    # "xDiff":I
    .end local v6    # "xMoved":Z
    .end local v7    # "y":F
    .end local v8    # "yDiff":I
    :pswitch_2
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mTouchState:I

    .line 411
    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->setCanMoveDownFlag(Ljava/lang/Boolean;)V

    .line 413
    const/4 v10, -0x1

    iput v10, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mActivePointerId:I

    .line 415
    iget-object v10, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v10, :cond_2

    .line 416
    iget-object v10, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10}, Landroid/view/VelocityTracker;->recycle()V

    .line 417
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_1

    .line 430
    :cond_9
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 340
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 274
    const/4 v1, 0x0

    .line 275
    .local v1, "childLeft":I
    sub-int v6, p4, p2

    .line 276
    .local v6, "width":I
    sub-int v4, p5, p3

    .line 277
    .local v4, "height":I
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->getChildCount()I

    move-result v3

    .line 278
    .local v3, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_1

    .line 279
    invoke-virtual {p0, v5}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 280
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_0

    .line 281
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 282
    .local v2, "childWidth":I
    const/4 v7, 0x0

    add-int v8, v1, v6

    invoke-virtual {v0, v1, v7, v8, v4}, Landroid/view/View;->layout(IIII)V

    .line 283
    add-int/2addr v1, v2

    .line 278
    .end local v2    # "childWidth":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 286
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v6, 0x0

    .line 240
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 242
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 243
    .local v3, "width":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 244
    .local v4, "widthMode":I
    if-eq v4, v5, :cond_0

    .line 245
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "MultiScreenView can only be used in EXACTLY mode."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 248
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 249
    .local v1, "heightMode":I
    if-eq v1, v5, :cond_1

    .line 250
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "MultiScreenView can only be used in EXACTLY mode."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 255
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->getChildCount()I

    move-result v0

    .line 256
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 257
    invoke-virtual {p0, v2}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Landroid/view/View;->measure(II)V

    .line 256
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 260
    :cond_2
    iget-boolean v5, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mFirstLayout:Z

    if-eqz v5, :cond_4

    .line 261
    iget v5, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mInitScreen:I

    if-gez v5, :cond_3

    .line 262
    iget v5, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mDefaultScreen:I

    iput v5, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mInitScreen:I

    .line 264
    :cond_3
    iget v5, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mInitScreen:I

    iput v5, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mCurrentScreen:I

    .line 265
    invoke-virtual {p0, v6}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->setHorizontalScrollBarEnabled(Z)V

    .line 266
    iget v5, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mCurrentScreen:I

    mul-int/2addr v5, v3

    invoke-virtual {p0, v5, v6}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->scrollTo(II)V

    .line 267
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->setHorizontalScrollBarEnabled(Z)V

    .line 268
    iput-boolean v6, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mFirstLayout:Z

    .line 270
    :cond_4
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 24
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 439
    sget-object v21, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "MultiScreenView onTouchEvent action is "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " isScrolling "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->isScrolling:Z

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mPanelListener:Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel$OnLockPanelListener;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mPanelListener:Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel$OnLockPanelListener;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel$OnLockPanelListener;->onLockPanelkeepWake()V

    .line 445
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v21, v0

    if-nez v21, :cond_1

    .line 446
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 449
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 451
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 452
    .local v4, "action":I
    and-int/lit16 v0, v4, 0xff

    move/from16 v21, v0

    packed-switch v21, :pswitch_data_0

    .line 625
    :cond_2
    :goto_0
    const/16 v21, 0x1

    :goto_1
    return v21

    .line 458
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/Scroller;->isFinished()Z

    move-result v21

    if-nez v21, :cond_3

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/Scroller;->abortAnimation()V

    .line 463
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mLastMotionX:F

    .line 464
    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mActivePointerId:I

    goto :goto_0

    .line 468
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mTouchState:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_c

    .line 470
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mActivePointerId:I

    move/from16 v21, v0

    if-gez v21, :cond_4

    .line 471
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mActivePointerId:I

    .line 473
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mActivePointerId:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v9

    .line 474
    .local v9, "pointerIndex":I
    if-gez v9, :cond_5

    .line 475
    const/4 v9, 0x0

    .line 478
    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v15

    .line 479
    .local v15, "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mLastMotionX:F

    move/from16 v21, v0

    sub-float v6, v21, v15

    .line 480
    .local v6, "deltaX":F
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mLastMotionX:F

    .line 485
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->getScrollX()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    add-float v21, v21, v6

    const/16 v22, 0x0

    cmpg-float v21, v21, v22

    if-lez v21, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->getScrollX()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    add-float v21, v21, v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->getChildCount()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->getWidth()I

    move-result v23

    mul-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    cmpl-float v21, v21, v22

    if-ltz v21, :cond_7

    .line 486
    :cond_6
    const/16 v21, 0x1

    goto/16 :goto_1

    .line 490
    :cond_7
    const/16 v21, 0x0

    cmpg-float v21, v6, v21

    if-gez v21, :cond_9

    .line 495
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mTouchX:F

    move/from16 v21, v0

    add-float v21, v21, v6

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mTouchX:F

    .line 497
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mTouchX:F

    move/from16 v21, v0

    const/16 v22, 0x0

    cmpg-float v21, v21, v22

    if-gtz v21, :cond_8

    .line 498
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->getWidth()I

    move-result v21

    div-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mTouchX:F

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(FF)F

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mTouchX:F

    .line 501
    :cond_8
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-float v0, v0

    move/from16 v21, v0

    const v22, 0x4e6e6b28    # 1.0E9f

    div-float v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mSmoothingTime:F

    .line 502
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->invalidate()V

    goto/16 :goto_0

    .line 504
    :cond_9
    const/16 v21, 0x0

    cmpl-float v21, v6, v21

    if-lez v21, :cond_b

    .line 508
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mTouchX:F

    move/from16 v21, v0

    add-float v21, v21, v6

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mTouchX:F

    .line 510
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->getChildCount()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getRight()I

    move-result v21

    move/from16 v0, v21

    int-to-float v8, v0

    .line 512
    .local v8, "lastChildRight":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->getWidth()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    sub-float v5, v8, v21

    .line 513
    .local v5, "availableToScroll":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mTouchX:F

    move/from16 v21, v0

    cmpl-float v21, v21, v5

    if-ltz v21, :cond_a

    .line 514
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->getWidth()I

    move-result v21

    div-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    sub-float v21, v8, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mTouchX:F

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(FF)F

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mTouchX:F

    .line 517
    :cond_a
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-float v0, v0

    move/from16 v21, v0

    const v22, 0x4e6e6b28    # 1.0E9f

    div-float v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mSmoothingTime:F

    .line 518
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->invalidate()V

    goto/16 :goto_0

    .line 520
    .end local v5    # "availableToScroll":F
    .end local v8    # "lastChildRight":F
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->awakenScrollBars()Z

    goto/16 :goto_0

    .line 523
    .end local v6    # "deltaX":F
    .end local v9    # "pointerIndex":I
    .end local v15    # "x":F
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mActivePointerId:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v9

    .line 524
    .restart local v9    # "pointerIndex":I
    if-gez v9, :cond_d

    .line 525
    const/4 v9, 0x0

    .line 528
    :cond_d
    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v15

    .line 529
    .restart local v15    # "x":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v18

    .line 530
    .local v18, "y":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mLastMotionX:F

    move/from16 v21, v0

    sub-float v21, v15, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v16, v0

    .line 531
    .local v16, "xDiff":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mLastMotionY:F

    move/from16 v21, v0

    sub-float v21, v18, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v19, v0

    .line 533
    .local v19, "yDiff":I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mTouchSlop:I

    .line 534
    .local v11, "touchSlop":I
    move/from16 v0, v16

    if-le v0, v11, :cond_10

    const/16 v17, 0x1

    .line 535
    .local v17, "xMoved":Z
    :goto_2
    move/from16 v0, v19

    if-le v0, v11, :cond_11

    const/16 v20, 0x1

    .line 537
    .local v20, "yMoved":Z
    :goto_3
    if-eqz v17, :cond_e

    .line 538
    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->setCanMoveDownFlag(Ljava/lang/Boolean;)V

    .line 541
    :cond_e
    if-nez v17, :cond_f

    if-eqz v20, :cond_2

    .line 543
    :cond_f
    if-eqz v17, :cond_2

    .line 546
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->isScrolling:Z

    .line 547
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mTouchState:I

    .line 548
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mLastMotionX:F

    .line 549
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->getScrollX()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mTouchX:F

    .line 550
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-float v0, v0

    move/from16 v21, v0

    const v22, 0x4e6e6b28    # 1.0E9f

    div-float v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mSmoothingTime:F
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 553
    .end local v11    # "touchSlop":I
    .end local v15    # "x":F
    .end local v16    # "xDiff":I
    .end local v17    # "xMoved":Z
    .end local v18    # "y":F
    .end local v19    # "yDiff":I
    .end local v20    # "yMoved":Z
    :catch_0
    move-exception v7

    .line 554
    .local v7, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-virtual {v7}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    goto/16 :goto_0

    .line 534
    .end local v7    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v11    # "touchSlop":I
    .restart local v15    # "x":F
    .restart local v16    # "xDiff":I
    .restart local v18    # "y":F
    .restart local v19    # "yDiff":I
    :cond_10
    const/16 v17, 0x0

    goto :goto_2

    .line 535
    .restart local v17    # "xMoved":Z
    :cond_11
    const/16 v20, 0x0

    goto :goto_3

    .line 561
    .end local v9    # "pointerIndex":I
    .end local v11    # "touchSlop":I
    .end local v15    # "x":F
    .end local v16    # "xDiff":I
    .end local v17    # "xMoved":Z
    .end local v18    # "y":F
    .end local v19    # "yDiff":I
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mTouchState:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_14

    .line 562
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 563
    .local v12, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v21, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mMaximumVelocity:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v12, v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 564
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mActivePointerId:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v21

    move/from16 v0, v21

    float-to-int v13, v0

    .line 566
    .local v13, "velocityX":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mCurrentScreen:I

    .line 567
    .local v14, "which":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->getWidth()I

    move-result v10

    .line 568
    .local v10, "screenWidth":I
    const/16 v21, 0xc8

    move/from16 v0, v21

    if-gt v13, v0, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->start:F

    move/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->getScrollX()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v21, v21, v22

    div-int/lit8 v22, v10, 0xa

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    cmpl-float v21, v21, v22

    if-lez v21, :cond_15

    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mCurrentScreen:I

    move/from16 v21, v0

    if-lez v21, :cond_15

    .line 569
    add-int/lit8 v14, v14, -0x1

    .line 574
    :cond_13
    :goto_4
    const/16 v21, 0x0

    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v14, v1, v2, v3}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->snapToScreen(IIZZ)V

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v21, v0

    if-eqz v21, :cond_14

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/VelocityTracker;->recycle()V

    .line 589
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 592
    .end local v10    # "screenWidth":I
    .end local v12    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v13    # "velocityX":I
    .end local v14    # "which":I
    :cond_14
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mTouchState:I

    .line 593
    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->setCanMoveDownFlag(Ljava/lang/Boolean;)V

    .line 594
    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mActivePointerId:I

    goto/16 :goto_0

    .line 570
    .restart local v10    # "screenWidth":I
    .restart local v12    # "velocityTracker":Landroid/view/VelocityTracker;
    .restart local v13    # "velocityX":I
    .restart local v14    # "which":I
    :cond_15
    const/16 v21, -0xc8

    move/from16 v0, v21

    if-lt v13, v0, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->getScrollX()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->start:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    div-int/lit8 v22, v10, 0xa

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    cmpl-float v21, v21, v22

    if-lez v21, :cond_13

    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mCurrentScreen:I

    move/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->getChildCount()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_13

    .line 572
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 599
    .end local v10    # "screenWidth":I
    .end local v12    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v13    # "velocityX":I
    .end local v14    # "which":I
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mTouchState:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_18

    .line 600
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mCurrentScreen:I

    .line 601
    .restart local v14    # "which":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->getWidth()I

    move-result v10

    .line 602
    .restart local v10    # "screenWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->start:F

    move/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->getScrollX()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v21, v21, v22

    div-int/lit8 v22, v10, 0xa

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    cmpl-float v21, v21, v22

    if-lez v21, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mCurrentScreen:I

    move/from16 v21, v0

    if-lez v21, :cond_19

    .line 603
    add-int/lit8 v14, v14, -0x1

    .line 607
    :cond_17
    :goto_5
    const/16 v21, 0x0

    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v14, v1, v2, v3}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->snapToScreen(IIZZ)V

    .line 611
    .end local v10    # "screenWidth":I
    .end local v14    # "which":I
    :cond_18
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mTouchState:I

    .line 612
    const/16 v21, -0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mActivePointerId:I

    .line 616
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mCurrentScreen:I

    move/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->getWidth()I

    move-result v22

    mul-int v21, v21, v22

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->scrollTo(II)V

    .line 618
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->postInvalidate()V

    goto/16 :goto_0

    .line 604
    .restart local v10    # "screenWidth":I
    .restart local v14    # "which":I
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->getScrollX()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->start:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    div-int/lit8 v22, v10, 0xa

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    cmpl-float v21, v21, v22

    if-lez v21, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mCurrentScreen:I

    move/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->getChildCount()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_17

    .line 605
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 452
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public registerCallback(Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView$MultiScreenCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView$MultiScreenCallback;

    .prologue
    .line 1095
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1096
    return-void
.end method

.method public removeAllScreens()V
    .locals 3

    .prologue
    .line 855
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 856
    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 857
    .local v1, "v":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 855
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 860
    .end local v1    # "v":Landroid/view/ViewGroup;
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->removeAllViews()V

    .line 861
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mTotalScreen:I

    .line 862
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mCurrentScreen:I

    .line 863
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->notifyCallbacks()V

    .line 864
    return-void
.end method

.method public removeScreen()V
    .locals 4

    .prologue
    .line 825
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 845
    :cond_0
    :goto_0
    return-void

    .line 828
    :cond_1
    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mTotalScreen:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 829
    .local v0, "screen":Landroid/widget/LinearLayout;
    if-eqz v0, :cond_0

    .line 830
    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->removeView(Landroid/view/View;)V

    .line 831
    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mTotalScreen:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mTotalScreen:I

    .line 832
    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mTotalScreen:I

    if-nez v2, :cond_2

    .line 833
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mCurrentScreen:I

    .line 834
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->notifyCallbacks()V

    goto :goto_0

    .line 838
    :cond_2
    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mCurrentScreen:I

    add-int/lit8 v1, v2, -0x1

    .line 840
    .local v1, "snapTo":I
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->notifyCallbacks()V

    .line 842
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->getWidth()I

    move-result v2

    mul-int/2addr v2, v1

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->scrollTo(II)V

    .line 843
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->postInvalidate()V

    goto :goto_0
.end method

.method public removeScreen(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 777
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 817
    :cond_0
    :goto_0
    return-void

    .line 781
    :cond_1
    if-ltz p1, :cond_0

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mTotalScreen:I

    if-ge p1, v2, :cond_0

    .line 785
    invoke-virtual {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 786
    .local v0, "screen":Landroid/widget/LinearLayout;
    if-eqz v0, :cond_0

    .line 787
    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->removeView(Landroid/view/View;)V

    .line 788
    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mTotalScreen:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mTotalScreen:I

    .line 789
    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mTotalScreen:I

    if-nez v2, :cond_2

    .line 790
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mCurrentScreen:I

    .line 815
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->notifyCallbacks()V

    goto :goto_0

    .line 793
    :cond_2
    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mCurrentScreen:I

    .line 794
    .local v1, "snapTo":I
    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mCurrentScreen:I

    if-ne p1, v2, :cond_6

    .line 795
    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mCurrentScreen:I

    .line 800
    :cond_3
    :goto_2
    if-gez v1, :cond_4

    .line 801
    const/4 v1, 0x0

    .line 803
    :cond_4
    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mTotalScreen:I

    if-lt v1, v2, :cond_5

    .line 804
    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mTotalScreen:I

    add-int/lit8 v1, v2, -0x1

    .line 807
    :cond_5
    iput v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mCurrentScreen:I

    .line 810
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->getWidth()I

    move-result v2

    mul-int/2addr v2, v1

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->scrollTo(II)V

    .line 812
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->postInvalidate()V

    goto :goto_1

    .line 796
    :cond_6
    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mCurrentScreen:I

    if-ge p1, v2, :cond_3

    .line 797
    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mCurrentScreen:I

    add-int/lit8 v1, v2, -0x1

    goto :goto_2
.end method

.method public scrollLeft()V
    .locals 1

    .prologue
    .line 996
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 997
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mCurrentScreen:I

    if-lez v0, :cond_0

    .line 998
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mCurrentScreen:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->snapToScreen(I)V

    .line 1003
    :cond_0
    :goto_0
    return-void

    .line 1000
    :cond_1
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mNextScreen:I

    if-lez v0, :cond_0

    .line 1001
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mNextScreen:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->snapToScreen(I)V

    goto :goto_0
.end method

.method public scrollRight()V
    .locals 2

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1010
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 1011
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mCurrentScreen:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->snapToScreen(I)V

    .line 1016
    :cond_0
    :goto_0
    return-void

    .line 1013
    :cond_1
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mNextScreen:I

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 1014
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mNextScreen:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->snapToScreen(I)V

    goto :goto_0
.end method

.method public scrollTo(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1023
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 1024
    int-to-float v0, p1

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mTouchX:F

    .line 1025
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mSmoothingTime:F

    .line 1026
    return-void
.end method

.method public setCanMoveDownFlag(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "flag"    # Ljava/lang/Boolean;

    .prologue
    .line 930
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->canMoveDown:Z

    .line 931
    return-void
.end method

.method public setDefaultScreen(I)V
    .locals 0
    .param p1, "screen"    # I

    .prologue
    .line 656
    iput p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mDefaultScreen:I

    .line 657
    return-void
.end method

.method public setInitScreen(I)V
    .locals 0
    .param p1, "currentScreen"    # I

    .prologue
    .line 670
    iput p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mInitScreen:I

    .line 671
    return-void
.end method

.method public setOnListener(Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel$OnLockPanelListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel$OnLockPanelListener;

    .prologue
    .line 1110
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mPanelListener:Lcom/android/systemui/vivo/common/keyguard/widget/LockPanel$OnLockPanelListener;

    .line 1111
    return-void
.end method

.method public setRejectEventEnable(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 292
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->mRejectEventEnable:Z

    .line 293
    return-void
.end method

.method public setScreenContent(ILandroid/view/View;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 891
    invoke-virtual {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 892
    .local v0, "screen":Landroid/widget/LinearLayout;
    if-eqz v0, :cond_0

    .line 893
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 894
    invoke-virtual {v0, p2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 898
    :goto_0
    return-void

    .line 896
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->addScreen(ILandroid/view/View;)V

    goto :goto_0
.end method

.method public snapToScreen(I)V
    .locals 1
    .param p1, "whichScreen"    # I

    .prologue
    const/4 v0, 0x0

    .line 681
    invoke-direct {p0, p1, v0, v0, v0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->snapToScreen(IIZZ)V

    .line 682
    return-void
.end method

.method public snapToScreenImmediately(I)V
    .locals 2
    .param p1, "whichScreen"    # I

    .prologue
    const/4 v1, 0x0

    .line 685
    const/4 v0, 0x1

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/android/systemui/vivo/common/keyguard/widget/MultiScreenView;->snapToScreen(IIZZ)V

    .line 686
    return-void
.end method
