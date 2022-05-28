.class public Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;
.super Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;
.source "KeyguardNature3.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/ActivityStarter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$BounceInterpolator;
    }
.end annotation


# static fields
.field private static final DARK_GRAY:I = 0x96

.field private static final DEBUG:Z = true

.field private static final DURATION_LONG:I = 0x3e8

.field private static final DURATION_MEDIUM:I = 0x1f4

.field private static final DURATION_SHORT:I = 0xc8

.field private static final HIDE_CAMERA_DELAY:I = 0xbb8

.field private static final LIGHT_GRAY:I = 0xb4

.field private static final MAX_ALPHA_BG_SHADOW:F = 0.8f

.field private static final MAX_ALPHA_BLUR_COVER:F = 1.0f

.field private static final MAX_MOVE_VELOCITY:I = 0x2

.field private static final MIN_ALPHA_BLUR_COVER:F = 0.0f

.field private static final MSG_CLOSE_MUSIC_PANEL:I = 0x4

.field private static final MSG_LOAD_RESOURCE_SUCCESS:I = 0x0

.field private static final MSG_START_NOTIFICATION_ANIM:I = 0x3

.field private static final MSG_UPDATE_SHORTCUT_VIEW:I = 0x5

.field private static final MSG_UPDATE_VIEWS_COLOR:I = 0x2

.field private static final MSG_UPDATE_WALLPAPER:I = 0x1

.field private static final RESHOW_CHARGE_INDICATOR_DELAY:I = 0xbb8

.field private static final SHORTCUT_COLOR:I = -0x1

.field private static final SHORTCUT_COLOR_DARK:I = -0xb4b4b5

.field private static final TAG:Ljava/lang/String; = "KeyguardNature3"

.field private static final TEXT_COLOR:I = -0x19000001

.field private static final TEXT_COLOR_DARK:I = -0x19b4b4b5


# instance fields
.field private mBatteryLevel:I

.field private mBgShadowView:Landroid/view/View;

.field private mBgView:Landroid/view/View;

.field private mBlockTouches:Z

.field private mBlurCover:Landroid/view/View;

.field private mBlurWallpaper:Landroid/graphics/Bitmap;

.field private mBlurWallpaperDrawable:Lcom/android/systemui/vivo/common/keyguard/nature/widget/MovableDrawable;

.field private mBottomValue:I

.field private mCameraLauncher:Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;

.field private mCancleDismiss:Z

.field private mCarrierInfoView:Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;

.field private mChargeInfoShowing:Z

.field private mChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

.field private mChargingInfo:Ljava/lang/String;

.field private mChargingInfoAnim:Landroid/animation/ObjectAnimator;

.field private mChargingSize:I

.field private mContext:Landroid/content/Context;

.field private mCustomIconExists:Z

.field private mCustomSettings:Landroid/content/SharedPreferences;

.field private mDate:Landroid/widget/TextView;

.field private mDateString:Ljava/lang/String;

.field private mDigitalClock:Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;

.field private mDigitalImages:[I

.field private mDigitalImagesDark:[I

.field private mDisableAlphaAnim:Z

.field private mDismissing:Z

.field private mDoubleClickHelper:Lcom/android/systemui/vivo/common/keyguard/KeyguardDoubleClickHelper;

.field private mDownPosX:I

.field private mDownPosY:I

.field private mDownTime:J

.field private mDragStarting:Z

.field private mFlingAnims:Landroid/animation/AnimatorSet;

.field private mFlinging:Z

.field private mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field mHelperCallback:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper$Callback;

.field private final mHideCameraPreview:Ljava/lang/Runnable;

.field private mIndicatorAnimList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/ObjectAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private mIsBouncer:Z

.field private mIsCameraClicked:Z

.field private mIsCharged:Z

.field private mIsFlingUp:Z

.field private mIsLeftDouble:Z

.field private mIsNotificationEmpty:Z

.field private mIsQuickChargingShowing:Z

.field private mIsRetain:Z

.field private mIsRightDouble:Z

.field private mIsSecureCameraLauching:Z

.field private mIsSecurityViewShowing:Z

.field private mIsStartActivity:Z

.field private mIsUnlockIndicatorShowing:Z

.field private mKeyguardMusicManagerCallback:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;

.field private mLeftCls:Ljava/lang/String;

.field private mLeftIcon:Landroid/graphics/Bitmap;

.field private mLeftPkg:Ljava/lang/String;

.field private mLeftRightIconListener:Landroid/view/View$OnTouchListener;

.field private mLeftShortcut:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

.field private mLeftShortcutExists:Z

.field private mLocale:Ljava/util/Locale;

.field private mMainContainer:Landroid/view/ViewGroup;

.field private mMediaReject:Z

.field private mMusicPanel:Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;

.field private mMusicPanelHeight:I

.field private mMusicPanelShowing:Z

.field private mMusicPanelWidth:I

.field private mNotificationAnim:Landroid/animation/AnimatorSet;

.field private mOnResume:Z

.field private mOnlyAffordanceInThisMotion:Z

.field private mOnlyOneFinger:Z

.field private mPluggedIn:Z

.field private mPureBlurAnim:Landroid/animation/ObjectAnimator;

.field private mRightCls:Ljava/lang/String;

.field private mRightIcon:Landroid/graphics/Bitmap;

.field private mRightPkg:Ljava/lang/String;

.field private mRightShortcut:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

.field private mRightShortcutExists:Z

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mShortcutArea:Landroid/widget/FrameLayout;

.field private mShortcutCover:Landroid/view/View;

.field private mShortcutIndicator:Landroid/view/View;

.field private mShortcutIndicatorInfo:Landroid/widget/TextView;

.field private mShortcutTipHeight:I

.field private mShortcutTipOffset:I

.field private mShortcutTipsAnim:Landroid/animation/AnimatorSet;

.field private mShortcutTouchHelper:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;

.field private mSongNameView:Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;

.field private mStateInfo:Landroid/content/SharedPreferences;

.field private mTimeDateBg:Landroid/view/View;

.field private mTopValue:I

.field private mTouchCancelFling:Z

.field private mTouchOnShortcut:Z

.field private mUnlockDistanceThreshold:I

.field private mUnlockIndicator:Landroid/widget/LinearLayout;

.field private mUnlockIndicatorAnim:Landroid/animation/ObjectAnimator;

.field private final mUnlockIndicatorAnimRunnable:Ljava/lang/Runnable;

.field private mUnlockTipAnim:Landroid/animation/ValueAnimator;

.field private mUnlockTipHeight:I

.field private mUnreadPanel:Landroid/view/View;

.field private mUpTime:J

.field private mViewsFadeAnim:Landroid/animation/AnimatorSet;

.field private mWallpaper:Landroid/graphics/Bitmap;

.field private mWallpaperDrawable:Lcom/android/systemui/vivo/common/keyguard/nature/widget/MovableDrawable;

.field private final mhideChargingInfoAnimRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 363
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 364
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v3, 0xa

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 367
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 115
    const/16 v0, 0x2d0

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mScreenWidth:I

    .line 116
    const/16 v0, 0x500

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mScreenHeight:I

    .line 117
    const/16 v0, 0xd2

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mUnlockDistanceThreshold:I

    .line 118
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mShortcutTipHeight:I

    .line 119
    const/16 v0, 0x32

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mUnlockTipHeight:I

    .line 122
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mOnResume:Z

    .line 150
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mChargeInfoShowing:Z

    .line 155
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mDragStarting:Z

    .line 157
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsSecurityViewShowing:Z

    .line 158
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mOnlyOneFinger:Z

    .line 165
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsNotificationEmpty:Z

    .line 169
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mCustomIconExists:Z

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIndicatorAnimList:Ljava/util/ArrayList;

    .line 197
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsFlingUp:Z

    .line 200
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mCancleDismiss:Z

    .line 201
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mDisableAlphaAnim:Z

    .line 215
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$1;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mKeyguardMusicManagerCallback:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;

    .line 304
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mDigitalImages:[I

    .line 316
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mDigitalImagesDark:[I

    .line 335
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$2;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mHandler:Landroid/os/Handler;

    .line 807
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$9;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$9;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mUnlockIndicatorAnimRunnable:Ljava/lang/Runnable;

    .line 927
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$12;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$12;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mhideChargingInfoAnimRunnable:Ljava/lang/Runnable;

    .line 1781
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$20;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$20;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mHelperCallback:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper$Callback;

    .line 1832
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$21;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$21;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mLeftRightIconListener:Landroid/view/View$OnTouchListener;

    .line 1850
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$22;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$22;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mHideCameraPreview:Ljava/lang/Runnable;

    .line 368
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mContext:Landroid/content/Context;

    .line 369
    const-string v0, "state_info"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mStateInfo:Landroid/content/SharedPreferences;

    .line 370
    const-string v0, "custom_settings"

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mCustomSettings:Landroid/content/SharedPreferences;

    .line 371
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/KeyguardDoubleClickHelper;

    invoke-direct {v0, p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardDoubleClickHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mDoubleClickHelper:Lcom/android/systemui/vivo/common/keyguard/KeyguardDoubleClickHelper;

    .line 372
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->adjustDimens()V

    .line 373
    return-void

    .line 304
    :array_0
    .array-data 4
        0x7f0202dc
        0x7f0202dd
        0x7f0202de
        0x7f0202df
        0x7f0202e0
        0x7f0202e1
        0x7f0202e2
        0x7f0202e3
        0x7f0202e4
        0x7f0202e5
    .end array-data

    .line 316
    :array_1
    .array-data 4
        0x7f0202e6
        0x7f0202e7
        0x7f0202e8
        0x7f0202e9
        0x7f0202ea
        0x7f0202eb
        0x7f0202ec
        0x7f0202ed
        0x7f0202ee
        0x7f0202ef
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mMusicPanel:Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mMusicPanelShowing:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->closeMusicPanel()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->updateShortcutView()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->handleUpdateWallpaper()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->updateViewsColor(II)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mOnResume:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsFlingUp:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;ZZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->notificationAnim(ZZZ)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mNotificationView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mUnlockIndicator:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mNotificationView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->shouldShowMusicPanel()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2002(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mViewsFadeAnim:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mNotificationView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mMainContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;FZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;
    .param p1, "x1"    # F
    .param p2, "x2"    # Z

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->clipBg(FZ)V

    return-void
.end method

.method static synthetic access$2402(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;
    .param p1, "x1"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mFlinging:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->shouldMoveWallpaper()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->shouldUpdateBlurCover()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mBlurCover:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mOnlyAffordanceInThisMotion:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;
    .param p1, "x1"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mOnlyAffordanceInThisMotion:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mCancleDismiss:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->isInKeyguardState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsStartActivity:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;
    .param p1, "x1"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsStartActivity:Z

    return p1
.end method

.method static synthetic access$3102(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;
    .param p1, "x1"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mDismissing:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->isSecure()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3302(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;
    .param p1, "x1"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsSecurityViewShowing:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;
    .param p1, "x1"    # Z

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->setBlurWallPaperShowing(Z)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mBgView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Lcom/android/systemui/vivo/common/keyguard/nature/widget/MovableDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mBlurWallpaperDrawable:Lcom/android/systemui/vivo/common/keyguard/nature/widget/MovableDrawable;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;Landroid/view/View;Lcom/android/systemui/vivo/common/keyguard/nature/widget/MovableDrawable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Lcom/android/systemui/vivo/common/keyguard/nature/widget/MovableDrawable;

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->setWallpaper(Landroid/view/View;Lcom/android/systemui/vivo/common/keyguard/nature/widget/MovableDrawable;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mShortcutIndicator:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;
    .param p1, "x1"    # Z

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->resetBooleans(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mMediaReject:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mTouchOnShortcut:Z

    return v0
.end method

.method static synthetic access$4002(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;
    .param p1, "x1"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mTouchOnShortcut:Z

    return p1
.end method

.method static synthetic access$402(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;
    .param p1, "x1"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mMediaReject:Z

    return p1
.end method

.method static synthetic access$4102(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;
    .param p1, "x1"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mBlockTouches:Z

    return p1
.end method

.method static synthetic access$4200(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsNotificationEmpty:Z

    return v0
.end method

.method static synthetic access$4300(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsQuickChargingShowing:Z

    return v0
.end method

.method static synthetic access$4400(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;
    .param p1, "x1"    # Z

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->setBlurWallPaperShowing(Z)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Lcom/android/systemui/vivo/common/keyguard/nature/widget/MovableDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mWallpaperDrawable:Lcom/android/systemui/vivo/common/keyguard/nature/widget/MovableDrawable;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mTouchCancelFling:Z

    return v0
.end method

.method static synthetic access$4602(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;
    .param p1, "x1"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mTouchCancelFling:Z

    return p1
.end method

.method static synthetic access$4700(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsSecureCameraLauching:Z

    return v0
.end method

.method static synthetic access$4800(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mShortcutCover:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsBouncer:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;
    .param p1, "x1"    # Z

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->showUnlockIndicator(Z)V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;
    .param p1, "x1"    # Z

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->showQuickChargeViewIfNeed(Z)V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->startUnlockIndicatorAnim()V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mSongNameView:Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;

    return-object v0
.end method

.method static synthetic access$5402(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;
    .param p1, "x1"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mChargeInfoShowing:Z

    return p1
.end method

.method static synthetic access$5502(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;
    .param p1, "x1"    # Landroid/animation/ObjectAnimator;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mChargingInfoAnim:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$5600(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mDateString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mDate:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    .prologue
    .line 90
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mChargingSize:I

    return v0
.end method

.method static synthetic access$5900(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->hideChargingInfoAnim()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;
    .param p1, "x1"    # Z

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->setMusicPanelVisible(Z)V

    return-void
.end method

.method static synthetic access$6002(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;
    .param p1, "x1"    # I

    .prologue
    .line 90
    iput p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mShortcutTipOffset:I

    return p1
.end method

.method static synthetic access$6102(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mShortcutTipsAnim:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$6200(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mFlingAnims:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->fling(ZI)V

    return-void
.end method

.method static synthetic access$6400(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->loadResources()V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    .prologue
    .line 90
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mTopValue:I

    return v0
.end method

.method static synthetic access$6502(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;
    .param p1, "x1"    # I

    .prologue
    .line 90
    iput p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mTopValue:I

    return p1
.end method

.method static synthetic access$6600(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    .prologue
    .line 90
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mBottomValue:I

    return v0
.end method

.method static synthetic access$6602(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;
    .param p1, "x1"    # I

    .prologue
    .line 90
    iput p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mBottomValue:I

    return p1
.end method

.method static synthetic access$6700(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mWallpaper:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$6800(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->stayInBlurBackground()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6900(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->onAnimationToSideStarted()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->isInKeyguardState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7000(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->onAnimationToSideEnded()V

    return-void
.end method

.method static synthetic access$7100(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mCameraLauncher:Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;

    return-object v0
.end method

.method static synthetic access$7200(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mLeftShortcut:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    return-object v0
.end method

.method static synthetic access$7300(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mRightShortcut:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    return-object v0
.end method

.method static synthetic access$7400(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    .prologue
    .line 90
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mScreenHeight:I

    return v0
.end method

.method static synthetic access$7500(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsCameraClicked:Z

    return v0
.end method

.method static synthetic access$7502(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;
    .param p1, "x1"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsCameraClicked:Z

    return p1
.end method

.method static synthetic access$7600(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;Landroid/view/View;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->isCameraSelected(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7700(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mNotificationView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$7800(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mNotificationView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->isInKeyguardState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$8000(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    .prologue
    .line 90
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mUnlockTipHeight:I

    return v0
.end method

.method static synthetic access$8102(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mUnlockTipAnim:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private adjustDimens()V
    .locals 3

    .prologue
    .line 493
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 494
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 495
    .local v0, "density":F
    const v2, 0x7f0f00fc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mChargingSize:I

    .line 496
    const v2, 0x7f0f001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mMusicPanelHeight:I

    .line 497
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mScreenWidth:I

    .line 498
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mScreenHeight:I

    .line 499
    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mUnlockDistanceThreshold:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mUnlockDistanceThreshold:I

    .line 500
    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mShortcutTipHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mShortcutTipHeight:I

    .line 501
    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mUnlockTipHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mUnlockTipHeight:I

    .line 502
    return-void
.end method

.method private cancelFlingAnim()V
    .locals 1

    .prologue
    .line 780
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mFlingAnims:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mFlingAnims:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 781
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mFlingAnims:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 783
    :cond_0
    return-void
.end method

.method private cancelNotificationAnim()V
    .locals 1

    .prologue
    .line 2081
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mNotificationAnim:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mNotificationAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2082
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mNotificationAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2084
    :cond_0
    return-void
.end method

.method private cancelShortcutTipsAnim(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 982
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mShortcutTipsAnim:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mShortcutTipsAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 983
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 984
    .local v0, "action":I
    if-eq v0, v1, :cond_0

    if-eq v0, v4, :cond_0

    if-ne v0, v5, :cond_3

    .line 987
    :cond_0
    if-ne v0, v5, :cond_1

    .line 988
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mOnlyOneFinger:Z

    .line 991
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mShortcutTipsAnim:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$15;

    invoke-direct {v3, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$15;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1004
    .end local v0    # "action":I
    :cond_2
    :goto_0
    return v1

    .line 998
    .restart local v0    # "action":I
    :cond_3
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mDownPosY:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v2, v4, :cond_2

    .line 1000
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mShortcutTipsAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    goto :goto_0

    .end local v0    # "action":I
    :cond_4
    move v1, v2

    .line 1004
    goto :goto_0
.end method

.method private cancelUnlockTipAnim()V
    .locals 1

    .prologue
    .line 2167
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mUnlockTipAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mUnlockTipAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2168
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mUnlockTipAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2170
    :cond_0
    return-void
.end method

.method private chargeInfo2Date()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 892
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mChargingInfoAnim:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    .line 893
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mDate:Landroid/widget/TextView;

    const-string v1, "alpha"

    new-array v2, v3, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mChargingInfoAnim:Landroid/animation/ObjectAnimator;

    .line 894
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mChargingInfoAnim:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 895
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mChargingInfoAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 897
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mChargingInfoAnim:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$11;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$11;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 921
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mChargingInfoAnim:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 924
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mChargingInfoAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 925
    return-void

    .line 893
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private chargeInfo2Song()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 854
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mChargingInfoAnim:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    .line 855
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mSongNameView:Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;

    const-string v1, "alpha"

    new-array v2, v3, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mChargingInfoAnim:Landroid/animation/ObjectAnimator;

    .line 856
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mChargingInfoAnim:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 857
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mChargingInfoAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 859
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mChargingInfoAnim:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$10;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$10;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 884
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mChargingInfoAnim:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 886
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mChargingInfoAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 889
    return-void

    .line 855
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private clipBg(FZ)V
    .locals 5
    .param p1, "translateY"    # F
    .param p2, "clip"    # Z

    .prologue
    const v4, 0x3f4ccccd    # 0.8f

    .line 723
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mBgView:Landroid/view/View;

    const v2, 0x3e99999a    # 0.3f

    mul-float/2addr v2, p1

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 726
    if-eqz p2, :cond_1

    .line 727
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mBgView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/vivo/common/keyguard/nature/widget/MovableDrawable;

    .line 728
    .local v0, "background":Lcom/android/systemui/vivo/common/keyguard/nature/widget/MovableDrawable;
    if-eqz v0, :cond_0

    .line 729
    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/keyguard/nature/widget/MovableDrawable;->onMove(F)V

    .line 738
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mBgShadowView:Landroid/view/View;

    mul-float v2, v4, p1

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mScreenHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    add-float/2addr v2, v4

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 740
    .end local v0    # "background":Lcom/android/systemui/vivo/common/keyguard/nature/widget/MovableDrawable;
    :cond_1
    return-void
.end method

.method private closeMusicPanel()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 1375
    const-string v0, "KeyguardNature3"

    const-string v1, "close music panel"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1376
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mMusicPanelShowing:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->shouldShowMusicPanel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1377
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1378
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1380
    :cond_0
    return-void
.end method

.method private createAnims()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 425
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIndicatorAnimList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 426
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mUnlockIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 427
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mUnlockIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 428
    .local v2, "view":Landroid/view/View;
    const-string v3, "alpha"

    new-array v4, v6, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 429
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 430
    mul-int/lit16 v3, v1, -0x12c

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 431
    const v3, 0x7fffffff

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 432
    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 433
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIndicatorAnimList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 435
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    return-void

    .line 428
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private fadeViews(Z)V
    .locals 9
    .param p1, "show"    # Z

    .prologue
    const/4 v1, 0x2

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 521
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mViewsFadeAnim:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mViewsFadeAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mViewsFadeAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 524
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mViewsFadeAnim:Landroid/animation/AnimatorSet;

    .line 525
    if-eqz p1, :cond_1

    .line 526
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mViewsFadeAnim:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 527
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mViewsFadeAnim:Landroid/animation/AnimatorSet;

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mUnlockIndicator:Landroid/widget/LinearLayout;

    const-string v3, "alpha"

    new-array v4, v6, [F

    aput v8, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mNotificationView:Landroid/view/View;

    const-string v3, "alpha"

    new-array v4, v6, [F

    aput v8, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 532
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mViewsFadeAnim:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$3;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 559
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mViewsFadeAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 560
    return-void

    .line 544
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->cancelNotificationAnim()V

    .line 545
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mViewsFadeAnim:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 546
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mViewsFadeAnim:Landroid/animation/AnimatorSet;

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mUnlockIndicator:Landroid/widget/LinearLayout;

    const-string v3, "alpha"

    new-array v4, v6, [F

    aput v7, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mNotificationView:Landroid/view/View;

    const-string v3, "alpha"

    new-array v4, v6, [F

    aput v7, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 550
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mViewsFadeAnim:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$4;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0
.end method

.method private fling(ZI)V
    .locals 11
    .param p1, "upward"    # Z
    .param p2, "duration"    # I

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 579
    const-string v4, "KeyguardNature3"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "upward = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", duration = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mFlingAnims:Landroid/animation/AnimatorSet;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mFlingAnims:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 581
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mFlingAnims:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->cancel()V

    .line 583
    :cond_0
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mFlingAnims:Landroid/animation/AnimatorSet;

    .line 584
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mFlingAnims:Landroid/animation/AnimatorSet;

    int-to-long v6, p2

    invoke-virtual {v4, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 585
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsFlingUp:Z

    .line 586
    if-eqz p1, :cond_5

    .line 587
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mMainContainer:Landroid/view/ViewGroup;

    const-string v5, "translationY"

    new-array v6, v2, [F

    iget v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mScreenHeight:I

    neg-int v7, v7

    int-to-float v7, v7

    const/high16 v8, 0x3fc00000    # 1.5f

    mul-float/2addr v7, v8

    aput v7, v6, v3

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 588
    .local v1, "mainOffset":Landroid/animation/ObjectAnimator;
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->shouldMoveWallpaper()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 589
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->shouldMoveShortcutCover()Z

    move-result v4

    if-nez v4, :cond_3

    move v0, v2

    .line 590
    .local v0, "clip":Z
    :goto_0
    new-instance v4, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$5;

    invoke-direct {v4, p0, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$5;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;Z)V

    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 605
    .end local v0    # "clip":Z
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->shouldMoveShortcutCover()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 606
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mShortcutCover:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->setAlpha(F)V

    .line 607
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mFlingAnims:Landroid/animation/AnimatorSet;

    new-array v5, v2, [Landroid/animation/Animator;

    iget-object v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mShortcutCover:Landroid/view/View;

    const-string v7, "translationY"

    new-array v8, v2, [F

    aput v9, v8, v3

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 609
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mFlingAnims:Landroid/animation/AnimatorSet;

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v1, v2, v3

    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 610
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mFlingAnims:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$6;

    invoke-direct {v3, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$6;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 718
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mFlingAnims:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 719
    return-void

    :cond_3
    move v0, v3

    .line 589
    goto :goto_0

    .line 601
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->shouldUpdateBlurCover()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 602
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mFlingAnims:Landroid/animation/AnimatorSet;

    new-array v5, v2, [Landroid/animation/Animator;

    iget-object v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mBlurCover:Landroid/view/View;

    const-string v7, "alpha"

    new-array v8, v2, [F

    aput v10, v8, v3

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_1

    .line 651
    .end local v1    # "mainOffset":Landroid/animation/ObjectAnimator;
    :cond_5
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mFlingAnims:Landroid/animation/AnimatorSet;

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v6, 0x40000000    # 2.0f

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 652
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mMainContainer:Landroid/view/ViewGroup;

    const-string v5, "translationY"

    new-array v6, v2, [F

    aput v9, v6, v3

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 653
    .restart local v1    # "mainOffset":Landroid/animation/ObjectAnimator;
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->shouldMoveWallpaper()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 654
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->shouldMoveShortcutCover()Z

    move-result v4

    if-nez v4, :cond_8

    move v0, v2

    .line 655
    .restart local v0    # "clip":Z
    :goto_3
    new-instance v4, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$7;

    invoke-direct {v4, p0, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$7;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;Z)V

    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 669
    .end local v0    # "clip":Z
    :cond_6
    :goto_4
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->shouldMoveShortcutCover()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 670
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mShortcutCover:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->setAlpha(F)V

    .line 671
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mFlingAnims:Landroid/animation/AnimatorSet;

    new-array v5, v2, [Landroid/animation/Animator;

    iget-object v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mShortcutCover:Landroid/view/View;

    const-string v7, "translationY"

    new-array v8, v2, [F

    iget v9, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mScreenHeight:I

    int-to-float v9, v9

    aput v9, v8, v3

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 673
    :cond_7
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mFlingAnims:Landroid/animation/AnimatorSet;

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v1, v2, v3

    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 674
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mFlingAnims:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$8;

    invoke-direct {v3, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$8;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/16 :goto_2

    :cond_8
    move v0, v3

    .line 654
    goto :goto_3

    .line 665
    :cond_9
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->shouldUpdateBlurCover()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 666
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mFlingAnims:Landroid/animation/AnimatorSet;

    new-array v5, v2, [Landroid/animation/Animator;

    iget-object v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mBlurCover:Landroid/view/View;

    const-string v7, "alpha"

    new-array v8, v2, [F

    aput v9, v8, v3

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_4
.end method

.method private getFlingDuration(JI)I
    .locals 5
    .param p1, "velocity"    # J
    .param p3, "translationY"    # I

    .prologue
    .line 563
    const/16 v0, 0x12c

    .line 564
    .local v0, "duration":I
    const-wide/16 v2, 0x2

    cmp-long v1, p1, v2

    if-ltz v1, :cond_1

    .line 565
    int-to-long v2, v0

    div-long/2addr v2, p1

    long-to-int v0, v2

    .line 571
    :goto_0
    const/16 v1, 0x32

    if-ge v0, v1, :cond_0

    .line 572
    const/16 v0, 0x32

    .line 574
    :cond_0
    const-string v1, "KeyguardNature3"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "velocity = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", translationY = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", duration = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    return v0

    .line 567
    :cond_1
    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mScreenHeight:I

    sub-int/2addr v1, p3

    mul-int/2addr v1, v0

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mScreenHeight:I

    div-int v0, v1, v2

    goto :goto_0
.end method

.method private handleUpdateWallpaper()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    .line 1214
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;

    move-result-object v0

    .line 1215
    .local v0, "kwm":Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;
    invoke-virtual {v0}, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->getWallpaper()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mWallpaper:Landroid/graphics/Bitmap;

    .line 1216
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mWallpaper:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1217
    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/nature/widget/MovableDrawable;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mWallpaper:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mScreenWidth:I

    iget v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mScreenHeight:I

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/vivo/common/keyguard/nature/widget/MovableDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mWallpaperDrawable:Lcom/android/systemui/vivo/common/keyguard/nature/widget/MovableDrawable;

    .line 1219
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->getBlurWallpaper(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mBlurWallpaper:Landroid/graphics/Bitmap;

    .line 1220
    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/nature/widget/MovableDrawable;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mBlurWallpaper:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mScreenWidth:I

    iget v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mScreenHeight:I

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/vivo/common/keyguard/nature/widget/MovableDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mBlurWallpaperDrawable:Lcom/android/systemui/vivo/common/keyguard/nature/widget/MovableDrawable;

    .line 1221
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mBlurCover:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mBlurWallpaperDrawable:Lcom/android/systemui/vivo/common/keyguard/nature/widget/MovableDrawable;

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->setWallpaper(Landroid/view/View;Lcom/android/systemui/vivo/common/keyguard/nature/widget/MovableDrawable;)V

    .line 1222
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mBlurCover:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1223
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->stayInBlurBackground()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1224
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mBgView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mWallpaperDrawable:Lcom/android/systemui/vivo/common/keyguard/nature/widget/MovableDrawable;

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->setWallpaper(Landroid/view/View;Lcom/android/systemui/vivo/common/keyguard/nature/widget/MovableDrawable;)V

    .line 1225
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mBlurCover:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1230
    :goto_0
    invoke-virtual {v0}, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->ifShowLiveWallpaper()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1234
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->updateViewsColorLiveWallpaper()V

    .line 1235
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mBgShadowView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1241
    :cond_0
    :goto_1
    return-void

    .line 1227
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mBgView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mBlurWallpaperDrawable:Lcom/android/systemui/vivo/common/keyguard/nature/widget/MovableDrawable;

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->setWallpaper(Landroid/view/View;Lcom/android/systemui/vivo/common/keyguard/nature/widget/MovableDrawable;)V

    .line 1228
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mBlurCover:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 1237
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->updateViewsColor()V

    .line 1238
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mBgShadowView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private hideChargeView()V
    .locals 2

    .prologue
    .line 1144
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->stopChargeAnimation()V

    .line 1145
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->setVisibility(I)V

    .line 1146
    return-void
.end method

.method private hideChargingInfoAnim()V
    .locals 3

    .prologue
    .line 845
    const-string v0, "KeyguardNature3"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideChargingInfoAnim music showing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mMusicPanelShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mMusicPanelShowing:Z

    if-eqz v0, :cond_0

    .line 847
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->chargeInfo2Song()V

    .line 851
    :goto_0
    return-void

    .line 849
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->chargeInfo2Date()V

    goto :goto_0
.end method

.method private hideQuickChargeView(IZ)V
    .locals 4
    .param p1, "reason"    # I
    .param p2, "anim"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1186
    invoke-static {p1}, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->hideNormalChargeView(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1187
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->hideChargeView()V

    .line 1191
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsQuickChargingShowing:Z

    if-eqz v1, :cond_0

    .line 1192
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mQuickChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;

    if-nez v1, :cond_2

    .line 1206
    :cond_0
    :goto_1
    return-void

    .line 1189
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->showChargeView()V

    goto :goto_0

    .line 1193
    :cond_2
    if-eqz p2, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsBouncer:Z

    if-nez v1, :cond_3

    const/4 p2, 0x1

    .line 1194
    :goto_2
    sget-object v1, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hideQuickChargeView reason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", anim = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mQuickChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->setVisibility(I)V

    .line 1196
    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsQuickChargingShowing:Z

    .line 1197
    if-eqz p2, :cond_4

    .line 1198
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->cancelUnlockTipAnim()V

    .line 1199
    invoke-direct {p0, v0, p2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->setBlurBackground(ZZ)V

    goto :goto_1

    :cond_3
    move p2, v0

    .line 1193
    goto :goto_2

    .line 1201
    :cond_4
    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsNotificationEmpty:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsBouncer:Z

    if-nez v1, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    .line 1202
    invoke-direct {p0, v0, p2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->setBlurBackground(ZZ)V

    goto :goto_1
.end method

.method private isActivityAvailable(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "cls"    # Ljava/lang/String;
    .param p3, "isDouble"    # Z

    .prologue
    .line 1887
    const/4 v0, 0x0

    .line 1889
    .local v0, "available":Z
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1891
    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1892
    .local v4, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1893
    .local v1, "component":Landroid/content/ComponentName;
    const/16 v5, 0x80

    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 1894
    .local v3, "info":Landroid/content/pm/ActivityInfo;
    if-eqz p3, :cond_0

    if-eqz p3, :cond_2

    invoke-static {p1}, Lcom/android/systemui/vivo/common/utils/DoubleInstanceUtils;->isCloneEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 1900
    .end local v1    # "component":Landroid/content/ComponentName;
    .end local v3    # "info":Landroid/content/pm/ActivityInfo;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    :goto_0
    return v0

    .line 1894
    .restart local v1    # "component":Landroid/content/ComponentName;
    .restart local v3    # "info":Landroid/content/pm/ActivityInfo;
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1895
    .end local v1    # "component":Landroid/content/ComponentName;
    .end local v3    # "info":Landroid/content/pm/ActivityInfo;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v2

    .line 1896
    .local v2, "ex":Ljava/lang/Exception;
    const-string v5, "KeyguardNature3"

    const-string v6, "the activity is not available."

    invoke-static {v5, v6, v2}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private isCameraSelected(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1860
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mLeftShortcut:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    if-ne p1, v0, :cond_0

    const-string v0, "com.android.camera.CameraActivity"

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mLeftCls:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mRightShortcut:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    if-ne p1, v0, :cond_2

    const-string v0, "com.android.camera.CameraActivity"

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mRightCls:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadResources()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 472
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/bbkcore/lock_screen_nature/icon"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 473
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mCustomIconExists:Z

    .line 474
    new-instance v0, Ljava/io/File;

    .end local v0    # "file":Ljava/io/File;
    const-string v1, "/data/bbkcore/lock_screen_nature/left_shortcut"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 475
    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mLeftShortcutExists:Z

    .line 476
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mCustomSettings:Landroid/content/SharedPreferences;

    const-string v4, "left_pkg"

    const-string v5, "com.android.dialer"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mLeftPkg:Ljava/lang/String;

    .line 477
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mCustomSettings:Landroid/content/SharedPreferences;

    const-string v4, "left_cls"

    const-string v5, "com.android.dialer.TwelveKeyDialer"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mLeftCls:Ljava/lang/String;

    .line 478
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mCustomSettings:Landroid/content/SharedPreferences;

    const-string v4, "left_double"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsLeftDouble:Z

    .line 479
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mLeftPkg:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mLeftCls:Ljava/lang/String;

    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mShortcutWidth:I

    iget-boolean v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsLeftDouble:Z

    invoke-static {v1, v4, v5, v6, v7}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/Utils;->getShortcutIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mLeftIcon:Landroid/graphics/Bitmap;

    .line 481
    new-instance v0, Ljava/io/File;

    .end local v0    # "file":Ljava/io/File;
    const-string v1, "/data/bbkcore/lock_screen_nature/right_shortcut"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 482
    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mRightShortcutExists:Z

    .line 483
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mCustomSettings:Landroid/content/SharedPreferences;

    const-string v2, "right_pkg"

    const-string v4, "com.android.camera"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mRightPkg:Ljava/lang/String;

    .line 484
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mCustomSettings:Landroid/content/SharedPreferences;

    const-string v2, "right_cls"

    const-string v4, "com.android.camera.CameraActivity"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mRightCls:Ljava/lang/String;

    .line 485
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mCustomSettings:Landroid/content/SharedPreferences;

    const-string v2, "right_double"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsRightDouble:Z

    .line 486
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mRightPkg:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mRightCls:Ljava/lang/String;

    iget v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mShortcutWidth:I

    iget-boolean v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsRightDouble:Z

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/Utils;->getShortcutIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mRightIcon:Landroid/graphics/Bitmap;

    .line 488
    const-string v1, "KeyguardNature3"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shortcut - left: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mLeftCls:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", right: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mRightCls:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    const-string v1, "KeyguardNature3"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shortcut - mLeftShortcutExists: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mLeftShortcutExists:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mRightShortcutExists: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mRightShortcutExists:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    return-void

    :cond_0
    move v1, v3

    .line 475
    goto/16 :goto_0

    :cond_1
    move v2, v3

    .line 482
    goto/16 :goto_1
.end method

.method private moveViews(I)V
    .locals 4
    .param p1, "distance"    # I

    .prologue
    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 786
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mMainContainer:Landroid/view/ViewGroup;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 787
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->shouldMoveWallpaper()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 788
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->shouldMoveShortcutCover()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 789
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mShortcutCover:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 790
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mShortcutCover:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mScreenHeight:I

    add-int/2addr v1, p1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 791
    int-to-float v0, p1

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->clipBg(FZ)V

    .line 805
    :cond_0
    :goto_0
    return-void

    .line 793
    :cond_1
    int-to-float v0, p1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->clipBg(FZ)V

    goto :goto_0

    .line 796
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->shouldUpdateBlurCover()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 797
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mBlurCover:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 798
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mBlurCover:Landroid/view/View;

    neg-int v1, p1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mScreenHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 800
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->shouldMoveShortcutCover()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 801
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mShortcutCover:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 802
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mShortcutCover:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mScreenHeight:I

    add-int/2addr v1, p1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0
.end method

.method private notificationAnim(ZZZ)V
    .locals 11
    .param p1, "empty"    # Z
    .param p2, "retain"    # Z
    .param p3, "animated"    # Z

    .prologue
    const/16 v10, 0xb4

    const/4 v9, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2004
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->cancelNotificationAnim()V

    .line 2005
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->removeChargingInfoAnim()V

    .line 2006
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->cancelUnlockTipAnim()V

    .line 2007
    const/4 v0, 0x1

    .line 2008
    .local v0, "updateViewColor":Z
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mNotificationAnim:Landroid/animation/AnimatorSet;

    .line 2009
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mNotificationAnim:Landroid/animation/AnimatorSet;

    if-eqz p3, :cond_3

    const-wide/16 v2, 0x1f4

    :goto_0
    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 2010
    if-eqz p1, :cond_5

    .line 2011
    if-nez p2, :cond_2

    .line 2012
    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsBouncer:Z

    if-nez v1, :cond_0

    .line 2013
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mBlurCover:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v9

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->stayInBlurBackground()Z

    move-result v1

    if-nez v1, :cond_4

    .line 2014
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mBlurCover:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2015
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mBlurCover:Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/view/View;->setAlpha(F)V

    .line 2017
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mBgView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mWallpaperDrawable:Lcom/android/systemui/vivo/common/keyguard/nature/widget/MovableDrawable;

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->setWallpaper(Landroid/view/View;Lcom/android/systemui/vivo/common/keyguard/nature/widget/MovableDrawable;)V

    .line 2018
    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mTopValue:I

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mBottomValue:I

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->updateViewsColor(II)V

    .line 2020
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mNotificationAnim:Landroid/animation/AnimatorSet;

    new-array v2, v7, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mBlurCover:Landroid/view/View;

    const-string v4, "alpha"

    new-array v5, v7, [F

    aput v9, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2021
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mNotificationAnim:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$23;

    invoke-direct {v2, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$23;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2034
    :cond_0
    :goto_1
    if-eqz v0, :cond_2

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mTopValue:I

    if-gt v1, v10, :cond_1

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mBottomValue:I

    if-le v1, v10, :cond_2

    .line 2035
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mNotificationAnim:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$24;

    invoke-direct {v2, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$24;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2077
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mNotificationAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 2078
    return-void

    .line 2009
    :cond_3
    const-wide/16 v2, 0x0

    goto :goto_0

    .line 2030
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mNotificationView:Landroid/view/View;

    invoke-virtual {v1, v9}, Landroid/view/View;->setAlpha(F)V

    .line 2031
    const/4 v0, 0x0

    goto :goto_1

    .line 2043
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->removeChargingInfoAnim()V

    .line 2044
    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsBouncer:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardStateManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/keyguard/KeyguardStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardStateManager;->statusBarDisabled()Z

    move-result v1

    if-nez v1, :cond_6

    .line 2045
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mNotificationAnim:Landroid/animation/AnimatorSet;

    new-array v2, v7, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mNotificationView:Landroid/view/View;

    const-string v4, "alpha"

    new-array v5, v7, [F

    aput v8, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2047
    :cond_6
    if-nez p2, :cond_2

    .line 2048
    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsBouncer:Z

    if-nez v1, :cond_7

    .line 2049
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mBlurCover:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v8

    if-eqz v1, :cond_9

    .line 2050
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mBlurCover:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2051
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mBlurCover:Landroid/view/View;

    invoke-virtual {v1, v9}, Landroid/view/View;->setAlpha(F)V

    .line 2052
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mNotificationAnim:Landroid/animation/AnimatorSet;

    new-array v2, v7, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mBlurCover:Landroid/view/View;

    const-string v4, "alpha"

    new-array v5, v7, [F

    aput v8, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2053
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mNotificationAnim:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$25;

    invoke-direct {v2, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$25;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2067
    :cond_7
    :goto_3
    if-eqz v0, :cond_2

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mTopValue:I

    if-gt v1, v10, :cond_8

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mBottomValue:I

    if-le v1, v10, :cond_2

    .line 2068
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mNotificationAnim:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$26;

    invoke-direct {v2, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$26;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/16 :goto_2

    .line 2063
    :cond_9
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mNotificationView:Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/view/View;->setAlpha(F)V

    .line 2064
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private recycleShortcutIcon()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1741
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mLeftShortcut:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1742
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mRightShortcut:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1743
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mLeftIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1744
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mLeftIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1745
    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mLeftIcon:Landroid/graphics/Bitmap;

    .line 1747
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mRightIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 1748
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mRightIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1749
    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mRightIcon:Landroid/graphics/Bitmap;

    .line 1751
    :cond_1
    return-void
.end method

.method private refreshDayDate()V
    .locals 3

    .prologue
    .line 1307
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mChargeInfoShowing:Z

    if-nez v0, :cond_0

    .line 1308
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mDate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mDateString:Ljava/lang/String;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1310
    :cond_0
    return-void
.end method

.method private removeChargingInfoAnim()V
    .locals 3

    .prologue
    .line 935
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mhideChargingInfoAnimRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 936
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mChargingInfoAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mChargingInfoAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 937
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mChargingInfoAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 939
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mDate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mDateString:Ljava/lang/String;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 940
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mMusicPanelShowing:Z

    if-eqz v0, :cond_1

    .line 941
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mSongNameView:Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->getTrackName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;->setText(Ljava/lang/String;)V

    .line 942
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mSongNameView:Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;->setEnableMarquee(Z)V

    .line 944
    :cond_1
    return-void
.end method

.method private resetAnims()V
    .locals 1

    .prologue
    .line 832
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mCancleDismiss:Z

    .line 833
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->cancelFlingAnim()V

    .line 834
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->cancelNotificationAnim()V

    .line 835
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mShortcutTipsAnim:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mShortcutTipsAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 836
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mShortcutTipsAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 838
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mViewsFadeAnim:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mViewsFadeAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 839
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mViewsFadeAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 841
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->cancelUnlockTipAnim()V

    .line 842
    return-void
.end method

.method private resetBooleans(Z)V
    .locals 2
    .param p1, "unlock"    # Z

    .prologue
    const/4 v1, 0x0

    .line 759
    if-eqz p1, :cond_0

    .line 760
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mCancleDismiss:Z

    .line 767
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mFlingAnims:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 768
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mFlingAnims:Landroid/animation/AnimatorSet;

    .line 769
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mFlinging:Z

    .line 770
    iput v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mShortcutTipOffset:I

    .line 771
    return-void

    .line 762
    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsSecurityViewShowing:Z

    .line 763
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsSecureCameraLauching:Z

    .line 764
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mTouchOnShortcut:Z

    .line 765
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mBlockTouches:Z

    goto :goto_0
.end method

.method private resetTouchState()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 1124
    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mOnlyOneFinger:Z

    .line 1125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mDownTime:J

    .line 1126
    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsSecureCameraLauching:Z

    if-eqz v1, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mOnlyAffordanceInThisMotion:Z

    .line 1127
    return-void

    .line 1126
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetViewStatesOnPause()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1548
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsBouncer:Z

    if-nez v0, :cond_0

    .line 1549
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mMainContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 1551
    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsSecurityViewShowing:Z

    .line 1552
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mTouchCancelFling:Z

    .line 1553
    iput v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mShortcutTipOffset:I

    .line 1554
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mDragStarting:Z

    .line 1555
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mTouchOnShortcut:Z

    .line 1556
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsFlingUp:Z

    .line 1557
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mShortcutIndicator:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1558
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mShortcutCover:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1559
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mShortcutCover:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 1560
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mBlurCover:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1561
    invoke-direct {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->resetWallPaper(Z)V

    .line 1562
    return-void
.end method

.method private resetViewStatesOnResume()V
    .locals 3

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 1518
    invoke-direct {p0, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->showQuickChargeViewIfNeed(Z)V

    .line 1519
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mDismissing:Z

    .line 1520
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mCancleDismiss:Z

    .line 1522
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsUnlockIndicatorShowing:Z

    .line 1523
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mUnlockIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1524
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mUnlockIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1525
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mUnlockIndicatorAnimRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1527
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsBouncer:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsNotificationEmpty:Z

    if-nez v0, :cond_2

    .line 1528
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mNotificationView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1529
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mNotificationView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1533
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mCarrierInfoView:Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;

    if-eqz v0, :cond_0

    .line 1534
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mCarrierInfoView:Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;->onResume()V

    .line 1536
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mBgShadowView:Landroid/view/View;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1537
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1540
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mBgShadowView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1544
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->updateChargingInfo()V

    .line 1545
    return-void

    .line 1531
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mNotificationView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 1541
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->ifShowLiveWallpaper()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1542
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mBgShadowView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private resetWallPaper(Z)V
    .locals 3
    .param p1, "force"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1565
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->stayInBlurBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1566
    invoke-direct {p0, v1, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->updateViewsColor(II)V

    .line 1567
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mBgView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mBlurWallpaperDrawable:Lcom/android/systemui/vivo/common/keyguard/nature/widget/MovableDrawable;

    invoke-direct {p0, v0, v1, p1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->setWallpaper(Landroid/view/View;Lcom/android/systemui/vivo/common/keyguard/nature/widget/MovableDrawable;Z)V

    .line 1568
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mBlurCover:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1574
    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, v2, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->clipBg(FZ)V

    .line 1575
    return-void

    .line 1570
    :cond_0
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mTopValue:I

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mBottomValue:I

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->updateViewsColor(II)V

    .line 1571
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mBgView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mWallpaperDrawable:Lcom/android/systemui/vivo/common/keyguard/nature/widget/MovableDrawable;

    invoke-direct {p0, v0, v1, p1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->setWallpaper(Landroid/view/View;Lcom/android/systemui/vivo/common/keyguard/nature/widget/MovableDrawable;Z)V

    .line 1572
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mBlurCover:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method private sendUnlockBroadcast()V
    .locals 3

    .prologue
    .line 774
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.vivo.intent.action.NATURE2_UNLOCK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x20000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 776
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 777
    return-void
.end method

.method private setBlurBackground(ZZ)V
    .locals 7
    .param p1, "blur"    # Z
    .param p2, "anim"    # Z

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 1383
    const/4 v1, 0x0

    .line 1385
    .local v1, "update":Z
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mBlurCover:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_2

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->stayInBlurBackground()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1386
    const/4 v0, 0x0

    .line 1387
    .local v0, "target":F
    const/4 v1, 0x1

    .line 1394
    :goto_0
    const-string v2, "KeyguardNature3"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "target = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", udpate = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", anim = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1395
    if-eqz v1, :cond_1

    .line 1396
    if-eqz p2, :cond_4

    .line 1397
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mPureBlurAnim:Landroid/animation/ObjectAnimator;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mPureBlurAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1398
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mPureBlurAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1400
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mBlurCover:Landroid/view/View;

    const-string v3, "alpha"

    const/4 v4, 0x1

    new-array v4, v4, [F

    aput v0, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mPureBlurAnim:Landroid/animation/ObjectAnimator;

    .line 1401
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mPureBlurAnim:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1402
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mPureBlurAnim:Landroid/animation/ObjectAnimator;

    new-instance v3, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$17;

    invoke-direct {v3, p0, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$17;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;F)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1434
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mPureBlurAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 1446
    :cond_1
    :goto_1
    return-void

    .line 1388
    .end local v0    # "target":F
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mBlurCover:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_3

    if-eqz p1, :cond_3

    .line 1389
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1390
    .restart local v0    # "target":F
    const/4 v1, 0x1

    goto :goto_0

    .line 1392
    .end local v0    # "target":F
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mBlurCover:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v0

    .restart local v0    # "target":F
    goto :goto_0

    .line 1436
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mBlurCover:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1437
    cmpl-float v2, v6, v0

    if-nez v2, :cond_5

    .line 1438
    invoke-direct {p0, v5, v5}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->updateViewsColor(II)V

    .line 1439
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mBgView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mBlurWallpaperDrawable:Lcom/android/systemui/vivo/common/keyguard/nature/widget/MovableDrawable;

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->setWallpaper(Landroid/view/View;Lcom/android/systemui/vivo/common/keyguard/nature/widget/MovableDrawable;)V

    goto :goto_1

    .line 1441
    :cond_5
    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mTopValue:I

    iget v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mBottomValue:I

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->updateViewsColor(II)V

    .line 1442
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mBgView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mWallpaperDrawable:Lcom/android/systemui/vivo/common/keyguard/nature/widget/MovableDrawable;

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->setWallpaper(Landroid/view/View;Lcom/android/systemui/vivo/common/keyguard/nature/widget/MovableDrawable;)V

    goto :goto_1
.end method

.method private setCarrierInfoColor(I)V
    .locals 1
    .param p1, "textColor"    # I

    .prologue
    .line 1301
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mCarrierInfoView:Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;

    if-eqz v0, :cond_0

    .line 1302
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mCarrierInfoView:Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;->updateViewsColor(I)V

    .line 1304
    :cond_0
    return-void
.end method

.method private setMusicPanelVisible(Z)V
    .locals 6
    .param p1, "visible"    # Z

    .prologue
    const/16 v5, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1346
    const-string v0, "KeyguardNature3"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "visible = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isMusicPlaying() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->shouldShowMusicPanel()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mMusicPanelShowing = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mMusicPanelShowing:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1347
    if-eqz p1, :cond_4

    .line 1348
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mMusicPanelShowing:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->shouldShowMusicPanel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1349
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mMusicPanel:Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;

    invoke-virtual {v0, v2}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->setVisibility(I)V

    .line 1350
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mMusicPanel:Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->updateMusicInfoAndState()V

    .line 1351
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mDate:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1352
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->onMusicPanelVisibilityChanged(Z)V

    .line 1353
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mMusicPanelShowing:Z

    .line 1354
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->cancelUnlockTipAnim()V

    .line 1355
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mOnResume:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsFlingUp:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->setBlurBackground(ZZ)V

    .line 1356
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsQuickChargingShowing:Z

    if-eqz v0, :cond_0

    .line 1357
    const/4 v0, 0x2

    iget-boolean v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mOnResume:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsFlingUp:Z

    if-nez v3, :cond_3

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->hideQuickChargeView(IZ)V

    .line 1359
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->removeChargingInfoAnim()V

    .line 1372
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v0, v2

    .line 1355
    goto :goto_0

    :cond_3
    move v1, v2

    .line 1357
    goto :goto_1

    .line 1363
    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mMusicPanelShowing:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->shouldShowMusicPanel()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1364
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mMusicPanel:Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;

    invoke-virtual {v0, v5}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->setVisibility(I)V

    .line 1365
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mDate:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1366
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->onMusicPanelVisibilityChanged(Z)V

    .line 1367
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mMusicPanelShowing:Z

    .line 1368
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mOnResume:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsFlingUp:Z

    if-nez v0, :cond_5

    :goto_3
    invoke-direct {p0, v2, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->setBlurBackground(ZZ)V

    .line 1369
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->removeChargingInfoAnim()V

    goto :goto_2

    :cond_5
    move v1, v2

    .line 1368
    goto :goto_3
.end method

.method private setWallpaper(Landroid/view/View;Lcom/android/systemui/vivo/common/keyguard/nature/widget/MovableDrawable;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "wallpaper"    # Lcom/android/systemui/vivo/common/keyguard/nature/widget/MovableDrawable;

    .prologue
    .line 2185
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->setWallpaper(Landroid/view/View;Lcom/android/systemui/vivo/common/keyguard/nature/widget/MovableDrawable;Z)V

    .line 2186
    return-void
.end method

.method private setWallpaper(Landroid/view/View;Lcom/android/systemui/vivo/common/keyguard/nature/widget/MovableDrawable;Z)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "wallpaper"    # Lcom/android/systemui/vivo/common/keyguard/nature/widget/MovableDrawable;
    .param p3, "force"    # Z

    .prologue
    .line 2189
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/android/systemui/vivo/common/keyguard/nature/widget/MovableDrawable;->isClipped()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_1

    .line 2190
    :cond_0
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mScreenWidth:I

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mScreenHeight:I

    invoke-virtual {p2, v0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/widget/MovableDrawable;->reset(II)V

    .line 2192
    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2193
    return-void
.end method

.method private shouldMoveShortcutCover()Z
    .locals 1

    .prologue
    .line 743
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mTouchOnShortcut:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsCameraClicked:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldMoveWallpaper()Z
    .locals 1

    .prologue
    .line 747
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mTouchOnShortcut:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsCameraClicked:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->ifShowLiveWallpaper()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldShowMusicPanel()Z
    .locals 1

    .prologue
    .line 1707
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->getIsPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->getIsPrivate()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldUpdateBlurCover()Z
    .locals 1

    .prologue
    .line 751
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsNotificationEmpty:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsQuickCharging:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mMusicPanelShowing:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showChargeView()V
    .locals 2

    .prologue
    .line 1130
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mOnResume:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mPluggedIn:Z

    if-eqz v0, :cond_1

    .line 1131
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsBouncer:Z

    if-nez v0, :cond_0

    .line 1132
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->setAlpha(F)V

    .line 1134
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->setVisibility(I)V

    .line 1135
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsCharged:Z

    if-eqz v0, :cond_2

    .line 1136
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->stopChargeAnimation()V

    .line 1141
    :cond_1
    :goto_0
    return-void

    .line 1138
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->startChargeAnimation()V

    goto :goto_0
.end method

.method private showQuickChargeViewIfNeed(Z)V
    .locals 4
    .param p1, "anim"    # Z

    .prologue
    const/4 v3, 0x1

    .line 1149
    sget-object v0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showQuickChargeView MusicShowing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->shouldShowMusicPanel()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", NotificationEmpty = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsNotificationEmpty:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1152
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsQuickCharging:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsNotificationEmpty:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mMusicPanelShowing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mPluggedIn:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsCharged:Z

    if-eqz v0, :cond_2

    .line 1158
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->showChargeView()V

    .line 1183
    :cond_1
    :goto_0
    return-void

    .line 1161
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mQuickChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;

    if-eqz v0, :cond_1

    .line 1162
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsQuickChargingShowing:Z

    if-nez v0, :cond_1

    .line 1163
    sget-object v0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showQuickChargeView PluggedIn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mPluggedIn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Charged = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsCharged:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1164
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mPluggedIn:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsCharged:Z

    if-nez v0, :cond_1

    .line 1165
    iput-boolean v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsQuickChargingShowing:Z

    .line 1167
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->hideChargeView()V

    .line 1168
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mQuickChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->setVisibility(I)V

    .line 1169
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsBouncer:Z

    if-eqz v0, :cond_3

    .line 1170
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mQuickChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mScreenHeight:I

    neg-int v1, v1

    int-to-float v1, v1

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->setTranslationY(F)V

    .line 1174
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mQuickChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mBatteryLevel:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->onBatteryChanged(I)V

    .line 1175
    if-eqz p1, :cond_4

    .line 1176
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->cancelUnlockTipAnim()V

    .line 1177
    invoke-direct {p0, v3, p1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->setBlurBackground(ZZ)V

    .line 1181
    :goto_2
    sget-object v0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->TAG:Ljava/lang/String;

    const-string v1, "showQuickChargeView done"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1172
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mQuickChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->setTranslationY(F)V

    goto :goto_1

    .line 1179
    :cond_4
    invoke-direct {p0, v3, p1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->setBlurBackground(ZZ)V

    goto :goto_2
.end method

.method private showShortcutTips()V
    .locals 11

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 947
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mShortcutTipsAnim:Landroid/animation/AnimatorSet;

    if-nez v4, :cond_2

    .line 948
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mShortcutTipsAnim:Landroid/animation/AnimatorSet;

    .line 949
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mShortcutTipsAnim:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0xc8

    invoke-virtual {v4, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 950
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mMainContainer:Landroid/view/ViewGroup;

    const-string v5, "translationY"

    new-array v6, v2, [F

    iget v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mShortcutTipHeight:I

    neg-int v7, v7

    int-to-float v7, v7

    aput v7, v6, v3

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 951
    .local v1, "mainOffset":Landroid/animation/ObjectAnimator;
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->shouldMoveWallpaper()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 952
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->shouldMoveShortcutCover()Z

    move-result v4

    if-nez v4, :cond_3

    move v0, v2

    .line 953
    .local v0, "clip":Z
    :goto_0
    new-instance v4, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$13;

    invoke-direct {v4, p0, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$13;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;Z)V

    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 966
    .end local v0    # "clip":Z
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->shouldMoveShortcutCover()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 967
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mShortcutCover:Landroid/view/View;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 968
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mShortcutTipsAnim:Landroid/animation/AnimatorSet;

    new-array v5, v2, [Landroid/animation/Animator;

    iget-object v6, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mShortcutCover:Landroid/view/View;

    const-string v7, "translationY"

    new-array v8, v2, [F

    iget v9, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mScreenHeight:I

    iget v10, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mShortcutTipHeight:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    aput v9, v8, v3

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 970
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mShortcutTipsAnim:Landroid/animation/AnimatorSet;

    new-array v2, v2, [Landroid/animation/Animator;

    aput-object v1, v2, v3

    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 971
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mShortcutTipsAnim:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$14;

    invoke-direct {v3, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$14;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 977
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mShortcutTipsAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 979
    .end local v1    # "mainOffset":Landroid/animation/ObjectAnimator;
    :cond_2
    return-void

    .restart local v1    # "mainOffset":Landroid/animation/ObjectAnimator;
    :cond_3
    move v0, v3

    .line 952
    goto :goto_0

    .line 960
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->shouldUpdateBlurCover()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1
.end method

.method private showUnlockIndicator(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    .line 505
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mOnResume:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsUnlockIndicatorShowing:Z

    if-ne p1, v0, :cond_1

    .line 518
    :cond_0
    :goto_0
    return-void

    .line 508
    :cond_1
    const-string v0, "KeyguardNature3"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unlock indicator showing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsUnlockIndicatorShowing:Z

    .line 510
    if-eqz p1, :cond_3

    .line 511
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mShortcutTouchHelper:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->reset(Z)V

    .line 517
    :cond_2
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->fadeViews(Z)V

    goto :goto_0

    .line 513
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mTouchOnShortcut:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->isSecure()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->ifShowLiveWallpaper()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 515
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mShortcutTouchHelper:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->animateHideLeftRightIcon()V

    goto :goto_1
.end method

.method private showUnlockTipAnim()V
    .locals 4

    .prologue
    .line 2123
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mUnlockTipAnim:Landroid/animation/ValueAnimator;

    .line 2124
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mUnlockTipAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2125
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mUnlockTipAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$BounceInterpolator;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$BounceInterpolator;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$1;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2126
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mUnlockTipAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$27;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$27;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2137
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mUnlockTipAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$28;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$28;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2163
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mUnlockTipAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 2164
    return-void

    .line 2123
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startUnlockIndicatorAnim()V
    .locals 3

    .prologue
    .line 815
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIndicatorAnimList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 816
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIndicatorAnimList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 817
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIndicatorAnimList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ObjectAnimator;

    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 818
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIndicatorAnimList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 815
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 821
    :cond_1
    return-void
.end method

.method private stayInBlurBackground()Z
    .locals 1

    .prologue
    .line 755
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsBouncer:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->isPinPuk:Z

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mMusicPanelShowing:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsMusicPlaying:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsNotificationEmpty:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsQuickChargingShowing:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private stopUnlockIndicatorAnim()V
    .locals 3

    .prologue
    .line 824
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIndicatorAnimList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 825
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIndicatorAnimList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ObjectAnimator;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 826
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIndicatorAnimList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->end()V

    .line 824
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 828
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mUnlockIndicatorAnimRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 829
    return-void
.end method

.method private updateChargingInfo()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1988
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsBouncer:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mPluggedIn:Z

    if-eqz v0, :cond_0

    .line 1989
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mChargeInfoShowing:Z

    .line 1990
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mMusicPanelShowing:Z

    if-eqz v0, :cond_1

    .line 1991
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mSongNameView:Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;->setEnableMarquee(Z)V

    .line 1992
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mSongNameView:Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mChargingInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;->setText(Ljava/lang/String;)V

    .line 1997
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mhideChargingInfoAnimRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1998
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mhideChargingInfoAnimRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2000
    :cond_0
    return-void

    .line 1994
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mDate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mChargingInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1995
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mDate:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mChargingSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0
.end method

.method private updateCustomizeInfo()V
    .locals 1

    .prologue
    .line 1313
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$16;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$16;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)V

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$16;->start()V

    .line 1323
    return-void
.end method

.method private updateMusicPanel()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1326
    const-string v2, "KeyguardNature3"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isMusicPlaying() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->shouldShowMusicPanel()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mMusicPanelShowing = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mMusicPanelShowing:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1327
    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mMusicPanelShowing:Z

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->shouldShowMusicPanel()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1328
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mMusicPanel:Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;

    invoke-virtual {v2, v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->setVisibility(I)V

    .line 1329
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mMusicPanel:Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->updateMusicInfoAndState()V

    .line 1330
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->onMusicPanelVisibilityChanged(Z)V

    .line 1332
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mMusicPanelShowing:Z

    .line 1333
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->removeChargingInfoAnim()V

    .line 1334
    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mOnResume:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsFlingUp:Z

    if-nez v2, :cond_0

    move v0, v1

    :cond_0
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->setBlurBackground(ZZ)V

    .line 1343
    :cond_1
    :goto_0
    return-void

    .line 1335
    :cond_2
    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mMusicPanelShowing:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->shouldShowMusicPanel()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1336
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mMusicPanel:Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->setVisibility(I)V

    .line 1337
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->onMusicPanelVisibilityChanged(Z)V

    .line 1339
    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mMusicPanelShowing:Z

    .line 1340
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->updateChargingInfo()V

    .line 1341
    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mOnResume:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsFlingUp:Z

    if-nez v2, :cond_3

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->setBlurBackground(ZZ)V

    goto :goto_0

    :cond_3
    move v1, v0

    goto :goto_1
.end method

.method private updateShortcutView()V
    .locals 4

    .prologue
    const v3, 0x7f0202a8

    const v2, 0x7f0202a7

    .line 1904
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->updateShortcutVisibility()V

    .line 1905
    const-string v0, "com.android.dialer.TwelveKeyDialer"

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mLeftCls:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.android.dialer"

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mLeftPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1907
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mLeftShortcut:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageResource(I)V

    .line 1916
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mLeftShortcut:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->updateViewsColor()V

    .line 1918
    const-string v0, "com.android.dialer.TwelveKeyDialer"

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mRightCls:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "com.android.dialer"

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mRightPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1920
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mRightShortcut:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageResource(I)V

    .line 1929
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mRightShortcut:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->updateViewsColor()V

    .line 1930
    return-void

    .line 1908
    :cond_0
    const-string v0, "com.android.camera.CameraActivity"

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mLeftCls:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.android.camera"

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mLeftPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1910
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mLeftShortcut:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageResource(I)V

    goto :goto_0

    .line 1911
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mLeftShortcutExists:Z

    if-eqz v0, :cond_2

    .line 1912
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mLeftShortcut:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mLeftIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1914
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mLeftShortcut:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageResource(I)V

    goto :goto_0

    .line 1921
    :cond_3
    const-string v0, "com.android.camera.CameraActivity"

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mRightCls:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "com.android.camera"

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mRightPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1923
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mRightShortcut:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageResource(I)V

    goto :goto_1

    .line 1924
    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mRightShortcutExists:Z

    if-eqz v0, :cond_5

    .line 1925
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mRightShortcut:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mRightIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 1927
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mRightShortcut:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setImageResource(I)V

    goto :goto_1
.end method

.method private updateShortcutVisibility()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v2, 0x0

    .line 1866
    const/4 v0, 0x0

    .line 1867
    .local v0, "hidePkg":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mContext:Landroid/content/Context;

    const-string v4, "visit_password"

    invoke-static {v3, v4, v2}, Lcom/android/systemui/vivo/common/keyguard/utils/KeyguardUtils;->settingsGetInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x1

    .line 1868
    .local v1, "isVisitorMode":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 1869
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/keyguard/utils/KeyguardUtils;->getVisitHideApps(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1871
    :cond_0
    const-string v3, ""

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mLeftCls:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mLeftPkg:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mLeftCls:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsLeftDouble:Z

    invoke-direct {p0, v3, v4, v5}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->isActivityAvailable(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mLeftPkg:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1873
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mLeftShortcut:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v3, v6}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setVisibility(I)V

    .line 1878
    :goto_1
    const-string v3, ""

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mRightCls:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mRightPkg:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mRightCls:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsRightDouble:Z

    invoke-direct {p0, v3, v4, v5}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->isActivityAvailable(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mRightPkg:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1880
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mRightShortcut:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v2, v6}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setVisibility(I)V

    .line 1884
    :goto_2
    return-void

    .end local v1    # "isVisitorMode":Z
    :cond_3
    move v1, v2

    .line 1867
    goto :goto_0

    .line 1875
    .restart local v1    # "isVisitorMode":Z
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mLeftShortcut:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setVisibility(I)V

    goto :goto_1

    .line 1882
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mRightShortcut:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setVisibility(I)V

    goto :goto_2
.end method

.method private updateViewsColor()V
    .locals 1

    .prologue
    .line 1449
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$18;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$18;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)V

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$18;->start()V

    .line 1475
    return-void
.end method

.method private updateViewsColor(II)V
    .locals 10
    .param p1, "topValue"    # I
    .param p2, "bottomValue"    # I

    .prologue
    const/4 v9, -0x1

    const v8, -0xb4b4b5

    const/16 v7, 0xb4

    const v6, -0x19000001

    const v5, -0x19b4b4b5    # -2.4000733E23f

    .line 1244
    const-string v2, "KeyguardNature3"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bottomValue =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", LIGHT_GRAY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", topValue = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", DARK_GRAY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x96

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 1247
    const-string v2, "KeyguardNature3"

    const-string v3, "updateViewsColor(0,0) setBlurWallPaperShowing(true)"

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->setBlurWallPaperShowing(Z)V

    .line 1254
    :goto_0
    if-le p1, v7, :cond_2

    .line 1255
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mTimeDateBg:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1256
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mDigitalClock:Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mDigitalImagesDark:[I

    const v4, 0x7f0202f0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->updateViewsColor([III)V

    .line 1260
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mDate:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1261
    invoke-direct {p0, v5}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->setCarrierInfoColor(I)V

    .line 1279
    :goto_1
    if-le p2, v7, :cond_5

    .line 1280
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mUnlockIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 1281
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mUnlockIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1282
    .local v1, "view":Landroid/view/View;
    instance-of v2, v1, Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 1283
    check-cast v1, Landroid/widget/ImageView;

    .end local v1    # "view":Landroid/view/View;
    const v2, 0x7f0202f4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1280
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1250
    .end local v0    # "i":I
    :cond_1
    const-string v2, "KeyguardNature3"

    const-string v3, "updateViewsColor with wallpaper, setBlurWallPaperShowing(false)"

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1251
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->setBlurWallPaperShowing(Z)V

    goto :goto_0

    .line 1264
    :cond_2
    const/16 v2, 0x96

    if-le p1, v2, :cond_3

    .line 1265
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mTimeDateBg:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1270
    :goto_3
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mDigitalClock:Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mDigitalImages:[I

    const v4, 0x7f0202f2

    invoke-virtual {v2, v3, v4, v6}, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->updateViewsColor([III)V

    .line 1274
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mDate:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1275
    invoke-direct {p0, v6}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->setCarrierInfoColor(I)V

    goto :goto_1

    .line 1267
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mTimeDateBg:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 1286
    .restart local v0    # "i":I
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mLeftShortcut:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v2, v8}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setViewsColor(I)V

    .line 1287
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mRightShortcut:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v2, v8}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setViewsColor(I)V

    .line 1298
    :goto_4
    return-void

    .line 1289
    .end local v0    # "i":I
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_5
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mUnlockIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_7

    .line 1290
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mUnlockIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1291
    .restart local v1    # "view":Landroid/view/View;
    instance-of v2, v1, Landroid/widget/ImageView;

    if-eqz v2, :cond_6

    .line 1292
    check-cast v1, Landroid/widget/ImageView;

    .end local v1    # "view":Landroid/view/View;
    const v2, 0x7f0202f3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1289
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1295
    :cond_7
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mLeftShortcut:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v2, v9}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setViewsColor(I)V

    .line 1296
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mRightShortcut:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {v2, v9}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setViewsColor(I)V

    goto :goto_4
.end method

.method private updateViewsColorLiveWallpaper()V
    .locals 1

    .prologue
    .line 1478
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$19;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$19;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;)V

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3$19;->start()V

    .line 1508
    return-void
.end method

.method private updateWallpaper()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1209
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1210
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1211
    return-void
.end method


# virtual methods
.method protected addQuickChargeView()V
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 2088
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mQuickChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;

    if-nez v1, :cond_0

    .line 2089
    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mQuickChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;

    .line 2090
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2093
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2094
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mMainContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mQuickChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2095
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mQuickChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->setVisibility(I)V

    .line 2097
    .end local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public dismissWithAnim()Z
    .locals 1

    .prologue
    .line 2101
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1015
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->userActivity()V

    .line 1016
    invoke-super {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onBatteryChanged(ZZIZ)V
    .locals 6
    .param p1, "pluggedIn"    # Z
    .param p2, "isCharged"    # Z
    .param p3, "level"    # I
    .param p4, "isLowLevel"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1641
    const-string v2, "KeyguardNature3"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pluggedIn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isCharged = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", BatteryLevel = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1642
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

    invoke-virtual {v2, p3}, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->setLevel(I)V

    .line 1643
    iput-boolean p2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsCharged:Z

    .line 1644
    iput p3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mBatteryLevel:I

    .line 1645
    if-eqz p2, :cond_2

    .line 1646
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mContext:Landroid/content/Context;

    const v3, 0x7f0e0179

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mChargingInfo:Ljava/lang/String;

    .line 1654
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mPluggedIn:Z

    .line 1656
    if-eqz p1, :cond_7

    .line 1657
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->updateChargingInfo()V

    .line 1658
    if-eqz p2, :cond_5

    .line 1659
    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mOnResume:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsFlingUp:Z

    if-nez v2, :cond_4

    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->hideQuickChargeView(IZ)V

    .line 1668
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mQuickChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsQuickChargingShowing:Z

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    .line 1669
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mChargeInfoShowing:Z

    if-eqz v0, :cond_0

    .line 1670
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mDate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mChargingInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1671
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mMusicPanelShowing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mSongNameView:Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mChargingInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;->setText(Ljava/lang/String;)V

    .line 1673
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mQuickChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mBatteryLevel:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->onBatteryChanged(I)V

    .line 1675
    :cond_1
    return-void

    .line 1648
    :cond_2
    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsQuickCharging:Z

    if-eqz v2, :cond_3

    .line 1649
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mContext:Landroid/content/Context;

    const v3, 0x7f0e01a8

    new-array v4, v0, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mBatteryLevel:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mChargingInfo:Ljava/lang/String;

    goto :goto_0

    .line 1651
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mContext:Landroid/content/Context;

    const v3, 0x7f0e0178

    new-array v4, v0, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mBatteryLevel:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mChargingInfo:Ljava/lang/String;

    goto :goto_0

    :cond_4
    move v0, v1

    .line 1659
    goto :goto_1

    .line 1661
    :cond_5
    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mOnResume:Z

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsFlingUp:Z

    if-nez v2, :cond_6

    :goto_3
    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->showQuickChargeViewIfNeed(Z)V

    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_3

    .line 1664
    :cond_7
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->removeChargingInfoAnim()V

    .line 1665
    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mOnResume:Z

    if-eqz v3, :cond_8

    iget-boolean v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsFlingUp:Z

    if-nez v3, :cond_8

    :goto_4
    invoke-direct {p0, v2, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->hideQuickChargeView(IZ)V

    .line 1666
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mChargeInfoShowing:Z

    goto :goto_2

    :cond_8
    move v0, v1

    .line 1665
    goto :goto_4
.end method

.method public onBouncerChanged(Z)V
    .locals 5
    .param p1, "bouncer"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1755
    const-string v0, "KeyguardNature3"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBouncerChanged bouncer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", secureCameraLauching = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsSecureCameraLauching:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1756
    if-eqz p1, :cond_2

    .line 1757
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->cancelFlingAnim()V

    .line 1758
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->cancelNotificationAnim()V

    .line 1759
    iput-boolean v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mCancleDismiss:Z

    .line 1761
    iput-boolean v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsCameraClicked:Z

    .line 1763
    const/16 v0, 0xc8

    invoke-direct {p0, v4, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->fling(ZI)V

    .line 1764
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsBouncer:Z

    if-ne v0, p1, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsNotificationEmpty:Z

    if-nez v0, :cond_1

    .line 1765
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mNotificationView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1769
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsSecureCameraLauching:Z

    if-eqz v0, :cond_0

    .line 1770
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mHideCameraPreview:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1771
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mShortcutCover:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mScreenHeight:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 1778
    :cond_0
    :goto_1
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsBouncer:Z

    .line 1779
    return-void

    .line 1767
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->showUnlockIndicator(Z)V

    goto :goto_0

    .line 1774
    :cond_2
    const/16 v0, 0x1f4

    invoke-direct {p0, v3, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->fling(ZI)V

    .line 1775
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mShortcutTouchHelper:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;

    invoke-virtual {v0, v4}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->reset(Z)V

    .line 1776
    iput-boolean v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mDismissing:Z

    goto :goto_1
.end method

.method public onCarrierInfoChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 2212
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mCarrierInfoView:Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;

    if-eqz v0, :cond_0

    .line 2213
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mCarrierInfoView:Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;->updateSimInfo(Ljava/lang/String;)V

    .line 2215
    :cond_0
    return-void
.end method

.method public onChargingModeChanged(Z)V
    .locals 6
    .param p1, "quick"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2106
    const-string v2, "KeyguardNature3"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "is quick = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2107
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsQuickCharging:Z

    .line 2108
    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsQuickCharging:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsCharged:Z

    if-nez v2, :cond_1

    .line 2109
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mContext:Landroid/content/Context;

    const v3, 0x7f0e01a8

    new-array v4, v0, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mBatteryLevel:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mChargingInfo:Ljava/lang/String;

    .line 2110
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->updateChargingInfo()V

    .line 2111
    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mOnResume:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsFlingUp:Z

    if-nez v2, :cond_0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->showQuickChargeViewIfNeed(Z)V

    .line 2119
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 2111
    goto :goto_0

    .line 2114
    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsCharged:Z

    if-nez v2, :cond_2

    .line 2115
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mContext:Landroid/content/Context;

    const v3, 0x7f0e0178

    new-array v4, v0, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mBatteryLevel:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mChargingInfo:Ljava/lang/String;

    .line 2117
    :cond_2
    const/4 v2, 0x7

    iget-boolean v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mOnResume:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsFlingUp:Z

    if-nez v3, :cond_3

    :goto_2
    invoke-direct {p0, v2, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->hideQuickChargeView(IZ)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public onCleanup()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1613
    const-string v0, "KeyguardNature3"

    const-string v1, "onCleanup."

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1614
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mHideCameraPreview:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1615
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mKeyguardMusicManagerCallback:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->removeCallback(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;)V

    .line 1616
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIndicatorAnimList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1617
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIndicatorAnimList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1618
    iput-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIndicatorAnimList:Ljava/util/ArrayList;

    .line 1621
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mBgView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1622
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mBgView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1625
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mBlurCover:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1626
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mBlurCover:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1629
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mBlurWallpaper:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mBlurWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1630
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mBlurWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1631
    iput-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mBlurWallpaper:Landroid/graphics/Bitmap;

    .line 1633
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mWallpaper:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1634
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1635
    iput-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mWallpaper:Landroid/graphics/Bitmap;

    .line 1637
    :cond_4
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 439
    invoke-super {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 440
    const-string v2, "KeyguardNature3"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onConfigurationChanged PluggedIn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mPluggedIn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Charged="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsCharged:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mLocale:Ljava/util/Locale;

    .line 442
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mDate:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mLocale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextLocale(Ljava/util/Locale;)V

    .line 443
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mShortcutIndicatorInfo:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mLocale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextLocale(Ljava/util/Locale;)V

    .line 444
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mContext:Landroid/content/Context;

    const v3, 0x7f0e000d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mDateString:Ljava/lang/String;

    .line 445
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->refreshDayDate()V

    .line 446
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mShortcutIndicatorInfo:Landroid/widget/TextView;

    const v3, 0x7f0e01a7

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 447
    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mPluggedIn:Z

    if-eqz v2, :cond_0

    .line 448
    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsCharged:Z

    if-eqz v2, :cond_2

    .line 449
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mContext:Landroid/content/Context;

    const v3, 0x7f0e0179

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mChargingInfo:Ljava/lang/String;

    .line 450
    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mOnResume:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsFlingUp:Z

    if-nez v2, :cond_1

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->hideQuickChargeView(IZ)V

    .line 460
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 450
    goto :goto_0

    .line 452
    :cond_2
    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsQuickCharging:Z

    if-eqz v2, :cond_3

    .line 453
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mContext:Landroid/content/Context;

    const v3, 0x7f0e01a8

    new-array v4, v0, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mBatteryLevel:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mChargingInfo:Ljava/lang/String;

    .line 457
    :goto_2
    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mOnResume:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsFlingUp:Z

    if-nez v2, :cond_4

    :goto_3
    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->showQuickChargeViewIfNeed(Z)V

    goto :goto_1

    .line 455
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mContext:Landroid/content/Context;

    const v3, 0x7f0e0178

    new-array v4, v0, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mBatteryLevel:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mChargingInfo:Ljava/lang/String;

    goto :goto_2

    :cond_4
    move v0, v1

    .line 457
    goto :goto_3
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 377
    const v0, 0x7f110176

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mBgShadowView:Landroid/view/View;

    .line 378
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->ifShowLiveWallpaper()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mBgShadowView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 381
    :cond_0
    const v0, 0x7f110178

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mBgView:Landroid/view/View;

    .line 382
    const v0, 0x7f110149

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mBlurCover:Landroid/view/View;

    .line 383
    const v0, 0x7f110182

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mShortcutCover:Landroid/view/View;

    .line 384
    const v0, 0x7f110183

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mShortcutIndicator:Landroid/view/View;

    .line 385
    const v0, 0x7f110184

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mShortcutIndicatorInfo:Landroid/widget/TextView;

    .line 387
    const v0, 0x7f110185

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

    .line 389
    const v0, 0x7f110186

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mTimeDateBg:Landroid/view/View;

    .line 390
    const v0, 0x7f110062

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mDate:Landroid/widget/TextView;

    .line 391
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mContext:Landroid/content/Context;

    const v1, 0x7f0e000d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mDateString:Ljava/lang/String;

    .line 392
    const v0, 0x7f110082

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mDigitalClock:Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;

    .line 393
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mDigitalClock:Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->setForceCenter(Z)V

    .line 394
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mDigitalClock:Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->disableAmPmShadow()V

    .line 395
    const v0, 0x7f110192

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mUnlockIndicator:Landroid/widget/LinearLayout;

    .line 397
    const v0, 0x7f110163

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mMainContainer:Landroid/view/ViewGroup;

    .line 398
    invoke-super {p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->onFinishInflate()V

    .line 399
    const v0, 0x7f110187

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mUnreadPanel:Landroid/view/View;

    .line 401
    const v0, 0x7f110146

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mShortcutArea:Landroid/widget/FrameLayout;

    .line 402
    const v0, 0x7f110148

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mLeftShortcut:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 403
    const v0, 0x7f110147

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mRightShortcut:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 404
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mLeftShortcut:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mLeftRightIconListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 405
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mRightShortcut:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mLeftRightIconListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 406
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mHelperCallback:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper$Callback;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;-><init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper$Callback;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mShortcutTouchHelper:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;

    .line 407
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/ActivityStarter;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mCameraLauncher:Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;

    .line 409
    const v0, 0x7f110193

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mMusicPanel:Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;

    .line 410
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mKeyguardMusicManagerCallback:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->registerCallback(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;)V

    .line 411
    const v0, 0x7f110195

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mSongNameView:Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;

    .line 414
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->updateCustomizeInfo()V

    .line 415
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->createAnims()V

    .line 417
    const-string v0, "KeyguardNature3"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TH-TRUEMOVE -> ISTH = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/vivo/common/keyguard/utils/KeyguardUtils;->COUNTRY_NUM:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    invoke-static {}, Lcom/android/systemui/vivo/common/keyguard/utils/KeyguardUtils;->isUnicomEntry()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "TH"

    sget-object v1, Lcom/android/systemui/vivo/common/keyguard/utils/KeyguardUtils;->COUNTRY_NUM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 419
    :cond_1
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mCarrierInfoView:Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;

    .line 420
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mMainContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mCarrierInfoView:Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 422
    :cond_2
    return-void
.end method

.method public onHide(Z)V
    .locals 3
    .param p1, "bouncer"    # Z

    .prologue
    .line 1603
    const-string v0, "KeyguardNature3"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHide, Bouncer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", keyguardShowing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->isInKeyguardState()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1604
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsBouncer:Z

    .line 1605
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->onPause()V

    .line 1606
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->isInKeyguardState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1607
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->setMusicPanelVisible(Z)V

    .line 1609
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1010
    invoke-super {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyPressed(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2197
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2198
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2207
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->onKeyPressed(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 2201
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mOnResume:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mMusicPanelShowing:Z

    if-eqz v0, :cond_0

    .line 2202
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->userActivity()V

    goto :goto_0

    .line 2198
    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onKeyguardVisibilityChanged(Z)V
    .locals 6
    .param p1, "showing"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 1712
    invoke-super {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->onKeyguardVisibilityChanged(Z)V

    .line 1713
    const-string v0, "KeyguardNature3"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyguardVisibilityChanged showing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Bouncer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsBouncer:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1714
    if-eqz p1, :cond_2

    .line 1716
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->stayInBlurBackground()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1717
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mBgView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mBlurWallpaperDrawable:Lcom/android/systemui/vivo/common/keyguard/nature/widget/MovableDrawable;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->setWallpaper(Landroid/view/View;Lcom/android/systemui/vivo/common/keyguard/nature/widget/MovableDrawable;)V

    .line 1718
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mBlurCover:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1724
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->updateShortcutVisibility()V

    .line 1725
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->updateCustomizeInfo()V

    .line 1726
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsBouncer:Z

    if-nez v0, :cond_0

    .line 1727
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->setAlpha(F)V

    .line 1728
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mUnlockIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1729
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mShortcutTouchHelper:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;

    invoke-virtual {v0, v5}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->reset(Z)V

    .line 1731
    :cond_0
    invoke-direct {p0, v5}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->setMusicPanelVisible(Z)V

    .line 1732
    invoke-direct {p0, v4}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->showQuickChargeViewIfNeed(Z)V

    .line 1738
    :goto_1
    return-void

    .line 1720
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mBgView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mWallpaperDrawable:Lcom/android/systemui/vivo/common/keyguard/nature/widget/MovableDrawable;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->setWallpaper(Landroid/view/View;Lcom/android/systemui/vivo/common/keyguard/nature/widget/MovableDrawable;)V

    .line 1721
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mBlurCover:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 1734
    :cond_2
    const/4 v0, 0x4

    invoke-direct {p0, v0, v4}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->hideQuickChargeView(IZ)V

    .line 1735
    iput-boolean v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mDismissing:Z

    .line 1736
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->recycleShortcutIcon()V

    goto :goto_1
.end method

.method public onNotificationChanged(ZZ)V
    .locals 7
    .param p1, "empty"    # Z
    .param p2, "retain"    # Z

    .prologue
    const/4 v6, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1690
    const-string v0, "KeyguardNature3"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onNotificationChanged: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1691
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsNotificationEmpty:Z

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsRetain:Z

    if-eq v0, p2, :cond_1

    .line 1692
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsNotificationEmpty:Z

    .line 1693
    iput-boolean p2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsRetain:Z

    .line 1694
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1695
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mHandler:Landroid/os/Handler;

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsNotificationEmpty:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsRetain:Z

    if-eqz v3, :cond_3

    move v3, v1

    :goto_1
    invoke-virtual {v5, v6, v0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1698
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsNotificationEmpty:Z

    if-eqz v0, :cond_5

    .line 1699
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mOnResume:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsFlingUp:Z

    if-nez v0, :cond_4

    :goto_2
    invoke-direct {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->showQuickChargeViewIfNeed(Z)V

    .line 1704
    :cond_1
    :goto_3
    return-void

    :cond_2
    move v0, v2

    .line 1695
    goto :goto_0

    :cond_3
    move v3, v2

    goto :goto_1

    :cond_4
    move v1, v2

    .line 1699
    goto :goto_2

    .line 1701
    :cond_5
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mOnResume:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsFlingUp:Z

    if-nez v0, :cond_6

    move v2, v1

    :cond_6
    invoke-direct {p0, v1, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->hideQuickChargeView(IZ)V

    goto :goto_3
.end method

.method public onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1588
    const-string v0, "KeyguardNature3"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause, Bouncer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsBouncer:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1589
    iput-boolean v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mOnResume:Z

    .line 1590
    const/4 v0, 0x4

    invoke-direct {p0, v0, v3}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->hideQuickChargeView(IZ)V

    .line 1591
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->resetViewStatesOnPause()V

    .line 1592
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->stopUnlockIndicatorAnim()V

    .line 1593
    iput-boolean v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsSecureCameraLauching:Z

    .line 1594
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsBouncer:Z

    if-nez v0, :cond_0

    .line 1595
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->resetAnims()V

    .line 1596
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mShortcutTouchHelper:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->reset(Z)V

    .line 1598
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->removeChargingInfoAnim()V

    .line 1599
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 1512
    const-string v0, "KeyguardNature3"

    const-string v1, "onResume."

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1513
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mOnResume:Z

    .line 1514
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->resetViewStatesOnResume()V

    .line 1515
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 1579
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->onSizeChanged(IIII)V

    .line 1580
    iput p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mScreenWidth:I

    .line 1581
    iput p2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mScreenHeight:I

    .line 1582
    const-string v0, "KeyguardNature3"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mScreenWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mScreenWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mScreenHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mScreenHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1583
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->resetWallPaper(Z)V

    .line 1584
    return-void
.end method

.method public onThemeChanged()V
    .locals 2

    .prologue
    .line 465
    invoke-super {p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->onThemeChanged()V

    .line 466
    const-string v0, "KeyguardNature3"

    const-string v1, "onThemeChanged"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->recycleShortcutIcon()V

    .line 468
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->updateCustomizeInfo()V

    .line 469
    return-void
.end method

.method public onTimeChanged()V
    .locals 1

    .prologue
    .line 1679
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mDigitalClock:Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->updateTime()V

    .line 1680
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->refreshDayDate()V

    .line 1681
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1021
    iget-object v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mDoubleClickHelper:Lcom/android/systemui/vivo/common/keyguard/KeyguardDoubleClickHelper;

    invoke-virtual {v7, p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardDoubleClickHelper;->onDoubleClick(Landroid/view/MotionEvent;)V

    .line 1022
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->cancelShortcutTipsAnim(Landroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1023
    const-string v7, "KeyguardNature3"

    const-string v10, "short cut tips showing"

    invoke-static {v7, v10}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    const/4 v7, 0x1

    .line 1120
    :goto_0
    return v7

    .line 1027
    :cond_0
    iget-boolean v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsBouncer:Z

    if-nez v7, :cond_1

    iget-boolean v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mOnResume:Z

    if-eqz v7, :cond_1

    iget-boolean v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsFlingUp:Z

    if-nez v7, :cond_1

    iget-boolean v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mDismissing:Z

    if-nez v7, :cond_1

    iget-boolean v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsSecureCameraLauching:Z

    if-nez v7, :cond_1

    iget-boolean v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mBlockTouches:Z

    if-eqz v7, :cond_2

    .line 1028
    :cond_1
    const-string v7, "KeyguardNature3"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "is bouncer = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsBouncer:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", resume = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mOnResume:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mIsFlingUp = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsFlingUp:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", dismissing = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mDismissing:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", secureCameraLauching = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsSecureCameraLauching:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mBlockTouches = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mBlockTouches:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    const/4 v7, 0x1

    goto :goto_0

    .line 1035
    :cond_2
    iget-boolean v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mTouchOnShortcut:Z

    if-eqz v7, :cond_3

    .line 1036
    iget-object v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mShortcutTouchHelper:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;

    invoke-virtual {v7, p1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1038
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 1120
    :cond_4
    :goto_1
    :pswitch_0
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 1040
    :pswitch_1
    const-string v7, "KeyguardNature3"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MotionEvent.ACTION_DOWN : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mMainContainer:Landroid/view/ViewGroup;

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mDragStarting:Z

    .line 1042
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mDownPosX:I

    .line 1043
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mDownPosY:I

    .line 1044
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->resetTouchState()V

    .line 1045
    iget-boolean v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mTouchOnShortcut:Z

    if-eqz v7, :cond_5

    .line 1046
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->showUnlockIndicator(Z)V

    .line 1047
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->showShortcutTips()V

    .line 1049
    :cond_5
    iget-boolean v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mFlinging:Z

    if-eqz v7, :cond_4

    iget-boolean v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsFlingUp:Z

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mMainContainer:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v7

    const/4 v10, 0x0

    cmpg-float v7, v7, v10

    if-gez v7, :cond_4

    .line 1050
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mTouchCancelFling:Z

    .line 1051
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->cancelFlingAnim()V

    .line 1052
    iget-object v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mMainContainer:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v7

    float-to-int v1, v7

    .line 1053
    .local v1, "deltaT":I
    iget v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mDownPosY:I

    sub-int/2addr v7, v1

    iput v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mDownPosY:I

    .line 1054
    invoke-direct {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->moveViews(I)V

    goto :goto_1

    .line 1059
    .end local v1    # "deltaT":I
    :pswitch_2
    iget-boolean v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mOnlyOneFinger:Z

    if-nez v7, :cond_6

    .line 1060
    const-string v7, "KeyguardNature3"

    const-string v10, "cancel ACTION_MOVE, two or more fingers!"

    invoke-static {v7, v10}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 1063
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    float-to-int v4, v7

    .line 1064
    .local v4, "movePosX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    float-to-int v5, v7

    .line 1065
    .local v5, "movePosY":I
    iget v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mDownPosY:I

    if-nez v7, :cond_7

    .line 1066
    iput v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mDownPosX:I

    .line 1067
    iput v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mDownPosY:I

    .line 1068
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->resetTouchState()V

    .line 1070
    :cond_7
    iget v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mDownPosY:I

    sub-int v7, v5, v7

    iget v10, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mShortcutTipOffset:I

    add-int v6, v7, v10

    .line 1071
    .local v6, "translationY":I
    if-gez v6, :cond_4

    iget-boolean v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mDragStarting:Z

    if-eqz v7, :cond_4

    .line 1072
    iget-boolean v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mTouchOnShortcut:Z

    if-nez v7, :cond_8

    iget-boolean v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsSecurityViewShowing:Z

    if-nez v7, :cond_8

    .line 1073
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->showUnlockIndicator(Z)V

    .line 1075
    :cond_8
    invoke-direct {p0, v6}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->moveViews(I)V

    goto/16 :goto_1

    .line 1080
    .end local v4    # "movePosX":I
    .end local v5    # "movePosY":I
    .end local v6    # "translationY":I
    :pswitch_3
    const-string v7, "KeyguardNature3"

    const-string v10, "MotionEvent.ACTION_UP"

    invoke-static {v7, v10}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mDragStarting:Z

    .line 1082
    iget-object v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mMainContainer:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v0

    .line 1083
    .local v0, "containerOffset":F
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mUpTime:J

    .line 1084
    iget-wide v10, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mUpTime:J

    iget-wide v12, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mDownTime:J

    sub-long v2, v10, v12

    .line 1085
    .local v2, "div":J
    const-wide/16 v8, 0x0

    .line 1086
    .local v8, "velocity":J
    const-wide/16 v10, 0x0

    cmp-long v7, v2, v10

    if-eqz v7, :cond_9

    .line 1087
    long-to-float v7, v2

    div-float v7, v0, v7

    float-to-long v8, v7

    .line 1089
    :cond_9
    iget-boolean v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mOnlyAffordanceInThisMotion:Z

    if-nez v7, :cond_d

    const/4 v7, 0x0

    cmpg-float v7, v0, v7

    if-gez v7, :cond_d

    .line 1090
    const-wide/16 v10, -0x2

    cmp-long v7, v8, v10

    if-lez v7, :cond_a

    neg-float v7, v0

    iget v10, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mUnlockDistanceThreshold:I

    int-to-float v10, v10

    cmpl-float v7, v7, v10

    if-lez v7, :cond_b

    :cond_a
    iget v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mDownPosY:I

    iget v10, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mScreenHeight:I

    div-int/lit8 v10, v10, 0x2

    if-le v7, v10, :cond_b

    iget-boolean v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mTouchOnShortcut:Z

    if-nez v7, :cond_b

    .line 1092
    const/4 v7, 0x1

    neg-long v10, v8

    float-to-int v12, v0

    neg-int v12, v12

    invoke-direct {p0, v10, v11, v12}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->getFlingDuration(JI)I

    move-result v10

    invoke-direct {p0, v7, v10}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->fling(ZI)V

    goto/16 :goto_1

    .line 1093
    :cond_b
    iget-boolean v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsSecurityViewShowing:Z

    if-eqz v7, :cond_c

    .line 1094
    const-string v7, "KeyguardNature3"

    const-string v10, "SecurityViewShowing"

    invoke-static {v7, v10}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    const/4 v7, 0x1

    const/16 v10, 0x96

    invoke-direct {p0, v7, v10}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->fling(ZI)V

    goto/16 :goto_1

    .line 1097
    :cond_c
    const/4 v7, 0x0

    const/16 v10, 0x1f4

    invoke-direct {p0, v7, v10}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->fling(ZI)V

    goto/16 :goto_1

    .line 1099
    :cond_d
    const/4 v7, 0x0

    cmpl-float v7, v0, v7

    if-ltz v7, :cond_4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    const-wide/16 v12, 0xc8

    cmp-long v7, v10, v12

    if-gez v7, :cond_4

    iget-boolean v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mTouchOnShortcut:Z

    if-nez v7, :cond_4

    .line 1100
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->showUnlockTipAnim()V

    goto/16 :goto_1

    .line 1105
    .end local v0    # "containerOffset":F
    .end local v2    # "div":J
    .end local v8    # "velocity":J
    :pswitch_4
    const-string v7, "KeyguardNature3"

    const-string v10, "MotionEvent.ACTION_CANCEL"

    invoke-static {v7, v10}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mDragStarting:Z

    .line 1107
    const/4 v7, 0x0

    const/16 v10, 0x1f4

    invoke-direct {p0, v7, v10}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->fling(ZI)V

    goto/16 :goto_1

    .line 1111
    :pswitch_5
    const-string v7, "KeyguardNature3"

    const-string v10, "ACTION_POINTER_DOWN"

    invoke-static {v7, v10}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    iget-boolean v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mOnlyOneFinger:Z

    if-eqz v7, :cond_4

    iget-boolean v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mOnlyAffordanceInThisMotion:Z

    if-nez v7, :cond_4

    .line 1113
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mOnlyOneFinger:Z

    .line 1114
    iget-object v7, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mShortcutTouchHelper:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;

    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNatureShortcutHelper;->reset(Z)V

    .line 1115
    const/4 v7, 0x0

    const/16 v10, 0x1f4

    invoke-direct {p0, v7, v10}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->fling(ZI)V

    goto/16 :goto_1

    .line 1038
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public onWallpaperChanged()V
    .locals 0

    .prologue
    .line 1685
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->updateWallpaper()V

    .line 1686
    return-void
.end method

.method public startActivity(Landroid/content/Intent;Z)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "dismissShade"    # Z

    .prologue
    .line 1829
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1830
    return-void
.end method

.method public startShortcutActivity(Z)V
    .locals 8
    .param p1, "rightPage"    # Z

    .prologue
    const-wide/16 v6, 0xbb8

    const/4 v5, 0x1

    .line 1933
    if-eqz p1, :cond_3

    .line 1934
    const-string v3, "com.android.camera.CameraActivity"

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mRightCls:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "com.android.camera"

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mRightPkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1936
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mCameraLauncher:Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;

    invoke-virtual {v3}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;->startSecureCameraLaunch()V

    .line 1937
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->isSecure()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1938
    iput-boolean v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsSecureCameraLauching:Z

    .line 1939
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mHideCameraPreview:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1958
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mContext:Landroid/content/Context;

    const-string v4, "10643"

    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mRightPkg:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/android/systemui/vivo/common/keyguard/utils/KeyguardUtils;->writeCollectData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1985
    :goto_1
    return-void

    .line 1941
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mRightPkg:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mRightCls:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1942
    new-instance v0, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mRightPkg:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mRightCls:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1944
    .local v0, "component":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1945
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1946
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1947
    iget-boolean v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsRightDouble:Z

    if-eqz v3, :cond_2

    .line 1948
    invoke-static {v2}, Lcom/android/systemui/vivo/common/utils/DoubleInstanceUtils;->putDoubleInstanceFlag(Landroid/content/Intent;)V

    .line 1951
    :cond_2
    :try_start_0
    const-string v3, "KeyguardNature3"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start right activity pkg = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mLeftPkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "cls = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mLeftCls:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1952
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1953
    :catch_0
    move-exception v1

    .line 1954
    .local v1, "ex":Ljava/lang/Exception;
    const-string v3, "KeyguardNature3"

    const-string v4, "start activity failed"

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1960
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    const-string v3, "com.android.camera.CameraActivity"

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mLeftCls:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "com.android.camera"

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mLeftPkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1962
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mCameraLauncher:Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;

    invoke-virtual {v3}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCameraLaunchManager;->startSecureCameraLaunch()V

    .line 1963
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->isSecure()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1964
    iput-boolean v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsSecureCameraLauching:Z

    .line 1965
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mHideCameraPreview:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1983
    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mContext:Landroid/content/Context;

    const-string v4, "10642"

    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mLeftPkg:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/android/systemui/vivo/common/keyguard/utils/KeyguardUtils;->writeCollectData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1967
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mLeftPkg:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mLeftCls:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 1968
    new-instance v0, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mLeftPkg:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mLeftCls:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1969
    .restart local v0    # "component":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1970
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1971
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1972
    iget-boolean v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mIsLeftDouble:Z

    if-eqz v3, :cond_6

    .line 1973
    invoke-static {v2}, Lcom/android/systemui/vivo/common/utils/DoubleInstanceUtils;->putDoubleInstanceFlag(Landroid/content/Intent;)V

    .line 1976
    :cond_6
    :try_start_1
    const-string v3, "KeyguardNature3"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start left activity pkg = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mLeftPkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "cls = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mLeftCls:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1977
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature3;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 1978
    :catch_1
    move-exception v1

    .line 1979
    .restart local v1    # "ex":Ljava/lang/Exception;
    const-string v3, "KeyguardNature3"

    const-string v4, "start activity failed"

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
