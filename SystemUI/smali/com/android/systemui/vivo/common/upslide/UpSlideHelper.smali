.class public Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;
.super Ljava/lang/Object;
.source "UpSlideHelper.java"


# static fields
.field public static final BRIGHTNESS_DURATION:I = 0x12c

.field private static final DEBUG:Z = false

.field public static final DEBUG_BLUR_BACKGROUND:Z = true

.field private static final DEBUG_RECENT:Z = true

.field private static final MSG_ROTATION_CHANGE:I = 0x3e9

.field private static final NO_CHANGE:I = -0x64

.field private static final RECENT_SCROLL_VIEW_ANIMATION_ENABLE:Z = true

.field public static final SEEKBAR_CLICK_ENABLE:Z = false

.field public static final STATE_COLLAPSE_FINISH:I = 0x4

.field public static final STATE_COLLAPSE_START:I = 0x3

.field public static final STATE_EXPAND_FINISH:I = 0x2

.field public static final STATE_EXPAND_START:I = 0x0

.field public static final STATE_PANEL_MOVING:I = 0x1

.field private static final SWITCHER_SCROLL_VIEW_ANIMATION_ENABLE:Z = false

.field private static final SYSTEM_DIALOG_REASON_RECENT_APPS:Ljava/lang/String; = "recentapps"

.field private static final TAG:Ljava/lang/String; = "UpSlideHelper"

.field public static final USE_ALPHA_BACKGROUND:Z = true

.field private static final USE_BLUR_BACKGROUND:Z = true


# instance fields
.field private mAnimController:Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessAnimationController;

.field private mBlankTouchListener:Landroid/view/View$OnTouchListener;

.field private mBlurManager:Lcom/android/systemui/vivo/common/utils/BlurManager;

.field private mBrightnessHeight:I

.field private mBrightnessHelper:Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;

.field private mBrightnessLayout:Landroid/widget/LinearLayout;

.field private mContent:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mCurrRotation:I

.field private mDimenUtils:Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;

.field private mDivider1:Landroid/view/View;

.field private mDivider2:Landroid/view/View;

.field private mDivider4:Landroid/view/View;

.field private mDragView0:Landroid/view/View;

.field private mDragView270:Landroid/view/View;

.field private mDragView90:Landroid/view/View;

.field private mDragViewManager:Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;

.field private mDrawerContentLength:I

.field private mDrawerLength:I

.field private mHandler:Landroid/os/Handler;

.field private mIsSpsOn:Z

.field private mMaxLevel:I

.field private mMusicHeight:I

.field private mNaivgationBarHelper:Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;

.field private mNavigationBarLength:I

.field private mNavigationBarView:Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;

.field private mPanelView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

.field private mPm:Landroid/os/PowerManager;

.field private mRecentHelper:Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

.field private mRecentItemContainer:Landroid/widget/LinearLayout;

.field private mRecentNoneView:Landroid/widget/TextView;

.field private mRecentsHeight:I

.field private mRecentsLayout:Landroid/widget/FrameLayout;

.field private mRootView:Landroid/widget/RelativeLayout;

.field private final mRotationWatcher:Landroid/view/IRotationWatcher;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSpsClicked:Z

.field private mSwitcherContainer:Landroid/widget/LinearLayout;

.field private mSwitcherHelper:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;

.field private mSwitchersHeight:I

.field private mSwitchersLayout:Landroid/widget/FrameLayout;

.field private mUpSlideGuideViewManager:Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;

.field private mUpSlideManager:Lcom/android/systemui/vivo/common/upslide/UpSlideManager;

.field private mUpSlideTransparentView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

.field private mUpSlideTransparentViewDrawable:Landroid/graphics/drawable/Drawable;

.field private mViewState:I

.field private mVolumeHeight:I

.field private mVolumeHelper:Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;

.field private mVolumeLayout:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mMaxLevel:I

    .line 95
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mSpsClicked:Z

    .line 109
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mViewState:I

    .line 110
    iput v1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mCurrRotation:I

    .line 126
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mIsSpsOn:Z

    .line 133
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper$1;-><init>(Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mBlankTouchListener:Landroid/view/View$OnTouchListener;

    .line 144
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper$2;-><init>(Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mRotationWatcher:Landroid/view/IRotationWatcher;

    .line 157
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper$3;-><init>(Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mHandler:Landroid/os/Handler;

    .line 169
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mContext:Landroid/content/Context;

    .line 170
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mDimenUtils:Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;

    .line 171
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->initRotationWatcher()V

    .line 172
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->refreshDimens()V

    .line 173
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/utils/BlurManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/utils/BlurManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mBlurManager:Lcom/android/systemui/vivo/common/utils/BlurManager;

    .line 174
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;-><init>(Landroid/content/Context;Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mNaivgationBarHelper:Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;

    .line 175
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mPm:Landroid/os/PowerManager;

    .line 176
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    .prologue
    .line 55
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mCurrRotation:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;)Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mUpSlideTransparentView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->prepareVolumeStuff()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->refreshUI()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;
    .param p1, "x1"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->refreshRotationIfNeed(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;
    .param p1, "x1"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->refreshRotation(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;)Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mVolumeHelper:Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;)Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mBrightnessHelper:Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;)Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mDimenUtils:Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mContent:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->prepareBrightnessStuff()V

    return-void
.end method

.method private addUpSlideGuideView()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 939
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mUpSlideGuideViewManager:Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mUpSlideGuideViewManager:Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;->isUpSlideGuideViewNoLongerShow()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mUpSlideTransparentView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    if-eqz v0, :cond_0

    .line 942
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mUpSlideTransparentView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mUpSlideGuideViewManager:Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;->getUpSlideGuideView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 945
    :cond_0
    return-void
.end method

.method private addUpSlideTransparentView()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 232
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mUpSlideTransparentView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    if-nez v1, :cond_2

    .line 233
    new-instance v1, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;-><init>(Landroid/content/Context;Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;)V

    iput-object v1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mUpSlideTransparentView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    .line 234
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mUpSlideTransparentView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->getShadeHeight()I

    move-result v2

    const/16 v3, 0x7de

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->isUpSlideViewTouchable()Z

    move-result v4

    if-nez v4, :cond_3

    const/16 v4, 0x10

    :goto_0
    or-int/lit16 v4, v4, 0x400

    or-int/lit8 v4, v4, 0x8

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->isUpSlideViewTouchable()Z

    move-result v7

    if-nez v7, :cond_0

    const/16 v5, 0x20

    :cond_0
    const v7, -0x20001

    and-int/2addr v5, v7

    or-int/2addr v4, v5

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 245
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x50

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 247
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 248
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 249
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 251
    :cond_1
    const-string v1, "UpSlideTransparentView"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 252
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 254
    .local v6, "wm":Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mUpSlideTransparentView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    invoke-interface {v6, v1, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 256
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mUpSlideTransparentView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->getUpSlidePanelView()Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mPanelView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    .line 258
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v6    # "wm":Landroid/view/WindowManager;
    :cond_2
    return-void

    :cond_3
    move v4, v5

    .line 234
    goto :goto_0
.end method

.method private addUpSlideViewRoot()V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mUpSlideTransparentView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mPanelView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mPanelView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mRootView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->addView(Landroid/view/View;)V

    .line 264
    :cond_0
    return-void
.end method

.method private getSystemRotation(Landroid/content/Context;)I
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 966
    const-string v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 967
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 968
    .local v1, "rotation":I
    const-string v2, "UpSlideHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSystemRotation is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    return v1
.end method

.method private handleRotationChange(I)V
    .locals 3
    .param p1, "newRotation"    # I

    .prologue
    .line 636
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->refreshDimens()V

    .line 637
    packed-switch p1, :pswitch_data_0

    .line 669
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mRootView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 670
    return-void

    .line 639
    :pswitch_1
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mScreenWidth:I

    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mScreenHeight:I

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mRootView:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->updateLayoutParams(IILandroid/view/ViewGroup;)V

    .line 640
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mScreenWidth:I

    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mDrawerContentLength:I

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mContent:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->updateLayoutParams(IILandroid/view/ViewGroup;)V

    .line 641
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mScreenWidth:I

    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mRecentsHeight:I

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mRecentsLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->updateLayoutParams(IILandroid/view/ViewGroup;)V

    .line 642
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mScreenWidth:I

    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mBrightnessHeight:I

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mBrightnessLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->updateLayoutParams(IILandroid/view/ViewGroup;)V

    .line 643
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mScreenWidth:I

    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mVolumeHeight:I

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mVolumeLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->updateLayoutParams(IILandroid/view/ViewGroup;)V

    .line 644
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mScreenWidth:I

    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mSwitchersHeight:I

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mSwitchersLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->updateLayoutParams(IILandroid/view/ViewGroup;)V

    .line 645
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mScreenWidth:I

    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mNavigationBarLength:I

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mNavigationBarView:Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->updateLayoutParams(IILandroid/view/ViewGroup;)V

    .line 646
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mContent:Landroid/widget/LinearLayout;

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_0

    .line 649
    :pswitch_2
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mScreenWidth:I

    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mScreenHeight:I

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mRootView:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->updateLayoutParams(IILandroid/view/ViewGroup;)V

    .line 650
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mDrawerContentLength:I

    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mScreenHeight:I

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mContent:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->updateLayoutParams(IILandroid/view/ViewGroup;)V

    .line 651
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mDrawerContentLength:I

    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mRecentsHeight:I

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mRecentsLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->updateLayoutParams(IILandroid/view/ViewGroup;)V

    .line 652
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mDrawerContentLength:I

    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mBrightnessHeight:I

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mBrightnessLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->updateLayoutParams(IILandroid/view/ViewGroup;)V

    .line 653
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mDrawerContentLength:I

    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mVolumeHeight:I

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mVolumeLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->updateLayoutParams(IILandroid/view/ViewGroup;)V

    .line 654
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mDrawerContentLength:I

    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mSwitchersHeight:I

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mSwitchersLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->updateLayoutParams(IILandroid/view/ViewGroup;)V

    .line 655
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mNavigationBarLength:I

    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mScreenHeight:I

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mNavigationBarView:Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->updateLayoutParams(IILandroid/view/ViewGroup;)V

    .line 656
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mContent:Landroid/widget/LinearLayout;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto/16 :goto_0

    .line 659
    :pswitch_3
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mScreenWidth:I

    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mScreenHeight:I

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mRootView:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->updateLayoutParams(IILandroid/view/ViewGroup;)V

    .line 660
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mDrawerContentLength:I

    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mScreenHeight:I

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mContent:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->updateLayoutParams(IILandroid/view/ViewGroup;)V

    .line 661
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mDrawerContentLength:I

    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mRecentsHeight:I

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mRecentsLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->updateLayoutParams(IILandroid/view/ViewGroup;)V

    .line 662
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mDrawerContentLength:I

    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mBrightnessHeight:I

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mBrightnessLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->updateLayoutParams(IILandroid/view/ViewGroup;)V

    .line 663
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mDrawerContentLength:I

    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mVolumeHeight:I

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mVolumeLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->updateLayoutParams(IILandroid/view/ViewGroup;)V

    .line 664
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mDrawerContentLength:I

    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mSwitchersHeight:I

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mSwitchersLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->updateLayoutParams(IILandroid/view/ViewGroup;)V

    .line 665
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mNavigationBarLength:I

    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mScreenHeight:I

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mNavigationBarView:Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->updateLayoutParams(IILandroid/view/ViewGroup;)V

    .line 666
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mContent:Landroid/widget/LinearLayout;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto/16 :goto_0

    .line 637
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private initRotationWatcher()V
    .locals 5

    .prologue
    .line 183
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    .line 185
    .local v1, "wm":Landroid/view/IWindowManager;
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mRotationWatcher:Landroid/view/IRotationWatcher;

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->watchRotation(Landroid/view/IRotationWatcher;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :goto_0
    return-void

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "UpSlideHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init RotationWatcher error! e : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initViewRoot()V
    .locals 10

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 205
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 206
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f04008c

    invoke-virtual {v2, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mRootView:Landroid/widget/RelativeLayout;

    .line 207
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getScreenWidth()I

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getScreenHeight()I

    move-result v7

    invoke-direct {v3, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 209
    .local v3, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mRootView:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mRootView:Landroid/widget/RelativeLayout;

    const v7, 0x7f11010f

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mContent:Landroid/widget/LinearLayout;

    .line 212
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mRootView:Landroid/widget/RelativeLayout;

    const v7, 0x7f11028b

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mDivider1:Landroid/view/View;

    .line 213
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mRootView:Landroid/widget/RelativeLayout;

    const v7, 0x7f11028c

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mDivider2:Landroid/view/View;

    .line 214
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mRootView:Landroid/widget/RelativeLayout;

    const v7, 0x7f11028d

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mDivider4:Landroid/view/View;

    .line 216
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mRootView:Landroid/widget/RelativeLayout;

    const v7, 0x7f110284

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mDragView0:Landroid/view/View;

    .line 217
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mRootView:Landroid/widget/RelativeLayout;

    const v7, 0x7f110285

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mDragView90:Landroid/view/View;

    .line 218
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mRootView:Landroid/widget/RelativeLayout;

    const v7, 0x7f110286

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mDragView270:Landroid/view/View;

    .line 220
    const v6, 0x7f040085

    invoke-virtual {v2, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 221
    .local v1, "brightnessLayout":Landroid/widget/LinearLayout;
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mDimenUtils:Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;

    invoke-virtual {v6}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getBrightnessHeight()I

    move-result v0

    .line 222
    .local v0, "brightnessHeight":I
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v9, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 223
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mContent:Landroid/widget/LinearLayout;

    const/4 v7, 0x2

    invoke-virtual {v6, v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 225
    const v6, 0x7f04008d

    invoke-virtual {v2, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    .line 226
    .local v5, "volumeLayout":Landroid/widget/FrameLayout;
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mDimenUtils:Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;

    invoke-virtual {v6}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getVolumeHeight()I

    move-result v4

    .line 227
    .local v4, "volumeHeight":I
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v9, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mContent:Landroid/widget/LinearLayout;

    const/4 v7, 0x4

    invoke-virtual {v6, v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 229
    return-void
.end method

.method private onNaivgationBarCollapseFinish()V
    .locals 1

    .prologue
    .line 831
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mNaivgationBarHelper:Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->onCollapseFinish()V

    .line 832
    return-void
.end method

.method private onNaivgationBarExpandFinish()V
    .locals 1

    .prologue
    .line 827
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mNaivgationBarHelper:Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->onExpandFinish()V

    .line 828
    return-void
.end method

.method private onPanelViewMoving()V
    .locals 4

    .prologue
    .line 782
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mUpSlideTransparentViewDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 783
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mPanelView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->getPanelLength()I

    move-result v0

    .line 784
    .local v0, "level":I
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mUpSlideTransparentViewDrawable:Landroid/graphics/drawable/Drawable;

    mul-int/lit16 v2, v0, 0x2710

    iget v3, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mMaxLevel:I

    div-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 788
    .end local v0    # "level":I
    :cond_0
    return-void
.end method

.method private onUpSlideCollapseFinish()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 808
    const-string v0, "UpSlideHelper"

    const-string v1, "STATE_COLLAPSE_FINISH"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mSwitcherHelper:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;

    if-eqz v0, :cond_0

    .line 810
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mSwitcherHelper:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->onPanelViewCollapseFinish()V

    .line 812
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mRecentHelper:Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

    if-eqz v0, :cond_1

    .line 813
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mRecentHelper:Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->onPanelViewCollapseFinish()V

    .line 816
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mUpSlideTransparentViewDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 817
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mUpSlideTransparentViewDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 818
    iput-object v2, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mUpSlideTransparentViewDrawable:Landroid/graphics/drawable/Drawable;

    .line 821
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mUpSlideTransparentView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    if-eqz v0, :cond_3

    .line 822
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mUpSlideTransparentView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 824
    :cond_3
    return-void
.end method

.method private onUpSlideExapndFinish()V
    .locals 2

    .prologue
    .line 791
    const-string v0, "UpSlideHelper"

    const-string v1, "STATE_EXPAND_FINISH"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mSwitcherHelper:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;

    if-eqz v0, :cond_0

    .line 793
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mSwitcherHelper:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->onPanelViewExpandFinish()V

    .line 795
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mRecentHelper:Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

    if-eqz v0, :cond_1

    .line 796
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mRecentHelper:Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->onPanelViewExpandFinish()V

    .line 798
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mUpSlideGuideViewManager:Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;

    if-eqz v0, :cond_2

    .line 799
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mUpSlideGuideViewManager:Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;->noLongerShowGuideView()V

    .line 801
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->collapseNotificationPanel()V

    .line 805
    return-void
.end method

.method private onUpSlideExpandStart()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 759
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mDragViewManager:Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mDragViewManager:Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->isWholeThemeStyle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 760
    invoke-virtual {p0, v3}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->showDragView(Z)V

    .line 763
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mPanelView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 764
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mUpSlideTransparentViewDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 765
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mUpSlideTransparentViewDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 766
    iput-object v2, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mUpSlideTransparentViewDrawable:Landroid/graphics/drawable/Drawable;

    .line 768
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mBlurManager:Lcom/android/systemui/vivo/common/utils/BlurManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/vivo/common/utils/BlurManager;->getBlurBackground(Landroid/graphics/Rect;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mUpSlideTransparentViewDrawable:Landroid/graphics/drawable/Drawable;

    .line 770
    const-string v0, "UpSlideHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPanelViewBlurDrawable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mUpSlideTransparentViewDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mUpSlideTransparentViewDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 772
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mUpSlideTransparentViewDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 773
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mBlurManager:Lcom/android/systemui/vivo/common/utils/BlurManager;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/utils/BlurManager;->getBlurMaxLevel()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mMaxLevel:I

    .line 774
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mUpSlideTransparentView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mUpSlideTransparentViewDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 777
    :cond_2
    return-void
.end method

.method private prepareBrightnessStuff()V
    .locals 2

    .prologue
    .line 573
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mRootView:Landroid/widget/RelativeLayout;

    const v1, 0x7f11026b

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mBrightnessLayout:Landroid/widget/LinearLayout;

    .line 574
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mBrightnessLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mBlankTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 576
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessAnimationController;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessAnimationController;-><init>(Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mAnimController:Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessAnimationController;

    .line 578
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;-><init>(Landroid/content/Context;Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mBrightnessHelper:Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;

    .line 579
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mBrightnessHelper:Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mRootView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->init(Landroid/view/View;)V

    .line 580
    return-void
.end method

.method private prepareDragerStuff()V
    .locals 3

    .prologue
    .line 538
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mRootView:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;-><init>(Landroid/widget/RelativeLayout;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mDragViewManager:Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;

    .line 539
    return-void
.end method

.method private prepareNaivgationBarView()V
    .locals 3

    .prologue
    .line 611
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mNaivgationBarHelper:Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->init()V

    .line 612
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mNaivgationBarHelper:Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->getNavigationBarView()Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mNavigationBarView:Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;

    .line 613
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mUpSlideTransparentView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mPanelView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mNavigationBarView:Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mPanelView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mNavigationBarView:Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->addView(Landroid/view/View;)V

    .line 615
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mNavigationBarView:Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;->setVisibility(I)V

    .line 617
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mNaivgationBarHelper:Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mRecentItemContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->setRecentContainer(Landroid/widget/LinearLayout;)V

    .line 618
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mDimenUtils:Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getNavigationBarLength()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mDimenUtils:Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getDensity()F

    move-result v1

    const/high16 v2, 0x40a00000    # 5.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mNavigationBarLength:I

    .line 619
    return-void
.end method

.method private prepareRecentStuff()V
    .locals 3

    .prologue
    .line 542
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mRootView:Landroid/widget/RelativeLayout;

    const v1, 0x7f110287

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mRecentsLayout:Landroid/widget/FrameLayout;

    .line 543
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mRecentsLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mBlankTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 547
    const-string v0, "Recent"

    const-string v1, "-----begin to create recent-----"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mRootView:Landroid/widget/RelativeLayout;

    const v1, 0x7f110289

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mRecentItemContainer:Landroid/widget/LinearLayout;

    .line 560
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mRootView:Landroid/widget/RelativeLayout;

    const v1, 0x7f11028a

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mRecentNoneView:Landroid/widget/TextView;

    .line 562
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;-><init>(Landroid/content/Context;Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mRecentHelper:Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

    .line 563
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mRecentHelper:Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mRecentItemContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mRecentNoneView:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->addRecentTasks(Landroid/widget/LinearLayout;Landroid/widget/TextView;)V

    .line 564
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mRecentHelper:Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mUpSlideTransparentView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->getRecentDummyView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->setDummyView(Landroid/widget/ImageView;)V

    .line 565
    const-string v0, "Recent"

    const-string v1, "-----end to create recent-----"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    return-void
.end method

.method private prepareSwitcherStuff()V
    .locals 6

    .prologue
    .line 591
    new-instance v1, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;-><init>(Landroid/content/Context;Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;)V

    iput-object v1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mSwitcherHelper:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;

    .line 592
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mRootView:Landroid/widget/RelativeLayout;

    const v2, 0x7f11028e

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mSwitchersLayout:Landroid/widget/FrameLayout;

    .line 593
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mSwitchersLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mBlankTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 594
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mRootView:Landroid/widget/RelativeLayout;

    const v2, 0x7f11028f

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mSwitcherContainer:Landroid/widget/LinearLayout;

    .line 598
    :try_start_0
    const-class v1, Landroid/widget/HorizontalScrollView;

    const-string v2, "setSpringEffect"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 599
    .local v0, "m":Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 600
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mSwitcherContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/HorizontalScrollView;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 606
    .end local v0    # "m":Ljava/lang/reflect/Method;
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mSwitcherHelper:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mRootView:Landroid/widget/RelativeLayout;

    const v3, 0x7f110290

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/AnimatedImageView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->setArrowAnimationView(Lcom/android/systemui/statusbar/AnimatedImageView;)V

    .line 607
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mSwitcherHelper:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mSwitcherContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->addSwitchers(Landroid/widget/LinearLayout;)V

    .line 608
    return-void

    .line 601
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private prepareUpSlideGuideStuff()V
    .locals 2

    .prologue
    .line 533
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;-><init>(Landroid/content/Context;Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mUpSlideGuideViewManager:Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;

    .line 534
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->addUpSlideGuideView()V

    .line 535
    return-void
.end method

.method private prepareVolumeStuff()V
    .locals 3

    .prologue
    .line 583
    const-string v0, "UpSlideHelper"

    const-string v1, "prepareVolumeStuff"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mRootView:Landroid/widget/RelativeLayout;

    const v1, 0x7f110291

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mVolumeLayout:Landroid/widget/FrameLayout;

    .line 585
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mVolumeLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mBlankTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 586
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mVolumeHelper:Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;

    .line 587
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mVolumeHelper:Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mRootView:Landroid/widget/RelativeLayout;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;->init(Landroid/widget/RelativeLayout;I)V

    .line 588
    return-void
.end method

.method private refreshDimens()V
    .locals 2

    .prologue
    .line 489
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mDimenUtils:Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;

    if-nez v0, :cond_0

    .line 490
    const-string v0, "UpSlideHelper"

    const-string v1, "refreshDimens error! mDimenUtils is null!"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    :goto_0
    return-void

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mDimenUtils:Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getScreenWidth()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mScreenWidth:I

    .line 494
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mDimenUtils:Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getScreenHeight()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mScreenHeight:I

    .line 495
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mDimenUtils:Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getDrawerLength()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mDrawerLength:I

    .line 496
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mDimenUtils:Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getDrawerContentLength()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mDrawerContentLength:I

    .line 497
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mDimenUtils:Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getRecentsHeight()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mRecentsHeight:I

    .line 498
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mDimenUtils:Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getBrightnessHeight()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mBrightnessHeight:I

    .line 499
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mDimenUtils:Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getMusicHeight()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mMusicHeight:I

    .line 500
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mDimenUtils:Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getVolumeHeight()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mVolumeHeight:I

    .line 501
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mDimenUtils:Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getSwitchersHeight()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mSwitchersHeight:I

    goto :goto_0
.end method

.method private refreshRotation(I)V
    .locals 4
    .param p1, "newRotation"    # I

    .prologue
    const/4 v3, 0x0

    .line 462
    const-string v0, "UpSlideHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshRotation, newRotation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->dismissPopupToolbar()V

    .line 465
    invoke-virtual {p0, v3, v3}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->toggleUpSlideGuideView(ZZ)V

    .line 466
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->onRotationChanged(I)V

    .line 467
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mUpSlideTransparentView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mUpSlideTransparentView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->onRotationChanged(I)V

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mDragViewManager:Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;

    if-eqz v0, :cond_1

    .line 471
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mDragViewManager:Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->onRotationChanged(I)V

    .line 473
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mRecentHelper:Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

    if-eqz v0, :cond_2

    .line 474
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mRecentHelper:Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->onRotationChanged(I)V

    .line 476
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mNaivgationBarHelper:Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;

    if-eqz v0, :cond_3

    .line 477
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mNaivgationBarHelper:Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->onRotationChanged(I)V

    .line 479
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->handleRotationChange(I)V

    .line 481
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mUpSlideTransparentView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->setVisibility(I)V

    .line 482
    return-void
.end method

.method private refreshRotationIfNeed(I)V
    .locals 4
    .param p1, "rotation"    # I

    .prologue
    const/16 v3, 0x3e9

    const/4 v2, 0x0

    .line 449
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 450
    const/4 p1, 0x0

    .line 452
    :cond_0
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mCurrRotation:I

    if-eq v0, p1, :cond_1

    .line 453
    iput p1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mCurrRotation:I

    .line 454
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 455
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, p1, v2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 459
    :goto_0
    return-void

    .line 457
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mUpSlideTransparentView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->setVisibility(I)V

    goto :goto_0
.end method

.method private refreshUI()V
    .locals 3

    .prologue
    .line 983
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0059

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 984
    .local v0, "color":I
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mRootView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 985
    return-void
.end method

.method private sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 973
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 975
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p2}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 980
    :cond_0
    :goto_0
    return-void

    .line 976
    :catch_0
    move-exception v0

    .line 977
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "UpSlideHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "closeSystemDialogs error! e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateLayoutParams(IILandroid/view/ViewGroup;)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "v"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v1, -0x64

    .line 673
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 674
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eq v1, p1, :cond_0

    .line 675
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 677
    :cond_0
    if-eq v1, p2, :cond_1

    .line 678
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 680
    :cond_1
    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 681
    return-void
.end method


# virtual methods
.method public bringRecentDummyViewToFront(Z)V
    .locals 1
    .param p1, "bringToFront"    # Z

    .prologue
    .line 704
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mUpSlideTransparentView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    if-eqz v0, :cond_0

    .line 705
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mUpSlideTransparentView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->bringRecentDummyViewToFront(Z)V

    .line 707
    :cond_0
    return-void
.end method

.method public changeUpSlideState(ZZ)V
    .locals 1
    .param p1, "down"    # Z
    .param p2, "canceled"    # Z

    .prologue
    .line 421
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mUpSlideTransparentView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mUpSlideTransparentView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->changeUpSlideState(ZZ)V

    .line 424
    :cond_0
    return-void
.end method

.method public collapseNotificationPanel()V
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mUpSlideManager:Lcom/android/systemui/vivo/common/upslide/UpSlideManager;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mUpSlideManager:Lcom/android/systemui/vivo/common/upslide/UpSlideManager;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/UpSlideManager;->collapseNotificationPanel()V

    .line 325
    :cond_0
    return-void
.end method

.method public dismissPopupToolbar()V
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mRecentHelper:Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mRecentHelper:Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->dismissPopupToolbar()V

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;->dismissPopupToolbar()V

    .line 371
    return-void
.end method

.method public dismissUpSlideDialogs()V
    .locals 1

    .prologue
    .line 841
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mSwitcherHelper:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;

    if-eqz v0, :cond_0

    .line 842
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mSwitcherHelper:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->dismissUpSlideDialogs()V

    .line 844
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;->dismisDialog()V

    .line 845
    return-void
.end method

.method public enableUpSlide(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x0

    .line 630
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->isSupportKeyCodeBarSwipe()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mUpSlideTransparentView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    if-eqz v0, :cond_0

    .line 631
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mUpSlideTransparentView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    invoke-virtual {v0, p1, v1, v1, v1}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->updateLayoutParamsWithAutoRotation(ZZIZ)V

    .line 633
    :cond_0
    return-void
.end method

.method public getAlphaView()Landroid/view/View;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mUpSlideTransparentView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->getBackgroundAlphaView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getBrightnessMirrorController()Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessAnimationController;
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mAnimController:Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessAnimationController;

    return-object v0
.end method

.method public getDimensUtils()Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mDimenUtils:Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;

    return-object v0
.end method

.method public getNavigationBarView()Landroid/view/View;
    .locals 1

    .prologue
    .line 626
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mNavigationBarView:Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNavigationBarView;

    return-object v0
.end method

.method public getPanelView()Landroid/view/View;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mPanelView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    return-object v0
.end method

.method public getTipArrowLength()I
    .locals 1

    .prologue
    .line 690
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mDragViewManager:Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;

    if-nez v0, :cond_0

    .line 691
    const/16 v0, 0x4e

    .line 693
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mDragViewManager:Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->getTipArrowLength()I

    move-result v0

    goto :goto_0
.end method

.method public getUpSlideTransparentView()Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mUpSlideTransparentView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    return-object v0
.end method

.method public getViewRoot()Landroid/view/View;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mRootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getViewState()I
    .locals 1

    .prologue
    .line 710
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mViewState:I

    return v0
.end method

.method public handleCloseSystemDialogs(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 392
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->dismissUpSlideDialogs()V

    .line 394
    const-string v1, "reason"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, "reason":Ljava/lang/String;
    const-string v1, "UpSlideHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleCloseSystemDialogs, mCurrRotation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mCurrRotation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", reason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mUpSlideTransparentView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mUpSlideTransparentView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->isUpSlideGuideViewShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "recentapps"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 400
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->toggleUpSlideGuideView(ZZ)V

    .line 406
    :cond_0
    :goto_0
    return-void

    .line 401
    :cond_1
    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mCurrRotation:I

    if-nez v1, :cond_0

    const-string v1, "recentapps"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/systemui/vivo/common/utils/LockTaskUtils;->isInLockTaskMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 404
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->performCollapse()V

    goto :goto_0
.end method

.method public handleSuperPower(Z)V
    .locals 4
    .param p1, "isSpsOn"    # Z

    .prologue
    const/4 v1, 0x1

    .line 862
    const-string v0, "UpSlideHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSuperPower, isSpsOn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mIsSpsOn:Z

    .line 864
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mUpSlideManager:Lcom/android/systemui/vivo/common/upslide/UpSlideManager;

    if-nez p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/systemui/vivo/common/upslide/UpSlideManager;->enableUpSlide(Z)V

    .line 865
    if-eqz p1, :cond_1

    .line 866
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mRecentHelper:Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

    if-eqz v0, :cond_0

    .line 867
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mRecentHelper:Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->clearRecentTasks(Z)V

    .line 869
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->performCollapse()V

    .line 871
    :cond_1
    return-void

    .line 864
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleThemeChanged()V
    .locals 4

    .prologue
    .line 874
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper$4;-><init>(Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 902
    return-void
.end method

.method public handleVisitModeChanged(Z)V
    .locals 1
    .param p1, "isVisitModeOn"    # Z

    .prologue
    .line 918
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mRecentHelper:Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

    if-eqz v0, :cond_0

    .line 919
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mRecentHelper:Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->onVisitModeChanged(Z)V

    .line 921
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mSwitcherHelper:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;

    if-eqz v0, :cond_1

    .line 922
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mSwitcherHelper:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->onVisitModeChanged(Z)V

    .line 924
    :cond_1
    return-void
.end method

.method public init()V
    .locals 0

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->initViewRoot()V

    .line 193
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->addUpSlideTransparentView()V

    .line 194
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->addUpSlideViewRoot()V

    .line 195
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->prepareUpSlideGuideStuff()V

    .line 196
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->prepareDragerStuff()V

    .line 197
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->prepareRecentStuff()V

    .line 198
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->prepareBrightnessStuff()V

    .line 199
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->prepareVolumeStuff()V

    .line 200
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->prepareSwitcherStuff()V

    .line 201
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->prepareNaivgationBarView()V

    .line 202
    return-void
.end method

.method public isAnimationRunning()Z
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mUpSlideTransparentView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    if-nez v0, :cond_0

    .line 354
    const/4 v0, 0x0

    .line 356
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mUpSlideTransparentView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->isAnimationRunning()Z

    move-result v0

    goto :goto_0
.end method

.method public isExpandDisabled()Z
    .locals 1

    .prologue
    .line 287
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->isExpandDisabled(Z)Z

    move-result v0

    return v0
.end method

.method public isExpandDisabled(Z)Z
    .locals 5
    .param p1, "considerBarExpand"    # Z

    .prologue
    .line 291
    invoke-virtual {p0, p1}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->isUpSlideDisabled(Z)Z

    move-result v0

    .line 292
    .local v0, "isUpSlideDisabled":Z
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->isSpsOn()Z

    move-result v1

    .line 294
    .local v1, "spsOn":Z
    const-string v2, "UpSlideHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isExpandDisabled() : isUpSlideDisabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", spsOn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mSpsClicked"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mSpsClicked:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mSpsClicked:Z

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isExpandDisabled(ZZ)Z
    .locals 4
    .param p1, "considerBarExpand"    # Z
    .param p2, "considerUpSlideSetting"    # Z

    .prologue
    .line 301
    if-eqz p2, :cond_2

    .line 302
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mRecentHelper:Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->disabledUpSlideForSetting()Z

    move-result v0

    .line 303
    .local v0, "disableInApp":Z
    const-string v1, "UpSlideHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isExpandDisabled >>> disableInApp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "isInLockTaskMode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/systemui/vivo/common/utils/LockTaskUtils;->isInLockTaskMode()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-virtual {p0, p1}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->isExpandDisabled(Z)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/systemui/vivo/common/utils/LockTaskUtils;->isInLockTaskMode()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 306
    .end local v0    # "disableInApp":Z
    :goto_0
    return v1

    .line 304
    .restart local v0    # "disableInApp":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 306
    .end local v0    # "disableInApp":Z
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->isExpandDisabled(Z)Z

    move-result v1

    goto :goto_0
.end method

.method public isPopupToolbarShowing()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 360
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mRecentHelper:Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

    if-nez v1, :cond_1

    .line 363
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mRecentHelper:Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->isPopupToolbarShowing()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;->isPopupToolbarShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isScreenOn()Z
    .locals 5

    .prologue
    .line 520
    const/4 v1, 0x0

    .line 521
    .local v1, "on":Z
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mPm:Landroid/os/PowerManager;

    if-nez v3, :cond_0

    move v2, v1

    .line 529
    .end local v1    # "on":Z
    .local v2, "on":I
    :goto_0
    return v2

    .line 525
    .end local v2    # "on":I
    .restart local v1    # "on":Z
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isInteractive()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 529
    .restart local v2    # "on":I
    goto :goto_0

    .line 526
    .end local v2    # "on":I
    :catch_0
    move-exception v0

    .line 527
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "UpSlideHelper"

    const-string v4, "isScreenOn PowerManager.isInteractive fail!"

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public isSpsOn()Z
    .locals 1

    .prologue
    .line 328
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mIsSpsOn:Z

    return v0
.end method

.method public isSupportKeyCodeBarSwipe()Z
    .locals 1

    .prologue
    .line 332
    invoke-static {}, Lcom/android/systemui/vivo/common/upslide/utils/UpSlideUtils;->isSupportKeyCodeBarSwipe()Z

    move-result v0

    return v0
.end method

.method public isUpSlideDialogsShowing()Ljava/lang/Boolean;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 848
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 849
    .local v0, "show":Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mSwitcherHelper:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;

    if-eqz v1, :cond_1

    .line 850
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mSwitcherHelper:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->isUpSlideDialogsShowing()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    move v1, v3

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 852
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;->isDialogShowing()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    move v2, v3

    :cond_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    :cond_4
    move v1, v2

    .line 850
    goto :goto_0
.end method

.method public isUpSlideDisabled()Z
    .locals 1

    .prologue
    .line 311
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->isUpSlideDisabled(Z)Z

    move-result v0

    return v0
.end method

.method public isUpSlideDisabled(Z)Z
    .locals 1
    .param p1, "considerBarExpand"    # Z

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mUpSlideManager:Lcom/android/systemui/vivo/common/upslide/UpSlideManager;

    if-nez v0, :cond_0

    .line 316
    const/4 v0, 0x0

    .line 318
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mUpSlideManager:Lcom/android/systemui/vivo/common/upslide/UpSlideManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/upslide/UpSlideManager;->isUpSlideDisabled(Z)Z

    move-result v0

    goto :goto_0
.end method

.method public isUpSlideViewTouchable()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 336
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->isSupportKeyCodeBarSwipe()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 342
    :cond_0
    :goto_0
    return v0

    .line 339
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->isExpandDisabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 342
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isUpSlided()Z
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mUpSlideTransparentView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    if-nez v0, :cond_0

    .line 347
    const/4 v0, 0x0

    .line 349
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mUpSlideTransparentView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->isUpSlided()Z

    move-result v0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mDragViewManager:Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mDragViewManager:Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mSwitcherHelper:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;

    if-eqz v0, :cond_1

    .line 432
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mSwitcherHelper:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 434
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mBrightnessHelper:Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;

    if-eqz v0, :cond_2

    .line 435
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mBrightnessHelper:Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/upslide/brightness/BrightnessHelper;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 437
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mVolumeHelper:Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;

    if-eqz v0, :cond_3

    .line 438
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mVolumeHelper:Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/upslide/media/VolumeHelper;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 440
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mRecentHelper:Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

    if-eqz v0, :cond_4

    .line 441
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mRecentHelper:Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 443
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mUpSlideGuideViewManager:Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;

    if-eqz v0, :cond_5

    .line 444
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mUpSlideGuideViewManager:Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;->onConfigurationChanged()V

    .line 446
    :cond_5
    return-void
.end method

.method public onPhoneClearFinished()V
    .locals 1

    .prologue
    .line 927
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mRecentHelper:Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

    if-eqz v0, :cond_0

    .line 928
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mRecentHelper:Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->onPhoneClearFinished()V

    .line 930
    :cond_0
    return-void
.end method

.method public onScreenTurnOff()V
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mUpSlideTransparentView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mUpSlideTransparentView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->onScreenTurnOff()V

    .line 517
    :cond_0
    return-void
.end method

.method public onScreenTurnOn()V
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mUpSlideTransparentView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mUpSlideTransparentView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->onScreenTurnOn()V

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mSwitcherHelper:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;

    if-eqz v0, :cond_1

    .line 509
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mSwitcherHelper:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->onScreenTurnOn()V

    .line 511
    :cond_1
    return-void
.end method

.method public onSpeedUpFinished(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mRecentHelper:Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->onSpeedUpFinished(Landroid/content/Intent;)V

    .line 414
    return-void
.end method

.method public onSpeedUpStarted()V
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mRecentHelper:Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->onSpeedUpStarted()V

    .line 410
    return-void
.end method

.method public onSpeedUpTimeout()V
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mRecentHelper:Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->onSpeedUpTimeout()V

    .line 418
    return-void
.end method

.method public onSpsEnded()V
    .locals 1

    .prologue
    .line 914
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mSpsClicked:Z

    .line 915
    return-void
.end method

.method public onSpsStarted()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 905
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mSpsClicked:Z

    .line 906
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mUpSlideTransparentView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    if-eqz v0, :cond_0

    .line 907
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mUpSlideTransparentView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->onSpsStarted()V

    .line 909
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->enableUpSlide(Z)V

    .line 910
    invoke-virtual {p0, v1, v1}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->toggleUpSlideGuideView(ZZ)V

    .line 911
    return-void
.end method

.method public onViewStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 714
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mViewState:I

    if-eq v0, p1, :cond_0

    .line 715
    const-string v0, "UpSlideHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onViewStateChanged to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    :cond_0
    iput p1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mViewState:I

    .line 719
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mDragViewManager:Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;

    if-eqz v0, :cond_1

    .line 720
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mDragViewManager:Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->updateDragView(I)V

    .line 722
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 756
    :cond_2
    :goto_0
    return-void

    .line 724
    :pswitch_0
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/LockTaskUtils;->isInLockTaskMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 725
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->onUpSlideExpandStart()V

    goto :goto_0

    .line 729
    :pswitch_1
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/LockTaskUtils;->isInLockTaskMode()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/systemui/vivo/common/utils/LockTaskUtils;->isUnLockPending()Z

    move-result v0

    if-nez v0, :cond_2

    .line 730
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->onPanelViewMoving()V

    goto :goto_0

    .line 734
    :pswitch_2
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/LockTaskUtils;->isInLockTaskMode()Z

    move-result v0

    if-nez v0, :cond_3

    .line 735
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->onUpSlideExapndFinish()V

    .line 739
    :goto_1
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mIsSpsOn:Z

    if-eqz v0, :cond_2

    .line 740
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->performCollapse()V

    goto :goto_0

    .line 737
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->onNaivgationBarExpandFinish()V

    goto :goto_1

    .line 744
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->dismissPopupToolbar()V

    goto :goto_0

    .line 747
    :pswitch_4
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/LockTaskUtils;->isInLockTaskMode()Z

    move-result v0

    if-nez v0, :cond_4

    .line 748
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->onUpSlideCollapseFinish()V

    goto :goto_0

    .line 750
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->onNaivgationBarCollapseFinish()V

    goto :goto_0

    .line 722
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public performCollapse()V
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mUpSlideTransparentView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mUpSlideTransparentView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->performCollapse()V

    .line 383
    :cond_0
    return-void
.end method

.method public performExpand(Z)V
    .locals 1
    .param p1, "fromLongPressHomeKey"    # Z

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mUpSlideTransparentView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mUpSlideTransparentView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->performExpand(Z)V

    .line 377
    :cond_0
    return-void
.end method

.method public refreshTaskLockVisibility()V
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mNaivgationBarHelper:Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/lockTask/VivoNaivgationBarHelper;->refreshTaskLockVisibility()V

    .line 623
    return-void
.end method

.method public registerStateCallBack(Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$StateCallBack;)V
    .locals 1
    .param p1, "callBack"    # Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$StateCallBack;

    .prologue
    .line 856
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mUpSlideManager:Lcom/android/systemui/vivo/common/upslide/UpSlideManager;

    if-eqz v0, :cond_0

    .line 857
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mUpSlideManager:Lcom/android/systemui/vivo/common/upslide/UpSlideManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/upslide/UpSlideManager;->registerStateCallBack(Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$StateCallBack;)V

    .line 859
    :cond_0
    return-void
.end method

.method public removeUpSlideGuideView(Landroid/view/View;)V
    .locals 1
    .param p1, "upSlideGuideView"    # Landroid/view/View;

    .prologue
    .line 948
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mUpSlideTransparentView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    if-eqz v0, :cond_0

    .line 949
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mUpSlideTransparentView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->removeView(Landroid/view/View;)V

    .line 951
    :cond_0
    return-void
.end method

.method public setEnableInApp(Z)V
    .locals 1
    .param p1, "enableInApp"    # Z

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mRecentHelper:Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->setEnableInApp(Z)V

    .line 284
    return-void
.end method

.method public setHideKeyguard(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 835
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mUpSlideGuideViewManager:Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;

    if-eqz v0, :cond_0

    .line 836
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mUpSlideGuideViewManager:Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;->setHideKeyguard(Z)V

    .line 838
    :cond_0
    return-void
.end method

.method public setUpSlideGuideViewShowState(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 954
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mUpSlideTransparentView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    if-eqz v0, :cond_0

    .line 955
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mUpSlideTransparentView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->setUpSlideGuideViewShowState(Z)V

    .line 957
    :cond_0
    return-void
.end method

.method public setUpSlideManager(Lcom/android/systemui/vivo/common/upslide/UpSlideManager;)V
    .locals 0
    .param p1, "manager"    # Lcom/android/systemui/vivo/common/upslide/UpSlideManager;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mUpSlideManager:Lcom/android/systemui/vivo/common/upslide/UpSlideManager;

    .line 180
    return-void
.end method

.method public showDragView(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 684
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mDragViewManager:Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;

    if-eqz v0, :cond_0

    .line 685
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mDragViewManager:Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->showDragView(Z)V

    .line 687
    :cond_0
    return-void
.end method

.method public showUpSlideGuideView()V
    .locals 1

    .prologue
    .line 960
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mUpSlideTransparentView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    if-eqz v0, :cond_0

    .line 961
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mUpSlideTransparentView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->showUpSlideGuideView()V

    .line 963
    :cond_0
    return-void
.end method

.method public toggleUpSlideGuideView(ZZ)V
    .locals 1
    .param p1, "show"    # Z
    .param p2, "commit"    # Z

    .prologue
    .line 933
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mUpSlideGuideViewManager:Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;

    if-eqz v0, :cond_0

    .line 934
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mUpSlideGuideViewManager:Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/vivo/common/upslide/drag/UpSlideGuideViewManager;->toggleUpSlideGuideView(ZZ)V

    .line 936
    :cond_0
    return-void
.end method

.method public toggleUpSlideView(ZZ)V
    .locals 1
    .param p1, "isHomeKeyLongPressed"    # Z
    .param p2, "collapse"    # Z

    .prologue
    .line 386
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mUpSlideTransparentView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mUpSlideTransparentView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->toggleUpSlideView(ZZ)V

    .line 389
    :cond_0
    return-void
.end method

.method public touchTipArrow(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 697
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mDragViewManager:Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;

    if-nez v0, :cond_0

    .line 698
    const/4 v0, 0x0

    .line 700
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->mDragViewManager:Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/vivo/common/upslide/drag/DragViewManager;->touchTipArrow(FF)Z

    move-result v0

    goto :goto_0
.end method
