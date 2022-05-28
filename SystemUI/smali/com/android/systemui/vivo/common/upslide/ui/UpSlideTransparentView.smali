.class public Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;
.super Landroid/widget/FrameLayout;
.source "UpSlideTransparentView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView$UpdateLayoutParamsRunnable;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field public static final FULL_ALPHA:F = 0.5f

.field private static final MAX_CLICK_PX:I

.field private static final MSG_HANDLE_SCREEN_OFF:I = 0x3ec

.field private static final MSG_HANDLE_SCREEN_ON:I = 0x3eb

.field private static final MSG_HIDE_TIP_ARROW:I = 0x3ef

.field private static final MSG_HOME_COLLAPSE:I = 0x3ea

.field private static final MSG_HOME_EXTEND:I = 0x3e9

.field private static final MSG_INJECT_FAKE_EVENT:I = 0x3ed

.field private static final ROTATION_BUFFER_TIME:I = 0x96

.field private static SHADE_HEIGHT:I = 0x0

.field private static final SUPPORT_SPACE_AREA:Z

.field private static final TAG:Ljava/lang/String; = "UpSlideTransparentView"

.field private static final UPDATE_LAYOUT_DELAY_TIME:I = 0x64

.field private static mContext:Landroid/content/Context;


# instance fields
.field private mAlphaViewRect:Landroid/graphics/Rect;

.field private mBackgroundAlpha:F

.field private mBackgroundAlphaView:Landroid/view/View;

.field private mClickFlag:Z

.field private mCurrRotation:I

.field private mCurrTouchEffective:Z

.field private mCurrentEventAction:I

.field private mDimenUtils:Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;

.field private mDrawerContentLength:I

.field private mDrawerLength:I

.field private mFlingTracker:Lcom/android/systemui/vivo/common/upslide/utils/FlingTracker;

.field private mFullScreenExpandRunnable:Ljava/lang/Runnable;

.field private mFullScreenFlagObserver:Lcom/android/systemui/vivo/common/upslide/utils/FullScreenFlagObserver;

.field private mHandler:Landroid/os/Handler;

.field private mIsTipArrowShowing:Z

.field private mIsUpSlideGuideViewShowing:Z

.field private mLps:Landroid/view/WindowManager$LayoutParams;

.field private mRecentDummyView:Landroid/widget/ImageView;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSlidingOut:Z

.field private mStartX:F

.field private mStartY:F

.field private mTipArrowHasHided:Z

.field private mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

.field private mUpSlidePanelView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

.field private final mUpdateTransparentParamsRunnable:Ljava/lang/Runnable;

.field private mViewState:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lcom/android/systemui/vivo/common/upslide/utils/UpSlideUtils;->isSupportKeyCodeBarSwipe()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->SUPPORT_SPACE_AREA:Z

    .line 38
    const/16 v0, 0x50

    sput v0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->SHADE_HEIGHT:I

    .line 39
    sget-boolean v0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->SUPPORT_SPACE_AREA:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    :goto_0
    sput v0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->MAX_CLICK_PX:I

    return-void

    :cond_0
    const/16 v0, 0x1e

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "helper"    # Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    .prologue
    const/4 v5, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v4, -0x2

    const/4 v3, 0x0

    .line 89
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 58
    iput v2, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mBackgroundAlpha:F

    .line 59
    iput-object v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mAlphaViewRect:Landroid/graphics/Rect;

    .line 63
    iput v3, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mCurrRotation:I

    .line 64
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mViewState:I

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mClickFlag:Z

    .line 69
    iput-boolean v3, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mSlidingOut:Z

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mCurrTouchEffective:Z

    .line 73
    iput-boolean v3, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mIsUpSlideGuideViewShowing:Z

    .line 74
    iput-boolean v3, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mTipArrowHasHided:Z

    .line 75
    iput v3, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mCurrentEventAction:I

    .line 76
    iput-object v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mFullScreenExpandRunnable:Ljava/lang/Runnable;

    .line 78
    iput-object v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mLps:Landroid/view/WindowManager$LayoutParams;

    .line 79
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView$1;-><init>(Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpdateTransparentParamsRunnable:Ljava/lang/Runnable;

    .line 1273
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView$6;-><init>(Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mHandler:Landroid/os/Handler;

    .line 90
    sput-object p1, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mContext:Landroid/content/Context;

    .line 91
    sget-object v0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mDimenUtils:Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;

    .line 92
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->refreshDimens()V

    .line 93
    iput-object p2, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    .line 94
    sget-object v0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mWindowManager:Landroid/view/WindowManager;

    .line 95
    invoke-virtual {p0, v3}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->setBackgroundColor(I)V

    .line 97
    sget-boolean v0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->SUPPORT_SPACE_AREA:Z

    if-nez v0, :cond_0

    .line 98
    invoke-static {}, Lcom/android/systemui/vivo/common/upslide/utils/UpSlideUtils;->getAbsoluteShieldHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mDimenUtils:Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getDensity()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->SHADE_HEIGHT:I

    .line 104
    :goto_0
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideAlphaOptimizedView;

    invoke-direct {v0, p1}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideAlphaOptimizedView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mBackgroundAlphaView:Landroid/view/View;

    .line 105
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mBackgroundAlphaView:Landroid/view/View;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 106
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mBackgroundAlphaView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 107
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mBackgroundAlphaView:Landroid/view/View;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mBackgroundAlphaView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 109
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mScreenWidth:I

    iget v2, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mScreenHeight:I

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mAlphaViewRect:Landroid/graphics/Rect;

    .line 112
    new-instance v0, Landroid/widget/ImageView;

    sget-object v1, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mRecentDummyView:Landroid/widget/ImageView;

    .line 113
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mRecentDummyView:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    sget-object v1, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;-><init>(Landroid/content/Context;Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlidePanelView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    .line 116
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlidePanelView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x30

    invoke-direct {v1, v4, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlidePanelView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mScreenHeight:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->setTranslationY(F)V

    .line 118
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mViewState:I

    .line 119
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mViewState:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->onViewStateChanged(I)V

    .line 120
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlidePanelView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->setVisibility(I)V

    .line 122
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/utils/FullScreenFlagObserver;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mHandler:Landroid/os/Handler;

    sget-object v2, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/vivo/common/upslide/utils/FullScreenFlagObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mFullScreenFlagObserver:Lcom/android/systemui/vivo/common/upslide/utils/FullScreenFlagObserver;

    .line 123
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mFullScreenFlagObserver:Lcom/android/systemui/vivo/common/upslide/utils/FullScreenFlagObserver;

    new-instance v1, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView$2;-><init>(Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/upslide/utils/FullScreenFlagObserver;->registerCallback(Lcom/android/systemui/vivo/common/upslide/utils/FullScreenFlagObserver$Callback;)V

    .line 130
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mFullScreenFlagObserver:Lcom/android/systemui/vivo/common/upslide/utils/FullScreenFlagObserver;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/utils/FullScreenFlagObserver;->startObserving()V

    .line 131
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mFullScreenFlagObserver:Lcom/android/systemui/vivo/common/upslide/utils/FullScreenFlagObserver;

    invoke-virtual {v0, v3}, Lcom/android/systemui/vivo/common/upslide/utils/FullScreenFlagObserver;->onChange(Z)V

    .line 133
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/utils/FlingTracker;

    invoke-direct {v0}, Lcom/android/systemui/vivo/common/upslide/utils/FlingTracker;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mFlingTracker:Lcom/android/systemui/vivo/common/upslide/utils/FlingTracker;

    .line 134
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mDimenUtils:Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getStatusBarHeight()I

    move-result v0

    sput v0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->SHADE_HEIGHT:I

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;)Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mLps:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mCurrTouchEffective:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;)Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->performHidePanel()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->onCollapseFinished(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;IFF)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;
    .param p1, "x1"    # I
    .param p2, "x2"    # F
    .param p3, "x3"    # F

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->injectFakeTouchEvent(IFF)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    .prologue
    .line 30
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mCurrRotation:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->isUpSlideViewTouchable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700()I
    .locals 1

    .prologue
    .line 30
    sget v0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->SHADE_HEIGHT:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->hideTipArrow()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    .prologue
    .line 30
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mCurrentEventAction:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->doExpand()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->onExpandStarted()V

    return-void
.end method

.method static synthetic access$602(Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mSlidingOut:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;FF)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->drawPanel(FF)V

    return-void
.end method

.method static synthetic access$802(Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mFullScreenExpandRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->startPanelAnim(Z)V

    return-void
.end method

.method private doExpand()V
    .locals 4

    .prologue
    const/16 v1, 0x3e9

    .line 560
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->onExpandStarted()V

    .line 561
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 562
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 563
    return-void
.end method

.method private drawPanel(FF)V
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/high16 v6, 0x41100000    # 9.0f

    const/4 v4, 0x0

    .line 943
    iget v3, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mCurrRotation:I

    packed-switch v3, :pswitch_data_0

    .line 983
    :goto_0
    :pswitch_0
    return-void

    .line 945
    :pswitch_1
    iget v3, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mScreenHeight:I

    int-to-float v3, v3

    sub-float v0, v3, p2

    .line 946
    .local v0, "panelLength_0":F
    iget v3, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mDrawerLength:I

    add-int/lit8 v3, v3, 0x51

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-lez v3, :cond_2

    .line 947
    iget v3, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mDrawerLength:I

    int-to-float v3, v3

    sub-float v3, v0, v3

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v3, v4

    mul-float/2addr v3, v6

    iget v4, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mDrawerLength:I

    int-to-float v4, v4

    add-float v0, v3, v4

    .line 951
    :cond_0
    :goto_1
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/LockTaskUtils;->isInLockTaskMode()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mDrawerLength:I

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-lez v3, :cond_1

    .line 952
    iget v3, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mDrawerLength:I

    int-to-float v0, v3

    .line 954
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlidePanelView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    iget v4, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mScreenHeight:I

    int-to-float v4, v4

    sub-float/2addr v4, v0

    invoke-virtual {v3, v4}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->setTranslationY(F)V

    goto :goto_0

    .line 948
    :cond_2
    cmpg-float v3, v0, v4

    if-gez v3, :cond_0

    .line 949
    const/4 v0, 0x0

    goto :goto_1

    .line 957
    .end local v0    # "panelLength_0":F
    :pswitch_2
    iget v3, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mScreenWidth:I

    int-to-float v3, v3

    sub-float v2, v3, p1

    .line 958
    .local v2, "panelLength_90":F
    iget v3, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mDrawerLength:I

    add-int/lit8 v3, v3, 0x51

    int-to-float v3, v3

    cmpl-float v3, v2, v3

    if-lez v3, :cond_5

    .line 959
    iget v3, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mDrawerLength:I

    int-to-float v3, v3

    sub-float v3, v2, v3

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v3, v4

    mul-float/2addr v3, v6

    iget v4, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mDrawerLength:I

    int-to-float v4, v4

    add-float v2, v3, v4

    .line 963
    :cond_3
    :goto_2
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/LockTaskUtils;->isInLockTaskMode()Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mDrawerLength:I

    int-to-float v3, v3

    cmpl-float v3, v2, v3

    if-lez v3, :cond_4

    .line 964
    iget v3, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mDrawerLength:I

    int-to-float v2, v3

    .line 966
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlidePanelView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    iget v4, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mScreenWidth:I

    int-to-float v4, v4

    sub-float/2addr v4, v2

    invoke-virtual {v3, v4}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->setTranslationX(F)V

    goto :goto_0

    .line 960
    :cond_5
    cmpg-float v3, v2, v4

    if-gez v3, :cond_3

    .line 961
    const/4 v2, 0x0

    goto :goto_2

    .line 969
    .end local v2    # "panelLength_90":F
    :pswitch_3
    move v1, p1

    .line 970
    .local v1, "panelLength_270":F
    iget v3, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mDrawerLength:I

    add-int/lit8 v3, v3, 0x51

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-lez v3, :cond_8

    .line 971
    iget v3, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mDrawerLength:I

    int-to-float v3, v3

    sub-float v3, v1, v3

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v3, v4

    mul-float/2addr v3, v6

    iget v4, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mDrawerLength:I

    int-to-float v4, v4

    add-float v1, v3, v4

    .line 975
    :cond_6
    :goto_3
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/LockTaskUtils;->isInLockTaskMode()Z

    move-result v3

    if-eqz v3, :cond_7

    iget v3, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mDrawerLength:I

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-lez v3, :cond_7

    .line 976
    iget v3, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mDrawerLength:I

    int-to-float v1, v3

    .line 978
    :cond_7
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlidePanelView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    iget v4, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mScreenWidth:I

    neg-int v4, v4

    int-to-float v4, v4

    add-float/2addr v4, v1

    invoke-virtual {v3, v4}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->setTranslationX(F)V

    goto/16 :goto_0

    .line 972
    :cond_8
    cmpg-float v3, v1, v4

    if-gez v3, :cond_6

    .line 973
    const/4 v1, 0x0

    goto :goto_3

    .line 943
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private enoughDistance(FF)Z
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v3, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 892
    iget v2, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mCurrRotation:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 909
    :cond_0
    :goto_0
    return v0

    .line 894
    :pswitch_1
    iget v2, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mViewState:I

    if-ne v2, v3, :cond_1

    .line 895
    sget v2, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->MAX_CLICK_PX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mStartY:F

    sub-float/2addr v3, p2

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 897
    :cond_1
    sget v2, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->MAX_CLICK_PX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mStartY:F

    sub-float/2addr v3, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 899
    :pswitch_2
    iget v2, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mViewState:I

    if-ne v2, v3, :cond_2

    .line 900
    sget v2, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->MAX_CLICK_PX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mStartX:F

    sub-float/2addr v3, p1

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 902
    :cond_2
    sget v2, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->MAX_CLICK_PX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mStartX:F

    sub-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 904
    :pswitch_3
    iget v2, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mViewState:I

    if-ne v2, v3, :cond_3

    .line 905
    sget v2, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->MAX_CLICK_PX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mStartX:F

    sub-float v3, p1, v3

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 907
    :cond_3
    sget v2, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->MAX_CLICK_PX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mStartX:F

    sub-float v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 892
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private hideTipArrow()V
    .locals 1

    .prologue
    .line 1058
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->hideTipArrow(Z)V

    .line 1059
    return-void
.end method

.method private hideTipArrow(Z)V
    .locals 11
    .param p1, "expandPanel"    # Z

    .prologue
    const/4 v3, -0x1

    const/4 v10, 0x0

    const/4 v2, 0x0

    .line 1062
    const-string v0, "UpSlideTransparentView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hideTipArrow, mIsTipArrowShowing = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mIsTipArrowShowing:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mIsTipArrowShowing:Z

    if-nez v0, :cond_0

    .line 1095
    :goto_0
    return-void

    .line 1066
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ef

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1067
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlidePanelView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->setVisibility(I)V

    .line 1068
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-virtual {v0, v2}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->showDragView(Z)V

    .line 1069
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mIsTipArrowShowing:Z

    .line 1070
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->getViewRoot()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0059

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1071
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mCurrRotation:I

    packed-switch v0, :pswitch_data_0

    .line 1094
    :goto_1
    :pswitch_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mViewState:I

    goto :goto_0

    .line 1073
    :pswitch_1
    if-nez p1, :cond_1

    .line 1074
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->isUpSlideViewTouchable()Z

    move-result v1

    sget v4, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->SHADE_HEIGHT:I

    move-object v0, p0

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->updateLayoutParams(ZZIIZ)V

    .line 1076
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlidePanelView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mScreenHeight:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->setTranslationY(F)V

    .line 1077
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlidePanelView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    invoke-virtual {v0, v10}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->setTranslationX(F)V

    goto :goto_1

    .line 1080
    :pswitch_2
    if-nez p1, :cond_2

    .line 1081
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->isUpSlideViewTouchable()Z

    move-result v5

    sget v7, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->SHADE_HEIGHT:I

    move-object v4, p0

    move v6, v2

    move v8, v3

    move v9, v2

    invoke-virtual/range {v4 .. v9}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->updateLayoutParams(ZZIIZ)V

    .line 1083
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlidePanelView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mScreenWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->setTranslationX(F)V

    .line 1084
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlidePanelView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    invoke-virtual {v0, v10}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->setTranslationY(F)V

    goto :goto_1

    .line 1087
    :pswitch_3
    if-nez p1, :cond_3

    .line 1088
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->isUpSlideViewTouchable()Z

    move-result v5

    sget v7, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->SHADE_HEIGHT:I

    move-object v4, p0

    move v6, v2

    move v8, v3

    move v9, v2

    invoke-virtual/range {v4 .. v9}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->updateLayoutParams(ZZIIZ)V

    .line 1090
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlidePanelView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mScreenWidth:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->setTranslationX(F)V

    .line 1091
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlidePanelView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    invoke-virtual {v0, v10}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->setTranslationY(F)V

    goto :goto_1

    .line 1071
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private injectFakeTouchEvent(IFF)V
    .locals 9
    .param p1, "action"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/4 v7, 0x0

    .line 986
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 990
    .local v8, "event":Landroid/view/MotionEvent;
    const/16 v0, 0x1002

    :try_start_0
    invoke-virtual {v8, v0}, Landroid/view/MotionEvent;->setSource(I)V

    .line 991
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v8, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 996
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 998
    :goto_0
    return-void

    .line 993
    :catch_0
    move-exception v0

    .line 996
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    throw v0
.end method

.method private isExpandDisabled()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 776
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    if-nez v0, :cond_0

    .line 777
    const/4 v0, 0x0

    .line 779
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->isExpandDisabled(ZZ)Z

    move-result v0

    goto :goto_0
.end method

.method private isExpandDisabled(ZZ)Z
    .locals 1
    .param p1, "considerBarExpand"    # Z
    .param p2, "considerUpSlideSetting"    # Z

    .prologue
    .line 783
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    if-nez v0, :cond_0

    .line 784
    const/4 v0, 0x0

    .line 786
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->isExpandDisabled(ZZ)Z

    move-result v0

    goto :goto_0
.end method

.method private isFullScreen()Z
    .locals 1

    .prologue
    .line 936
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mFullScreenFlagObserver:Lcom/android/systemui/vivo/common/upslide/utils/FullScreenFlagObserver;

    if-nez v0, :cond_0

    .line 937
    const/4 v0, 0x0

    .line 939
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mFullScreenFlagObserver:Lcom/android/systemui/vivo/common/upslide/utils/FullScreenFlagObserver;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/utils/FullScreenFlagObserver;->isFullScreen()Z

    move-result v0

    goto :goto_0
.end method

.method private isSetupWizardCompleted()Z
    .locals 5

    .prologue
    .line 473
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->isUserSetup()Z

    move-result v1

    .line 474
    .local v1, "userSetup":Z
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->isDeviceProvisioned()Z

    move-result v0

    .line 475
    .local v0, "provisioned":Z
    const-string v2, "UpSlideTransparentView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "userSetup "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",provisioned "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 477
    const/4 v2, 0x1

    .line 479
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isUpSlideViewTouchable()Z
    .locals 1

    .prologue
    .line 790
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    if-nez v0, :cond_0

    .line 791
    const/4 v0, 0x1

    .line 793
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->isUpSlideViewTouchable()Z

    move-result v0

    goto :goto_0
.end method

.method private onCollapseFinished(Z)V
    .locals 4
    .param p1, "rotationChanged"    # Z

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 706
    const-string v0, "UpSlideTransparentView"

    const-string v1, "onCollapseFinished()"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mCurrRotation:I

    packed-switch v0, :pswitch_data_0

    .line 721
    :goto_0
    :pswitch_0
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView$UpdateLayoutParamsRunnable;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView$UpdateLayoutParamsRunnable;-><init>(Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;Z)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->post(Ljava/lang/Runnable;)Z

    .line 722
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mViewState:I

    .line 723
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlidePanelView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->setVisibility(I)V

    .line 724
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mBackgroundAlphaView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 725
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->getNavigationBarView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 726
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mViewState:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->onViewStateChanged(I)V

    .line 727
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->resetViewsAlpha()V

    .line 728
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/systemui/vivo/common/utils/LockTaskUtils;->setUnLockTaskPending(Z)V

    .line 729
    return-void

    .line 709
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlidePanelView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mScreenHeight:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->setTranslationY(F)V

    .line 710
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlidePanelView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->setTranslationX(F)V

    goto :goto_0

    .line 713
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlidePanelView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mScreenWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->setTranslationX(F)V

    .line 714
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlidePanelView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->setTranslationY(F)V

    goto :goto_0

    .line 717
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlidePanelView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mScreenWidth:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->setTranslationX(F)V

    .line 718
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlidePanelView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->setTranslationY(F)V

    goto :goto_0

    .line 707
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private onCollapseStarted()V
    .locals 2

    .prologue
    .line 696
    const-string v0, "UpSlideTransparentView"

    const-string v1, "onCollapseStarted()"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mViewState:I

    .line 698
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mViewState:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->onViewStateChanged(I)V

    .line 699
    return-void
.end method

.method private onExpandStarted()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 590
    const-string v0, "UpSlideTransparentView"

    const-string v1, "onExpandStarted()"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->hideTipArrow(Z)V

    .line 592
    iput v2, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mViewState:I

    .line 593
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mViewState:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->onViewStateChanged(I)V

    .line 594
    invoke-static {v2}, Lcom/android/systemui/vivo/common/utils/LockTaskUtils;->setUnLockTaskPending(Z)V

    .line 595
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/LockTaskUtils;->isInLockTaskMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 596
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->onNavigationBarExpandStart()V

    .line 600
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlidePanelView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->setVisibility(I)V

    .line 601
    return-void

    .line 598
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->onUpSlideExpandStart()V

    goto :goto_0
.end method

.method private onNavigationBarExpandStart()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 615
    const-string v0, "UpSlideTransparentView"

    const-string v1, "onNavigationBarExpandStart"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v2, v1, v2}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->updateLayoutParamsWithAutoRotation(ZZIZ)V

    .line 617
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->getViewRoot()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 618
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->getNavigationBarView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 619
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mDimenUtils:Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getNavigationBarLength()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mDrawerLength:I

    .line 620
    return-void
.end method

.method private onUpSlideExpandStart()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 604
    const/4 v0, -0x1

    invoke-virtual {p0, v1, v1, v0, v2}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->updateLayoutParamsWithAutoRotation(ZZIZ)V

    .line 605
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->getViewRoot()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 606
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->getNavigationBarView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 607
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mDimenUtils:Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getDrawerLength()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mDrawerLength:I

    .line 609
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mBackgroundAlpha:F

    .line 610
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mBackgroundAlphaView:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mBackgroundAlpha:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 611
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mBackgroundAlphaView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 612
    return-void
.end method

.method private performHidePanel()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 1001
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mViewState:I

    if-ne v2, v0, :cond_0

    .line 1024
    :goto_0
    return-void

    .line 1004
    :cond_0
    const-string v0, "UpSlideTransparentView"

    const-string v1, "perform hide, no anim!"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1006
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlidePanelView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->isAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1007
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlidePanelView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->cancelAnim()V

    .line 1010
    :cond_1
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mCurrRotation:I

    packed-switch v0, :pswitch_data_0

    .line 1021
    :goto_1
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mBackgroundAlphaView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1022
    iput v2, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mViewState:I

    .line 1023
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlidePanelView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->invalidate()V

    goto :goto_0

    .line 1012
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlidePanelView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mScreenHeight:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->setTranslationY(F)V

    goto :goto_1

    .line 1015
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlidePanelView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mScreenWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->setTranslationX(F)V

    goto :goto_1

    .line 1018
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlidePanelView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mScreenWidth:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->setTranslationX(F)V

    goto :goto_1

    .line 1010
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private refreshDimens()V
    .locals 2

    .prologue
    .line 754
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mDimenUtils:Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;

    if-nez v0, :cond_0

    .line 755
    const-string v0, "UpSlideTransparentView"

    const-string v1, "refreshDimens error! mDimenUtils is null!"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    :goto_0
    return-void

    .line 758
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mDimenUtils:Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getScreenWidth()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mScreenWidth:I

    .line 759
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mDimenUtils:Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getScreenHeight()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mScreenHeight:I

    .line 760
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mDimenUtils:Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getDrawerLength()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mDrawerLength:I

    .line 761
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mDimenUtils:Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getDrawerContentLength()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mDrawerContentLength:I

    goto :goto_0
.end method

.method private resetViewsAlpha()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 1098
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->getViewRoot()Landroid/view/View;

    move-result-object v0

    .line 1099
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 1100
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1102
    :cond_0
    return-void
.end method

.method private setAlphaViewRect(I)V
    .locals 5
    .param p1, "panelLength"    # I

    .prologue
    .line 655
    const/4 v1, 0x0

    .line 656
    .local v1, "left":I
    const/4 v3, 0x0

    .line 657
    .local v3, "top":I
    iget v2, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mScreenWidth:I

    .line 658
    .local v2, "right":I
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mScreenHeight:I

    .line 659
    .local v0, "bottom":I
    iget v4, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mCurrRotation:I

    packed-switch v4, :pswitch_data_0

    .line 679
    :goto_0
    :pswitch_0
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mAlphaViewRect:Landroid/graphics/Rect;

    if-eqz v4, :cond_0

    .line 680
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mAlphaViewRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 682
    :cond_0
    return-void

    .line 661
    :pswitch_1
    const/4 v1, 0x0

    .line 662
    const/4 v3, 0x0

    .line 663
    iget v2, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mScreenWidth:I

    .line 664
    iget v4, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mScreenHeight:I

    sub-int v0, v4, p1

    .line 665
    goto :goto_0

    .line 667
    :pswitch_2
    const/4 v1, 0x0

    .line 668
    const/4 v3, 0x0

    .line 669
    iget v4, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mScreenWidth:I

    sub-int v2, v4, p1

    .line 670
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mScreenHeight:I

    .line 671
    goto :goto_0

    .line 673
    :pswitch_3
    move v1, p1

    .line 674
    const/4 v3, 0x0

    .line 675
    iget v2, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mScreenWidth:I

    .line 676
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mScreenHeight:I

    goto :goto_0

    .line 659
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private showTipArrow()V
    .locals 13

    .prologue
    const/16 v12, 0x3ef

    const/4 v3, -0x1

    const/4 v11, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1027
    const-string v0, "UpSlideTransparentView"

    const-string v5, "showTipArrow"

    invoke-static {v0, v5}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    const/16 v4, 0x4e

    .line 1029
    .local v4, "tipArrowLength":I
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    if-eqz v0, :cond_0

    .line 1030
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->getTipArrowLength()I

    move-result v4

    .line 1032
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->getViewRoot()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1033
    invoke-virtual {p0, v2}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->setBackgroundColor(I)V

    .line 1034
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mCurrRotation:I

    packed-switch v0, :pswitch_data_0

    .line 1048
    :goto_0
    :pswitch_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mViewState:I

    .line 1049
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->showDragView(Z)V

    .line 1050
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mIsTipArrowShowing:Z

    .line 1051
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlidePanelView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->setVisibility(I)V

    .line 1052
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->getViewRoot()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1053
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 1054
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v12, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1055
    return-void

    :pswitch_1
    move-object v0, p0

    move v5, v2

    .line 1036
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->updateLayoutParams(ZZIIZ)V

    .line 1037
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlidePanelView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    invoke-virtual {v0, v11}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->setTranslationY(F)V

    goto :goto_0

    :pswitch_2
    move-object v5, p0

    move v6, v1

    move v7, v2

    move v8, v4

    move v9, v3

    move v10, v2

    .line 1040
    invoke-virtual/range {v5 .. v10}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->updateLayoutParams(ZZIIZ)V

    .line 1041
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlidePanelView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    invoke-virtual {v0, v11}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->setTranslationX(F)V

    goto :goto_0

    :pswitch_3
    move-object v5, p0

    move v6, v1

    move v7, v2

    move v8, v4

    move v9, v3

    move v10, v2

    .line 1044
    invoke-virtual/range {v5 .. v10}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->updateLayoutParams(ZZIIZ)V

    .line 1045
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlidePanelView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    invoke-virtual {v0, v11}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->setTranslationX(F)V

    goto :goto_0

    .line 1034
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private startPanelAnim(F)V
    .locals 1
    .param p1, "vel"    # F

    .prologue
    .line 843
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlidePanelView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    if-eqz v0, :cond_0

    .line 844
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlidePanelView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->startPanelAnim(F)V

    .line 846
    :cond_0
    return-void
.end method

.method private startPanelAnim(Z)V
    .locals 1
    .param p1, "expand"    # Z

    .prologue
    .line 832
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlidePanelView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    if-nez v0, :cond_0

    .line 840
    :goto_0
    return-void

    .line 835
    :cond_0
    if-eqz p1, :cond_1

    .line 836
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlidePanelView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->startExpandPanelAnim()V

    goto :goto_0

    .line 838
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlidePanelView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->startCollapsePanelAnim()V

    goto :goto_0
.end method

.method private suitableSlope(FF)Z
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 913
    iget v2, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mCurrRotation:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 920
    :cond_0
    :goto_0
    return v0

    .line 915
    :pswitch_1
    iget v2, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mStartY:F

    sub-float v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mStartX:F

    sub-float v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 918
    :pswitch_2
    iget v2, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mStartY:F

    sub-float v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mStartX:F

    sub-float v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 913
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private touchDrager(FF)Z
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 865
    iget v2, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mCurrRotation:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 876
    :cond_0
    :goto_0
    return v0

    .line 867
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->touchInside(FF)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mScreenHeight:I

    iget v3, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mDrawerContentLength:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-lez v2, :cond_0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 870
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->touchInside(FF)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mScreenWidth:I

    iget v3, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mDrawerContentLength:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-lez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 873
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->touchInside(FF)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mDrawerContentLength:I

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-gez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 865
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private touchInside(FF)Z
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 849
    iget v2, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mCurrRotation:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 857
    :cond_0
    :goto_0
    return v0

    .line 851
    :pswitch_1
    iget v2, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mScreenHeight:I

    iget v3, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mDrawerLength:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 853
    :pswitch_2
    iget v2, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mScreenWidth:I

    iget v3, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mDrawerLength:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 855
    :pswitch_3
    iget v2, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mDrawerLength:I

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 849
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private touchOutside(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 861
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->touchInside(FF)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private touchShade(FF)Z
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 880
    iget v2, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mCurrRotation:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 888
    :cond_0
    :goto_0
    return v0

    .line 882
    :pswitch_1
    iget v2, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mScreenHeight:I

    sget v3, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->SHADE_HEIGHT:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 884
    :pswitch_2
    iget v2, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mScreenWidth:I

    sget v3, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->SHADE_HEIGHT:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 886
    :pswitch_3
    sget v2, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->SHADE_HEIGHT:I

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 880
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private touchTipArrow(FF)Z
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v0, 0x0

    .line 924
    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mIsTipArrowShowing:Z

    if-nez v1, :cond_1

    .line 932
    :cond_0
    :goto_0
    return v0

    .line 927
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    if-eqz v1, :cond_0

    .line 930
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-virtual {v1, p1, p2}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->touchTipArrow(FF)Z

    move-result v0

    .line 931
    .local v0, "isTouchTipArrow":Z
    const-string v1, "UpSlideTransparentView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isTouchTipArrow = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public bringRecentDummyViewToFront(Z)V
    .locals 1
    .param p1, "bringToFront"    # Z

    .prologue
    .line 1105
    if-eqz p1, :cond_0

    .line 1106
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mRecentDummyView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->bringChildToFront(Landroid/view/View;)V

    .line 1110
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->invalidate()V

    .line 1111
    return-void

    .line 1108
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlidePanelView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->bringChildToFront(Landroid/view/View;)V

    goto :goto_0
.end method

.method public changeUpSlideState(ZZ)V
    .locals 0
    .param p1, "down"    # Z
    .param p2, "canceled"    # Z

    .prologue
    .line 587
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 433
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 434
    .local v0, "keyCode":I
    const-string v1, "UpSlideTransparentView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatch key: getKeyCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    const/16 v1, 0x19

    if-eq v0, v1, :cond_0

    const/16 v1, 0x18

    if-eq v0, v1, :cond_0

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_0

    const/16 v1, 0xe6

    if-eq v0, v1, :cond_0

    const/16 v1, 0x4f

    if-eq v0, v1, :cond_0

    const/16 v1, 0x7e

    if-eq v0, v1, :cond_0

    const/16 v1, 0x7f

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 443
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->isPopupToolbarShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 444
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->dismissPopupToolbar()V

    .line 453
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 445
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mIsUpSlideGuideViewShowing:Z

    if-eqz v1, :cond_2

    const/16 v1, 0x52

    if-eq v0, v1, :cond_2

    .line 446
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->toggleUpSlideGuideView(ZZ)V

    goto :goto_0

    .line 447
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mIsTipArrowShowing:Z

    if-eqz v1, :cond_3

    .line 448
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->hideTipArrow()V

    goto :goto_0

    .line 450
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->performCollapse()V

    goto :goto_0
.end method

.method public getBackgroundAlphaView()Landroid/view/View;
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mBackgroundAlphaView:Landroid/view/View;

    return-object v0
.end method

.method public getRecentDummyView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mRecentDummyView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getShadeHeight()I
    .locals 1

    .prologue
    .line 457
    sget v0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->SHADE_HEIGHT:I

    return v0
.end method

.method public getUpSlidePanelView()Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlidePanelView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    return-object v0
.end method

.method public getViewState()I
    .locals 1

    .prologue
    .line 651
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mViewState:I

    return v0
.end method

.method public handleFullScreenChanged()V
    .locals 4

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mFullScreenFlagObserver:Lcom/android/systemui/vivo/common/upslide/utils/FullScreenFlagObserver;

    if-eqz v0, :cond_0

    .line 138
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mIsTipArrowShowing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mFullScreenFlagObserver:Lcom/android/systemui/vivo/common/upslide/utils/FullScreenFlagObserver;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/utils/FullScreenFlagObserver;->isFullScreen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->getViewRoot()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView$3;-><init>(Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 149
    :cond_0
    return-void
.end method

.method public isAnimationRunning()Z
    .locals 1

    .prologue
    .line 804
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlidePanelView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    if-nez v0, :cond_0

    .line 805
    const/4 v0, 0x0

    .line 807
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlidePanelView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->isAnimationRunning()Z

    move-result v0

    goto :goto_0
.end method

.method public isCollapseAnimatorRunning()Z
    .locals 1

    .prologue
    .line 811
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlidePanelView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    if-nez v0, :cond_0

    .line 812
    const/4 v0, 0x0

    .line 814
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlidePanelView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->isCollapseAnimatorRunning()Z

    move-result v0

    goto :goto_0
.end method

.method public isCollapsing()Z
    .locals 1

    .prologue
    .line 825
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlidePanelView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    if-nez v0, :cond_0

    .line 826
    const/4 v0, 0x0

    .line 828
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlidePanelView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->isCollapsing()Z

    move-result v0

    goto :goto_0
.end method

.method public isDeviceProvisioned()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 492
    :try_start_0
    sget-object v3, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "device_provisioned"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 494
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 492
    goto :goto_0

    .line 493
    :catch_0
    move-exception v0

    .line 494
    .local v0, "e":Landroid/database/sqlite/SQLiteDiskIOException;
    goto :goto_0
.end method

.method public isExpandAnimatorRunning()Z
    .locals 1

    .prologue
    .line 818
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlidePanelView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    if-nez v0, :cond_0

    .line 819
    const/4 v0, 0x0

    .line 821
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlidePanelView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->isExpandAnimatorRunning()Z

    move-result v0

    goto :goto_0
.end method

.method public isUpSlideGuideViewShowing()Z
    .locals 1

    .prologue
    .line 1146
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mIsUpSlideGuideViewShowing:Z

    return v0
.end method

.method public isUpSlided()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 797
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlidePanelView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mIsTipArrowShowing:Z

    if-eqz v1, :cond_1

    .line 800
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlidePanelView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isUserSetup()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 484
    :try_start_0
    sget-object v3, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "user_setup_complete"

    const/4 v5, 0x0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 486
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 484
    goto :goto_0

    .line 485
    :catch_0
    move-exception v0

    .line 486
    .local v0, "e":Landroid/database/sqlite/SQLiteDiskIOException;
    goto :goto_0
.end method

.method public onCollapseFinished()V
    .locals 1

    .prologue
    .line 702
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->onCollapseFinished(Z)V

    .line 703
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1116
    const-string v0, "UpSlideTransparentView"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    if-eqz v0, :cond_0

    .line 1118
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1120
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1121
    return-void
.end method

.method public onExpandFinished()V
    .locals 2

    .prologue
    .line 623
    const-string v0, "UpSlideTransparentView"

    const-string v1, "onExpandFinished()"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 626
    const-string v0, "UpSlideTransparentView"

    const-string v1, "onExpandFinished, current is on collapse finished state"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->onCollapseFinished()V

    .line 633
    :goto_0
    return-void

    .line 631
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mViewState:I

    .line 632
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mViewState:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->onViewStateChanged(I)V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 154
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 155
    .local v2, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 156
    .local v0, "accorX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    .line 158
    .local v1, "accorY":F
    packed-switch v2, :pswitch_data_0

    move v3, v4

    .line 191
    :cond_0
    :goto_0
    return v3

    .line 160
    :pswitch_0
    iget-object v5, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-virtual {v5}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->isPopupToolbarShowing()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 162
    const-string v4, "UpSlideTransparentView"

    const-string v5, "PopupBar is showing, don\'t response"

    invoke-static {v4, v5}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 166
    :cond_1
    const/4 v5, 0x4

    iget v6, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mViewState:I

    if-ne v5, v6, :cond_2

    .line 167
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->isExpandDisabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 168
    const-string v3, "UpSlideTransparentView"

    const-string v5, "Expand disabled, abandon touch events."

    invoke-static {v3, v5}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 169
    goto :goto_0

    .line 171
    :cond_2
    iget v5, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mViewState:I

    if-ne v7, v5, :cond_3

    .line 172
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->touchOutside(FF)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 173
    const-string v5, "UpSlideTransparentView"

    const-string v6, "Touch outside, collapse and followed by none touch events."

    invoke-static {v5, v6}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iput-boolean v4, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mCurrTouchEffective:Z

    .line 175
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->performCollapse()V

    goto :goto_0

    .line 179
    :cond_3
    iget v5, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mViewState:I

    if-ne v7, v5, :cond_4

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->touchInside(FF)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->touchDrager(FF)Z

    move-result v5

    if-nez v5, :cond_4

    .line 182
    const-string v3, "UpSlideTransparentView"

    const-string v5, "Touch child, pass"

    invoke-static {v3, v5}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 183
    goto :goto_0

    .line 185
    :cond_4
    iget-boolean v5, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mIsUpSlideGuideViewShowing:Z

    if-eqz v5, :cond_0

    .line 186
    const-string v3, "UpSlideTransparentView"

    const-string v5, "mIsUpSlideGuideViewShowing, pass"

    invoke-static {v3, v5}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 187
    goto :goto_0

    .line 158
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPanelViewMoving(Z)V
    .locals 4
    .param p1, "xTranslation"    # Z

    .prologue
    const/4 v3, 0x1

    .line 636
    iput v3, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mViewState:I

    .line 637
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/LockTaskUtils;->isInLockTaskMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 638
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlidePanelView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->getPanelLength()I

    move-result v0

    .line 639
    .local v0, "panelLength":I
    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->setAlphaViewRect(I)V

    .line 640
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->isAnimationRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->isCollapsing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 641
    :cond_0
    int-to-float v1, v0

    iget v2, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mDrawerLength:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mBackgroundAlpha:F

    .line 642
    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mBackgroundAlpha:F

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->setBackgroundAlpha(F)V

    .line 645
    .end local v0    # "panelLength":I
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    if-eqz v1, :cond_2

    .line 646
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-virtual {v1, v3}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->onViewStateChanged(I)V

    .line 648
    :cond_2
    return-void
.end method

.method public onRotationChanged(I)V
    .locals 3
    .param p1, "newRotation"    # I

    .prologue
    .line 732
    const-string v0, "UpSlideTransparentView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRotationChanged, curr is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mCurrRotation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", new is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    iput p1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mCurrRotation:I

    .line 734
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->refreshDimens()V

    .line 735
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlidePanelView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    if-eqz v0, :cond_0

    .line 736
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlidePanelView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->onRotationChanged(I)V

    .line 739
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->resetViewsAlpha()V

    .line 741
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mIsTipArrowShowing:Z

    if-eqz v0, :cond_1

    .line 742
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->hideTipArrow()V

    .line 745
    :cond_1
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mViewState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    .line 746
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mCurrTouchEffective:Z

    .line 747
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->performHidePanel()V

    .line 750
    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->onCollapseFinished(Z)V

    .line 751
    return-void
.end method

.method public onScreenTurnOff()V
    .locals 2

    .prologue
    const/16 v1, 0x3ec

    .line 765
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 766
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 767
    return-void
.end method

.method public onScreenTurnOn()V
    .locals 2

    .prologue
    const/16 v1, 0x3eb

    .line 770
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 771
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 772
    return-void
.end method

.method public onSpsStarted()V
    .locals 0

    .prologue
    .line 1124
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->performHidePanel()V

    .line 1125
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->onCollapseFinished()V

    .line 1126
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 197
    const-string v9, "UpSlideTransparentView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onTouchEvent = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mViewState = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mViewState:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object v9, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-virtual {v9}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->isPopupToolbarShowing()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 201
    const-string v9, "UpSlideTransparentView"

    const-string v10, "PopupBar is showing, don\'t response"

    invoke-static {v9, v10}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const/4 v9, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    if-eq v9, v10, :cond_0

    const/4 v9, 0x3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    if-ne v9, v10, :cond_1

    .line 204
    :cond_0
    iget-object v9, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-virtual {v9}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->dismissPopupToolbar()V

    .line 206
    :cond_1
    const/4 v9, 0x1

    .line 428
    :goto_0
    return v9

    .line 209
    :cond_2
    const/4 v9, 0x4

    iget v10, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mViewState:I

    if-ne v9, v10, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    if-nez v9, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->isExpandDisabled()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 212
    const-string v9, "UpSlideTransparentView"

    const-string v10, "Expanded is disabled, abandon touch events."

    invoke-static {v9, v10}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mCurrTouchEffective:Z

    .line 214
    const/4 v9, 0x0

    goto :goto_0

    .line 217
    :cond_3
    const/4 v9, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v10

    if-ge v9, v10, :cond_5

    .line 218
    const-string v9, "UpSlideTransparentView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Skip multiple finger touch event, pointer count is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const/4 v9, 0x4

    iget v10, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mViewState:I

    if-ne v9, v10, :cond_4

    .line 220
    const-string v9, "UpSlideTransparentView"

    const-string v10, "Can not expand the panel with two pointer!"

    invoke-static {v9, v10}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mCurrTouchEffective:Z

    .line 223
    :cond_4
    const/4 v9, 0x1

    goto :goto_0

    .line 226
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->isAnimationRunning()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 227
    const-string v9, "UpSlideTransparentView"

    const-string v10, "anim is running, abandon touch events!"

    invoke-static {v9, v10}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mCurrTouchEffective:Z

    .line 229
    const/4 v9, 0x0

    goto :goto_0

    .line 232
    :cond_6
    iget-boolean v9, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mCurrTouchEffective:Z

    if-nez v9, :cond_7

    .line 233
    const-string v9, "UpSlideTransparentView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "invalid touch action_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mCurrTouchEffective is false"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    if-nez v9, :cond_9

    iget v9, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mViewState:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_9

    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->isExpandDisabled()Z

    move-result v9

    if-nez v9, :cond_9

    .line 237
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mCurrTouchEffective:Z

    .line 238
    const-string v9, "UpSlideTransparentView"

    const-string v10, "reset mCurrTouchEffective to true by down"

    invoke-static {v9, v10}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 250
    .local v2, "action":I
    iput v2, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mCurrentEventAction:I

    .line 251
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 252
    .local v0, "accorX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    .line 254
    .local v1, "accorY":F
    packed-switch v2, :pswitch_data_0

    .line 428
    :cond_8
    :goto_1
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 240
    .end local v0    # "accorX":F
    .end local v1    # "accorY":F
    .end local v2    # "action":I
    :cond_9
    const/4 v9, 0x3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    if-eq v9, v10, :cond_a

    const/4 v9, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    if-ne v9, v10, :cond_b

    .line 242
    :cond_a
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mCurrTouchEffective:Z

    .line 243
    const-string v9, "UpSlideTransparentView"

    const-string v10, "reset mCurrTouchEffective to true"

    invoke-static {v9, v10}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :cond_b
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 256
    .restart local v0    # "accorX":F
    .restart local v1    # "accorY":F
    .restart local v2    # "action":I
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    iput v9, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mStartX:F

    .line 257
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    iput v9, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mStartY:F

    .line 258
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mClickFlag:Z

    .line 259
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mSlidingOut:Z

    .line 260
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mTipArrowHasHided:Z

    .line 261
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->postInvalidate()V

    .line 262
    iget-object v9, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mFlingTracker:Lcom/android/systemui/vivo/common/upslide/utils/FlingTracker;

    invoke-virtual {v9}, Lcom/android/systemui/vivo/common/upslide/utils/FlingTracker;->initVelocityTracker()V

    .line 263
    iget-object v9, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mFlingTracker:Lcom/android/systemui/vivo/common/upslide/utils/FlingTracker;

    invoke-virtual {v9, p1}, Lcom/android/systemui/vivo/common/upslide/utils/FlingTracker;->trackMovement(Landroid/view/MotionEvent;)V

    .line 265
    const/4 v9, 0x4

    iget v10, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mViewState:I

    if-ne v9, v10, :cond_e

    .line 266
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->isFullScreen()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-static {}, Lcom/android/systemui/vivo/common/utils/LockTaskUtils;->isInLockTaskMode()Z

    move-result v9

    if-nez v9, :cond_d

    .line 267
    sget-boolean v9, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->SUPPORT_SPACE_AREA:Z

    if-eqz v9, :cond_c

    iget-boolean v9, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mIsTipArrowShowing:Z

    if-nez v9, :cond_c

    .line 268
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->showTipArrow()V

    .line 269
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mCurrTouchEffective:Z

    .line 270
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 272
    :cond_c
    iget-boolean v9, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mIsTipArrowShowing:Z

    if-eqz v9, :cond_8

    iget v9, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mStartX:F

    iget v10, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mStartY:F

    invoke-direct {p0, v9, v10}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->touchTipArrow(FF)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 273
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->hideTipArrow(Z)V

    .line 274
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mTipArrowHasHided:Z

    .line 275
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 277
    :cond_d
    sget-boolean v9, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->SUPPORT_SPACE_AREA:Z

    if-eqz v9, :cond_8

    .line 278
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->onExpandStarted()V

    .line 279
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->drawPanel(FF)V

    goto/16 :goto_1

    .line 281
    :cond_e
    const/4 v9, 0x2

    iget v10, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mViewState:I

    if-ne v9, v10, :cond_8

    .line 282
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mClickFlag:Z

    .line 283
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mSlidingOut:Z

    .line 284
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->onCollapseStarted()V

    goto/16 :goto_1

    .line 288
    :pswitch_1
    const-string v9, "UpSlideTransparentView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mClickFlag = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mClickFlag:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const/4 v9, 0x3

    iget v10, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mViewState:I

    if-ne v9, v10, :cond_f

    .line 290
    iget-boolean v9, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mClickFlag:Z

    if-eqz v9, :cond_f

    .line 291
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->enoughDistance(FF)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 292
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mClickFlag:Z

    .line 299
    :cond_f
    sget-boolean v9, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->SUPPORT_SPACE_AREA:Z

    if-nez v9, :cond_14

    .line 300
    iget v9, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mStartX:F

    iget v10, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mStartY:F

    invoke-direct {p0, v9, v10}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->touchShade(FF)Z

    move-result v9

    if-eqz v9, :cond_12

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->enoughDistance(FF)Z

    move-result v9

    if-eqz v9, :cond_12

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->suitableSlope(FF)Z

    move-result v9

    if-eqz v9, :cond_12

    const/4 v9, 0x4

    iget v10, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mViewState:I

    if-ne v9, v10, :cond_12

    .line 304
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->isFullScreen()Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-static {}, Lcom/android/systemui/vivo/common/utils/LockTaskUtils;->isInLockTaskMode()Z

    move-result v9

    if-nez v9, :cond_11

    .line 305
    iget-boolean v9, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mIsTipArrowShowing:Z

    if-nez v9, :cond_12

    iget-boolean v9, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mTipArrowHasHided:Z

    if-nez v9, :cond_12

    .line 306
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->showTipArrow()V

    .line 307
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mCurrTouchEffective:Z

    .line 308
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mSlidingOut:Z

    .line 309
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 294
    :cond_10
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 312
    :cond_11
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->onExpandStarted()V

    .line 313
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mSlidingOut:Z

    .line 314
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->drawPanel(FF)V

    .line 321
    :cond_12
    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->isFullScreen()Z

    move-result v9

    if-eqz v9, :cond_13

    iget-boolean v9, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mIsTipArrowShowing:Z

    if-nez v9, :cond_13

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->enoughDistance(FF)Z

    move-result v9

    if-eqz v9, :cond_13

    const/4 v9, 0x4

    iget v10, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mViewState:I

    if-ne v9, v10, :cond_13

    .line 325
    iget-object v9, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mFullScreenExpandRunnable:Ljava/lang/Runnable;

    if-eqz v9, :cond_15

    .line 326
    const-string v9, "UpSlideTransparentView"

    const-string v10, "Full Screen Expand Runnable is already exist!"

    invoke-static {v9, v10}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    :cond_13
    :goto_3
    const-string v9, "UpSlideTransparentView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mSlidingOut = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mSlidingOut:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mViewState = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mViewState:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-boolean v9, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mSlidingOut:Z

    if-eqz v9, :cond_8

    .line 352
    const/4 v9, 0x4

    iget v10, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mViewState:I

    if-eq v9, v10, :cond_8

    .line 353
    iget-object v9, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mFlingTracker:Lcom/android/systemui/vivo/common/upslide/utils/FlingTracker;

    invoke-virtual {v9, p1}, Lcom/android/systemui/vivo/common/upslide/utils/FlingTracker;->trackMovement(Landroid/view/MotionEvent;)V

    .line 354
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->drawPanel(FF)V

    goto/16 :goto_1

    .line 318
    :cond_14
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mSlidingOut:Z

    goto :goto_2

    .line 328
    :cond_15
    move v7, v0

    .line 329
    .local v7, "x":F
    move v8, v1

    .line 330
    .local v8, "y":F
    new-instance v9, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView$4;

    invoke-direct {v9, p0, v7, v8}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView$4;-><init>(Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;FF)V

    iput-object v9, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mFullScreenExpandRunnable:Ljava/lang/Runnable;

    .line 345
    iget-object v9, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mFullScreenExpandRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v9}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 359
    .end local v7    # "x":F
    .end local v8    # "y":F
    :pswitch_2
    invoke-static {}, Lcom/android/systemui/vivo/common/upslide/utils/UpSlideUtils;->isAppSwitchDue()Z

    move-result v4

    .line 360
    .local v4, "isAppSwitchDue":Z
    const-string v9, "UpSlideTransparentView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ACTION_CANCEL: isAppSwitchDue"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",mViewState"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mViewState:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    if-eqz v4, :cond_18

    const/4 v9, 0x4

    iget v10, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mViewState:I

    if-eq v9, v10, :cond_18

    .line 362
    const/4 v6, 0x0

    .line 363
    .local v6, "vel":F
    iget-object v9, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mFlingTracker:Lcom/android/systemui/vivo/common/upslide/utils/FlingTracker;

    if-eqz v9, :cond_16

    .line 364
    iget-object v9, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mFlingTracker:Lcom/android/systemui/vivo/common/upslide/utils/FlingTracker;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/systemui/vivo/common/upslide/utils/FlingTracker;->computeCurrentVelocity(I)V

    .line 365
    iget v9, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mCurrRotation:I

    if-nez v9, :cond_17

    .line 366
    iget-object v9, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mFlingTracker:Lcom/android/systemui/vivo/common/upslide/utils/FlingTracker;

    invoke-virtual {v9}, Lcom/android/systemui/vivo/common/upslide/utils/FlingTracker;->getYVelocity()F

    move-result v6

    .line 371
    :cond_16
    :goto_4
    invoke-direct {p0, v6}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->startPanelAnim(F)V

    .line 375
    .end local v6    # "vel":F
    :goto_5
    iget-object v9, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mFlingTracker:Lcom/android/systemui/vivo/common/upslide/utils/FlingTracker;

    if-eqz v9, :cond_8

    .line 376
    iget-object v9, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mFlingTracker:Lcom/android/systemui/vivo/common/upslide/utils/FlingTracker;

    invoke-virtual {v9}, Lcom/android/systemui/vivo/common/upslide/utils/FlingTracker;->recycleVelocityTracker()V

    goto/16 :goto_1

    .line 368
    .restart local v6    # "vel":F
    :cond_17
    iget-object v9, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mFlingTracker:Lcom/android/systemui/vivo/common/upslide/utils/FlingTracker;

    invoke-virtual {v9}, Lcom/android/systemui/vivo/common/upslide/utils/FlingTracker;->getXVelocity()F

    move-result v6

    goto :goto_4

    .line 373
    .end local v6    # "vel":F
    :cond_18
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->performCollapse()V

    goto :goto_5

    .line 380
    .end local v4    # "isAppSwitchDue":Z
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->postInvalidate()V

    .line 381
    iget-object v9, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mFlingTracker:Lcom/android/systemui/vivo/common/upslide/utils/FlingTracker;

    invoke-virtual {v9, p1}, Lcom/android/systemui/vivo/common/upslide/utils/FlingTracker;->trackMovement(Landroid/view/MotionEvent;)V

    .line 383
    sget-boolean v9, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->SUPPORT_SPACE_AREA:Z

    if-nez v9, :cond_1a

    const/4 v9, 0x4

    iget v10, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mViewState:I

    if-ne v9, v10, :cond_1a

    .line 385
    iget-boolean v9, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mSlidingOut:Z

    if-nez v9, :cond_1b

    .line 386
    const/4 v3, 0x0

    .line 387
    .local v3, "delta":F
    iget v9, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mCurrRotation:I

    if-nez v9, :cond_19

    .line 388
    iget v9, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mStartY:F

    sub-float v9, v1, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 392
    :goto_6
    sget v9, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->MAX_CLICK_PX:I

    int-to-float v9, v9

    cmpg-float v9, v3, v9

    if-gtz v9, :cond_1b

    iget-boolean v9, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mIsTipArrowShowing:Z

    if-nez v9, :cond_1b

    iget-boolean v9, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mTipArrowHasHided:Z

    if-nez v9, :cond_1b

    .line 393
    const/16 v9, 0x8

    invoke-virtual {p0, v9}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->setVisibility(I)V

    .line 394
    iget-object v9, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mHandler:Landroid/os/Handler;

    const/16 v10, 0x3ed

    new-instance v11, Lcom/android/systemui/vivo/common/upslide/model/FakeTouchEventArgs;

    iget v12, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mStartX:F

    iget v13, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mStartY:F

    invoke-direct {v11, v12, v13, v0, v1}, Lcom/android/systemui/vivo/common/upslide/model/FakeTouchEventArgs;-><init>(FFFF)V

    invoke-virtual {v9, v10, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 395
    .local v5, "msg":Landroid/os/Message;
    iget-object v9, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mHandler:Landroid/os/Handler;

    const-wide/16 v10, 0x32

    invoke-virtual {v9, v5, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 396
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 390
    .end local v5    # "msg":Landroid/os/Message;
    :cond_19
    iget v9, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mStartX:F

    sub-float v9, v0, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v3

    goto :goto_6

    .line 400
    .end local v3    # "delta":F
    :cond_1a
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->isFullScreen()Z

    move-result v9

    if-eqz v9, :cond_1d

    iget-boolean v9, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mIsTipArrowShowing:Z

    if-eqz v9, :cond_1d

    .line 420
    :cond_1b
    :goto_7
    iget-object v9, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mFlingTracker:Lcom/android/systemui/vivo/common/upslide/utils/FlingTracker;

    if-eqz v9, :cond_1c

    .line 421
    iget-object v9, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mFlingTracker:Lcom/android/systemui/vivo/common/upslide/utils/FlingTracker;

    invoke-virtual {v9}, Lcom/android/systemui/vivo/common/upslide/utils/FlingTracker;->recycleVelocityTracker()V

    .line 423
    :cond_1c
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mTipArrowHasHided:Z

    goto/16 :goto_1

    .line 402
    :cond_1d
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->isFullScreen()Z

    move-result v9

    if-eqz v9, :cond_1e

    iget-boolean v9, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mIsTipArrowShowing:Z

    if-nez v9, :cond_1e

    iget v9, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mViewState:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_1e

    .line 404
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->hideTipArrow()V

    goto :goto_7

    .line 405
    :cond_1e
    iget-boolean v9, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mClickFlag:Z

    if-eqz v9, :cond_1f

    .line 406
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->performCollapse()V

    goto :goto_7

    .line 408
    :cond_1f
    const/4 v6, 0x0

    .line 409
    .restart local v6    # "vel":F
    iget-object v9, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mFlingTracker:Lcom/android/systemui/vivo/common/upslide/utils/FlingTracker;

    if-eqz v9, :cond_20

    .line 410
    iget-object v9, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mFlingTracker:Lcom/android/systemui/vivo/common/upslide/utils/FlingTracker;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/systemui/vivo/common/upslide/utils/FlingTracker;->computeCurrentVelocity(I)V

    .line 411
    iget v9, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mCurrRotation:I

    if-nez v9, :cond_21

    .line 412
    iget-object v9, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mFlingTracker:Lcom/android/systemui/vivo/common/upslide/utils/FlingTracker;

    invoke-virtual {v9}, Lcom/android/systemui/vivo/common/upslide/utils/FlingTracker;->getYVelocity()F

    move-result v6

    .line 417
    :cond_20
    :goto_8
    invoke-direct {p0, v6}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->startPanelAnim(F)V

    goto :goto_7

    .line 414
    :cond_21
    iget-object v9, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mFlingTracker:Lcom/android/systemui/vivo/common/upslide/utils/FlingTracker;

    invoke-virtual {v9}, Lcom/android/systemui/vivo/common/upslide/utils/FlingTracker;->getXVelocity()F

    move-result v6

    goto :goto_8

    .line 254
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public performCollapse()V
    .locals 4

    .prologue
    const/16 v3, 0x3ea

    .line 566
    const-string v0, "UpSlideTransparentView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "perform collapse, mState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mViewState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", duringAnim = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->isAnimationRunning()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mIsTipArrowShowing:Z

    if-eqz v0, :cond_0

    .line 568
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->hideTipArrow()V

    .line 570
    :cond_0
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mViewState:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mViewState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 583
    :cond_1
    :goto_0
    return-void

    .line 573
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->isCollapseAnimatorRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 575
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->isExpandAnimatorRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 576
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlidePanelView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->cancelExpandAnim()V

    .line 578
    :cond_3
    const/4 v0, 0x3

    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mViewState:I

    if-eq v0, v1, :cond_4

    .line 579
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->onCollapseStarted()V

    .line 581
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 582
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public performExpand(Z)V
    .locals 6
    .param p1, "fromLongPressHomeKey"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 521
    const-string v1, "UpSlideTransparentView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "perform expand, isExpandDisabled() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v5, v4}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->isExpandDisabled(ZZ)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", duringAnim = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->isAnimationRunning()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mViewState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mViewState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", fromLongPressHomeKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    invoke-direct {p0, v5, v4}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->isExpandDisabled(ZZ)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->isAnimationRunning()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x4

    iget v2, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mViewState:I

    if-eq v1, v2, :cond_1

    .line 557
    :cond_0
    :goto_0
    return-void

    .line 528
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->isUpSlideDialogsShowing()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 529
    const-string v1, "UpSlideTransparentView"

    const-string v2, "perform expand, upSlide  dialogs  isShowing , return"

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 533
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mIsUpSlideGuideViewShowing:Z

    if-eqz v1, :cond_3

    .line 534
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-virtual {v1, v5, v4}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->toggleUpSlideGuideView(ZZ)V

    .line 536
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->isFullScreen()Z

    move-result v0

    .line 537
    .local v0, "isFullScreen":Z
    const-string v1, "UpSlideTransparentView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isFullScreen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mIsTipArrowShowing = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mIsTipArrowShowing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    if-eqz p1, :cond_5

    .line 539
    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/systemui/vivo/common/utils/LockTaskUtils;->isInLockTaskMode()Z

    move-result v1

    if-nez v1, :cond_5

    .line 540
    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mIsTipArrowShowing:Z

    if-nez v1, :cond_4

    .line 541
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->showTipArrow()V

    goto :goto_0

    .line 544
    :cond_4
    invoke-direct {p0, v4}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->hideTipArrow(Z)V

    .line 548
    :cond_5
    if-eqz v0, :cond_6

    .line 549
    new-instance v1, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView$5;-><init>(Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 555
    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->doExpand()V

    goto :goto_0
.end method

.method public setBackgroundAlpha(F)V
    .locals 2
    .param p1, "alpha"    # F

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 685
    iput p1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mBackgroundAlpha:F

    .line 686
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mBackgroundAlpha:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 687
    iput v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mBackgroundAlpha:F

    .line 689
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mAlphaViewRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    .line 690
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mBackgroundAlphaView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mAlphaViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 692
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mBackgroundAlphaView:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mBackgroundAlpha:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 693
    return-void
.end method

.method public setUpSlideGuideViewShowState(Z)V
    .locals 6
    .param p1, "show"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1139
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mIsUpSlideGuideViewShowing:Z

    .line 1140
    if-nez p1, :cond_0

    .line 1141
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->isUpSlideViewTouchable()Z

    move-result v1

    const/4 v3, -0x1

    sget v4, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->SHADE_HEIGHT:I

    move-object v0, p0

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->updateLayoutParams(ZZIIZ)V

    .line 1143
    :cond_0
    return-void
.end method

.method public showUpSlideGuideView()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1129
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mCurrRotation:I

    if-eqz v0, :cond_0

    .line 1130
    const-string v0, "UpSlideTransparentView"

    const-string v1, "showUpSlideGuideView(): mCurrRotation is not Surface.ROTATION_0, return!"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-virtual {v0, v2, v2}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->toggleUpSlideGuideView(ZZ)V

    .line 1136
    :goto_0
    return-void

    .line 1134
    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mIsUpSlideGuideViewShowing:Z

    .line 1135
    const/4 v0, -0x1

    invoke-virtual {p0, v1, v1, v0, v2}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->updateLayoutParamsWithAutoRotation(ZZIZ)V

    goto :goto_0
.end method

.method public toggleUpSlideView(ZZ)V
    .locals 3
    .param p1, "isHomeKeyLongPressed"    # Z
    .param p2, "collapse"    # Z

    .prologue
    .line 499
    const-string v0, "UpSlideTransparentView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toggleUpSlideView, isHomeKeyLongPressed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", collapse = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/LockTaskUtils;->isInLockTaskMode()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 518
    :cond_0
    :goto_0
    return-void

    .line 505
    :cond_1
    if-eqz p1, :cond_4

    .line 506
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->isUpSlided()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 507
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->performCollapse()V

    goto :goto_0

    .line 509
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->isSetupWizardCompleted()Z

    move-result v0

    if-nez v0, :cond_3

    .line 510
    const-string v0, "UpSlideTransparentView"

    const-string v1, "Setup wizard not completed"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 513
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->performExpand(Z)V

    goto :goto_0

    .line 515
    :cond_4
    if-eqz p2, :cond_0

    .line 516
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->performCollapse()V

    goto :goto_0
.end method

.method public updateLayoutParams(ZZIIZ)V
    .locals 10
    .param p1, "touchable"    # Z
    .param p2, "focusable"    # Z
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "force"    # Z

    .prologue
    const/16 v9, 0x30

    const/16 v8, 0x15

    const/16 v7, 0x13

    const/4 v6, -0x1

    .line 1179
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->isAnimationRunning()Z

    move-result v0

    .line 1181
    .local v0, "isAnimationRunning":Z
    const-string v3, "UpSlideTransparentView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateLayoutParams, isAnimationRunning = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", force = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1185
    iget-boolean v3, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mIsUpSlideGuideViewShowing:Z

    if-nez v3, :cond_0

    if-eqz v0, :cond_1

    .line 1186
    :cond_0
    const/4 p2, 0x1

    .line 1193
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager$LayoutParams;

    iput-object v3, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mLps:Landroid/view/WindowManager$LayoutParams;

    .line 1195
    if-eqz p1, :cond_5

    .line 1196
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mLps:Landroid/view/WindowManager$LayoutParams;

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v4, v4, -0x11

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1201
    :goto_0
    if-eqz p2, :cond_6

    .line 1202
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mLps:Landroid/view/WindowManager$LayoutParams;

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v4, v4, -0x9

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1203
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mLps:Landroid/view/WindowManager$LayoutParams;

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x20000

    or-int/2addr v4, v5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1209
    :goto_1
    if-eqz p3, :cond_7

    .line 1210
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mLps:Landroid/view/WindowManager$LayoutParams;

    iput p3, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1215
    :goto_2
    if-eqz p4, :cond_8

    .line 1216
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mLps:Landroid/view/WindowManager$LayoutParams;

    iput p4, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1221
    :goto_3
    iget v3, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mCurrRotation:I

    packed-switch v3, :pswitch_data_0

    .line 1241
    :cond_2
    :pswitch_0
    if-eqz p5, :cond_3

    .line 1242
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlidePanelView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    invoke-virtual {v3}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1243
    .local v1, "panelLps":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-virtual {v3}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->getViewRoot()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1244
    .local v2, "panelRootLps":Landroid/widget/FrameLayout$LayoutParams;
    iget v3, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mCurrRotation:I

    packed-switch v3, :pswitch_data_1

    .line 1261
    :goto_4
    :pswitch_1
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlidePanelView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    invoke-virtual {v3, v1}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1262
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-virtual {v3}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->getViewRoot()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1264
    .end local v1    # "panelLps":Landroid/widget/FrameLayout$LayoutParams;
    .end local v2    # "panelRootLps":Landroid/widget/FrameLayout$LayoutParams;
    :cond_3
    const-string v3, "UpSlideTransparentView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UpdateLayoutParams, touchable = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", focusable = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mLps.width = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mLps:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mLps.height = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mLps:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", force = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1266
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mLps:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v3, p0, v4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1267
    if-eqz p5, :cond_4

    .line 1268
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpdateTransparentParamsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1269
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mUpdateTransparentParamsRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x64

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1271
    :cond_4
    :goto_5
    return-void

    .line 1198
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mLps:Landroid/view/WindowManager$LayoutParams;

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto/16 :goto_0

    .line 1205
    :cond_6
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mLps:Landroid/view/WindowManager$LayoutParams;

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v4, v4, 0x8

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1206
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mLps:Landroid/view/WindowManager$LayoutParams;

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v5, -0x20001

    and-int/2addr v4, v5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto/16 :goto_1

    .line 1212
    :cond_7
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mLps:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    goto/16 :goto_2

    .line 1218
    :cond_8
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mLps:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    goto/16 :goto_3

    .line 1223
    :pswitch_2
    sget v3, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->SHADE_HEIGHT:I

    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mLps:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mLps:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v6, v3, :cond_2

    if-nez p5, :cond_2

    .line 1226
    const-string v3, "UpSlideTransparentView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "return at rotation_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mCurrRotation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1232
    :pswitch_3
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mLps:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v6, v3, :cond_2

    sget v3, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->SHADE_HEIGHT:I

    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mLps:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v3, v4, :cond_2

    if-nez p5, :cond_2

    .line 1235
    const-string v3, "UpSlideTransparentView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "freturn at rotation_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mCurrRotation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1246
    .restart local v1    # "panelLps":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v2    # "panelRootLps":Landroid/widget/FrameLayout$LayoutParams;
    :pswitch_4
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mLps:Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x50

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1247
    iput v9, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1248
    iput v9, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto/16 :goto_4

    .line 1251
    :pswitch_5
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mLps:Landroid/view/WindowManager$LayoutParams;

    iput v8, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1252
    iput v7, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1253
    const/4 v3, 0x3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto/16 :goto_4

    .line 1256
    :pswitch_6
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mLps:Landroid/view/WindowManager$LayoutParams;

    iput v7, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1257
    iput v8, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1258
    const/4 v3, 0x5

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto/16 :goto_4

    .line 1221
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 1244
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_6
    .end packed-switch
.end method

.method public updateLayoutParamsWithAutoRotation(ZZIZ)V
    .locals 10
    .param p1, "touchable"    # Z
    .param p2, "focusable"    # Z
    .param p3, "length"    # I
    .param p4, "force"    # Z

    .prologue
    const/4 v3, -0x1

    .line 1159
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->mCurrRotation:I

    packed-switch v0, :pswitch_data_0

    .line 1168
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    .line 1161
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->updateLayoutParams(ZZIIZ)V

    goto :goto_0

    :pswitch_2
    move-object v4, p0

    move v5, p1

    move v6, p2

    move v7, p3

    move v8, v3

    move v9, p4

    .line 1165
    invoke-virtual/range {v4 .. v9}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->updateLayoutParams(ZZIIZ)V

    goto :goto_0

    .line 1159
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
