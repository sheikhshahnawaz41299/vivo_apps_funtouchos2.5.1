.class public Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.super Lcom/android/systemui/statusbar/BaseStatusBar;
.source "PhoneStatusBar.java"

# interfaces
.implements Lcom/android/systemui/DemoMode;
.implements Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;
.implements Lcom/android/systemui/statusbar/phone/ActivityStarter;
.implements Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ShadeUpdates;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$FastColorDrawable;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyTicker;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;
    }
.end annotation


# static fields
.field public static final ACTION_STATUSBAR_START:Ljava/lang/String; = "com.android.internal.policy.statusbar.START"

.field public static final ALPHA_IN:Landroid/view/animation/Interpolator;

.field public static final ALPHA_OUT:Landroid/view/animation/Interpolator;

.field private static final AUTOHIDE_TIMEOUT_MS:J = 0xbb8L

.field public static final CHATTY:Z

.field private static final CLOSE_PANEL_WHEN_EMPTIED:Z = true

.field public static final DEBUG:Z

.field public static final DEBUG_GESTURES:Z = false

.field public static final DEBUG_MEDIA:Z = false

.field public static final DEBUG_MEDIA_FAKE_ARTWORK:Z = false

.field public static final DEBUG_WINDOW_STATE:Z = false

.field public static final DUMPTRUCK:Z = true

.field public static final FADE_KEYGUARD_DURATION:I = 0xaa

.field public static final FADE_KEYGUARD_START_DELAY:I = 0x0

.field private static final HIDE_ICONS_BELOW_SCORE:I = -0xa

.field private static final HINT_RESET_DELAY_MS:I = 0x4b0

.field private static final LAUNCH_TRANSITION_TIMEOUT_MS:J = 0x1388L

.field private static final LOCK_TO_APP_GESTURE_TOLERENCE:I = 0xc8

.field private static final MSG_BLOCK_KEYGUARD_SECURE_NOTIFICATION:I = 0x3ed

.field private static final MSG_CLOSE_PANELS:I = 0x3e9

.field private static final MSG_COLLAPSE_UP_SLIDE:I = 0x3f3

.field private static final MSG_DELAY_SCREEN_ON:I = 0x3f4

.field private static final MSG_INIT_NOTIFICATION_SETTING_DATA:I = 0x3f2

.field private static final MSG_INT_UPSLIDE_VIEW:I = 0x3ec

.field private static final MSG_LAUNCH_TRANSITION_TIMEOUT:I = 0x3eb

.field private static final MSG_OPEN_NOTIFICATION_PANEL:I = 0x3e8

.field private static final MSG_OPEN_SETTINGS_PANEL:I = 0x3ea

.field private static final MSG_UPDATE_DUAL_INSTANCE_ICON:I = 0x3f1

.field private static final MSG_UPDATE_NOTIFICATIONS:I = 0x3ee

.field private static final MSG_UPDATE_NOTIFICATION_TITLES:I = 0x3ef

.field private static final NOTIFICATION_PRIORITY_MULTIPLIER:I = 0xa

.field public static final SHOW_LOCKSCREEN_MEDIA_ARTWORK:Z = false

.field public static final SPEW:Z = false

.field private static final STATUS_OR_NAV_TRANSIENT:I = 0xc000000

.field static final TAG:Ljava/lang/String; = "PhoneStatusBar"

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field private static final VISIBILITY_REPORT_MIN_DELAY_MS:I = 0x1f4

.field private static final VISIBLE_LOCATIONS:I = 0x1d


# instance fields
.field final FLIP_DURATION:I

.field final FLIP_DURATION_IN:I

.field final FLIP_DURATION_OUT:I

.field private firstTimeExpand:Z

.field mAbsPos:[I

.field final mAccelerateInterpolator:Landroid/animation/TimeInterpolator;

.field private final mAnimateCollapsePanels:Ljava/lang/Runnable;

.field private final mAutohide:Ljava/lang/Runnable;

.field private mAutohideSuspended:Z

.field private mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

.field private mBackdropBack:Landroid/widget/ImageView;

.field private mBackdropFront:Landroid/widget/ImageView;

.field private mBackdropInterpolator:Landroid/view/animation/Interpolator;

.field mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

.field mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mCastController:Lcom/android/systemui/statusbar/policy/CastControllerImpl;

.field private final mCheckBarModes:Ljava/lang/Runnable;

.field mClearButtonAnim:Landroid/animation/Animator;

.field private mClock:Lcom/android/systemui/statusbar/policy/Clock;

.field private mCurrRotation:I

.field mCurrentDisplaySize:Landroid/graphics/Point;

.field private final mCurrentlyVisibleNotifications:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mDecelerateInterpolator:Landroid/animation/TimeInterpolator;

.field private mDemoMode:Z

.field private mDemoModeAllowed:Z

.field private mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

.field mDisabled:I

.field private mDisabledUnmodified:I

.field private mDismissWithAnim:Z

.field mDisplay:Landroid/view/Display;

.field mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

.field private mDozeServiceHost:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;

.field private mDozing:Z

.field private mDraggedDownRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field private mDrawCount:I

.field mEdgeBorder:I

.field mExpandedContents:Landroid/view/View;

.field mExpandedVisible:Z

.field mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

.field mFlipSettingsView:Landroid/view/View;

.field mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private final mGestureRec:Lcom/android/systemui/statusbar/GestureRecorder;

.field public mHallListener:Lcom/vivo/services/hallstate/IHallEventListener;

.field private mHallManager:Lcom/vivo/services/hallstate/HallManager;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

.field private final mHeadsUpObserver:Landroid/database/ContentObserver;

.field private mHideBackdropFront:Ljava/lang/Runnable;

.field mHomeActionListener:Landroid/view/View$OnTouchListener;

.field mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

.field private mIconColorFlag:I

.field mIconHPadding:I

.field mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

.field mIconSize:I

.field private mInteractingWindows:I

.field private mIsRotating:Z

.field private mIsScreenPinningRequest:Z

.field private mIsSpeedUpAnimationRunning:Z

.field private mKeyguardCallback:Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;

.field private mKeyguardFadingAway:Z

.field private mKeyguardFadingAwayDelay:J

.field private mKeyguardFadingAwayDuration:J

.field private mKeyguardHostContainer:Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;

.field mKeyguardMaxNotificationCount:I

.field mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

.field mKeyguardStatusView:Landroid/view/View;

.field mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

.field private mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

.field private mLastLockToAppLongPress:J

.field private mLastLoggedStateFingerprint:I

.field private mLastVisibilityReportUptimeMs:J

.field private mLaunchTransitionEndRunnable:Ljava/lang/Runnable;

.field private mLaunchTransitionFadingAway:Z

.field mLeaveOpenOnKeyguardHide:Z

.field private mLinearInterpolator:Landroid/view/animation/Interpolator;

.field private mLinearOutSlowIn:Landroid/view/animation/Interpolator;

.field mLocationController:Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

.field private mLongPressBackRecentsListener:Landroid/view/View$OnLongClickListener;

.field private mMediaController:Landroid/media/session/MediaController;

.field private mMediaListener:Landroid/media/session/MediaController$Callback;

.field private mMediaMetadata:Landroid/media/MediaMetadata;

.field private mMediaNotificationKey:Ljava/lang/String;

.field private mMediaSessionManager:Landroid/media/session/MediaSessionManager;

.field mMoreIcon:Landroid/view/View;

.field mNaturalBarHeight:I

.field private mNavigationBarMode:I

.field private mNavigationBarWindowState:I

.field private mNavigationIconHints:I

.field mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

.field mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

.field private mNotiIconRedrawHelper:Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;

.field private mNotificationContainerParentFloor:Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;

.field mNotificationIconArea:Landroid/view/View;

.field private mNotificationIcons:Lcom/android/systemui/vivo/common/notification/VivoIconMerger;

.field private final mNotificationLocationsChangedListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;

.field private mNotificationOpsListHelper:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

.field mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field mNotificationPanelDebugText:Landroid/widget/TextView;

.field mNotificationPanelGravity:I

.field mNotificationPanelMarginBottomPx:I

.field mNotificationPanelMinHeightFrac:F

.field private final mOnChildLocationsChangedListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;

.field private final mOverflowClickListener:Landroid/view/View$OnClickListener;

.field mPixelFormat:I

.field mPositionTmp:[I

.field mPostCollapseRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mQSPanel:Lcom/android/systemui/qs/QSPanel;

.field mQueueLock:Ljava/lang/Object;

.field private mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

.field private mRecentsClickListener:Landroid/view/View$OnClickListener;

.field mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;

.field private mSceneNotificationManager:Lcom/android/systemui/vivo/common/notification/SceneNotificationManager;

.field private mScreenOn:Ljava/lang/Boolean;

.field private mScreenOnComingFromTouch:Z

.field private mScreenOnTouchLocation:Landroid/graphics/PointF;

.field private mScreenPinningRequest:Lcom/android/systemui/recent/ScreenPinningRequest;

.field private mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

.field private mScrimSrcModeEnabled:Z

.field mScrollViewAnim:Landroid/animation/Animator;

.field mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

.field private final mShadeUpdates:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ShadeUpdates;

.field private mShowCarrierInPanel:Z

.field private mShowSearchHoldoff:I

.field private mShowSearchPanel:Ljava/lang/Runnable;

.field private mSrcOverXferMode:Landroid/graphics/PorterDuffXfermode;

.field private mSrcXferMode:Landroid/graphics/PorterDuffXfermode;

.field mStartTracing:Ljava/lang/Runnable;

.field private mStateUtils:Lcom/android/systemui/vivo/common/utils/StateUtils;

.field private mStatusBarColorManager:Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;

.field mStatusBarContents:Landroid/widget/LinearLayout;

.field private mStatusBarMode:I

.field mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

.field mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

.field private mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

.field private mStatusBarWindowState:I

.field private mStatusBarbgColor:I

.field mStatusIcons:Landroid/widget/LinearLayout;

.field mStatusIconsKeyguard:Landroid/widget/LinearLayout;

.field mStopTracing:Ljava/lang/Runnable;

.field mSystemIconArea:Landroid/widget/LinearLayout;

.field mSystemIcons:Landroid/widget/LinearLayout;

.field mSystemUiVisibility:I

.field private mTicker:Lcom/android/systemui/statusbar/phone/Ticker;

.field private mTickerEnabled:Z

.field private mTickerView:Landroid/view/View;

.field private mTicking:Z

.field mTickingDoneListener:Landroid/view/animation/Animation$AnimationListener;

.field mTracking:Z

.field mTrackingPosition:I

.field private mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

.field private mUpSlideManager:Lcom/android/systemui/vivo/common/upslide/UpSlideManager;

.field mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

.field private mUserSetup:Z

.field private mUserSetupObserver:Landroid/database/ContentObserver;

.field mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

.field mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mVisibilityReporter:Ljava/lang/Runnable;

.field private mVisible:Z

.field private mVivoNetworkController:Lcom/android/systemui/vivo/common/network/VivoNetworkController;

.field private mVivoSignalViewLeft:Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;

.field private mVivoSignalViewRight:Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;

.field mVolumeComponent:Lcom/android/systemui/volume/VolumeComponent;

.field private mWaitingForKeyguardExit:Z

.field mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 246
    sget-boolean v0, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    .line 256
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->CHATTY:Z

    .line 310
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

    sput-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 577
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 578
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, v2, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v0, -0x1

    const/4 v2, 0x0

    .line 243
    invoke-direct {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;-><init>()V

    .line 331
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->firstTimeExpand:Z

    .line 359
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNaturalBarHeight:I

    .line 360
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconSize:I

    .line 361
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconHPadding:I

    .line 363
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentDisplaySize:Landroid/graphics/Point;

    .line 367
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowState:I

    .line 375
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQueueLock:Ljava/lang/Object;

    .line 393
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconColorFlag:I

    .line 404
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrRotation:I

    .line 405
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarbgColor:I

    .line 406
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsRotating:Z

    .line 407
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsSpeedUpAnimationRunning:Z

    .line 408
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsScreenPinningRequest:Z

    .line 451
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowCarrierInPanel:Z

    .line 454
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPositionTmp:[I

    .line 457
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarWindowState:I

    .line 473
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAbsPos:[I

    .line 474
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPostCollapseRunnables:Ljava/util/ArrayList;

    .line 477
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    .line 480
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/StateUtils;->getInstance()Lcom/android/systemui/vivo/common/utils/StateUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStateUtils:Lcom/android/systemui/vivo/common/utils/StateUtils;

    .line 484
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    .line 486
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 489
    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mGestureRec:Lcom/android/systemui/statusbar/GestureRecorder;

    .line 495
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationIconHints:I

    .line 499
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSetup:Z

    .line 500
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSetupObserver:Landroid/database/ContentObserver;

    .line 520
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$2;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$2;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpObserver:Landroid/database/ContentObserver;

    .line 547
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarMode:I

    .line 560
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$3;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAutohide:Ljava/lang/Runnable;

    .line 575
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLinearInterpolator:Landroid/view/animation/Interpolator;

    .line 576
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackdropInterpolator:Landroid/view/animation/Interpolator;

    .line 582
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSrcXferMode:Landroid/graphics/PorterDuffXfermode;

    .line 583
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSrcOverXferMode:Landroid/graphics/PorterDuffXfermode;

    .line 589
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaListener:Landroid/media/session/MediaController$Callback;

    .line 606
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOnChildLocationsChangedListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;

    .line 617
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    .line 620
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ShadeUpdates;

    invoke-direct {v0, p0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ShadeUpdates;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/statusbar/phone/PhoneStatusBar$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShadeUpdates:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ShadeUpdates;

    .line 635
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$6;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationLocationsChangedListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;

    .line 657
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVisibilityReporter:Ljava/lang/Runnable;

    .line 756
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$8;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOverflowClickListener:Landroid/view/View$OnClickListener;

    .line 1479
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$20;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsClickListener:Landroid/view/View$OnClickListener;

    .line 1487
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$21;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$21;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLongPressBackRecentsListener:Landroid/view/View$OnLongClickListener;

    .line 1496
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowSearchHoldoff:I

    .line 1497
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$22;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$22;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowSearchPanel:Ljava/lang/Runnable;

    .line 1504
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$23;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$23;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHomeActionListener:Landroid/view/View$OnTouchListener;

    .line 2787
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$26;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHideBackdropFront:Ljava/lang/Runnable;

    .line 3258
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$29;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$29;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 3333
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$30;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$30;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimateCollapsePanels:Ljava/lang/Runnable;

    .line 3470
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAccelerateInterpolator:Landroid/animation/TimeInterpolator;

    .line 3471
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDecelerateInterpolator:Landroid/animation/TimeInterpolator;

    .line 3472
    const/16 v0, 0x7d

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->FLIP_DURATION_OUT:I

    .line 3473
    const/16 v0, 0xe1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->FLIP_DURATION_IN:I

    .line 3474
    const/16 v0, 0x15e

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->FLIP_DURATION:I

    .line 3815
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCheckBarModes:Ljava/lang/Runnable;

    .line 4004
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$37;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$37;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickingDoneListener:Landroid/view/animation/Animation$AnimationListener;

    .line 4265
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 4719
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStartTracing:Ljava/lang/Runnable;

    .line 4729
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$41;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$41;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStopTracing:Ljava/lang/Runnable;

    .line 5906
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$44;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$44;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHallListener:Lcom/vivo/services/hallstate/IHallEventListener;

    .line 6026
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDismissWithAnim:Z

    .line 6028
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$46;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$46;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardCallback:Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSetup:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 243
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setHeadsUpVisibility(Z)V

    return-void
.end method

.method static synthetic access$10000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/content/Intent;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # Z

    .prologue
    .line 243
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->handleStartSettingsActivity(Landroid/content/Intent;Z)V

    return-void
.end method

.method static synthetic access$10102(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 243
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLaunchTransitionFadingAway:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 243
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSetup:Z

    return p1
.end method

.method static synthetic access$10200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->preChangeStatusBarColor()V

    return-void
.end method

.method static synthetic access$10300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDismissWithAnim:Z

    return v0
.end method

.method static synthetic access$10302(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 243
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDismissWithAnim:Z

    return p1
.end method

.method static synthetic access$10400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->runLaunchTransitionEndRunnable()V

    return-void
.end method

.method static synthetic access$10500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardHostContainer:Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;

    return-object v0
.end method

.method static synthetic access$10600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/NotificationData;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    return-object v0
.end method

.method static synthetic access$10700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/NotificationData;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoingData:Lcom/android/systemui/statusbar/NotificationData;

    return-object v0
.end method

.method static synthetic access$10800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/NotificationData;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCalendarData:Lcom/android/systemui/statusbar/NotificationData;

    return-object v0
.end method

.method static synthetic access$10900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/NotificationData;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMusicData:Lcom/android/systemui/statusbar/NotificationData;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    return-object v0
.end method

.method static synthetic access$11100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozing:Z

    return v0
.end method

.method static synthetic access$11102(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 243
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozing:Z

    return p1
.end method

.method static synthetic access$11200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateDozingState()V

    return-void
.end method

.method static synthetic access$11300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/DozeScrimController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    return-object v0
.end method

.method static synthetic access$11700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$11800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object v0
.end method

.method static synthetic access$11900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->removeHeadsUpView()V

    return-void
.end method

.method static synthetic access$12000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    return-object v0
.end method

.method static synthetic access$12100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    return-object v0
.end method

.method static synthetic access$12200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object v0
.end method

.method static synthetic access$12300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    return-object v0
.end method

.method static synthetic access$12400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object v0
.end method

.method static synthetic access$12500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object v0
.end method

.method static synthetic access$12600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object v0
.end method

.method static synthetic access$12700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object v0
.end method

.method static synthetic access$12800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object v0
.end method

.method static synthetic access$12900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->addHeadsUpView()V

    return-void
.end method

.method static synthetic access$13000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object v0
.end method

.method static synthetic access$13100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object v0
.end method

.method static synthetic access$13200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object v0
.end method

.method static synthetic access$13300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object v0
.end method

.method static synthetic access$13400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarColorManager:Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;

    return-object v0
.end method

.method static synthetic access$13500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/SearchPanelView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    return-object v0
.end method

.method static synthetic access$13600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/SearchPanelView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # I

    .prologue
    .line 243
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyUiVisibilityChanged(I)V

    return-void
.end method

.method static synthetic access$1502(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/media/MediaMetadata;)Landroid/media/MediaMetadata;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Landroid/media/MediaMetadata;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaMetadata:Landroid/media/MediaMetadata;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVisibilityReporter:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLastVisibilityReportUptimeMs:J

    return-wide v0
.end method

.method static synthetic access$1902(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # J

    .prologue
    .line 243
    iput-wide p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLastVisibilityReportUptimeMs:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUseHeadsUp:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/NotificationData;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/util/ArraySet;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/NotificationData;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoingData:Lcom/android/systemui/statusbar/NotificationData;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/NotificationData;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCalendarData:Lcom/android/systemui/statusbar/NotificationData;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/NotificationData;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMusicData:Lcom/android/systemui/statusbar/NotificationData;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Ljava/util/Collection;
    .param p2, "x2"    # Ljava/util/Collection;

    .prologue
    .line 243
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->logNotificationVisibilityChanges(Ljava/util/Collection;Ljava/util/Collection;)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 243
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUseHeadsUp:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/view/MotionEvent;

    .prologue
    .line 243
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->checkUserAutohide(Landroid/view/View;Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/SearchPanelView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/SearchPanelView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->clearAllNotifications()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/vivo/common/utils/StateUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStateUtils:Lcom/android/systemui/vivo/common/utils/StateUtils;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 243
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBlockOrManage:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCheckBarModes:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisableNotificationAlerts:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$4200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/internal/statusbar/IStatusBarService;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDrawCount:I

    return v0
.end method

.method static synthetic access$4508(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDrawCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDrawCount:I

    return v0
.end method

.method static synthetic access$4600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->awakenDreams()V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 243
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->handleLongPressBackRecents(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowSearchPanel:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowSearchHoldoff:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 243
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpTicker:Z

    return p1
.end method

.method static synthetic access$5100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNotificationShade()V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackdropFront:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BackDropView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackdropBack:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHideBackdropFront:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUseHeadsUp:Z

    return v0
.end method

.method static synthetic access$6000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->escalateHeadsUp()V

    return-void
.end method

.method static synthetic access$6300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->onLaunchTransitionTimeout()V

    return-void
.end method

.method static synthetic access$6400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/vivo/common/upslide/UpSlideManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUpSlideManager:Lcom/android/systemui/vivo/common/upslide/UpSlideManager;

    return-object v0
.end method

.method static synthetic access$6402(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/vivo/common/upslide/UpSlideManager;)Lcom/android/systemui/vivo/common/upslide/UpSlideManager;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Lcom/android/systemui/vivo/common/upslide/UpSlideManager;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUpSlideManager:Lcom/android/systemui/vivo/common/upslide/UpSlideManager;

    return-object p1
.end method

.method static synthetic access$6500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBlocked:Z

    return v0
.end method

.method static synthetic access$6600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBlockedPkg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBlockedAppLabel:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBlockedInstanceId:I

    return v0
.end method

.method static synthetic access$6900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 243
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->blockNotification(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUseHeadsUp:Z

    return v0
.end method

.method static synthetic access$7000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->handleUpdateNotifications()V

    return-void
.end method

.method static synthetic access$7100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPartitionManager:Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;

    return-object v0
.end method

.method static synthetic access$7202(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;)Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationOpsListHelper:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    return-object p1
.end method

.method static synthetic access$7300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->runPostCollapseRunnables()V

    return-void
.end method

.method static synthetic access$7400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->checkBarModes()V

    return-void
.end method

.method static synthetic access$7500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerEnabled:Z

    return v0
.end method

.method static synthetic access$7602(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 243
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicking:Z

    return p1
.end method

.method static synthetic access$7700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$7800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 243
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # I

    .prologue
    .line 243
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isCurrentProfile(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUseHeadsUp:Z

    return v0
.end method

.method static synthetic access$8002(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenOn:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$8100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 243
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyNavigationBarScreenOn(Z)V

    return-void
.end method

.method static synthetic access$8200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 243
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyHeadsUpScreenOn(Z)V

    return-void
.end method

.method static synthetic access$8300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->finishBarAnimations()V

    return-void
.end method

.method static synthetic access$8400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->stopNotificationLogging()V

    return-void
.end method

.method static synthetic access$8500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->resetUserExpandedStates()V

    return-void
.end method

.method static synthetic access$8600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$8700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$8800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationContainerParentFloor:Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;

    return-object v0
.end method

.method static synthetic access$8900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/vivo/common/notification/SceneNotificationManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSceneNotificationManager:Lcom/android/systemui/vivo/common/notification/SceneNotificationManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUseHeadsUp:Z

    return v0
.end method

.method static synthetic access$9000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVivoSignalViewLeft:Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;

    return-object v0
.end method

.method static synthetic access$9100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$9200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$9300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$9400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method static synthetic access$9500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrRotation:I

    return v0
.end method

.method static synthetic access$9502(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # I

    .prologue
    .line 243
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrRotation:I

    return p1
.end method

.method static synthetic access$9602(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 243
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsRotating:Z

    return p1
.end method

.method static synthetic access$9700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    return-object v0
.end method

.method static synthetic access$9800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 243
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setSpeedUpState(Z)V

    return-void
.end method

.method static synthetic access$9900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    return-object v0
.end method

.method private addHeadsUpView()V
    .locals 6

    .prologue
    .line 1592
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0f007d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1594
    .local v2, "headsUpHeight":I
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/16 v3, 0x7de

    const v4, 0x800328

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 1606
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x1000000

    or-int/2addr v1, v3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1607
    const/16 v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1608
    const-string v1, "Heads Up"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1609
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1610
    const v1, 0x7f0d0027

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1612
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-interface {v1, v3, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1613
    return-void
.end method

.method private addNavigationBar()V
    .locals 3

    .prologue
    .line 1549
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addNavigationBar: about to add "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-nez v0, :cond_1

    .line 1555
    :goto_0
    return-void

    .line 1552
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->prepareNavigationBarView()V

    .line 1554
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNavigationBarLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private addStatusBarWindow()V
    .locals 3

    .prologue
    .line 4182
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->makeStatusBarView()Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 4183
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    .line 4184
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getStatusBarHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->add(Landroid/view/View;I)V

    .line 4185
    return-void
.end method

.method private adjustDisableFlags(I)I
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 2919
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLaunchTransitionFadingAway:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBouncerShowing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWaitingForKeyguardExit:Z

    if-eqz v0, :cond_1

    .line 2921
    :cond_0
    const/high16 v0, 0x20000

    or-int/2addr p1, v0

    .line 2922
    const/high16 v0, 0x100000

    or-int/2addr p1, v0

    .line 2924
    :cond_1
    return p1
.end method

.method private animateStatusBarHide(Landroid/view/View;Z)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .prologue
    const/4 v1, 0x0

    .line 3040
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 3041
    if-nez p2, :cond_0

    .line 3042
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 3043
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3057
    :goto_0
    return-void

    .line 3046
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xa0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$28;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method private animateStatusBarShow(Landroid/view/View;Z)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 3063
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 3064
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3065
    if-nez p2, :cond_1

    .line 3066
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 3088
    :cond_0
    :goto_0
    return-void

    .line 3069
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x140

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 3081
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAway:Z

    if-eqz v0, :cond_0

    .line 3082
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAwayDuration:J

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLinearOutSlowIn:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAwayDelay:J

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method private areLightsOn()Z
    .locals 1

    .prologue
    .line 3880
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private awakenDreams()V
    .locals 1

    .prologue
    .line 1525
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDreamManager:Landroid/service/dreams/IDreamManager;

    if-eqz v0, :cond_0

    .line 1527
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1532
    :cond_0
    :goto_0
    return-void

    .line 1528
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private barMode(III)I
    .locals 2
    .param p1, "vis"    # I
    .param p2, "transientFlag"    # I
    .param p3, "translucentFlag"    # I

    .prologue
    .line 3780
    const v0, 0x8001

    .line 3781
    .local v0, "lightsOutTransparent":I
    and-int v1, p1, p2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    and-int v1, p1, p3

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    and-int v1, p1, v0

    if-ne v1, v0, :cond_2

    const/4 v1, 0x6

    goto :goto_0

    :cond_2
    const v1, 0x8000

    and-int/2addr v1, p1

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    goto :goto_0

    :cond_3
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_4

    const/4 v1, 0x3

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private cancelAutohide()V
    .locals 2

    .prologue
    .line 3856
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAutohideSuspended:Z

    .line 3857
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAutohide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3858
    return-void
.end method

.method private checkBarMode(IILcom/android/systemui/statusbar/phone/BarTransitions;)V
    .locals 3
    .param p1, "mode"    # I
    .param p2, "windowState"    # I
    .param p3, "transitions"    # Lcom/android/systemui/statusbar/phone/BarTransitions;

    .prologue
    .line 3799
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/BatteryController;->isPowerSave()Z

    move-result v1

    .line 3800
    .local v1, "powerSave":Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenOn:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenOn:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const/4 v2, 0x2

    if-eq p2, v2, :cond_2

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 3802
    .local v0, "anim":Z
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v2

    if-nez v2, :cond_1

    .line 3803
    const/4 p1, 0x5

    .line 3805
    :cond_1
    invoke-virtual {p3, p1, v0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->transitionTo(IZ)V

    .line 3806
    return-void

    .line 3800
    .end local v0    # "anim":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkBarModes()V
    .locals 3

    .prologue
    .line 3790
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDemoMode:Z

    if-eqz v0, :cond_1

    .line 3796
    :cond_0
    :goto_0
    return-void

    .line 3791
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarMode:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowState:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->checkBarMode(IILcom/android/systemui/statusbar/phone/BarTransitions;)V

    .line 3792
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_0

    .line 3793
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarMode:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarWindowState:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->checkBarMode(IILcom/android/systemui/statusbar/phone/BarTransitions;)V

    goto :goto_0
.end method

.method private checkUserAutohide(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 3866
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    const/high16 v1, 0xc000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    .line 3870
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->userAutohide()V

    .line 3872
    :cond_0
    return-void
.end method

.method private clearAllNotifications()V
    .locals 5

    .prologue
    .line 1294
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v2

    .line 1296
    .local v2, "numChildren":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1297
    .local v3, "viewsToHide":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1298
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1299
    .local v0, "child":Landroid/view/View;
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1300
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 1301
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1297
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1305
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1306
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels(I)V

    .line 1321
    :goto_1
    return-void

    .line 1310
    :cond_2
    new-instance v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$17;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$17;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->addPostCollapseAction(Ljava/lang/Runnable;)V

    .line 1319
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->performDismissAllAnimations(Ljava/util/ArrayList;)V

    goto :goto_1
.end method

.method private computeBarMode(IILcom/android/systemui/statusbar/phone/BarTransitions;II)I
    .locals 2
    .param p1, "oldVis"    # I
    .param p2, "newVis"    # I
    .param p3, "transitions"    # Lcom/android/systemui/statusbar/phone/BarTransitions;
    .param p4, "transientFlag"    # I
    .param p5, "translucentFlag"    # I

    .prologue
    .line 3771
    invoke-direct {p0, p1, p4, p5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->barMode(III)I

    move-result v1

    .line 3772
    .local v1, "oldMode":I
    invoke-direct {p0, p2, p4, p5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->barMode(III)I

    move-result v0

    .line 3773
    .local v0, "newMode":I
    if-ne v1, v0, :cond_0

    .line 3774
    const/4 v0, -0x1

    .line 3776
    .end local v0    # "newMode":I
    :cond_0
    return v0
.end method

.method private dispatchDemoCommandToView(Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 2
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "id"    # I

    .prologue
    .line 4888
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-nez v1, :cond_1

    .line 4893
    :cond_0
    :goto_0
    return-void

    .line 4889
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v1, p3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 4890
    .local v0, "v":Landroid/view/View;
    instance-of v1, v0, Lcom/android/systemui/DemoMode;

    if-eqz v1, :cond_0

    .line 4891
    check-cast v0, Lcom/android/systemui/DemoMode;

    .end local v0    # "v":Landroid/view/View;
    invoke-interface {v0, p1, p2}, Lcom/android/systemui/DemoMode;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private static dumpBarTransitions(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/BarTransitions;)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "var"    # Ljava/lang/String;
    .param p2, "transitions"    # Lcom/android/systemui/statusbar/phone/BarTransitions;

    .prologue
    .line 4172
    const-string v0, "  "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ".BarTransitions.mMode="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4173
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/BarTransitions;->getMode()I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->modeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4174
    return-void
.end method

.method private enableUpSlide(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 6253
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUpSlideManager:Lcom/android/systemui/vivo/common/upslide/UpSlideManager;

    if-eqz v0, :cond_0

    .line 6254
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUpSlideManager:Lcom/android/systemui/vivo/common/upslide/UpSlideManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/upslide/UpSlideManager;->enableUpSlide(Z)V

    .line 6256
    :cond_0
    return-void
.end method

.method private escalateHeadsUp()V
    .locals 4

    .prologue
    .line 3241
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3242
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v2

    iget-object v1, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 3243
    .local v1, "sbn":Landroid/service/notification/StatusBarNotification;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->release()V

    .line 3244
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 3245
    .local v0, "notification":Landroid/app/Notification;
    iget-object v2, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_1

    .line 3246
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 3247
    const-string v2, "PhoneStatusBar"

    const-string v3, "converting a heads up to fullScreen"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3249
    :cond_0
    const v2, 0x8ca3

    :try_start_0
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 3251
    iget-object v2, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3256
    .end local v0    # "notification":Landroid/app/Notification;
    .end local v1    # "sbn":Landroid/service/notification/StatusBarNotification;
    :cond_1
    :goto_0
    return-void

    .line 3252
    .restart local v0    # "notification":Landroid/app/Notification;
    .restart local v1    # "sbn":Landroid/service/notification/StatusBarNotification;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private finishBarAnimations()V
    .locals 1

    .prologue
    .line 3809
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->finishAnimations()V

    .line 3810
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_0

    .line 3811
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->finishAnimations()V

    .line 3813
    :cond_0
    return-void
.end method

.method private static getLoggingFingerprint(IZZZZZ)I
    .locals 4
    .param p0, "statusBarState"    # I
    .param p1, "keyguardShowing"    # Z
    .param p2, "keyguardOccluded"    # Z
    .param p3, "bouncerShowing"    # Z
    .param p4, "secure"    # Z
    .param p5, "currentlyInsecure"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4697
    and-int/lit16 v3, p0, 0xff

    if-eqz p1, :cond_0

    move v2, v0

    :goto_0
    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v3, v2

    if-eqz p2, :cond_1

    move v2, v0

    :goto_1
    shl-int/lit8 v2, v2, 0x9

    or-int/2addr v3, v2

    if-eqz p3, :cond_2

    move v2, v0

    :goto_2
    shl-int/lit8 v2, v2, 0xa

    or-int/2addr v3, v2

    if-eqz p4, :cond_3

    move v2, v0

    :goto_3
    shl-int/lit8 v2, v2, 0xb

    or-int/2addr v2, v3

    if-eqz p5, :cond_4

    :goto_4
    shl-int/lit8 v0, v0, 0xc

    or-int/2addr v0, v2

    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    move v2, v1

    goto :goto_2

    :cond_3
    move v2, v1

    goto :goto_3

    :cond_4
    move v0, v1

    goto :goto_4
.end method

.method private getNavigationBarLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 6

    .prologue
    const/4 v1, -0x1

    .line 1571
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7e3

    const v4, 0x840068

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 1582
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1583
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1586
    :cond_0
    const-string v1, "NavigationBar"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1587
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1588
    return-object v0
.end method

.method private handleLongPressBackRecents(Landroid/view/View;)V
    .locals 15
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v14, 0x7f1100af

    .line 5589
    const/4 v6, 0x0

    .line 5590
    .local v6, "sendBackLongPress":Z
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    .line 5591
    .local v2, "activityManager":Landroid/app/IActivityManager;
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    .line 5592
    .local v4, "isAccessiblityEnabled":Z
    invoke-interface {v2}, Landroid/app/IActivityManager;->isInLockTaskMode()Z

    move-result v7

    if-eqz v7, :cond_4

    if-nez v4, :cond_4

    .line 5593
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 5596
    .local v8, "time":J
    iget-wide v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLastLockToAppLongPress:J

    sub-long v10, v8, v10

    const-wide/16 v12, 0xc8

    cmp-long v7, v10, v12

    if-gez v7, :cond_3

    .line 5597
    invoke-interface {v2}, Landroid/app/IActivityManager;->stopLockTaskModeOnCurrent()V

    .line 5599
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    const/4 v11, 0x1

    invoke-virtual {v7, v10, v11}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(IZ)V

    .line 5606
    :cond_0
    :goto_0
    iput-wide v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLastLockToAppLongPress:J

    .line 5619
    .end local v8    # "time":J
    :cond_1
    :goto_1
    if-eqz v6, :cond_2

    .line 5620
    move-object/from16 v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    move-object v5, v0

    .line 5621
    .local v5, "keyButtonView":Lcom/android/systemui/statusbar/policy/KeyButtonView;
    const/4 v7, 0x0

    const/16 v10, 0x80

    invoke-virtual {v5, v7, v10}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(II)V

    .line 5622
    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendAccessibilityEvent(I)V

    .line 5627
    .end local v2    # "activityManager":Landroid/app/IActivityManager;
    .end local v4    # "isAccessiblityEnabled":Z
    .end local v5    # "keyButtonView":Lcom/android/systemui/statusbar/policy/KeyButtonView;
    :cond_2
    :goto_2
    return-void

    .line 5600
    .restart local v2    # "activityManager":Landroid/app/IActivityManager;
    .restart local v4    # "isAccessiblityEnabled":Z
    .restart local v8    # "time":J
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v7

    if-ne v7, v14, :cond_0

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->isPressed()Z

    move-result v7

    if-nez v7, :cond_0

    .line 5604
    const/4 v6, 0x1

    goto :goto_0

    .line 5609
    .end local v8    # "time":J
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v7

    if-ne v7, v14, :cond_5

    .line 5610
    const/4 v6, 0x1

    goto :goto_1

    .line 5611
    :cond_5
    if-eqz v4, :cond_1

    invoke-interface {v2}, Landroid/app/IActivityManager;->isInLockTaskMode()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 5614
    invoke-interface {v2}, Landroid/app/IActivityManager;->stopLockTaskModeOnCurrent()V

    .line 5616
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    const/4 v11, 0x1

    invoke-virtual {v7, v10, v11}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 5624
    .end local v2    # "activityManager":Landroid/app/IActivityManager;
    .end local v4    # "isAccessiblityEnabled":Z
    :catch_0
    move-exception v3

    .line 5625
    .local v3, "e":Landroid/os/RemoteException;
    const-string v7, "PhoneStatusBar"

    const-string v10, "Unable to reach activity manager"

    invoke-static {v7, v10, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private handleStartSettingsActivity(Landroid/content/Intent;Z)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "onlyProvisioned"    # Z

    .prologue
    .line 4761
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZ)V

    .line 4762
    return-void
.end method

.method private handleUpdateNotifications()V
    .locals 1

    .prologue
    .line 2233
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/vivo/common/notification/VivoIconMerger;

    if-nez v0, :cond_0

    .line 2244
    :goto_0
    return-void

    .line 2235
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->filterAndSort()V

    .line 2237
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoingData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->filterAndSort()V

    .line 2238
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCalendarData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->filterAndSort()V

    .line 2239
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMusicData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->filterAndSort()V

    .line 2242
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNotificationShade()V

    .line 2243
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNotificationIcons()V

    goto :goto_0
.end method

.method private hunStateToString(Lcom/android/systemui/statusbar/NotificationData$Entry;)Ljava/lang/String;
    .locals 1
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 4166
    if-nez p1, :cond_0

    const-string v0, "null"

    .line 4168
    :goto_0
    return-object v0

    .line 4167
    :cond_0
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    if-nez v0, :cond_1

    const-string v0, "corrupt"

    goto :goto_0

    .line 4168
    :cond_1
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private initKeyguardView()V
    .locals 2

    .prologue
    .line 6162
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v1, 0x7f110162

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardHostContainer:Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;

    .line 6163
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardHostContainer:Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardCallback:Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->setKeyguardCallback(Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;)V

    .line 6164
    return-void
.end method

.method private initVivoCarrierLabel()V
    .locals 5

    .prologue
    .line 5994
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f11013d

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;

    .line 5995
    .local v1, "vivoCarrier1":Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f11013e

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;

    .line 5996
    .local v2, "vivoCarrier2":Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;
    if-eqz v1, :cond_0

    .line 5997
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->setSlot(I)V

    .line 5999
    :cond_0
    if-eqz v2, :cond_1

    .line 6000
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/systemui/vivo/common/network/VivoCarrierLabel;->setSlot(I)V

    .line 6002
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v4, 0x7f11013c

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 6003
    .local v0, "carrierLabelLayout":Landroid/widget/LinearLayout;
    new-instance v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$45;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$45;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 6009
    return-void
.end method

.method private instantCollapseNotificationPanel()V
    .locals 1

    .prologue
    .line 5312
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->instantCollapse()V

    .line 5313
    return-void
.end method

.method private instantExpandNotificationsPanel()V
    .locals 1

    .prologue
    .line 5307
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->makeExpandedVisible(Z)V

    .line 5308
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->instantExpand()V

    .line 5309
    return-void
.end method

.method private isKeyguardShowing()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 5987
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 5990
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPhoneInCall()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 5966
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5967
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 5976
    :cond_1
    :goto_0
    return v0

    .line 5973
    :cond_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 5974
    goto :goto_0
.end method

.method private isThisJunk(Landroid/service/notification/StatusBarNotification;)Z
    .locals 3
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v0, 0x1

    .line 1670
    const-string v1, "com.android.bbkmusic"

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 1678
    :cond_0
    :goto_0
    return v0

    .line 1673
    :cond_1
    const-string v1, "com.android.VideoPlayer"

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 1676
    :cond_2
    const-string v1, "com.bbk.iqoo.logsystem"

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1678
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    .locals 2
    .param p1, "id"    # I
    .param p2, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .prologue
    .line 4015
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 4016
    .local v0, "anim":Landroid/view/animation/Animation;
    if-eqz p2, :cond_0

    .line 4017
    invoke-virtual {v0, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 4019
    :cond_0
    return-object v0
.end method

.method private logNotificationVisibilityChanges(Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4652
    .local p1, "newlyVisible":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .local p2, "noLongerVisible":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4662
    :goto_0
    return-void

    .line 4655
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 4656
    .local v0, "newlyVisibleAr":[Ljava/lang/String;
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {p2, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 4658
    .local v1, "noLongerVisibleAr":[Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v2, v0, v1}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationVisibilityChanged([Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4659
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private logStateToEventlog()V
    .locals 14

    .prologue
    const/4 v11, 0x1

    const/4 v13, 0x0

    .line 4667
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v1

    .line 4668
    .local v1, "isShowing":Z
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v2

    .line 4669
    .local v2, "isOccluded":Z
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v3

    .line 4670
    .local v3, "isBouncerShowing":Z
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isMethodSecure()Z

    move-result v4

    .line 4671
    .local v4, "isSecure":Z
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isCurrentlyInsecure()Z

    move-result v5

    .line 4672
    .local v5, "isCurrentlyInsecure":Z
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getLoggingFingerprint(IZZZZZ)I

    move-result v12

    .line 4678
    .local v12, "stateFingerprint":I
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLastLoggedStateFingerprint:I

    if-eq v12, v0, :cond_0

    .line 4679
    iget v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-eqz v1, :cond_1

    move v7, v11

    :goto_0
    if-eqz v2, :cond_2

    move v8, v11

    :goto_1
    if-eqz v3, :cond_3

    move v9, v11

    :goto_2
    if-eqz v4, :cond_4

    move v10, v11

    :goto_3
    if-eqz v5, :cond_5

    :goto_4
    invoke-static/range {v6 .. v11}, Lcom/android/systemui/EventLogTags;->writeSysuiStatusBarState(IIIIII)V

    .line 4685
    iput v12, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLastLoggedStateFingerprint:I

    .line 4687
    :cond_0
    return-void

    :cond_1
    move v7, v13

    .line 4679
    goto :goto_0

    :cond_2
    move v8, v13

    goto :goto_1

    :cond_3
    move v9, v13

    goto :goto_2

    :cond_4
    move v10, v13

    goto :goto_3

    :cond_5
    move v11, v13

    goto :goto_4
.end method

.method private notifyNavigationBarScreenOn(Z)V
    .locals 1
    .param p1, "screenOn"    # Z

    .prologue
    .line 1566
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-nez v0, :cond_0

    .line 1568
    :goto_0
    return-void

    .line 1567
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->notifyScreenOn(Z)V

    goto :goto_0
.end method

.method private notifyUiVisibilityChanged(I)V
    .locals 1
    .param p1, "vis"    # I

    .prologue
    .line 3894
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWindowManagerService:Landroid/view/IWindowManager;

    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->statusBarVisibilityChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3897
    :goto_0
    return-void

    .line 3895
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private onHomeOrBackPressed()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 5265
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsExpanded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5266
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsDetailShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5267
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->closeQsDetail()V

    .line 5280
    :goto_0
    return v0

    .line 5269
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animateCloseQs()V

    goto :goto_0

    .line 5275
    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-eq v1, v0, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    if-eqz v1, :cond_2

    .line 5276
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    goto :goto_0

    .line 5280
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onLaunchTransitionTimeout()V
    .locals 2

    .prologue
    .line 5056
    const-string v0, "PhoneStatusBar"

    const-string v1, "Launch transition: Timeout!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5057
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->resetViews()V

    .line 5058
    return-void
.end method

.method private packageHasVisibilityOverride(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/16 v1, -0x3e8

    .line 2142
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationData;->getVisibilityOverride(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoingData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationData;->getVisibilityOverride(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCalendarData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationData;->getVisibilityOverride(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMusicData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationData;->getVisibilityOverride(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private performDismissAllAnimations(Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1324
    .local p1, "hideAnimatedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v6, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$18;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$18;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 1338
    .local v6, "animationFinishAction":Ljava/lang/Runnable;
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setDismissAllInProgress(Z)V

    .line 1342
    const/16 v10, 0xa

    .line 1343
    .local v10, "rowDelayDecrement":I
    const/16 v7, 0x8c

    .line 1344
    .local v7, "currentDelay":I
    const/16 v3, 0xb4

    .line 1345
    .local v3, "totalDelay":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 1346
    .local v9, "numItems":I
    add-int/lit8 v8, v9, -0x1

    .local v8, "i":I
    :goto_0
    if-ltz v8, :cond_1

    .line 1347
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1348
    .local v1, "view":Landroid/view/View;
    const/4 v2, 0x0

    .line 1349
    .local v2, "endRunnable":Ljava/lang/Runnable;
    if-nez v8, :cond_0

    .line 1350
    move-object v2, v6

    .line 1352
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const-wide/16 v4, 0x104

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->dismissViewAnimated(Landroid/view/View;Ljava/lang/Runnable;IJ)V

    .line 1353
    const/16 v0, 0x32

    sub-int v4, v7, v10

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1354
    add-int/2addr v3, v7

    .line 1346
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 1356
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "endRunnable":Ljava/lang/Runnable;
    :cond_1
    return-void
.end method

.method private preChangeStatusBarColor()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2475
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarColorManager:Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;

    invoke-virtual {v5}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->isPrepareUnLock()Z

    move-result v0

    .line 2476
    .local v0, "isPrepareUnLock":Z
    const-string v5, "PhoneStatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "preChangeStatusBarColor: isPrepareUnLock= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2477
    if-eqz v0, :cond_0

    .line 2495
    :goto_0
    return-void

    .line 2481
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarColorManager:Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;

    invoke-virtual {v5}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->getLastStatusBarBgStyleBeforeKeyguard()I

    move-result v2

    .line 2482
    .local v2, "lastStatusBarBgStyleBeforeKeyguard":I
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarColorManager:Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;

    invoke-virtual {v5}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->getLastStatusBarBgStyle()I

    move-result v1

    .line 2483
    .local v1, "lastStatusBarBgStyle":I
    const-string v5, "PhoneStatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lastStatusBarBgStyleBeforeKeyguard = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", lastStatusBarBgStyle= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mBlockOrManage = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBlockOrManage:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2486
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBlockOrManage:Z

    if-eqz v5, :cond_1

    .line 2487
    const/4 v2, 0x0

    .line 2488
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBlockOrManage:Z

    .line 2490
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarColorManager:Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;

    invoke-virtual {v5, v3}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->setPrepareUnLock(Z)V

    .line 2491
    if-eq v2, v1, :cond_2

    .line 2492
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarColorManager:Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;

    if-nez v2, :cond_3

    :goto_1
    invoke-virtual {v5, v3}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->setStatusBarElementsColor(Z)V

    .line 2494
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateClockVisibility()V

    goto :goto_0

    :cond_3
    move v3, v4

    .line 2492
    goto :goto_1
.end method

.method private prepareNavigationBarView()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1535
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->reorient()V

    .line 1537
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1538
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsPreloadOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1539
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setLongClickable(Z)V

    .line 1540
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLongPressBackRecentsListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1541
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setLongClickable(Z)V

    .line 1542
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLongPressBackRecentsListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1543
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHomeActionListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1544
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateSearchPanel()V

    .line 1545
    return-void
.end method

.method private refreshAllIconsForLayout(Landroid/widget/LinearLayout;)V
    .locals 4
    .param p1, "ll"    # Landroid/widget/LinearLayout;

    .prologue
    .line 1626
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 1627
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1628
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1629
    .local v0, "child":Landroid/view/View;
    instance-of v3, v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v3, :cond_0

    .line 1630
    check-cast v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    .end local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateDrawable()V

    .line 1627
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1633
    :cond_1
    return-void
.end method

.method private registerHallListener()V
    .locals 5

    .prologue
    .line 5895
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHallManager:Lcom/vivo/services/hallstate/HallManager;

    if-nez v1, :cond_0

    .line 5896
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const-string v2, "hall_state_manager"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vivo/services/hallstate/HallManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHallManager:Lcom/vivo/services/hallstate/HallManager;

    .line 5898
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHallManager:Lcom/vivo/services/hallstate/HallManager;

    if-eqz v1, :cond_1

    .line 5899
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHallManager:Lcom/vivo/services/hallstate/HallManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHallListener:Lcom/vivo/services/hallstate/IHallEventListener;

    const-string v3, "PhoneStatusBar"

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v3, v4}, Lcom/vivo/services/hallstate/HallManager;->registerHallStateListener(Lcom/vivo/services/hallstate/IHallEventListener;Ljava/lang/String;I)Z

    move-result v0

    .line 5900
    .local v0, "ret":Z
    const-string v1, "hall"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerHallStateListener ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5904
    .end local v0    # "ret":Z
    :goto_0
    return-void

    .line 5902
    :cond_1
    const-string v1, "hall"

    const-string v2, "HallManager is null"

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private removeHeadsUpView()V
    .locals 2

    .prologue
    .line 1616
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1617
    return-void
.end method

.method private repositionNavigationBar()V
    .locals 3

    .prologue
    .line 1558
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1563
    :cond_0
    :goto_0
    return-void

    .line 1560
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->prepareNavigationBarView()V

    .line 1562
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNavigationBarLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private resetUserExpandedStates()V
    .locals 5

    .prologue
    .line 4412
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v0

    .line 4413
    .local v0, "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4414
    .local v3, "notificationCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 4415
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 4416
    .local v1, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v4, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v4, :cond_0

    .line 4417
    iget-object v4, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->resetUserExpansion()V

    .line 4414
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4420
    .end local v1    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_1
    return-void
.end method

.method private resetUserSetupObserver()V
    .locals 5

    .prologue
    .line 4502
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSetupObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 4503
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSetupObserver:Landroid/database/ContentObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 4504
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "user_setup_complete"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSetupObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 4508
    return-void
.end method

.method private resumeSuspendedAutohide()V
    .locals 4

    .prologue
    .line 3843
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAutohideSuspended:Z

    if-eqz v0, :cond_0

    .line 3844
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->scheduleAutohide()V

    .line 3845
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCheckBarModes:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3847
    :cond_0
    return-void
.end method

.method private runLaunchTransitionEndRunnable()V
    .locals 2

    .prologue
    .line 5061
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLaunchTransitionEndRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 5062
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLaunchTransitionEndRunnable:Ljava/lang/Runnable;

    .line 5066
    .local v0, "r":Ljava/lang/Runnable;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLaunchTransitionEndRunnable:Ljava/lang/Runnable;

    .line 5067
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 5069
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method private runPostCollapseRunnables()V
    .locals 3

    .prologue
    .line 3408
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPostCollapseRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3409
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 3410
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPostCollapseRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 3409
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3412
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPostCollapseRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3413
    return-void
.end method

.method private sameSessions(Landroid/media/session/MediaController;Landroid/media/session/MediaController;)Z
    .locals 1
    .param p1, "a"    # Landroid/media/session/MediaController;
    .param p2, "b"    # Landroid/media/session/MediaController;

    .prologue
    .line 2779
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    .line 2781
    :goto_0
    return v0

    .line 2780
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 2781
    :cond_1
    invoke-virtual {p1, p2}, Landroid/media/session/MediaController;->controlsSameSession(Landroid/media/session/MediaController;)Z

    move-result v0

    goto :goto_0
.end method

.method static final saturate(F)F
    .locals 3
    .param p0, "a"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 4188
    cmpg-float v2, p0, v0

    if-gez v2, :cond_1

    move p0, v0

    .end local p0    # "a":F
    :cond_0
    :goto_0
    return p0

    .restart local p0    # "a":F
    :cond_1
    cmpl-float v0, p0, v1

    if-lez v0, :cond_0

    move p0, v1

    goto :goto_0
.end method

.method private scheduleAutohide()V
    .locals 4

    .prologue
    .line 3861
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->cancelAutohide()V

    .line 3862
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAutohide:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3863
    return-void
.end method

.method private setControllerUsers()V
    .locals 2

    .prologue
    .line 4496
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    if-eqz v0, :cond_0

    .line 4497
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/ZenModeController;->setUserId(I)V

    .line 4499
    :cond_0
    return-void
.end method

.method private setHeadsUpVisibility(Z)V
    .locals 5
    .param p1, "vis"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4512
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v3, "PhoneStatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_1

    const-string v0, "showing"

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " heads up window"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4513
    :cond_0
    const v3, 0x8ca1

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getKey()Ljava/lang/String;

    move-result-object v0

    :goto_1
    aput-object v0, v4, v2

    if-eqz p1, :cond_3

    move v0, v1

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4516
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    if-eqz p1, :cond_4

    :goto_3
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->setVisibility(I)V

    .line 4517
    return-void

    .line 4512
    :cond_1
    const-string v0, "hiding"

    goto :goto_0

    .line 4513
    :cond_2
    const-string v0, ""

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    .line 4516
    :cond_4
    const/16 v2, 0x8

    goto :goto_3
.end method

.method private setHideKeyguard()V
    .locals 2

    .prologue
    .line 6279
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUpSlideManager:Lcom/android/systemui/vivo/common/upslide/UpSlideManager;

    if-eqz v0, :cond_0

    .line 6280
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUpSlideManager:Lcom/android/systemui/vivo/common/upslide/UpSlideManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/upslide/UpSlideManager;->setHideKeyguard(Z)V

    .line 6282
    :cond_0
    return-void
.end method

.method private setKeyguardStatusBarColor()V
    .locals 1

    .prologue
    .line 2498
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarColorManager:Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;

    if-eqz v0, :cond_0

    .line 2499
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarColorManager:Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->setKeyguardStatusBarColor()V

    .line 2501
    :cond_0
    return-void
.end method

.method private setNavigationIconHints(I)V
    .locals 1
    .param p1, "hints"    # I

    .prologue
    .line 3639
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationIconHints:I

    if-ne p1, v0, :cond_0

    .line 3647
    :goto_0
    return-void

    .line 3641
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationIconHints:I

    .line 3643
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_1

    .line 3644
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setNavigationIconHints(I)V

    .line 3646
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->checkBarModes()V

    goto :goto_0
.end method

.method private setSpeedUpState(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 6227
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsSpeedUpAnimationRunning:Z

    .line 6228
    return-void
.end method

.method private showBouncer()V
    .locals 0

    .prologue
    .line 5302
    return-void
.end method

.method private showScreenPinningNavigationBar()V
    .locals 3

    .prologue
    .line 6177
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-nez v0, :cond_0

    .line 6178
    const-string v0, "PhoneStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showScreenPinningNavigationBar: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6180
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const v1, 0x7f040023

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 6182
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(I)V

    .line 6183
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setBar(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    .line 6184
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$47;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$47;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setOnVerticalChangedListener(Lcom/android/systemui/statusbar/phone/NavigationBarView$OnVerticalChangedListener;)V

    .line 6194
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$48;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 6202
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsScreenPinningRequest:Z

    .line 6203
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->addNavigationBar()V

    .line 6205
    :cond_0
    return-void
.end method

.method private startGlyphRasterizeHack()V
    .locals 2

    .prologue
    .line 1362
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$19;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$19;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1380
    return-void
.end method

.method private startKeyguard()V
    .locals 4

    .prologue
    .line 1391
    const-class v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 1392
    .local v0, "keyguardViewMediator":Lcom/android/systemui/keyguard/KeyguardViewMediator;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->registerStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;Lcom/android/systemui/statusbar/phone/ScrimController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 1394
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->getViewMediatorCallback()Lcom/android/keyguard/ViewMediatorCallback;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    .line 1395
    return-void
.end method

.method private startNotificationLogging()V
    .locals 2

    .prologue
    .line 4640
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationLocationsChangedListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setChildLocationsChangedListener(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;)V

    .line 4647
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationLocationsChangedListener:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;->onChildLocationsChanged(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    .line 4648
    return-void
.end method

.method private stopNotificationLogging()V
    .locals 2

    .prologue
    .line 4630
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4631
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->logNotificationVisibilityChanges(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 4633
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 4635
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVisibilityReporter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4636
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setChildLocationsChangedListener(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnChildLocationsChangedListener;)V

    .line 4637
    return-void
.end method

.method private suspendAutohide()V
    .locals 2

    .prologue
    .line 3850
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAutohide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3851
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCheckBarModes:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3852
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    const/high16 v1, 0xc000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAutohideSuspended:Z

    .line 3853
    return-void

    .line 3852
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateClearAll()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2150
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationData;->hasActiveClearableNotifications()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2153
    .local v0, "showDismissView":Z
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateDismissView(Z)V

    .line 2154
    return-void

    .line 2150
    .end local v0    # "showDismissView":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateClockSize()V
    .locals 3

    .prologue
    .line 4564
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-nez v1, :cond_1

    .line 4569
    :cond_0
    :goto_0
    return-void

    .line 4565
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v2, 0x7f110082

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 4566
    .local v0, "clock":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 4567
    const v1, 0x7f0f0019

    invoke-static {v0, v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    goto :goto_0
.end method

.method private updateDozingState()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 5194
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isDozing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5202
    :goto_0
    return-void

    .line 5197
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozing:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->isPulsing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5198
    .local v0, "animate":Z
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozing:Z

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setDozing(ZZ)V

    .line 5199
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozing:Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenOnTouchLocation:Landroid/graphics/PointF;

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setDark(ZZLandroid/graphics/PointF;)V

    .line 5200
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozing:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->setDozing(Z)V

    .line 5201
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozing:Z

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->setDozing(ZZ)V

    goto :goto_0

    .line 5197
    .end local v0    # "animate":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateEmptyShadeView()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2161
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoingData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCalendarData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMusicData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 2168
    .local v0, "showEmptyShade":Z
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setShadeEmpty(Z)V

    .line 2169
    return-void

    .line 2161
    .end local v0    # "showEmptyShade":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateKeyguardState(ZZ)V
    .locals 5
    .param p1, "goingToFullShade"    # Z
    .param p2, "fromShadeLocked"    # Z

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 5166
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-ne v0, v2, :cond_1

    .line 5168
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->resetViews()V

    .line 5169
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    invoke-virtual {v0, v2, p2}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->setKeyguard(ZZ)V

    .line 5176
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-ne v0, v4, :cond_4

    .line 5177
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->setKeyguardShowing(Z)V

    .line 5181
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAway:Z

    invoke-virtual {v0, v2, v3, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setBarState(IZZ)V

    .line 5182
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateDozingState()V

    .line 5183
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updatePublicMode()V

    .line 5184
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateStackScrollerState(Z)V

    .line 5185
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNotifications()V

    .line 5186
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->checkBarModes()V

    .line 5187
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateCarrierLabelVisibility(Z)V

    .line 5188
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateMediaMetaData(Z)V

    .line 5189
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isSecure()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->notifyKeyguardState(ZZ)V

    .line 5191
    return-void

    .line 5172
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    if-nez p1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-eq v0, v4, :cond_2

    if-eqz p2, :cond_3

    :cond_2
    move v0, v2

    :goto_2
    invoke-virtual {v3, v1, v0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->setKeyguard(ZZ)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_2

    .line 5179
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setKeyguardShowing(Z)V

    goto :goto_1
.end method

.method private updateNotificationIcons()V
    .locals 24

    .prologue
    .line 2271
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v21, -0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNaturalBarHeight:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v15, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2276
    .local v15, "params":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v6

    .line 2277
    .local v6, "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2278
    .local v2, "N":I
    new-instance v18, Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 2282
    .local v18, "toShow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/StatusBarIconView;>;"
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 2283
    .local v19, "uniqueIcon":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotiIconRedrawHelper:Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;->setIsThereIrreleventIcon(Z)V

    .line 2287
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    if-ge v13, v2, :cond_4

    .line 2288
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 2289
    .local v11, "ent":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v0, v11, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/service/notification/StatusBarNotification;->getScore()I

    move-result v21

    const/16 v22, -0xa

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_1

    iget-object v0, v11, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/systemui/statusbar/NotificationData;->showNotificationEvenIfUnprovisioned(Landroid/service/notification/StatusBarNotification;)Z

    move-result v21

    if-nez v21, :cond_1

    .line 2287
    :cond_0
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 2295
    :cond_1
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v11, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v0, v11, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/app/Notification;->icon:I

    move/from16 v22, v0

    iget-object v0, v11, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/systemui/vivo/common/utils/DoubleInstanceUtils;->getStatusBarNotificationInstanceId(Landroid/service/notification/StatusBarNotification;)I

    move-result v23

    add-int v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 2297
    .local v14, "key":Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    iget-object v0, v11, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/app/Notification;->iconLevel:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_0

    .line 2301
    :cond_2
    iget-object v0, v11, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->isPartitionTitle(Landroid/view/View;)Z

    move-result v21

    if-nez v21, :cond_0

    .line 2305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotiIconRedrawHelper:Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconColorFlag:I

    move/from16 v22, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v1, v11}, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;->setRedrawStyleIcon(ILcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v21

    if-nez v21, :cond_3

    .line 2306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotiIconRedrawHelper:Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;->setIsThereIrreleventIcon(Z)V

    goto/16 :goto_1

    .line 2310
    :cond_3
    iget-object v0, v11, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2313
    iget-object v0, v11, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/app/Notification;->iconLevel:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 2318
    .end local v11    # "ent":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v14    # "key":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoingData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v7

    .line 2319
    .local v7, "activeOngoings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2320
    .local v3, "N2":I
    const/4 v13, 0x0

    :goto_2
    if-ge v13, v3, :cond_9

    .line 2321
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 2322
    .restart local v11    # "ent":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v0, v11, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/service/notification/StatusBarNotification;->getScore()I

    move-result v21

    const/16 v22, -0xa

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_6

    iget-object v0, v11, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/systemui/statusbar/NotificationData;->showNotificationEvenIfUnprovisioned(Landroid/service/notification/StatusBarNotification;)Z

    move-result v21

    if-nez v21, :cond_6

    .line 2320
    :cond_5
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 2326
    :cond_6
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v11, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v0, v11, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/app/Notification;->icon:I

    move/from16 v22, v0

    iget-object v0, v11, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/systemui/vivo/common/utils/DoubleInstanceUtils;->getStatusBarNotificationInstanceId(Landroid/service/notification/StatusBarNotification;)I

    move-result v23

    add-int v22, v22, v23

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 2328
    .restart local v14    # "key":Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    iget-object v0, v11, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/app/Notification;->iconLevel:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_5

    .line 2332
    :cond_7
    iget-object v0, v11, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->isPartitionTitle(Landroid/view/View;)Z

    move-result v21

    if-nez v21, :cond_5

    .line 2336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotiIconRedrawHelper:Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconColorFlag:I

    move/from16 v22, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v1, v11}, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;->setRedrawStyleIcon(ILcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v21

    if-nez v21, :cond_8

    .line 2337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotiIconRedrawHelper:Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;->setIsThereIrreleventIcon(Z)V

    goto/16 :goto_3

    .line 2340
    :cond_8
    iget-object v0, v11, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2341
    iget-object v0, v11, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/app/Notification;->iconLevel:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 2344
    .end local v11    # "ent":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v14    # "key":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMusicData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v5

    .line 2345
    .local v5, "activeMusics":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2346
    .local v4, "N4":I
    const/4 v13, 0x0

    :goto_4
    if-ge v13, v4, :cond_e

    .line 2347
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 2348
    .restart local v11    # "ent":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v0, v11, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/service/notification/StatusBarNotification;->getScore()I

    move-result v21

    const/16 v22, -0xa

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_b

    iget-object v0, v11, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/systemui/statusbar/NotificationData;->showNotificationEvenIfUnprovisioned(Landroid/service/notification/StatusBarNotification;)Z

    move-result v21

    if-nez v21, :cond_b

    .line 2346
    :cond_a
    :goto_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 2352
    :cond_b
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v11, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v0, v11, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/app/Notification;->icon:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 2353
    .restart local v14    # "key":Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_c

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    iget-object v0, v11, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/app/Notification;->iconLevel:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_a

    .line 2357
    :cond_c
    iget-object v0, v11, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->isPartitionTitle(Landroid/view/View;)Z

    move-result v21

    if-nez v21, :cond_a

    .line 2361
    iget-object v0, v11, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/app/Notification;->priority:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_a

    .line 2366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotiIconRedrawHelper:Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconColorFlag:I

    move/from16 v22, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v1, v11}, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;->setRedrawStyleIcon(ILcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v21

    if-nez v21, :cond_d

    .line 2367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotiIconRedrawHelper:Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;->setIsThereIrreleventIcon(Z)V

    goto/16 :goto_5

    .line 2370
    :cond_d
    iget-object v0, v11, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    move-object/from16 v21, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2371
    iget-object v0, v11, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/app/Notification;->iconLevel:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 2375
    .end local v11    # "ent":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v14    # "key":Ljava/lang/String;
    :cond_e
    const/16 v19, 0x0

    .line 2378
    sget-boolean v21, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v21, :cond_f

    .line 2379
    const-string v21, "PhoneStatusBar"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "refreshing icons: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " notifications, mNotificationIcons="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/vivo/common/notification/VivoIconMerger;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2383
    :cond_f
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 2384
    .local v16, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v13, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/vivo/common/notification/VivoIconMerger;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/vivo/common/notification/VivoIconMerger;->getChildCount()I

    move-result v21

    move/from16 v0, v21

    if-ge v13, v0, :cond_12

    .line 2385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/vivo/common/notification/VivoIconMerger;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Lcom/android/systemui/vivo/common/notification/VivoIconMerger;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 2387
    .local v9, "child":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotiIconRedrawHelper:Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;->isEllipsisIconView(Landroid/view/View;)Z

    move-result v21

    if-eqz v21, :cond_11

    .line 2384
    :cond_10
    :goto_7
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 2391
    :cond_11
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_10

    .line 2392
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 2396
    .end local v9    # "child":Landroid/view/View;
    :cond_12
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 2397
    .local v17, "toRemoveCount":I
    const/4 v13, 0x0

    :goto_8
    move/from16 v0, v17

    if-ge v13, v0, :cond_13

    .line 2398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/vivo/common/notification/VivoIconMerger;

    move-object/from16 v22, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/view/View;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/notification/VivoIconMerger;->removeView(Landroid/view/View;)V

    .line 2400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotiIconRedrawHelper:Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;->setIsThereMoreIcon(Z)V

    .line 2397
    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    .line 2404
    :cond_13
    const/4 v13, 0x0

    :goto_9
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v13, v0, :cond_15

    .line 2405
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/view/View;

    .line 2406
    .local v20, "v":Landroid/view/View;
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v21

    if-nez v21, :cond_14

    .line 2407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/vivo/common/notification/VivoIconMerger;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v13, v15}, Lcom/android/systemui/vivo/common/notification/VivoIconMerger;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2404
    :cond_14
    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    .line 2412
    .end local v20    # "v":Landroid/view/View;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/vivo/common/notification/VivoIconMerger;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/vivo/common/notification/VivoIconMerger;->getChildCount()I

    move-result v10

    .line 2415
    .local v10, "childCount":I
    const/4 v13, 0x0

    :goto_a
    if-ge v13, v10, :cond_17

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v13, v0, :cond_17

    .line 2417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/vivo/common/notification/VivoIconMerger;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Lcom/android/systemui/vivo/common/notification/VivoIconMerger;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 2418
    .local v8, "actual":Landroid/view/View;
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 2419
    .local v12, "expected":Lcom/android/systemui/statusbar/StatusBarIconView;
    if-ne v8, v12, :cond_16

    .line 2415
    :goto_b
    add-int/lit8 v13, v13, 0x1

    goto :goto_a

    .line 2422
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/vivo/common/notification/VivoIconMerger;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Lcom/android/systemui/vivo/common/notification/VivoIconMerger;->removeView(Landroid/view/View;)V

    .line 2423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/vivo/common/notification/VivoIconMerger;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12, v13}, Lcom/android/systemui/vivo/common/notification/VivoIconMerger;->addView(Landroid/view/View;I)V

    goto :goto_b

    .line 2426
    .end local v8    # "actual":Landroid/view/View;
    .end local v12    # "expected":Lcom/android/systemui/statusbar/StatusBarIconView;
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotiIconRedrawHelper:Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;->refreshEllipsisIcon()V

    .line 2428
    return-void
.end method

.method private updateNotificationShade()V
    .locals 27

    .prologue
    .line 1951
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v25, v0

    if-nez v25, :cond_0

    .line 2136
    :goto_0
    return-void

    .line 1954
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isCollapsing()Z

    move-result v25

    if-eqz v25, :cond_1

    .line 1955
    new-instance v25, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$24;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$24;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->addPostCollapseAction(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1965
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPartitionManager:Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->updatePartitionTitles()V

    .line 1968
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v8

    .line 1971
    .local v8, "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    new-instance v22, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoingData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    add-int v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCalendarData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    add-int v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMusicData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    add-int v25, v25, v26

    move-object/from16 v0, v22

    move/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1978
    .local v22, "toShow":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMusicData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v7

    .line 1979
    .local v7, "activeMusics":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1980
    .local v5, "N4":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    if-ge v13, v5, :cond_a

    .line 1981
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 1982
    .local v11, "ent":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v0, v11, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v25

    move-object/from16 v0, v25

    iget v0, v0, Landroid/app/Notification;->visibility:I

    move/from16 v24, v0

    .line 1985
    .local v24, "vis":I
    iget-object v0, v11, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->userAllowsPrivateNotificationsInPublic(I)Z

    move-result v25

    if-nez v25, :cond_5

    const/4 v12, 0x1

    .line 1987
    .local v12, "hideSensitive":Z
    :goto_2
    if-nez v24, :cond_6

    const/16 v18, 0x1

    .line 1988
    .local v18, "sensitiveNote":Z
    :goto_3
    iget-object v0, v11, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->packageHasVisibilityOverride(Ljava/lang/String;)Z

    move-result v19

    .line 1989
    .local v19, "sensitivePackage":Z
    if-eqz v18, :cond_2

    if-nez v12, :cond_3

    :cond_2
    if-eqz v19, :cond_7

    :cond_3
    const/16 v17, 0x1

    .line 1990
    .local v17, "sensitive":Z
    :goto_4
    if-eqz v17, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isLockscreenPublicMode()Z

    move-result v25

    if-eqz v25, :cond_8

    const/16 v20, 0x1

    .line 1991
    .local v20, "showingPublic":Z
    :goto_5
    iget-object v0, v11, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setSensitive(Z)V

    .line 1992
    iget-boolean v0, v11, Lcom/android/systemui/statusbar/NotificationData$Entry;->autoRedacted:Z

    move/from16 v25, v0

    if-eqz v25, :cond_4

    iget-boolean v0, v11, Lcom/android/systemui/statusbar/NotificationData$Entry;->legacy:Z

    move/from16 v25, v0

    if-eqz v25, :cond_4

    .line 1995
    if-eqz v20, :cond_9

    .line 1996
    iget-object v0, v11, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setShowingLegacyBackground(Z)V

    .line 2001
    :cond_4
    :goto_6
    iget-object v0, v11, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v25, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1980
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 1985
    .end local v12    # "hideSensitive":Z
    .end local v17    # "sensitive":Z
    .end local v18    # "sensitiveNote":Z
    .end local v19    # "sensitivePackage":Z
    .end local v20    # "showingPublic":Z
    :cond_5
    const/4 v12, 0x0

    goto :goto_2

    .line 1987
    .restart local v12    # "hideSensitive":Z
    :cond_6
    const/16 v18, 0x0

    goto :goto_3

    .line 1989
    .restart local v18    # "sensitiveNote":Z
    .restart local v19    # "sensitivePackage":Z
    :cond_7
    const/16 v17, 0x0

    goto :goto_4

    .line 1990
    .restart local v17    # "sensitive":Z
    :cond_8
    const/16 v20, 0x0

    goto :goto_5

    .line 1998
    .restart local v20    # "showingPublic":Z
    :cond_9
    iget-object v0, v11, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setShowingLegacyBackground(Z)V

    goto :goto_6

    .line 2004
    .end local v11    # "ent":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v12    # "hideSensitive":Z
    .end local v17    # "sensitive":Z
    .end local v18    # "sensitiveNote":Z
    .end local v19    # "sensitivePackage":Z
    .end local v20    # "showingPublic":Z
    .end local v24    # "vis":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCalendarData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v6

    .line 2005
    .local v6, "activeCalendars":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2006
    .local v4, "N3":I
    const/4 v13, 0x0

    :goto_7
    if-ge v13, v4, :cond_13

    .line 2007
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 2008
    .restart local v11    # "ent":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v0, v11, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v25

    move-object/from16 v0, v25

    iget v0, v0, Landroid/app/Notification;->visibility:I

    move/from16 v24, v0

    .line 2011
    .restart local v24    # "vis":I
    iget-object v0, v11, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->userAllowsPrivateNotificationsInPublic(I)Z

    move-result v25

    if-nez v25, :cond_e

    const/4 v12, 0x1

    .line 2013
    .restart local v12    # "hideSensitive":Z
    :goto_8
    if-nez v24, :cond_f

    const/16 v18, 0x1

    .line 2014
    .restart local v18    # "sensitiveNote":Z
    :goto_9
    iget-object v0, v11, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->packageHasVisibilityOverride(Ljava/lang/String;)Z

    move-result v19

    .line 2015
    .restart local v19    # "sensitivePackage":Z
    if-eqz v18, :cond_b

    if-nez v12, :cond_c

    :cond_b
    if-eqz v19, :cond_10

    :cond_c
    const/16 v17, 0x1

    .line 2016
    .restart local v17    # "sensitive":Z
    :goto_a
    if-eqz v17, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isLockscreenPublicMode()Z

    move-result v25

    if-eqz v25, :cond_11

    const/16 v20, 0x1

    .line 2017
    .restart local v20    # "showingPublic":Z
    :goto_b
    iget-object v0, v11, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setSensitive(Z)V

    .line 2018
    iget-boolean v0, v11, Lcom/android/systemui/statusbar/NotificationData$Entry;->autoRedacted:Z

    move/from16 v25, v0

    if-eqz v25, :cond_d

    iget-boolean v0, v11, Lcom/android/systemui/statusbar/NotificationData$Entry;->legacy:Z

    move/from16 v25, v0

    if-eqz v25, :cond_d

    .line 2021
    if-eqz v20, :cond_12

    .line 2022
    iget-object v0, v11, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setShowingLegacyBackground(Z)V

    .line 2027
    :cond_d
    :goto_c
    iget-object v0, v11, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v25, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2006
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 2011
    .end local v12    # "hideSensitive":Z
    .end local v17    # "sensitive":Z
    .end local v18    # "sensitiveNote":Z
    .end local v19    # "sensitivePackage":Z
    .end local v20    # "showingPublic":Z
    :cond_e
    const/4 v12, 0x0

    goto :goto_8

    .line 2013
    .restart local v12    # "hideSensitive":Z
    :cond_f
    const/16 v18, 0x0

    goto :goto_9

    .line 2015
    .restart local v18    # "sensitiveNote":Z
    .restart local v19    # "sensitivePackage":Z
    :cond_10
    const/16 v17, 0x0

    goto :goto_a

    .line 2016
    .restart local v17    # "sensitive":Z
    :cond_11
    const/16 v20, 0x0

    goto :goto_b

    .line 2024
    .restart local v20    # "showingPublic":Z
    :cond_12
    iget-object v0, v11, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setShowingLegacyBackground(Z)V

    goto :goto_c

    .line 2031
    .end local v11    # "ent":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v12    # "hideSensitive":Z
    .end local v17    # "sensitive":Z
    .end local v18    # "sensitiveNote":Z
    .end local v19    # "sensitivePackage":Z
    .end local v20    # "showingPublic":Z
    .end local v24    # "vis":I
    :cond_13
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2032
    .local v2, "N":I
    const/4 v13, 0x0

    :goto_d
    if-ge v13, v2, :cond_1c

    .line 2033
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 2034
    .restart local v11    # "ent":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v0, v11, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v25

    move-object/from16 v0, v25

    iget v0, v0, Landroid/app/Notification;->visibility:I

    move/from16 v24, v0

    .line 2037
    .restart local v24    # "vis":I
    iget-object v0, v11, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->userAllowsPrivateNotificationsInPublic(I)Z

    move-result v25

    if-nez v25, :cond_17

    const/4 v12, 0x1

    .line 2039
    .restart local v12    # "hideSensitive":Z
    :goto_e
    if-nez v24, :cond_18

    const/16 v18, 0x1

    .line 2040
    .restart local v18    # "sensitiveNote":Z
    :goto_f
    iget-object v0, v11, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->packageHasVisibilityOverride(Ljava/lang/String;)Z

    move-result v19

    .line 2041
    .restart local v19    # "sensitivePackage":Z
    if-eqz v18, :cond_14

    if-nez v12, :cond_15

    :cond_14
    if-eqz v19, :cond_19

    :cond_15
    const/16 v17, 0x1

    .line 2042
    .restart local v17    # "sensitive":Z
    :goto_10
    if-eqz v17, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isLockscreenPublicMode()Z

    move-result v25

    if-eqz v25, :cond_1a

    const/16 v20, 0x1

    .line 2043
    .restart local v20    # "showingPublic":Z
    :goto_11
    iget-object v0, v11, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setSensitive(Z)V

    .line 2044
    iget-boolean v0, v11, Lcom/android/systemui/statusbar/NotificationData$Entry;->autoRedacted:Z

    move/from16 v25, v0

    if-eqz v25, :cond_16

    iget-boolean v0, v11, Lcom/android/systemui/statusbar/NotificationData$Entry;->legacy:Z

    move/from16 v25, v0

    if-eqz v25, :cond_16

    .line 2047
    if-eqz v20, :cond_1b

    .line 2048
    iget-object v0, v11, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setShowingLegacyBackground(Z)V

    .line 2053
    :cond_16
    :goto_12
    iget-object v0, v11, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v25, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2032
    add-int/lit8 v13, v13, 0x1

    goto :goto_d

    .line 2037
    .end local v12    # "hideSensitive":Z
    .end local v17    # "sensitive":Z
    .end local v18    # "sensitiveNote":Z
    .end local v19    # "sensitivePackage":Z
    .end local v20    # "showingPublic":Z
    :cond_17
    const/4 v12, 0x0

    goto :goto_e

    .line 2039
    .restart local v12    # "hideSensitive":Z
    :cond_18
    const/16 v18, 0x0

    goto :goto_f

    .line 2041
    .restart local v18    # "sensitiveNote":Z
    .restart local v19    # "sensitivePackage":Z
    :cond_19
    const/16 v17, 0x0

    goto :goto_10

    .line 2042
    .restart local v17    # "sensitive":Z
    :cond_1a
    const/16 v20, 0x0

    goto :goto_11

    .line 2050
    .restart local v20    # "showingPublic":Z
    :cond_1b
    iget-object v0, v11, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setShowingLegacyBackground(Z)V

    goto :goto_12

    .line 2057
    .end local v11    # "ent":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v12    # "hideSensitive":Z
    .end local v17    # "sensitive":Z
    .end local v18    # "sensitiveNote":Z
    .end local v19    # "sensitivePackage":Z
    .end local v20    # "showingPublic":Z
    .end local v24    # "vis":I
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoingData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v9

    .line 2058
    .local v9, "activeOngoings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2059
    .local v3, "N2":I
    const/4 v13, 0x0

    :goto_13
    if-ge v13, v3, :cond_25

    .line 2060
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 2061
    .restart local v11    # "ent":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v0, v11, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v25

    move-object/from16 v0, v25

    iget v0, v0, Landroid/app/Notification;->visibility:I

    move/from16 v24, v0

    .line 2064
    .restart local v24    # "vis":I
    iget-object v0, v11, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->userAllowsPrivateNotificationsInPublic(I)Z

    move-result v25

    if-nez v25, :cond_20

    const/4 v12, 0x1

    .line 2066
    .restart local v12    # "hideSensitive":Z
    :goto_14
    if-nez v24, :cond_21

    const/16 v18, 0x1

    .line 2067
    .restart local v18    # "sensitiveNote":Z
    :goto_15
    iget-object v0, v11, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->packageHasVisibilityOverride(Ljava/lang/String;)Z

    move-result v19

    .line 2068
    .restart local v19    # "sensitivePackage":Z
    if-eqz v18, :cond_1d

    if-nez v12, :cond_1e

    :cond_1d
    if-eqz v19, :cond_22

    :cond_1e
    const/16 v17, 0x1

    .line 2069
    .restart local v17    # "sensitive":Z
    :goto_16
    if-eqz v17, :cond_23

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isLockscreenPublicMode()Z

    move-result v25

    if-eqz v25, :cond_23

    const/16 v20, 0x1

    .line 2070
    .restart local v20    # "showingPublic":Z
    :goto_17
    iget-object v0, v11, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setSensitive(Z)V

    .line 2071
    iget-boolean v0, v11, Lcom/android/systemui/statusbar/NotificationData$Entry;->autoRedacted:Z

    move/from16 v25, v0

    if-eqz v25, :cond_1f

    iget-boolean v0, v11, Lcom/android/systemui/statusbar/NotificationData$Entry;->legacy:Z

    move/from16 v25, v0

    if-eqz v25, :cond_1f

    .line 2074
    if-eqz v20, :cond_24

    .line 2075
    iget-object v0, v11, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setShowingLegacyBackground(Z)V

    .line 2080
    :cond_1f
    :goto_18
    iget-object v0, v11, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v25, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2059
    add-int/lit8 v13, v13, 0x1

    goto :goto_13

    .line 2064
    .end local v12    # "hideSensitive":Z
    .end local v17    # "sensitive":Z
    .end local v18    # "sensitiveNote":Z
    .end local v19    # "sensitivePackage":Z
    .end local v20    # "showingPublic":Z
    :cond_20
    const/4 v12, 0x0

    goto :goto_14

    .line 2066
    .restart local v12    # "hideSensitive":Z
    :cond_21
    const/16 v18, 0x0

    goto :goto_15

    .line 2068
    .restart local v18    # "sensitiveNote":Z
    .restart local v19    # "sensitivePackage":Z
    :cond_22
    const/16 v17, 0x0

    goto :goto_16

    .line 2069
    .restart local v17    # "sensitive":Z
    :cond_23
    const/16 v20, 0x0

    goto :goto_17

    .line 2077
    .restart local v20    # "showingPublic":Z
    :cond_24
    iget-object v0, v11, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setShowingLegacyBackground(Z)V

    goto :goto_18

    .line 2084
    .end local v11    # "ent":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v12    # "hideSensitive":Z
    .end local v17    # "sensitive":Z
    .end local v18    # "sensitiveNote":Z
    .end local v19    # "sensitivePackage":Z
    .end local v20    # "showingPublic":Z
    .end local v24    # "vis":I
    :cond_25
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 2085
    .local v21, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v13, 0x0

    :goto_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v25

    move/from16 v0, v25

    if-ge v13, v0, :cond_27

    .line 2086
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 2087
    .local v10, "child":Landroid/view/View;
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_26

    instance-of v0, v10, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move/from16 v25, v0

    if-eqz v25, :cond_26

    .line 2088
    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2085
    :cond_26
    add-int/lit8 v13, v13, 0x1

    goto :goto_19

    .line 2092
    .end local v10    # "child":Landroid/view/View;
    :cond_27
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_1a
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_28

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/View;

    .line 2093
    .local v16, "remove":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeView(Landroid/view/View;)V

    goto :goto_1a

    .line 2095
    .end local v16    # "remove":Landroid/view/View;
    :cond_28
    const/4 v13, 0x0

    :goto_1b
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v13, v0, :cond_2a

    .line 2096
    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/view/View;

    .line 2097
    .local v23, "v":Landroid/view/View;
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v25

    if-nez v25, :cond_29

    .line 2098
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->addView(Landroid/view/View;)V

    .line 2095
    :cond_29
    add-int/lit8 v13, v13, 0x1

    goto :goto_1b

    .line 2105
    .end local v23    # "v":Landroid/view/View;
    :cond_2a
    const/4 v15, 0x0

    .line 2106
    .local v15, "j":I
    const/4 v13, 0x0

    :goto_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v25

    move/from16 v0, v25

    if-ge v13, v0, :cond_2d

    .line 2107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 2108
    .restart local v10    # "child":Landroid/view/View;
    instance-of v0, v10, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move/from16 v25, v0

    if-nez v25, :cond_2b

    .line 2106
    :goto_1d
    add-int/lit8 v13, v13, 0x1

    goto :goto_1c

    .line 2113
    :cond_2b
    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v0, v25

    if-ne v10, v0, :cond_2c

    .line 2115
    add-int/lit8 v15, v15, 0x1

    .line 2116
    goto :goto_1d

    .line 2121
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v26, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/view/View;

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v13}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->changeViewPosition(Landroid/view/View;I)V

    .line 2122
    add-int/lit8 v15, v15, 0x1

    goto :goto_1d

    .line 2124
    .end local v10    # "child":Landroid/view/View;
    :cond_2d
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateRowStates()V

    .line 2125
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateSpeedbump()V

    .line 2126
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateClearAll()V

    .line 2127
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateEmptyShadeView()V

    .line 2132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v26, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isDeviceProvisioned()Z

    move-result v25

    if-eqz v25, :cond_2f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSetup:Z

    move/from16 v25, v0

    if-nez v25, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    move-object/from16 v25, v0

    if-eqz v25, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->isSimpleUserSwitcher()Z

    move-result v25

    if-nez v25, :cond_2f

    :cond_2e
    const/16 v25, 0x1

    :goto_1e
    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansionEnabled(Z)V

    .line 2135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShadeUpdates:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ShadeUpdates;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ShadeUpdates;->check()V

    goto/16 :goto_0

    .line 2132
    :cond_2f
    const/16 v25, 0x0

    goto :goto_1e
.end method

.method private updatePublicMode()V
    .locals 2

    .prologue
    .line 5160
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isSecure(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setLockscreenPublicMode(Z)V

    .line 5162
    return-void

    .line 5160
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateShowSearchHoldoff()V
    .locals 2

    .prologue
    .line 1946
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowSearchHoldoff:I

    .line 1948
    return-void
.end method

.method private updateSpeedbump()V
    .locals 14

    .prologue
    .line 2172
    const/4 v11, -0x1

    .line 2173
    .local v11, "speedbumpIndex":I
    const/4 v8, 0x0

    .line 2174
    .local v8, "currentIndex":I
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v6

    .line 2175
    .local v6, "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2176
    .local v0, "N":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v0, :cond_0

    .line 2177
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 2178
    .local v9, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v12, v9, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-eq v12, v13, :cond_4

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    iget-object v13, v9, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/android/systemui/statusbar/NotificationData;->isAmbient(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 2180
    move v11, v8

    .line 2186
    .end local v9    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_0
    const/4 v12, -0x1

    if-ne v11, v12, :cond_1

    .line 2187
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoingData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v7

    .line 2188
    .local v7, "activeOngoings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2189
    .local v1, "N2":I
    const/4 v10, 0x0

    :goto_1
    if-ge v10, v1, :cond_1

    .line 2190
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 2191
    .restart local v9    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v12, v9, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-eq v12, v13, :cond_5

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoingData:Lcom/android/systemui/statusbar/NotificationData;

    iget-object v13, v9, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/android/systemui/statusbar/NotificationData;->isAmbient(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 2193
    move v11, v8

    .line 2200
    .end local v1    # "N2":I
    .end local v7    # "activeOngoings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    .end local v9    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_1
    const/4 v12, -0x1

    if-ne v11, v12, :cond_2

    .line 2201
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCalendarData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v4

    .line 2202
    .local v4, "activeCalendars":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2203
    .local v2, "N3":I
    const/4 v10, 0x0

    :goto_2
    if-ge v10, v2, :cond_2

    .line 2204
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 2205
    .restart local v9    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v12, v9, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-eq v12, v13, :cond_6

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCalendarData:Lcom/android/systemui/statusbar/NotificationData;

    iget-object v13, v9, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/android/systemui/statusbar/NotificationData;->isAmbient(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 2207
    move v11, v8

    .line 2214
    .end local v2    # "N3":I
    .end local v4    # "activeCalendars":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    .end local v9    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_2
    const/4 v12, -0x1

    if-ne v11, v12, :cond_3

    .line 2215
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMusicData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v5

    .line 2216
    .local v5, "activeMusics":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2217
    .local v3, "N4":I
    const/4 v10, 0x0

    :goto_3
    if-ge v10, v3, :cond_3

    .line 2218
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 2219
    .restart local v9    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v12, v9, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-eq v12, v13, :cond_7

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMusicData:Lcom/android/systemui/statusbar/NotificationData;

    iget-object v13, v9, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/android/systemui/statusbar/NotificationData;->isAmbient(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 2221
    move v11, v8

    .line 2228
    .end local v3    # "N4":I
    .end local v5    # "activeMusics":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    .end local v9    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_3
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v12, v11}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateSpeedBumpIndex(I)V

    .line 2229
    return-void

    .line 2183
    .restart local v9    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_4
    add-int/lit8 v8, v8, 0x1

    .line 2176
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 2196
    .restart local v1    # "N2":I
    .restart local v7    # "activeOngoings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    :cond_5
    add-int/lit8 v8, v8, 0x1

    .line 2189
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 2210
    .end local v1    # "N2":I
    .end local v7    # "activeOngoings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    .restart local v2    # "N3":I
    .restart local v4    # "activeCalendars":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    :cond_6
    add-int/lit8 v8, v8, 0x1

    .line 2203
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 2224
    .end local v2    # "N3":I
    .end local v4    # "activeCalendars":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    .restart local v3    # "N4":I
    .restart local v5    # "activeMusics":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    :cond_7
    add-int/lit8 v8, v8, 0x1

    .line 2217
    add-int/lit8 v10, v10, 0x1

    goto :goto_3
.end method

.method private userAutohide()V
    .locals 4

    .prologue
    .line 3875
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->cancelAutohide()V

    .line 3876
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAutohide:Ljava/lang/Runnable;

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3877
    return-void
.end method

.method public static viewInfo(Landroid/view/View;)Ljava/lang/String;
    .locals 2
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 4023
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private wakeUp()V
    .locals 4

    .prologue
    .line 6113
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 6114
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 6115
    return-void
.end method


# virtual methods
.method public addIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 6
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "viewIndex"    # I
    .param p4, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 1638
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v5}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;)V

    .line 1639
    .local v0, "view":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v0, p4}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 1640
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconSize:I

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, p3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1642
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    .end local v0    # "view":Lcom/android/systemui/statusbar/StatusBarIconView;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v5}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;)V

    .line 1643
    .restart local v0    # "view":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v0, p4}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 1644
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIconsKeyguard:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconSize:I

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, p3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1646
    return-void
.end method

.method public addNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 12
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1684
    const-string v7, "PhoneStatusBar"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addNotification key = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", pkg is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", instanceId is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Lcom/android/systemui/vivo/common/utils/DoubleInstanceUtils;->getStatusBarNotificationInstanceId(Landroid/service/notification/StatusBarNotification;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", id is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", ticker is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v9

    iget-object v9, v9, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1691
    const-string v7, "com.android.incallui"

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v7

    const/16 v8, 0x2712

    if-ne v7, v8, :cond_0

    .line 1692
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->collapseUpSlideView()V

    .line 1697
    :cond_0
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 1701
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSceneNotificationManager:Lcom/android/systemui/vivo/common/notification/SceneNotificationManager;

    invoke-virtual {v7}, Lcom/android/systemui/vivo/common/notification/SceneNotificationManager;->isSpsState()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1702
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSceneNotificationManager:Lcom/android/systemui/vivo/common/notification/SceneNotificationManager;

    invoke-virtual {v7, p1}, Lcom/android/systemui/vivo/common/notification/SceneNotificationManager;->isNotificationAvailableOnSps(Landroid/service/notification/StatusBarNotification;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1819
    :cond_1
    :goto_0
    return-void

    .line 1709
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isThisJunk(Landroid/service/notification/StatusBarNotification;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1715
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationOpsManager:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {p1}, Lcom/android/systemui/vivo/common/utils/DoubleInstanceUtils;->getStatusBarNotificationInstanceId(Landroid/service/notification/StatusBarNotification;)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->getNotificationTipStyle(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 1717
    .local v4, "style":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isDeviceProvisioned()Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "1"

    const-string v8, "sys.boot.reason"

    const-string v9, "0"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_3
    move v2, v6

    .line 1719
    .local v2, "isHeadsUpForbid":Z
    :goto_1
    const-string v7, "PhoneStatusBar"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isHeadsUpForbid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1721
    if-nez v2, :cond_11

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;

    move-result-object v7

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;->isForbidByMultiWindow(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_11

    const-string v7, "1"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v7

    if-nez v7, :cond_11

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFloorFullyExpand()Z

    move-result v7

    if-nez v7, :cond_11

    .line 1728
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUseHeadsUp:Z

    if-eqz v7, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->shouldInterrupt(Landroid/service/notification/StatusBarNotification;)Z

    move-result v7

    if-nez v7, :cond_5

    :cond_4
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;

    move-result-object v7

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->isHoodAvailableForNotification(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_8

    invoke-static {p1}, Lcom/android/systemui/vivo/common/utils/DevelopModeManager;->isNotify(Landroid/service/notification/StatusBarNotification;)Z

    move-result v7

    if-nez v7, :cond_8

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPartitionManager:Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;

    invoke-virtual {v7, p1}, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->considerAsOngoing(Landroid/service/notification/StatusBarNotification;)Z

    move-result v7

    if-nez v7, :cond_8

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-object v7, v7, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v7, :cond_8

    .line 1734
    :cond_5
    sget-boolean v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v7, :cond_6

    const-string v7, "PhoneStatusBar"

    const-string v8, "launching notification in heads up mode"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1735
    :cond_6
    new-instance v1, Lcom/android/systemui/statusbar/NotificationData$Entry;

    const/4 v7, 0x0

    invoke-direct {v1, p1, v7}, Lcom/android/systemui/statusbar/NotificationData$Entry;-><init>(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/StatusBarIconView;)V

    .line 1736
    .local v1, "interruptionCandidate":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getHolder()Landroid/view/ViewGroup;

    move-result-object v0

    .line 1737
    .local v0, "holder":Landroid/view/ViewGroup;
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->inflateViewsForHeadsUp(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1739
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v5, v1}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->showNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    goto/16 :goto_0

    .end local v0    # "holder":Landroid/view/ViewGroup;
    .end local v1    # "interruptionCandidate":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v2    # "isHeadsUpForbid":Z
    :cond_7
    move v2, v5

    .line 1717
    goto/16 :goto_1

    .line 1746
    .restart local v2    # "isHeadsUpForbid":Z
    :cond_8
    const-string v8, "HeadsUp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "show headsupview failed because:  situation 1:    mUseHeadsUp:  "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUseHeadsUp:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "   shouldInterrupt(notification): "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->shouldInterrupt(Landroid/service/notification/StatusBarNotification;)Z

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "      situation 2:   "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "   !isHoodAvailableForNotification:  "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;

    move-result-object v7

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v11

    invoke-virtual {v7, v10, v11}, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->isHoodAvailableForNotification(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_e

    move v7, v6

    :goto_2
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "   !considerAsOngoing(notification):  "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPartitionManager:Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;

    invoke-virtual {v7, p1}, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->considerAsOngoing(Landroid/service/notification/StatusBarNotification;)Z

    move-result v7

    if-nez v7, :cond_f

    move v7, v6

    :goto_3
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "   tickerIsNotNull:  "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-object v7, v7, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v7, :cond_10

    move v7, v6

    :goto_4
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1763
    :cond_9
    :goto_5
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->createNotificationViews(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v3

    .line 1764
    .local v3, "shadeEntry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-eqz v3, :cond_1

    .line 1769
    iput-boolean v5, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->displayFromHeadsUp:Z

    .line 1773
    invoke-static {p1}, Lcom/android/systemui/vivo/common/utils/DevelopModeManager;->isNotify(Landroid/service/notification/StatusBarNotification;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1774
    invoke-static {v6}, Lcom/android/systemui/vivo/common/utils/DevelopModeManager;->setState(Z)V

    .line 1775
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/systemui/vivo/common/utils/DevelopModeManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/utils/DevelopModeManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/vivo/common/utils/DevelopModeManager;->updateDisplay()V

    .line 1780
    :cond_a
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;

    move-result-object v7

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->isHoodAvailableForNotification(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1781
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;

    move-result-object v7

    invoke-virtual {v7, p1, v5}, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->updateHoodDisplay(Landroid/service/notification/StatusBarNotification;Z)V

    .line 1785
    :cond_b
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-object v5, v5, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v5, :cond_16

    .line 1788
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->awakenDreams()V

    .line 1791
    sget-boolean v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v5, :cond_c

    const-string v5, "PhoneStatusBar"

    const-string v6, "Notification has fullScreenIntent; sending fullScreenIntent"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1793
    :cond_c
    const v5, 0x8ca2

    :try_start_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 1795
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-object v5, v5, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    invoke-virtual {v5}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1811
    :cond_d
    :goto_6
    invoke-virtual {p0, v3, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->addNotificationViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 1813
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setAreThereNotifications()V

    .line 1814
    const/16 v5, -0x2710

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    .line 1817
    invoke-static {}, Lcom/android/systemui/vivo/common/notification/NotificationUpdateManager;->getInstance()Lcom/android/systemui/vivo/common/notification/NotificationUpdateManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/systemui/vivo/common/notification/NotificationUpdateManager;->onNotificationAdd(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    goto/16 :goto_0

    .end local v3    # "shadeEntry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_e
    move v7, v5

    .line 1746
    goto/16 :goto_2

    :cond_f
    move v7, v5

    goto/16 :goto_3

    :cond_10
    move v7, v5

    goto/16 :goto_4

    .line 1756
    :cond_11
    const-string v8, "HeadsUp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "show headsupview failed because:   !isHeadsUpForbid: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-nez v2, :cond_12

    move v7, v6

    :goto_7
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "   !isForbidByMultiWindow : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;

    move-result-object v7

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;->isForbidByMultiWindow(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_13

    move v7, v6

    :goto_8
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "   HeadsUp style:  "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "1"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "   !mStatusBarKeyguardViewManager.isShowing(): "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v7

    if-nez v7, :cond_14

    move v7, v6

    :goto_9
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "   !mNotificationPanel.isFloorFullyExpand():  "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFloorFullyExpand()Z

    move-result v7

    if-nez v7, :cond_15

    move v7, v6

    :goto_a
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_12
    move v7, v5

    goto :goto_7

    :cond_13
    move v7, v5

    goto :goto_8

    :cond_14
    move v7, v5

    goto :goto_9

    :cond_15
    move v7, v5

    goto :goto_a

    .line 1804
    .restart local v3    # "shadeEntry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_16
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v5

    if-nez v5, :cond_d

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v5

    if-nez v5, :cond_d

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->doNotTickThisNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 1808
    invoke-virtual {p0, p1, v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->tick(Landroid/service/notification/StatusBarNotification;Z)V

    goto/16 :goto_6

    .line 1796
    :catch_0
    move-exception v5

    goto/16 :goto_6
.end method

.method public addPostCollapseAction(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 4963
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPostCollapseRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4964
    return-void
.end method

.method public animateCollapsePanels()V
    .locals 1

    .prologue
    .line 3330
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels(I)V

    .line 3331
    return-void
.end method

.method public animateCollapsePanels(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 3345
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels(IZ)V

    .line 3346
    return-void
.end method

.method public animateCollapsePanels(IZ)V
    .locals 6
    .param p1, "flags"    # I
    .param p2, "force"    # Z

    .prologue
    const/16 v5, 0x403

    const/16 v2, 0x3fc

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3350
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/StateUtils;->getInstance()Lcom/android/systemui/vivo/common/utils/StateUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/utils/StateUtils;->isKeyguardShowingWithShade()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3351
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationContainerParentFloor:Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;

    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$31;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->animateCollapse(Landroid/animation/AnimatorListenerAdapter;)V

    .line 3405
    :goto_0
    return-void

    .line 3363
    :cond_0
    if-nez p2, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-eq v0, v4, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 3365
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->runPostCollapseRunnables()V

    goto :goto_0

    .line 3374
    :cond_2
    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_3

    .line 3375
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3376
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 3377
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 3381
    :cond_3
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_4

    .line 3382
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 3383
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 3386
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    if-eqz v0, :cond_5

    .line 3388
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setStatusBarFocusable(Z)V

    .line 3390
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->cancelExpandHelper()V

    .line 3391
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->collapseAllPanels(Z)V

    .line 3395
    :cond_5
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsRotating:Z

    if-nez v0, :cond_6

    .line 3396
    const-string v0, "PhoneStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsSpeedUpAnimationRunning = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsSpeedUpAnimationRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3397
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsSpeedUpAnimationRunning:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUpSlideManager:Lcom/android/systemui/vivo/common/upslide/UpSlideManager;

    if-eqz v0, :cond_6

    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_6

    .line 3400
    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->toggleUpSlideView(ZZ)V

    .line 3403
    :cond_6
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsRotating:Z

    goto :goto_0
.end method

.method public animateCollapseQuickSettings()V
    .locals 2

    .prologue
    .line 3508
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-nez v0, :cond_0

    .line 3509
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->collapseAllPanels(Z)V

    .line 3511
    :cond_0
    return-void
.end method

.method public animateExpandNotificationsPanel()V
    .locals 1

    .prologue
    .line 3481
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->panelsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3489
    :goto_0
    return-void

    .line 3485
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->expand()V

    goto :goto_0
.end method

.method public animateExpandSettingsPanel()V
    .locals 1

    .prologue
    .line 3494
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->panelsEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3505
    :cond_0
    :goto_0
    return-void

    .line 3499
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSetup:Z

    if-eqz v0, :cond_0

    .line 3501
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->expandWithQs()V

    goto :goto_0
.end method

.method public buzzBeepBlinked()V
    .locals 1

    .prologue
    .line 3671
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;

    if-eqz v0, :cond_0

    .line 3672
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;->fireBuzzBeepBlinked()V

    .line 3674
    :cond_0
    return-void
.end method

.method public calculateGoingToFullShadeDelay()J
    .locals 4

    .prologue
    .line 5131
    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAwayDelay:J

    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAwayDuration:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public changeUpslideState(ZZ)V
    .locals 1
    .param p1, "down"    # Z
    .param p2, "canceled"    # Z

    .prologue
    .line 6299
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUpSlideManager:Lcom/android/systemui/vivo/common/upslide/UpSlideManager;

    if-eqz v0, :cond_0

    .line 6300
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUpSlideManager:Lcom/android/systemui/vivo/common/upslide/UpSlideManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/vivo/common/upslide/UpSlideManager;->changeUpSlideState(ZZ)V

    .line 6302
    :cond_0
    return-void
.end method

.method public collapseUpSlideView()V
    .locals 2

    .prologue
    .line 6223
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->toggleUpSlideView(ZZ)V

    .line 6224
    return-void
.end method

.method public createAndAddWindows()V
    .locals 0

    .prologue
    .line 4178
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->addStatusBarWindow()V

    .line 4179
    return-void
.end method

.method protected createHandler()Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 2

    .prologue
    .line 3092
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/statusbar/phone/PhoneStatusBar$1;)V

    return-object v0
.end method

.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4800
    invoke-super {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->destroy()V

    .line 4801
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    if-eqz v0, :cond_0

    .line 4802
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 4803
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    .line 4805
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_1

    .line 4806
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 4807
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 4809
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    .line 4810
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 4811
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandlerThread:Landroid/os/HandlerThread;

    .line 4813
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4815
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;->destroy()V

    .line 4817
    return-void
.end method

.method public disable(IZ)V
    .locals 9
    .param p1, "state"    # I
    .param p2, "animate"    # Z

    .prologue
    .line 2931
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabledUnmodified:I

    .line 2932
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->adjustDisableFlags(I)I

    move-result p1

    .line 2933
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    .line 2934
    .local v2, "old":I
    xor-int v0, p1, v2

    .line 2935
    .local v0, "diff":I
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    .line 2937
    sget-boolean v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 2938
    const-string v4, "PhoneStatusBar"

    const-string v5, "disable: 0x%08x -> 0x%08x (diff: 0x%08x)"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2942
    :cond_0
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/LockTaskUtils;->isInLockTaskMode()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    const/high16 v4, 0x800000

    and-int/2addr v4, v0

    if-eqz v4, :cond_3

    .line 2944
    :cond_2
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/LockTaskUtils;->updateLockTaskStatus()V

    .line 2947
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2948
    .local v1, "flagdbg":Ljava/lang/StringBuilder;
    const-string v4, "disable: < "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2949
    const/high16 v4, 0x10000

    and-int/2addr v4, p1

    if-eqz v4, :cond_9

    const-string v4, "EXPAND"

    :goto_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2950
    const/high16 v4, 0x10000

    and-int/2addr v4, v0

    if-eqz v4, :cond_a

    const-string v4, "* "

    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2951
    const/high16 v4, 0x20000

    and-int/2addr v4, p1

    if-eqz v4, :cond_b

    const-string v4, "ICONS"

    :goto_2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2952
    const/high16 v4, 0x20000

    and-int/2addr v4, v0

    if-eqz v4, :cond_c

    const-string v4, "* "

    :goto_3
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2953
    const/high16 v4, 0x40000

    and-int/2addr v4, p1

    if-eqz v4, :cond_d

    const-string v4, "ALERTS"

    :goto_4
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2954
    const/high16 v4, 0x40000

    and-int/2addr v4, v0

    if-eqz v4, :cond_e

    const-string v4, "* "

    :goto_5
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2955
    const/high16 v4, 0x100000

    and-int/2addr v4, p1

    if-eqz v4, :cond_f

    const-string v4, "SYSTEM_INFO"

    :goto_6
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2956
    const/high16 v4, 0x100000

    and-int/2addr v4, v0

    if-eqz v4, :cond_10

    const-string v4, "* "

    :goto_7
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2957
    const/high16 v4, 0x400000

    and-int/2addr v4, p1

    if-eqz v4, :cond_11

    const-string v4, "BACK"

    :goto_8
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2958
    const/high16 v4, 0x400000

    and-int/2addr v4, v0

    if-eqz v4, :cond_12

    const-string v4, "* "

    :goto_9
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2959
    const/high16 v4, 0x200000

    and-int/2addr v4, p1

    if-eqz v4, :cond_13

    const-string v4, "HOME"

    :goto_a
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2960
    const/high16 v4, 0x200000

    and-int/2addr v4, v0

    if-eqz v4, :cond_14

    const-string v4, "* "

    :goto_b
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2961
    const/high16 v4, 0x1000000

    and-int/2addr v4, p1

    if-eqz v4, :cond_15

    const-string v4, "RECENT"

    :goto_c
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2962
    const/high16 v4, 0x1000000

    and-int/2addr v4, v0

    if-eqz v4, :cond_16

    const-string v4, "* "

    :goto_d
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2963
    const/high16 v4, 0x800000

    and-int/2addr v4, p1

    if-eqz v4, :cond_17

    const-string v4, "CLOCK"

    :goto_e
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2964
    const/high16 v4, 0x800000

    and-int/2addr v4, v0

    if-eqz v4, :cond_18

    const-string v4, "* "

    :goto_f
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2965
    const/high16 v4, 0x2000000

    and-int/2addr v4, p1

    if-eqz v4, :cond_19

    const-string v4, "SEARCH"

    :goto_10
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2966
    const/high16 v4, 0x2000000

    and-int/2addr v4, v0

    if-eqz v4, :cond_1a

    const-string v4, "* "

    :goto_11
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2967
    const-string v4, ">"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2968
    const-string v4, "PhoneStatusBar"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2981
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/LockTaskUtils;->isInLockTaskMode()Z

    move-result v4

    if-nez v4, :cond_4

    const/high16 v4, 0x800000

    and-int/2addr v4, v0

    if-eqz v4, :cond_4

    .line 2982
    const/high16 v4, 0x800000

    and-int/2addr v4, p1

    if-nez v4, :cond_1b

    const/4 v3, 0x1

    .line 2983
    .local v3, "show":Z
    :goto_12
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showClock(Z)V

    .line 2986
    .end local v3    # "show":Z
    :cond_4
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/LockTaskUtils;->isInLockTaskMode()Z

    move-result v4

    if-nez v4, :cond_5

    const/high16 v4, 0x10000

    and-int/2addr v4, v0

    if-eqz v4, :cond_5

    .line 2987
    const/high16 v4, 0x10000

    and-int/2addr v4, p1

    if-eqz v4, :cond_1c

    .line 2988
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    .line 2991
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->toggleUpSlideView(ZZ)V

    .line 2998
    :goto_13
    const/high16 v4, 0x10000

    and-int/2addr v4, p1

    if-nez v4, :cond_1d

    const/4 v4, 0x1

    :goto_14
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->enableUpSlide(Z)V

    .line 3002
    :cond_5
    const/high16 v4, 0x3600000

    and-int/2addr v4, v0

    if-eqz v4, :cond_7

    .line 3007
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v4, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(I)V

    .line 3009
    :cond_6
    const/high16 v4, 0x1000000

    and-int/2addr v4, p1

    if-eqz v4, :cond_7

    .line 3011
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    const/16 v5, 0x3fc

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 3012
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    const/16 v5, 0x3fc

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 3029
    :cond_7
    const/high16 v4, 0x40000

    and-int/2addr v4, v0

    if-eqz v4, :cond_8

    .line 3030
    const/high16 v4, 0x40000

    and-int/2addr v4, p1

    if-eqz v4, :cond_1e

    const/4 v4, 0x1

    :goto_15
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisableNotificationAlerts:Z

    .line 3032
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpObserver:Landroid/database/ContentObserver;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 3034
    :cond_8
    return-void

    .line 2949
    :cond_9
    const-string v4, "expand"

    goto/16 :goto_0

    .line 2950
    :cond_a
    const-string v4, " "

    goto/16 :goto_1

    .line 2951
    :cond_b
    const-string v4, "icons"

    goto/16 :goto_2

    .line 2952
    :cond_c
    const-string v4, " "

    goto/16 :goto_3

    .line 2953
    :cond_d
    const-string v4, "alerts"

    goto/16 :goto_4

    .line 2954
    :cond_e
    const-string v4, " "

    goto/16 :goto_5

    .line 2955
    :cond_f
    const-string v4, "system_info"

    goto/16 :goto_6

    .line 2956
    :cond_10
    const-string v4, " "

    goto/16 :goto_7

    .line 2957
    :cond_11
    const-string v4, "back"

    goto/16 :goto_8

    .line 2958
    :cond_12
    const-string v4, " "

    goto/16 :goto_9

    .line 2959
    :cond_13
    const-string v4, "home"

    goto/16 :goto_a

    .line 2960
    :cond_14
    const-string v4, " "

    goto/16 :goto_b

    .line 2961
    :cond_15
    const-string v4, "recent"

    goto/16 :goto_c

    .line 2962
    :cond_16
    const-string v4, " "

    goto/16 :goto_d

    .line 2963
    :cond_17
    const-string v4, "clock"

    goto/16 :goto_e

    .line 2964
    :cond_18
    const-string v4, " "

    goto/16 :goto_f

    .line 2965
    :cond_19
    const-string v4, "search"

    goto/16 :goto_10

    .line 2966
    :cond_1a
    const-string v4, " "

    goto/16 :goto_11

    .line 2982
    :cond_1b
    const/4 v3, 0x0

    goto/16 :goto_12

    .line 2996
    :cond_1c
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->hideScreenPinningNavigationBar()V

    goto/16 :goto_13

    .line 2998
    :cond_1d
    const/4 v4, 0x0

    goto/16 :goto_14

    .line 3030
    :cond_1e
    const/4 v4, 0x0

    goto :goto_15
.end method

.method protected dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Z)V
    .locals 4
    .param p1, "action"    # Lcom/android/keyguard/KeyguardHostView$OnDismissAction;
    .param p2, "afterKeyguardGone"    # Z

    .prologue
    const/4 v3, 0x1

    .line 4425
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4427
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4428
    const-string v1, "PhoneStatusBar"

    const-string v2, "notification click dismiss keyguard when keyguard occoluded!"

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4429
    const-class v1, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 4430
    .local v0, "mediator":Lcom/android/systemui/keyguard/KeyguardViewMediator;
    invoke-virtual {v0, v3, v3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->keyguardDone(ZZ)V

    .line 4434
    .end local v0    # "mediator":Lcom/android/systemui/keyguard/KeyguardViewMediator;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->dismissWithAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Z)V

    .line 4438
    :goto_0
    return-void

    .line 4436
    :cond_1
    invoke-interface {p1}, Lcom/android/keyguard/KeyguardHostView$OnDismissAction;->onDismiss()Z

    goto :goto_0
.end method

.method public dismissUpSlideDialogs()V
    .locals 1

    .prologue
    .line 6285
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUpSlideManager:Lcom/android/systemui/vivo/common/upslide/UpSlideManager;

    if-eqz v0, :cond_0

    .line 6286
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUpSlideManager:Lcom/android/systemui/vivo/common/upslide/UpSlideManager;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/UpSlideManager;->dismissUpSlideDialogs()V

    .line 6288
    :cond_0
    return-void
.end method

.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 10
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 4825
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDemoModeAllowed:Z

    if-nez v7, :cond_0

    .line 4826
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "sysui_demo_allowed"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    :goto_0
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDemoModeAllowed:Z

    .line 4829
    :cond_0
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDemoModeAllowed:Z

    if-nez v7, :cond_3

    .line 4885
    :cond_1
    :goto_1
    return-void

    .line 4826
    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 4830
    :cond_3
    const-string v7, "enter"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 4831
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDemoMode:Z

    .line 4839
    :cond_4
    :goto_2
    const-string v7, "enter"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "exit"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    :cond_5
    const/4 v3, 0x1

    .line 4840
    .local v3, "modeChange":Z
    :goto_3
    if-nez v3, :cond_6

    const-string v7, "volume"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_6
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVolumeComponent:Lcom/android/systemui/volume/VolumeComponent;

    if-eqz v7, :cond_7

    .line 4841
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVolumeComponent:Lcom/android/systemui/volume/VolumeComponent;

    invoke-interface {v7, p1, p2}, Lcom/android/systemui/volume/VolumeComponent;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4843
    :cond_7
    if-nez v3, :cond_8

    const-string v7, "clock"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 4844
    :cond_8
    const v7, 0x7f110082

    invoke-direct {p0, p1, p2, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->dispatchDemoCommandToView(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 4846
    :cond_9
    if-nez v3, :cond_a

    const-string v7, "battery"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 4847
    :cond_a
    const v7, 0x7f11013b

    invoke-direct {p0, p1, p2, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->dispatchDemoCommandToView(Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 4849
    :cond_b
    if-nez v3, :cond_c

    const-string v7, "status"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 4850
    :cond_c
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    if-nez v7, :cond_d

    .line 4851
    new-instance v7, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    iget v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconSize:I

    invoke-direct {v7, v8, v9}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;-><init>(Landroid/widget/LinearLayout;I)V

    iput-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    .line 4853
    :cond_d
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDemoStatusIcons:Lcom/android/systemui/statusbar/phone/DemoStatusIcons;

    invoke-virtual {v7, p1, p2}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4855
    :cond_e
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    if-eqz v7, :cond_10

    if-nez v3, :cond_f

    const-string v7, "network"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 4856
    :cond_f
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v7, p1, p2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4858
    :cond_10
    if-nez v3, :cond_11

    const-string v7, "notifications"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 4859
    :cond_11
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-nez v7, :cond_17

    const/4 v4, 0x0

    .line 4861
    .local v4, "notifications":Landroid/view/View;
    :goto_4
    if-eqz v4, :cond_12

    .line 4862
    const-string v7, "visible"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4863
    .local v6, "visible":Ljava/lang/String;
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDemoMode:Z

    if-eqz v7, :cond_18

    const-string v7, "false"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    const/4 v5, 0x4

    .line 4864
    .local v5, "vis":I
    :goto_5
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 4867
    .end local v4    # "notifications":Landroid/view/View;
    .end local v5    # "vis":I
    .end local v6    # "visible":Ljava/lang/String;
    :cond_12
    const-string v7, "bars"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 4868
    const-string v7, "mode"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4869
    .local v2, "mode":Ljava/lang/String;
    const-string v7, "opaque"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    const/4 v1, 0x0

    .line 4875
    .local v1, "barMode":I
    :goto_6
    const/4 v7, -0x1

    if-eq v1, v7, :cond_1

    .line 4876
    const/4 v0, 0x1

    .line 4877
    .local v0, "animate":Z
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v7, :cond_13

    .line 4878
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v7

    invoke-virtual {v7, v1, v0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->transitionTo(IZ)V

    .line 4880
    :cond_13
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v7, :cond_1

    .line 4881
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v7

    invoke-virtual {v7, v1, v0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->transitionTo(IZ)V

    goto/16 :goto_1

    .line 4832
    .end local v0    # "animate":Z
    .end local v1    # "barMode":I
    .end local v2    # "mode":Ljava/lang/String;
    .end local v3    # "modeChange":Z
    :cond_14
    const-string v7, "exit"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 4833
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDemoMode:Z

    .line 4834
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->checkBarModes()V

    goto/16 :goto_2

    .line 4835
    :cond_15
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDemoMode:Z

    if-nez v7, :cond_4

    .line 4837
    const-string v7, "enter"

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v7, v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_2

    .line 4839
    :cond_16
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 4859
    .restart local v3    # "modeChange":Z
    :cond_17
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v8, 0x7f1100f2

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    goto :goto_4

    .line 4863
    .restart local v4    # "notifications":Landroid/view/View;
    .restart local v6    # "visible":Ljava/lang/String;
    :cond_18
    const/4 v5, 0x0

    goto :goto_5

    .line 4869
    .end local v4    # "notifications":Landroid/view/View;
    .end local v6    # "visible":Ljava/lang/String;
    .restart local v2    # "mode":Ljava/lang/String;
    :cond_19
    const-string v7, "translucent"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    const/4 v1, 0x2

    goto :goto_6

    :cond_1a
    const-string v7, "semi-transparent"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    const/4 v1, 0x1

    goto :goto_6

    :cond_1b
    const-string v7, "transparent"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1c

    const/4 v1, 0x4

    goto :goto_6

    :cond_1c
    const-string v7, "warning"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d

    const/4 v1, 0x5

    goto :goto_6

    :cond_1d
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public displayNotificationFromHeadsUp(Landroid/service/notification/StatusBarNotification;)V
    .locals 2
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 1822
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->createNotificationViews(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    .line 1823
    .local v0, "shadeEntry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-nez v0, :cond_0

    .line 1844
    :goto_0
    return-void

    .line 1826
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData$Entry;->setInterruption()V

    .line 1830
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->addNotificationViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 1834
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setAreThereNotifications()V

    .line 1835
    const/16 v1, -0x2710

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    .line 1838
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->displayFromHeadsUp:Z

    .line 1842
    invoke-static {}, Lcom/android/systemui/vivo/common/notification/NotificationUpdateManager;->getInstance()Lcom/android/systemui/vivo/common/notification/NotificationUpdateManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/vivo/common/notification/NotificationUpdateManager;->onNotificationAdd(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    goto :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 4028
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQueueLock:Ljava/lang/Object;

    monitor-enter v6

    .line 4029
    :try_start_0
    const-string v5, "Current Status Bar state:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4030
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mExpandedVisible="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", mTrackingPosition="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingPosition:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4032
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mTickerEnabled="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerEnabled:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4033
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerEnabled:Z

    if-eqz v5, :cond_0

    .line 4034
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mTicking="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicking:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4035
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mTickerView: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerView:Landroid/view/View;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4037
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mTracking="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTracking:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4038
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mDisplayMetrics="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4039
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mStackScroller: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4040
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mStackScroller: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " scroll "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollX()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getScrollY()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4043
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4045
    const-string v5, "  mInteractingWindows="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mInteractingWindows:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 4046
    const-string v5, "  mStatusBarWindowState="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4047
    iget v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowState:I

    invoke-static {v5}, Landroid/app/StatusBarManager;->windowStateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4048
    const-string v5, "  mStatusBarMode="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4049
    iget v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarMode:I

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/BarTransitions;->modeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4050
    const-string v5, "  mDozing="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozing:Z

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 4051
    const-string v5, "  mZenMode="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4052
    iget v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mZenMode:I

    invoke-static {v5}, Landroid/provider/Settings$Global;->zenModeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4053
    const-string v5, "  mUseHeadsUp="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4054
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUseHeadsUp:Z

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 4055
    const-string v5, "  interrupting package: "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4056
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->hunStateToString(Lcom/android/systemui/statusbar/NotificationData$Entry;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4057
    const-string v5, "mStatusBarView"

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v6

    invoke-static {p2, v5, v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->dumpBarTransitions(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/BarTransitions;)V

    .line 4058
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v5, :cond_1

    .line 4059
    const-string v5, "  mNavigationBarWindowState="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4060
    iget v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarWindowState:I

    invoke-static {v5}, Landroid/app/StatusBarManager;->windowStateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4061
    const-string v5, "  mNavigationBarMode="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4062
    iget v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarMode:I

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/BarTransitions;->modeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4063
    const-string v5, "mNavigationBarView"

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v6

    invoke-static {p2, v5, v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->dumpBarTransitions(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/BarTransitions;)V

    .line 4066
    :cond_1
    const-string v5, "  mNavigationBarView="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4067
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-nez v5, :cond_5

    .line 4068
    const-string v5, "null"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4073
    :goto_0
    const-string v5, "  mMediaSessionManager="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4074
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4075
    const-string v5, "  mMediaNotificationKey="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4077
    const-string v5, "  mMediaController="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4078
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 4079
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v5, :cond_2

    .line 4080
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v6}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4082
    :cond_2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4083
    const-string v5, "  mMediaMetadata="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4084
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaMetadata:Landroid/media/MediaMetadata;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 4085
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaMetadata:Landroid/media/MediaMetadata;

    if-eqz v5, :cond_3

    .line 4086
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " title="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaMetadata:Landroid/media/MediaMetadata;

    const-string v7, "android.media.metadata.TITLE"

    invoke-virtual {v6, v7}, Landroid/media/MediaMetadata;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4088
    :cond_3
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4090
    const-string v5, "  Panels: "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4091
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz v5, :cond_4

    .line 4092
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    mNotificationPanel="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " params="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup$LayoutParams;->debug(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4094
    const-string v5, "      "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4095
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v5, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4098
    :cond_4
    invoke-static {p2}, Lcom/android/systemui/doze/DozeLog;->dump(Ljava/io/PrintWriter;)V

    .line 4101
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    monitor-enter v6

    .line 4102
    :try_start_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    const-string v7, "  "

    invoke-virtual {v5, p2, v7}, Lcom/android/systemui/statusbar/NotificationData;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4103
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4108
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .line 4110
    .local v0, "N":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  system icons: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4111
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_6

    .line 4112
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 4113
    .local v4, "ic":Lcom/android/systemui/statusbar/StatusBarIconView;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] icon="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4111
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4043
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v4    # "ic":Lcom/android/systemui/statusbar/StatusBarIconView;
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 4070
    :cond_5
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v5, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4103
    :catchall_1
    move-exception v5

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v5

    .line 4137
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_6
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    if-eqz v5, :cond_7

    .line 4138
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v5, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4140
    :cond_7
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    if-eqz v5, :cond_8

    .line 4141
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    invoke-virtual {v5, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4143
    :cond_8
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCastController:Lcom/android/systemui/statusbar/policy/CastControllerImpl;

    if-eqz v5, :cond_9

    .line 4144
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCastController:Lcom/android/systemui/statusbar/policy/CastControllerImpl;

    invoke-virtual {v5, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4146
    :cond_9
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    if-eqz v5, :cond_a

    .line 4147
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {v5, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4149
    :cond_a
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    if-eqz v5, :cond_b

    .line 4150
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v5, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/BatteryController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4152
    :cond_b
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    if-eqz v5, :cond_c

    .line 4153
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    invoke-virtual {v5, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/NextAlarmController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4155
    :cond_c
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    if-eqz v5, :cond_d

    .line 4156
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    invoke-virtual {v5, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 4158
    :cond_d
    const-string v5, "SharedPreferences:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4159
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4161
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    const-string v5, "  "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_2

    .line 4163
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    :cond_e
    return-void
.end method

.method public fadeKeyguardAfterLaunchTransition(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "beforeFading"    # Ljava/lang/Runnable;
    .param p2, "endRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 4980
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    const/16 v2, 0x3eb

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 4981
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLaunchTransitionEndRunnable:Ljava/lang/Runnable;

    .line 4982
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$43;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$43;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Ljava/lang/Runnable;)V

    .line 5041
    .local v0, "hideRunnable":Ljava/lang/Runnable;
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 5043
    return-void
.end method

.method public findAndUpdateMediaNotifications()V
    .locals 28

    .prologue
    .line 2597
    const/16 v18, 0x0

    .line 2599
    .local v18, "metaDataChanged":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v25, v0

    monitor-enter v25

    .line 2600
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v10

    .line 2601
    .local v10, "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2602
    .local v3, "N":I
    const/16 v17, 0x0

    .line 2603
    .local v17, "mediaNotification":Lcom/android/systemui/statusbar/NotificationData$Entry;
    const/4 v12, 0x0

    .line 2604
    .local v12, "controller":Landroid/media/session/MediaController;
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    if-ge v15, v3, :cond_1

    .line 2605
    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 2606
    .local v14, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isMediaNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v24

    if-eqz v24, :cond_0

    .line 2607
    iget-object v0, v14, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    move-object/from16 v24, v0

    const-string v26, "android.mediaSession"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v23

    check-cast v23, Landroid/media/session/MediaSession$Token;

    .line 2609
    .local v23, "token":Landroid/media/session/MediaSession$Token;
    if-eqz v23, :cond_0

    .line 2610
    new-instance v12, Landroid/media/session/MediaController;

    .end local v12    # "controller":Landroid/media/session/MediaController;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-direct {v12, v0, v1}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    .line 2611
    .restart local v12    # "controller":Landroid/media/session/MediaController;
    if-eqz v12, :cond_0

    .line 2613
    move-object/from16 v17, v14

    .line 2604
    .end local v23    # "token":Landroid/media/session/MediaSession$Token;
    :cond_0
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 2620
    .end local v14    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_1
    if-nez v17, :cond_3

    .line 2621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoingData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v11

    .line 2622
    .local v11, "activeOngoings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2623
    .local v4, "N2":I
    const/4 v15, 0x0

    :goto_1
    if-ge v15, v4, :cond_3

    .line 2624
    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 2625
    .restart local v14    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isMediaNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 2626
    iget-object v0, v14, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    move-object/from16 v24, v0

    const-string v26, "android.mediaSession"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v23

    check-cast v23, Landroid/media/session/MediaSession$Token;

    .line 2628
    .restart local v23    # "token":Landroid/media/session/MediaSession$Token;
    if-eqz v23, :cond_2

    .line 2629
    new-instance v12, Landroid/media/session/MediaController;

    .end local v12    # "controller":Landroid/media/session/MediaController;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-direct {v12, v0, v1}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    .line 2630
    .restart local v12    # "controller":Landroid/media/session/MediaController;
    if-eqz v12, :cond_2

    .line 2632
    move-object/from16 v17, v14

    .line 2623
    .end local v23    # "token":Landroid/media/session/MediaSession$Token;
    :cond_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 2639
    .end local v4    # "N2":I
    .end local v11    # "activeOngoings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    .end local v14    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_3
    if-nez v17, :cond_5

    .line 2640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCalendarData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v8

    .line 2641
    .local v8, "activeCalendars":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 2642
    .local v5, "N3":I
    const/4 v15, 0x0

    :goto_2
    if-ge v15, v5, :cond_5

    .line 2643
    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 2644
    .restart local v14    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isMediaNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v24

    if-eqz v24, :cond_4

    .line 2645
    iget-object v0, v14, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    move-object/from16 v24, v0

    const-string v26, "android.mediaSession"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v23

    check-cast v23, Landroid/media/session/MediaSession$Token;

    .line 2647
    .restart local v23    # "token":Landroid/media/session/MediaSession$Token;
    if-eqz v23, :cond_4

    .line 2648
    new-instance v12, Landroid/media/session/MediaController;

    .end local v12    # "controller":Landroid/media/session/MediaController;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-direct {v12, v0, v1}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    .line 2649
    .restart local v12    # "controller":Landroid/media/session/MediaController;
    if-eqz v12, :cond_4

    .line 2651
    move-object/from16 v17, v14

    .line 2642
    .end local v23    # "token":Landroid/media/session/MediaSession$Token;
    :cond_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 2658
    .end local v5    # "N3":I
    .end local v8    # "activeCalendars":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    .end local v14    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_5
    if-nez v17, :cond_7

    .line 2659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMusicData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v9

    .line 2660
    .local v9, "activeMusics":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 2661
    .local v6, "N4":I
    const/4 v15, 0x0

    :goto_3
    if-ge v15, v6, :cond_7

    .line 2662
    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 2663
    .restart local v14    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isMediaNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v24

    if-eqz v24, :cond_6

    .line 2664
    iget-object v0, v14, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    move-object/from16 v24, v0

    const-string v26, "android.mediaSession"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v23

    check-cast v23, Landroid/media/session/MediaSession$Token;

    .line 2666
    .restart local v23    # "token":Landroid/media/session/MediaSession$Token;
    if-eqz v23, :cond_6

    .line 2667
    new-instance v12, Landroid/media/session/MediaController;

    .end local v12    # "controller":Landroid/media/session/MediaController;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-direct {v12, v0, v1}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    .line 2668
    .restart local v12    # "controller":Landroid/media/session/MediaController;
    if-eqz v12, :cond_6

    .line 2670
    move-object/from16 v17, v14

    .line 2661
    .end local v23    # "token":Landroid/media/session/MediaSession$Token;
    :cond_6
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 2678
    .end local v6    # "N4":I
    .end local v9    # "activeMusics":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    .end local v14    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_7
    if-nez v17, :cond_a

    .line 2683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    move-object/from16 v24, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v24, :cond_a

    .line 2691
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    move-object/from16 v24, v0

    const/16 v26, 0x0

    const/16 v27, -0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/media/session/MediaSessionManager;->getActiveSessionsForUser(Landroid/content/ComponentName;I)Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v21

    .line 2700
    .local v21, "sessions":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaController;>;"
    :goto_4
    :try_start_2
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :cond_8
    :goto_5
    :sswitch_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_a

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/session/MediaController;

    .line 2701
    .local v7, "aController":Landroid/media/session/MediaController;
    if-eqz v7, :cond_8

    .line 2702
    invoke-virtual {v7}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v22

    .line 2703
    .local v22, "state":Landroid/media/session/PlaybackState;
    if-eqz v22, :cond_8

    .line 2704
    invoke-virtual/range {v22 .. v22}, Landroid/media/session/PlaybackState;->getState()I

    move-result v24

    sparse-switch v24, :sswitch_data_0

    .line 2710
    invoke-virtual {v7}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v20

    .line 2712
    .local v20, "pkg":Ljava/lang/String;
    const/4 v15, 0x0

    :goto_6
    if-ge v15, v3, :cond_8

    .line 2713
    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 2714
    .restart local v14    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v0, v14, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_9

    .line 2719
    move-object v12, v7

    .line 2720
    move-object/from16 v17, v14

    .line 2721
    goto :goto_5

    .line 2694
    .end local v7    # "aController":Landroid/media/session/MediaController;
    .end local v14    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v20    # "pkg":Ljava/lang/String;
    .end local v21    # "sessions":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaController;>;"
    .end local v22    # "state":Landroid/media/session/PlaybackState;
    :catch_0
    move-exception v13

    .line 2695
    .local v13, "e":Ljava/lang/Exception;
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 2696
    .restart local v21    # "sessions":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaController;>;"
    const-string v24, "PhoneStatusBar"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "getActiveSessionsForUser error! e: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 2773
    .end local v3    # "N":I
    .end local v10    # "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    .end local v12    # "controller":Landroid/media/session/MediaController;
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v15    # "i":I
    .end local v17    # "mediaNotification":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v21    # "sessions":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaController;>;"
    :catchall_0
    move-exception v24

    monitor-exit v25
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v24

    .line 2712
    .restart local v3    # "N":I
    .restart local v7    # "aController":Landroid/media/session/MediaController;
    .restart local v10    # "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    .restart local v12    # "controller":Landroid/media/session/MediaController;
    .restart local v14    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .restart local v15    # "i":I
    .restart local v16    # "i$":Ljava/util/Iterator;
    .restart local v17    # "mediaNotification":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .restart local v20    # "pkg":Ljava/lang/String;
    .restart local v21    # "sessions":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaController;>;"
    .restart local v22    # "state":Landroid/media/session/PlaybackState;
    :cond_9
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 2729
    .end local v7    # "aController":Landroid/media/session/MediaController;
    .end local v14    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v20    # "pkg":Ljava/lang/String;
    .end local v21    # "sessions":Ljava/util/List;, "Ljava/util/List<Landroid/media/session/MediaController;>;"
    .end local v22    # "state":Landroid/media/session/PlaybackState;
    :cond_a
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaController:Landroid/media/session/MediaController;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v12}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->sameSessions(Landroid/media/session/MediaController;Landroid/media/session/MediaController;)Z

    move-result v24

    if-nez v24, :cond_e

    .line 2732
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaController:Landroid/media/session/MediaController;

    move-object/from16 v24, v0

    if-eqz v24, :cond_b

    .line 2734
    const-string v24, "PhoneStatusBar"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "DEBUG_MEDIA: Disconnecting from old controller: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaController:Landroid/media/session/MediaController;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaController:Landroid/media/session/MediaController;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaListener:Landroid/media/session/MediaController$Callback;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 2738
    :cond_b
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaController:Landroid/media/session/MediaController;

    .line 2740
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaController:Landroid/media/session/MediaController;

    move-object/from16 v24, v0

    if-eqz v24, :cond_10

    .line 2741
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaController:Landroid/media/session/MediaController;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaListener:Landroid/media/session/MediaController$Callback;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    .line 2742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaController:Landroid/media/session/MediaController;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaMetadata:Landroid/media/MediaMetadata;

    .line 2748
    if-nez v17, :cond_f

    const/16 v19, 0x0

    .line 2752
    .local v19, "notificationKey":Ljava/lang/String;
    :goto_7
    if-eqz v19, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaNotificationKey:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_d

    .line 2758
    :cond_c
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaNotificationKey:Ljava/lang/String;

    .line 2765
    .end local v19    # "notificationKey":Ljava/lang/String;
    :cond_d
    :goto_8
    const/16 v18, 0x1

    .line 2773
    :cond_e
    monitor-exit v25
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2775
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateMediaMetaData(Z)V

    .line 2776
    return-void

    .line 2748
    :cond_f
    :try_start_4
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v19

    goto :goto_7

    .line 2761
    :cond_10
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaMetadata:Landroid/media/MediaMetadata;

    .line 2762
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaNotificationKey:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_8

    .line 2704
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x7 -> :sswitch_0
    .end sparse-switch
.end method

.method public finishKeyguardFadingAway()V
    .locals 1

    .prologue
    .line 5156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAway:Z

    .line 5157
    return-void
.end method

.method public forceRunPostCollapseRunnables()V
    .locals 0

    .prologue
    .line 3417
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->runPostCollapseRunnables()V

    .line 3418
    return-void
.end method

.method public getBarState()I
    .locals 1

    .prologue
    .line 4899
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    return v0
.end method

.method public getBatteryController()Lcom/android/systemui/statusbar/policy/BatteryController;
    .locals 1

    .prologue
    .line 2443
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    return-object v0
.end method

.method public getCurrentMediaNotificationKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3132
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaNotificationKey:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentUserHandle()Landroid/os/UserHandle;
    .locals 2

    .prologue
    .line 1665
    new-instance v0, Landroid/os/UserHandle;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    return-object v0
.end method

.method getDisplayDensity()F
    .locals 1

    .prologue
    .line 4217
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method public getGestureRecorder()Lcom/android/systemui/statusbar/GestureRecorder;
    .locals 1

    .prologue
    .line 3635
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mGestureRec:Lcom/android/systemui/statusbar/GestureRecorder;

    return-object v0
.end method

.method public getIconPolicy()Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;
    .locals 1

    .prologue
    .line 2451
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    return-object v0
.end method

.method public getKeyguardFadingAwayDelay()J
    .locals 2

    .prologue
    .line 5516
    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAwayDelay:J

    return-wide v0
.end method

.method public getKeyguardFadingAwayDuration()J
    .locals 2

    .prologue
    .line 5520
    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAwayDuration:J

    return-wide v0
.end method

.method protected getMaxKeyguardNotifications()I
    .locals 1

    .prologue
    .line 5421
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardMaxNotificationCount:I

    return v0
.end method

.method public getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;
    .locals 1

    .prologue
    .line 5425
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    return-object v0
.end method

.method public getNotiIconRedrawHelper()Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;
    .locals 1

    .prologue
    .line 2455
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotiIconRedrawHelper:Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;

    return-object v0
.end method

.method public getNotificationIconMerger()Lcom/android/systemui/vivo/common/notification/VivoIconMerger;
    .locals 1

    .prologue
    .line 2432
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/vivo/common/notification/VivoIconMerger;

    return-object v0
.end method

.method public getPhoneStatusBarView()Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;
    .locals 1

    .prologue
    .line 1407
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    return-object v0
.end method

.method public getQuickSettingsOverlayParent()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 5512
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    return-object v0
.end method

.method public getScrimController()Lcom/android/systemui/statusbar/phone/ScrimController;
    .locals 1

    .prologue
    .line 3101
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    return-object v0
.end method

.method protected getSearchLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/WindowManager$LayoutParams;
    .locals 7
    .param p1, "layoutParams"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    const/4 v1, -0x1

    .line 1416
    const/4 v6, 0x0

    .line 1417
    .local v6, "opaque":Z
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7e8

    const v4, 0x820100

    if-eqz v6, :cond_1

    move v5, v1

    :goto_0
    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 1425
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1426
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1428
    :cond_0
    const v1, 0x800053

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1429
    const-string v1, "SearchPanel"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1430
    const/16 v1, 0x31

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1432
    return-object v0

    .line 1417
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    const/4 v5, -0x3

    goto :goto_0
.end method

.method public getStatusBarHeight()I
    .locals 2

    .prologue
    .line 1471
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNaturalBarHeight:I

    if-gez v1, :cond_0

    .line 1472
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1473
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x1050011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNaturalBarHeight:I

    .line 1476
    .end local v0    # "res":Landroid/content/res/Resources;
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNaturalBarHeight:I

    return v1
.end method

.method protected getStatusBarView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1399
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    return-object v0
.end method

.method public getStatusBarWindow()Lcom/android/systemui/statusbar/phone/StatusBarWindowView;
    .locals 1

    .prologue
    .line 1403
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    return-object v0
.end method

.method public getStatusBarWindowManager()Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;
    .locals 1

    .prologue
    .line 1411
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    return-object v0
.end method

.method public getSystemIconArea()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 5528
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemIconArea:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getSystemIcons()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 5524
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemIcons:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getVivoNetworkController()Lcom/android/systemui/vivo/common/network/VivoNetworkController;
    .locals 1

    .prologue
    .line 2447
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVivoNetworkController:Lcom/android/systemui/vivo/common/network/VivoNetworkController;

    return-object v0
.end method

.method public goToKeyguard()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 5501
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 5502
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onGoToKeyguard()V

    .line 5503
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setBarState(I)V

    .line 5504
    const/4 v0, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateKeyguardState(ZZ)V

    .line 5506
    :cond_0
    return-void
.end method

.method public goToLockedShade(Landroid/view/View;)V
    .locals 6
    .param p1, "expandView"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5476
    const/4 v1, 0x0

    .line 5477
    .local v1, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    instance-of v4, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v4, :cond_0

    move-object v1, p1

    .line 5478
    check-cast v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 5479
    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserExpanded(Z)V

    .line 5481
    :cond_0
    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->userAllowsPrivateNotificationsInPublic(I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowLockscreenNotifications:Z

    if-nez v4, :cond_3

    :cond_1
    move v0, v3

    .line 5483
    .local v0, "fullShadeNeedsBouncer":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isLockscreenPublicMode()Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v0, :cond_4

    .line 5484
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLeaveOpenOnKeyguardHide:Z

    .line 5485
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showBouncer()V

    .line 5486
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDraggedDownRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 5495
    :cond_2
    :goto_1
    return-void

    .end local v0    # "fullShadeNeedsBouncer":Z
    :cond_3
    move v0, v2

    .line 5481
    goto :goto_0

    .line 5488
    .restart local v0    # "fullShadeNeedsBouncer":Z
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animateToFullShade(J)V

    .line 5489
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setBarState(I)V

    .line 5490
    invoke-direct {p0, v2, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateKeyguardState(ZZ)V

    .line 5491
    if-eqz v1, :cond_2

    .line 5492
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserLocked(Z)V

    goto :goto_1
.end method

.method protected haltTicker()V
    .locals 1

    .prologue
    .line 4739
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerEnabled:Z

    if-eqz v0, :cond_0

    .line 4740
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicker:Lcom/android/systemui/statusbar/phone/Ticker;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/Ticker;->halt()V

    .line 4742
    :cond_0
    return-void
.end method

.method protected handleVisibleToUserChanged(Z)V
    .locals 0
    .param p1, "visibleToUser"    # Z

    .prologue
    .line 4618
    if-eqz p1, :cond_0

    .line 4619
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->handleVisibleToUserChanged(Z)V

    .line 4620
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->startNotificationLogging()V

    .line 4625
    :goto_0
    return-void

    .line 4622
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->stopNotificationLogging()V

    .line 4623
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->handleVisibleToUserChanged(Z)V

    goto :goto_0
.end method

.method public hasActiveNotifications()Z
    .locals 1

    .prologue
    .line 5700
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->hasVisibleEntry()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoingData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->hasVisibleEntry()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCalendarData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->hasVisibleEntry()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMusicData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->hasVisibleEntry()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideKeyguard()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 5075
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLeaveOpenOnKeyguardHide:Z

    .line 5076
    .local v1, "staying":Z
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setBarState(I)V

    .line 5080
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5081
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->exitKeyguardState()V

    .line 5086
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateClockVisibility()V

    .line 5087
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarColorManager:Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;

    invoke-virtual {v2, v6}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->setPrepareUnLock(Z)V

    .line 5089
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarColorManager:Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->updateStatusBarBgStyle()V

    .line 5091
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKeyguardViewShowing()Z

    move-result v0

    .line 5092
    .local v0, "isKeyguardShowing":Z
    const-string v2, "PhoneStatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hideKeyguard(),  isKeyguardShowing = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mExpandedVisible = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5094
    if-nez v0, :cond_1

    .line 5095
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setHideKeyguard()V

    .line 5096
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    if-nez v2, :cond_1

    .line 5097
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->enableUpSlide(Z)V

    .line 5102
    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLeaveOpenOnKeyguardHide:Z

    if-eqz v2, :cond_5

    .line 5103
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLeaveOpenOnKeyguardHide:Z

    .line 5104
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->calculateGoingToFullShadeDelay()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animateToFullShade(J)V

    .line 5105
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDraggedDownRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v2, :cond_2

    .line 5106
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDraggedDownRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2, v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserLocked(Z)V

    .line 5107
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDraggedDownRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 5112
    :cond_2
    :goto_0
    invoke-direct {p0, v1, v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateKeyguardState(ZZ)V

    .line 5116
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v2, :cond_3

    .line 5117
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSPanel;->refreshAllTiles()V

    .line 5119
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    const/16 v3, 0x3eb

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 5122
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBlocked:Z

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKeyguardViewShowing()Z

    move-result v2

    if-nez v2, :cond_4

    .line 5123
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    const/16 v3, 0x3ed

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessageDelayed(IJ)Z

    .line 5127
    :cond_4
    return v1

    .line 5110
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->instantCollapseNotificationPanel()V

    goto :goto_0
.end method

.method protected hideRecents(ZZ)V
    .locals 1
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHomeKey"    # Z

    .prologue
    .line 5642
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    .line 5643
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyUiVisibilityChanged(I)V

    .line 5644
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/BaseStatusBar;->hideRecents(ZZ)V

    .line 5645
    return-void
.end method

.method public hideScreenPinningNavigationBar()V
    .locals 2

    .prologue
    .line 6208
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_0

    .line 6209
    const-string v0, "PhoneStatusBar"

    const-string v1, "hideScreenPinningNavigationBar"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6211
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 6212
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 6213
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsScreenPinningRequest:Z

    .line 6215
    :cond_0
    return-void
.end method

.method public hideSearchPanel()V
    .locals 3

    .prologue
    .line 1461
    invoke-super {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->hideSearchPanel()V

    .line 1462
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v1, :cond_0

    .line 1463
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 1465
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1466
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1468
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method

.method public interceptMediaKey(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 5240
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->interceptMediaKey(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public interceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 3608
    sget-boolean v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->CHATTY:Z

    if-eqz v3, :cond_0

    .line 3609
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eq v3, v7, :cond_0

    .line 3610
    const-string v3, "PhoneStatusBar"

    const-string v4, "panel: %s at (%f, %f) mDisabled=0x%08x"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    invoke-static {v6}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v7

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3621
    :cond_0
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowState:I

    if-nez v3, :cond_2

    .line 3622
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eq v3, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v8, :cond_3

    :cond_1
    move v0, v2

    .line 3625
    .local v0, "upOrCancel":Z
    :goto_0
    if-eqz v0, :cond_4

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    if-nez v3, :cond_4

    .line 3626
    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setInteracting(IZ)V

    .line 3631
    .end local v0    # "upOrCancel":Z
    :cond_2
    :goto_1
    return v1

    :cond_3
    move v0, v1

    .line 3622
    goto :goto_0

    .line 3628
    .restart local v0    # "upOrCancel":Z
    :cond_4
    invoke-virtual {p0, v2, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setInteracting(IZ)V

    goto :goto_1
.end method

.method public interpolator(Landroid/animation/TimeInterpolator;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .param p1, "ti"    # Landroid/animation/TimeInterpolator;
    .param p2, "a"    # Landroid/animation/Animator;

    .prologue
    .line 3456
    invoke-virtual {p2, p1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3457
    return-object p2
.end method

.method public isCallActive()Z
    .locals 1

    .prologue
    .line 6319
    invoke-static {}, Lcom/android/systemui/vivo/common/statusbar/PhoneStatusBarUtils;->isPhoneInCall()Z

    move-result v0

    return v0
.end method

.method public isCollapsing()Z
    .locals 1

    .prologue
    .line 4959
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isCollapsing()Z

    move-result v0

    return v0
.end method

.method public isDozing()Z
    .locals 1

    .prologue
    .line 3127
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozing:Z

    return v0
.end method

.method public isFalsingThresholdNeeded()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3121
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getBarState()I

    move-result v4

    if-ne v4, v2, :cond_1

    move v1, v2

    .line 3122
    .local v1, "onKeyguard":Z
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isCurrentlyInsecure()Z

    move-result v0

    .line 3123
    .local v0, "isCurrentlyInsecure":Z
    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozing:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenOnComingFromTouch:Z

    if-eqz v4, :cond_2

    :cond_0
    :goto_1
    return v2

    .end local v0    # "isCurrentlyInsecure":Z
    .end local v1    # "onKeyguard":Z
    :cond_1
    move v1, v3

    .line 3121
    goto :goto_0

    .restart local v0    # "isCurrentlyInsecure":Z
    .restart local v1    # "onKeyguard":Z
    :cond_2
    move v2, v3

    .line 3123
    goto :goto_1
.end method

.method public isGoingToNotificationShade()Z
    .locals 1

    .prologue
    .line 3109
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLeaveOpenOnKeyguardHide:Z

    return v0
.end method

.method public isInLaunchTransition()Z
    .locals 1

    .prologue
    .line 4967
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isLaunchTransitionRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isLaunchTransitionFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isKeyguardFadingAway()Z
    .locals 1

    .prologue
    .line 5149
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAway:Z

    return v0
.end method

.method public isKeyguardViewShowing()Z
    .locals 1

    .prologue
    .line 6231
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMusicActive()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 6323
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 6324
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-nez v0, :cond_1

    .line 6325
    const-string v2, "VolumePanel"

    const-string v3, "isMusicActive:could not get AudioManager preference!"

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6328
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActiveRemotely()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isQsExpanded()Z
    .locals 1

    .prologue
    .line 3113
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsExpanded()Z

    move-result v0

    return v0
.end method

.method public isScreenOnComingFromTouch()Z
    .locals 1

    .prologue
    .line 3117
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenOnComingFromTouch:Z

    return v0
.end method

.method public isScrimSrcModeEnabled()Z
    .locals 1

    .prologue
    .line 3136
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrimSrcModeEnabled:Z

    return v0
.end method

.method public isUpSlideDisabled(Z)Z
    .locals 8
    .param p1, "considerBarExpand"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6238
    iget v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    const/high16 v6, 0x10000

    and-int/2addr v5, v6

    if-eqz v5, :cond_3

    move v1, v4

    .line 6239
    .local v1, "isDisabled":Z
    :goto_0
    if-eqz p1, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    .line 6240
    .local v0, "isBarExpanded":Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKeyguardViewShowing()Z

    move-result v2

    .line 6242
    .local v2, "isKeyguardShowing":Z
    const-string v5, "PhoneStatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isUpSlideDisabled: considerBarExpand = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isDisabled = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isBarExpanded = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isKeyguardShowing = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6248
    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/systemui/vivo/common/utils/LockTaskUtils;->isInLockTaskMode()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    if-nez v0, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    move v3, v4

    :cond_2
    return v3

    .end local v0    # "isBarExpanded":Z
    .end local v1    # "isDisabled":Z
    .end local v2    # "isKeyguardShowing":Z
    :cond_3
    move v1, v3

    .line 6238
    goto :goto_0

    .restart local v1    # "isDisabled":Z
    :cond_4
    move v0, v3

    .line 6239
    goto :goto_1
.end method

.method public isUpSlideShowing()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 6291
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUpSlideManager:Lcom/android/systemui/vivo/common/upslide/UpSlideManager;

    if-eqz v0, :cond_0

    .line 6292
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUpSlideManager:Lcom/android/systemui/vivo/common/upslide/UpSlideManager;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/UpSlideManager;->isUpSlideShowing()Ljava/lang/Boolean;

    move-result-object v0

    .line 6294
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method protected loadDimens()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 4571
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 4573
    .local v2, "res":Landroid/content/res/Resources;
    const v3, 0x1050011

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNaturalBarHeight:I

    .line 4576
    const v3, 0x1050015

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 4578
    .local v1, "newIconSize":I
    const v3, 0x7f0f0020

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 4581
    .local v0, "newIconHPadding":I
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconHPadding:I

    if-ne v0, v3, :cond_0

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconSize:I

    if-eq v1, v3, :cond_1

    .line 4583
    :cond_0
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconHPadding:I

    .line 4584
    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconSize:I

    .line 4588
    :cond_1
    const/high16 v3, 0x7f0f0000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEdgeBorder:I

    .line 4590
    const v3, 0x7f0c0037

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanelGravity:I

    .line 4591
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanelGravity:I

    if-gtz v3, :cond_2

    .line 4592
    const v3, 0x800033

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanelGravity:I

    .line 4600
    :cond_2
    const v3, 0x7f0f0034

    invoke-virtual {v2, v3, v4, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanelMinHeightFrac:F

    .line 4601
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanelMinHeightFrac:F

    cmpg-float v3, v3, v5

    if-ltz v3, :cond_3

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanelMinHeightFrac:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    .line 4602
    :cond_3
    iput v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanelMinHeightFrac:F

    .line 4605
    :cond_4
    const v3, 0x7f0c0013

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationDecay:I

    .line 4606
    const v3, 0x7f0f001a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRowMinHeight:I

    .line 4607
    const v3, 0x7f0f001b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRowMaxHeight:I

    .line 4609
    const v3, 0x7f0c0026

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardMaxNotificationCount:I

    .line 4611
    sget-boolean v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v3, :cond_5

    const-string v3, "PhoneStatusBar"

    const-string v4, "updateResources"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4612
    :cond_5
    return-void
.end method

.method makeExpandedInvisible()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3519
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/StateUtils;->getInstance()Lcom/android/systemui/vivo/common/utils/StateUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/vivo/common/utils/StateUtils;->isKeyguardShowing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3520
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setStatusBarVisible(Z)V

    .line 3524
    :cond_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    if-nez v3, :cond_2

    .line 3594
    :cond_1
    :goto_0
    return-void

    .line 3529
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->collapseAllPanels(Z)V

    .line 3532
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollViewAnim:Landroid/animation/Animator;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollViewAnim:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->cancel()V

    .line 3533
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButtonAnim:Landroid/animation/Animator;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButtonAnim:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->cancel()V

    .line 3535
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setVisibility(I)V

    .line 3536
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setVisibility(I)V

    .line 3538
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->closeQs()V

    .line 3540
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    .line 3541
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v3, :cond_5

    .line 3542
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setSlippery(Z)V

    .line 3543
    :cond_5
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->visibilityChanged(Z)V

    .line 3546
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setStatusBarExpanded(Z)V

    .line 3547
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v3, v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setFocusable(Z)V

    .line 3550
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->dismissPopups()V

    .line 3552
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->runPostCollapseRunnables()V

    .line 3553
    invoke-virtual {p0, v6, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setInteracting(IZ)V

    .line 3554
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showBouncer()V

    .line 3555
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabledUnmodified:I

    invoke-virtual {p0, v3, v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->disable(IZ)V

    .line 3559
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v3

    if-nez v3, :cond_6

    .line 3560
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v3

    const/16 v4, 0x14

    invoke-virtual {v3, v4}, Landroid/view/WindowManagerGlobal;->trimMemory(I)V

    .line 3564
    :cond_6
    invoke-virtual {p0, v6, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->toggleUpSlideGuideView(ZZ)V

    .line 3565
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKeyguardViewShowing()Z

    move-result v1

    .line 3566
    .local v1, "isKeyguardShowing":Z
    const-string v3, "PhoneStatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isKeyguardShowing = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3567
    if-nez v1, :cond_7

    .line 3568
    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->enableUpSlide(Z)V

    .line 3573
    :cond_7
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/DevelopModeManager;->isModeOn()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 3574
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    new-instance v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$35;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$35;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    const-wide/16 v6, 0x64

    invoke-virtual {v3, v4, v6, v7}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3585
    :cond_8
    :try_start_0
    const-string v3, "PhoneStatusBar"

    const-string v4, "++++++++ statusbarchanged state = up"

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3586
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 3587
    .local v2, "statusbarState":Landroid/content/Intent;
    const-string v3, "com.android.vivo.net.wifi.statusbarchanged"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3588
    const-string v3, "statusbar.state"

    const-string v4, "up"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3589
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 3590
    .end local v2    # "statusbarState":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 3591
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "PhoneStatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendBroadcast com.android.vivo.net.wifi.statusbarchanged error! e: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method makeExpandedVisible(Z)V
    .locals 5
    .param p1, "force"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3282
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->firstTimeExpand:Z

    if-eqz v0, :cond_0

    const-string v0, "1"

    const-string v3, "sys.boot_completed"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3283
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "status.bar.update.plmn.spn"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3284
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->firstTimeExpand:Z

    .line 3287
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->scheduleHeadsUpClose()V

    .line 3292
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/StateUtils;->getInstance()Lcom/android/systemui/vivo/common/utils/StateUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/utils/StateUtils;->isKeyguardShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3293
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setStatusBarVisible(Z)V

    .line 3297
    :cond_1
    if-nez p1, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->panelsEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3327
    :cond_2
    :goto_0
    return-void

    .line 3301
    :cond_3
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    .line 3302
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_4

    .line 3303
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setSlippery(Z)V

    .line 3305
    :cond_4
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateCarrierLabelVisibility(Z)V

    .line 3307
    const/16 v0, -0x2710

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    .line 3311
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setStatusBarExpanded(Z)V

    .line 3312
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setFocusable(Z)V

    .line 3316
    if-nez p1, :cond_5

    .line 3317
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->visibilityChanged(Z)V

    .line 3320
    :cond_5
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWaitingForKeyguardExit:Z

    .line 3321
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabledUnmodified:I

    if-nez p1, :cond_6

    move v0, v1

    :goto_1
    invoke-virtual {p0, v3, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->disable(IZ)V

    .line 3322
    invoke-virtual {p0, v1, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setInteracting(IZ)V

    .line 3324
    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->toggleUpSlideView(ZZ)V

    .line 3325
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->enableUpSlide(Z)V

    goto :goto_0

    :cond_6
    move v0, v2

    .line 3321
    goto :goto_1
.end method

.method protected makeStatusBarView()Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;
    .locals 19

    .prologue
    .line 833
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    .line 835
    .local v8, "context":Landroid/content/Context;
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 837
    .local v12, "res":Landroid/content/res/Resources;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateDisplaySize()V

    .line 838
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateResources()V

    .line 840
    const v2, 0x1050015

    invoke-virtual {v12, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconSize:I

    .line 845
    const v2, 0x7f040082

    const/4 v3, 0x0

    invoke-static {v8, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    .line 849
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v3, 0x7f110261

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/Clock;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClock:Lcom/android/systemui/statusbar/policy/Clock;

    .line 850
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->initVivoCarrierLabel()V

    .line 853
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-object/from16 v0, p0

    iput-object v0, v2, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 854
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    new-instance v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$9;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$9;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 868
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v3, 0x7f11025f

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 871
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 873
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationContainerParentFloor:Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;

    .line 874
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationContainerParentFloor:Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->setBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 877
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-static {v8}, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->getViewRoot()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->addView(Landroid/view/View;)V

    .line 880
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v3, 0x7f110136

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/phone/PanelHolder;

    .line 881
    .local v9, "holder":Lcom/android/systemui/statusbar/phone/PanelHolder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v2, v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setPanelHolder(Lcom/android/systemui/statusbar/phone/PanelHolder;)V

    .line 883
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v3, 0x7f1100f9

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 885
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 887
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v2

    if-nez v2, :cond_0

    .line 888
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 889
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    new-instance v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$FastColorDrawable;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0a0003

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$FastColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 893
    :cond_0
    const v2, 0x7f040004

    const/4 v3, 0x0

    invoke-static {v8, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    .line 895
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->setVisibility(I)V

    .line 896
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->setBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 904
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateShowSearchHoldoff()V

    .line 907
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWindowManagerService:Landroid/view/IWindowManager;

    invoke-interface {v2}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v15

    .line 908
    .local v15, "showNav":Z
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "PhoneStatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasNavigationBar="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    :cond_1
    if-eqz v15, :cond_2

    .line 910
    const v2, 0x7f040023

    const/4 v3, 0x0

    invoke-static {v8, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 913
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(I)V

    .line 914
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setBar(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    .line 915
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    new-instance v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setOnVerticalChangedListener(Lcom/android/systemui/statusbar/phone/NavigationBarView$OnVerticalChangedListener;)V

    .line 925
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    new-instance v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$11;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$11;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 937
    .end local v15    # "showNav":Z
    :cond_2
    :goto_0
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPixelFormat:I

    .line 939
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v3, 0x7f1100f6

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemIconArea:Landroid/widget/LinearLayout;

    .line 940
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v3, 0x7f110138

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemIcons:Landroid/widget/LinearLayout;

    .line 941
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v3, 0x7f110139

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    .line 942
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v3, 0x7f1100f3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIconArea:Landroid/view/View;

    .line 944
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v3, 0x7f1100f5

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/vivo/common/notification/VivoIconMerger;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/vivo/common/notification/VivoIconMerger;

    .line 946
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v3, 0x7f1100f4

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMoreIcon:Landroid/view/View;

    .line 947
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/vivo/common/notification/VivoIconMerger;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMoreIcon:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/android/systemui/vivo/common/notification/VivoIconMerger;->setOverflowIndicator(Landroid/view/View;)V

    .line 948
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v3, 0x7f1100f1

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarContents:Landroid/widget/LinearLayout;

    .line 950
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v3, 0x7f1100fe

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    .line 952
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNotificationLongClicker()Lcom/android/systemui/SwipeHelper$LongPressListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setLongPressListener(Lcom/android/systemui/SwipeHelper$LongPressListener;)V

    .line 953
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setPhoneStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 967
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040046

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/android/systemui/statusbar/SpeedBumpView;

    .line 969
    .local v16, "speedBump":Lcom/android/systemui/statusbar/SpeedBumpView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setSpeedBumpView(Lcom/android/systemui/statusbar/SpeedBumpView;)V

    .line 970
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040041

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/EmptyShadeView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    .line 972
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setEmptyShadeView(Lcom/android/systemui/statusbar/EmptyShadeView;)V

    .line 973
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040043

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/DismissView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    .line 975
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    new-instance v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$12;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$12;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/DismissView;->setOnButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 981
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setDismissView(Lcom/android/systemui/statusbar/DismissView;)V

    .line 982
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedContents:Landroid/view/View;

    .line 985
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPartitionManager:Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;

    .line 986
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPartitionManager:Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoingData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCalendarData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMusicData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual/range {v2 .. v7}, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->setParentDataAndView(Lcom/android/systemui/statusbar/NotificationData;Lcom/android/systemui/statusbar/NotificationData;Lcom/android/systemui/statusbar/NotificationData;Lcom/android/systemui/statusbar/NotificationData;Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    .line 987
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPartitionManager:Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;

    new-instance v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$13;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$13;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->setOnClickClearListener(Landroid/view/View$OnClickListener;)V

    .line 1009
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPartitionManager:Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;

    new-instance v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$14;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$14;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->setOnClickBlockListener(Landroid/view/View$OnClickListener;)V

    .line 1035
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v3, 0x7f110131

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/BackDropView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    .line 1036
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    const v3, 0x7f110133

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/BackDropView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackdropFront:Landroid/widget/ImageView;

    .line 1037
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    const v3, 0x7f110132

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/BackDropView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackdropBack:Landroid/widget/ImageView;

    .line 1039
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v3, 0x7f110134

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/statusbar/ScrimView;

    .line 1040
    .local v13, "scrimBehind":Lcom/android/systemui/statusbar/ScrimView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v3, 0x7f110137

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/statusbar/ScrimView;

    .line 1041
    .local v14, "scrimInFront":Lcom/android/systemui/statusbar/ScrimView;
    new-instance v2, Lcom/android/systemui/statusbar/phone/ScrimController;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrimSrcModeEnabled:Z

    invoke-direct {v2, v13, v14, v3}, Lcom/android/systemui/statusbar/phone/ScrimController;-><init>(Lcom/android/systemui/statusbar/ScrimView;Lcom/android/systemui/statusbar/ScrimView;Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 1042
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBackdrop:Lcom/android/systemui/statusbar/BackDropView;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/ScrimController;->setBackDropView(Lcom/android/systemui/statusbar/BackDropView;)V

    .line 1043
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setScrimController(Lcom/android/systemui/statusbar/phone/ScrimController;)V

    .line 1044
    new-instance v2, Lcom/android/systemui/statusbar/phone/DozeScrimController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-direct {v2, v3, v8}, Lcom/android/systemui/statusbar/phone/DozeScrimController;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    .line 1046
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v3, 0x7f110101

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    .line 1047
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setActivityStarter(Lcom/android/systemui/statusbar/phone/ActivityStarter;)V

    .line 1048
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v3, 0x7f11008d

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .line 1049
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const v3, 0x7f110139

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIconsKeyguard:Landroid/widget/LinearLayout;

    .line 1050
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v3, 0x7f110094

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardStatusView:Landroid/view/View;

    .line 1061
    const v2, 0x7f0b0011

    invoke-virtual {v12, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerEnabled:Z

    .line 1062
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerEnabled:Z

    if-eqz v2, :cond_3

    .line 1063
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v3, 0x7f1100f7

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/view/ViewStub;

    .line 1064
    .local v17, "tickerStub":Landroid/view/ViewStub;
    if-eqz v17, :cond_3

    .line 1065
    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerView:Landroid/view/View;

    .line 1066
    new-instance v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyTicker;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v8, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyTicker;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/content/Context;Landroid/view/View;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicker:Lcom/android/systemui/statusbar/phone/Ticker;

    .line 1068
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v3, 0x7f11012a

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/android/systemui/statusbar/phone/TickerView;

    .line 1069
    .local v18, "tickerView":Lcom/android/systemui/statusbar/phone/TickerView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicker:Lcom/android/systemui/statusbar/phone/Ticker;

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/TickerView;->mTicker:Lcom/android/systemui/statusbar/phone/Ticker;

    .line 1073
    .end local v17    # "tickerStub":Landroid/view/ViewStub;
    .end local v18    # "tickerView":Lcom/android/systemui/statusbar/phone/TickerView;
    :cond_3
    const/high16 v2, 0x7f0f0000

    invoke-virtual {v12, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEdgeBorder:I

    .line 1076
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setAreThereNotifications()V

    .line 1079
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "PhoneStatusBar"

    const/16 v4, 0xa

    invoke-direct {v2, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandlerThread:Landroid/os/HandlerThread;

    .line 1080
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 1083
    new-instance v2, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLocationController:Lcom/android/systemui/statusbar/policy/LocationControllerImpl;

    .line 1084
    new-instance v2, Lcom/android/systemui/statusbar/policy/BatteryController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/systemui/statusbar/policy/BatteryController;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 1085
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    new-instance v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$15;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$15;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/BatteryController;->addStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    .line 1098
    new-instance v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .line 1099
    new-instance v2, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    .line 1100
    new-instance v2, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBluetoothController:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    .line 1101
    new-instance v2, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityControllerImpl;

    .line 1102
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1103
    new-instance v2, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockControllerImpl;

    .line 1105
    :cond_4
    new-instance v2, Lcom/android/systemui/statusbar/policy/UserInfoController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/systemui/statusbar/policy/UserInfoController;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    .line 1106
    const-class v2, Lcom/android/systemui/volume/VolumeComponent;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/volume/VolumeComponent;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVolumeComponent:Lcom/android/systemui/volume/VolumeComponent;

    .line 1107
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVolumeComponent:Lcom/android/systemui/volume/VolumeComponent;

    if-eqz v2, :cond_5

    .line 1108
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVolumeComponent:Lcom/android/systemui/volume/VolumeComponent;

    invoke-interface {v2}, Lcom/android/systemui/volume/VolumeComponent;->getZenController()Lcom/android/systemui/statusbar/policy/ZenModeController;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mZenModeController:Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 1110
    :cond_5
    new-instance v2, Lcom/android/systemui/statusbar/policy/CastControllerImpl;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/systemui/statusbar/policy/CastControllerImpl;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCastController:Lcom/android/systemui/statusbar/policy/CastControllerImpl;

    .line 1128
    new-instance v2, Lcom/android/systemui/vivo/common/network/VivoNetworkController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVivoNetworkController:Lcom/android/systemui/vivo/common/network/VivoNetworkController;

    .line 1129
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVivoNetworkController:Lcom/android/systemui/vivo/common/network/VivoNetworkController;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->setVivoNetworkController(Lcom/android/systemui/vivo/common/network/VivoNetworkController;)V

    .line 1130
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v3, 0x7f110260

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVivoSignalViewLeft:Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;

    .line 1131
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v3, 0x7f110264

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVivoSignalViewRight:Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;

    .line 1132
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVivoNetworkController:Lcom/android/systemui/vivo/common/network/VivoNetworkController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVivoSignalViewLeft:Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVivoSignalViewRight:Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->addSignalCluster(Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewRight;)V

    .line 1133
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVivoNetworkController:Lcom/android/systemui/vivo/common/network/VivoNetworkController;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/systemui/vivo/common/network/VivoNetworkController;->setPhoneStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 1135
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasVoiceCallingFeature()Z

    move-result v10

    .line 1136
    .local v10, "isAPhone":Z
    if-eqz v10, :cond_6

    .line 1137
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    new-instance v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$16;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$16;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->addEmergencyListener(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$EmergencyListener;)V

    .line 1176
    :cond_6
    new-instance v2, Lcom/android/systemui/statusbar/policy/NextAlarmController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/systemui/statusbar/policy/NextAlarmController;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    .line 1177
    new-instance v2, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    .line 1178
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->isUserSwitcherAvailable(Landroid/os/UserManager;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1179
    new-instance v2, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/KeyguardMonitor;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 1181
    :cond_7
    new-instance v2, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const v6, 0x7f1100ff

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewStub;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;-><init>(Landroid/content/Context;Landroid/view/ViewStub;Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    .line 1211
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setUserInfoController(Lcom/android/systemui/statusbar/policy/UserInfoController;)V

    .line 1212
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setUserInfoController(Lcom/android/systemui/statusbar/policy/UserInfoController;)V

    .line 1213
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUserInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/UserInfoController;->reloadUserInfo()V

    .line 1215
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setBatteryController(Lcom/android/systemui/statusbar/policy/BatteryController;)V

    .line 1219
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v4, 0x7f11013b

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/policy/BatteryController;->addIconView(Landroid/widget/ImageView;)V

    .line 1220
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v4, 0x7f110092

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/policy/BatteryController;->addLabelView(Landroid/widget/TextView;)V

    .line 1222
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setBatteryController(Lcom/android/systemui/statusbar/policy/BatteryController;)V

    .line 1223
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->setNextAlarmController(Lcom/android/systemui/statusbar/policy/NextAlarmController;)V

    .line 1225
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/PowerManager;

    .line 1226
    .local v11, "pm":Landroid/os/PowerManager;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    invoke-virtual {v11}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "android.intent.action.SCREEN_ON"

    :goto_1
    invoke-direct {v6, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v6}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1230
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 1231
    .local v5, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1232
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1233
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1238
    const-string v2, "intent.action.super_power_save_send"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1239
    const-string v2, "android.settings.VisitMode.action.TURN_ON"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1242
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1243
    const-string v2, "intent.action.theme.changed"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1247
    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1248
    const-string v2, "bbk.intent.action.KILL_ALL_APPS_START"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1249
    const-string v2, "bbk.intent.action.KILL_ALL_APPS_DONE"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1255
    const-string v2, "com.android.systemui.demo"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1256
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1259
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->resetUserSetupObserver()V

    .line 1261
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->startGlyphRasterizeHack()V

    .line 1264
    invoke-static {v8}, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotiIconRedrawHelper:Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;

    .line 1265
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotiIconRedrawHelper:Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;->setStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 1266
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotiIconRedrawHelper:Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconColorFlag:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/vivo/common/notification/NotificationIconRedrawHelper;->initEllipsisIconView(I)V

    .line 1270
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->initKeyguardView()V

    .line 1274
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/StateUtils;->getInstance()Lcom/android/systemui/vivo/common/utils/StateUtils;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/systemui/vivo/common/utils/StateUtils;->setBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 1277
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.statusbar.init.done"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1281
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    const/16 v3, 0x3f2

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 1282
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    const/16 v3, 0x3f2

    const-wide/16 v6, 0x1388

    invoke-virtual {v2, v3, v6, v7}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessageDelayed(IJ)Z

    .line 1285
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->registerHallListener()V

    .line 1288
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    return-object v2

    .line 1226
    .end local v5    # "filter":Landroid/content/IntentFilter;
    :cond_8
    const-string v2, "android.intent.action.SCREEN_OFF"

    goto/16 :goto_1

    .line 1278
    .restart local v5    # "filter":Landroid/content/IntentFilter;
    :catch_0
    move-exception v2

    goto :goto_2

    .line 932
    .end local v5    # "filter":Landroid/content/IntentFilter;
    .end local v10    # "isAPhone":Z
    .end local v11    # "pm":Landroid/os/PowerManager;
    .end local v13    # "scrimBehind":Lcom/android/systemui/statusbar/ScrimView;
    .end local v14    # "scrimInFront":Lcom/android/systemui/statusbar/ScrimView;
    .end local v16    # "speedBump":Lcom/android/systemui/statusbar/SpeedBumpView;
    :catch_1
    move-exception v2

    goto/16 :goto_0
.end method

.method public notificationLightOff()V
    .locals 2

    .prologue
    .line 3678
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;

    if-eqz v0, :cond_0

    .line 3679
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;->fireNotificationLight(Z)V

    .line 3681
    :cond_0
    return-void
.end method

.method public notificationLightPulse(III)V
    .locals 2
    .param p1, "argb"    # I
    .param p2, "onMillis"    # I
    .param p3, "offMillis"    # I

    .prologue
    .line 3685
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;

    if-eqz v0, :cond_0

    .line 3686
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;->fireNotificationLight(Z)V

    .line 3688
    :cond_0
    return-void
.end method

.method public notifyStatusBarColorInfo(IIZ)V
    .locals 1
    .param p1, "iconColor"    # I
    .param p2, "bgColor"    # I
    .param p3, "bgVisible"    # Z

    .prologue
    .line 2460
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsSpeedUpAnimationRunning:Z

    if-eqz v0, :cond_1

    .line 2461
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarbgColor:I

    if-ne v0, p2, :cond_0

    .line 2467
    :goto_0
    return-void

    .line 2464
    :cond_0
    iput p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarbgColor:I

    .line 2466
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarColorManager:Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->notifyStatusBarColorInfo(IIZ)V

    goto :goto_0
.end method

.method public onActivated(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V
    .locals 4
    .param p1, "view"    # Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .prologue
    const/4 v3, 0x0

    .line 5317
    const/4 v2, 0x7

    invoke-static {v2, v3, v3}, Lcom/android/systemui/EventLogTags;->writeSysuiLockscreenGesture(III)V

    .line 5323
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getActivatedChild()Lcom/android/systemui/statusbar/ActivatableNotificationView;

    move-result-object v1

    .line 5324
    .local v1, "previousView":Lcom/android/systemui/statusbar/ActivatableNotificationView;
    if-eqz v1, :cond_1

    .line 5326
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->resetTapTip()V

    .line 5328
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->makeInactive(Z)V

    .line 5339
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setActivatedChild(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    .line 5340
    return-void

    .line 5332
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getShowTapTipChild()Lcom/android/systemui/statusbar/ActivatableNotificationView;

    move-result-object v0

    .line 5333
    .local v0, "previousShowTapTipView":Lcom/android/systemui/statusbar/ActivatableNotificationView;
    if-eqz v0, :cond_0

    .line 5334
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->resetTapTip()V

    .line 5335
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->removeTapTip()V

    goto :goto_0
.end method

.method public onActivationReset(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V
    .locals 2
    .param p1, "view"    # Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .prologue
    .line 5373
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getActivatedChild()Lcom/android/systemui/statusbar/ActivatableNotificationView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 5377
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setActivatedChild(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    .line 5379
    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 5250
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5251
    const/4 v0, 0x1

    .line 5253
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->onHomeOrBackPressed()Z

    move-result v0

    goto :goto_0
.end method

.method protected onBootCompleted()V
    .locals 2

    .prologue
    .line 6309
    invoke-super {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->onBootCompleted()V

    .line 6310
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/RecentClearUtils;->onBootCompelted(Landroid/content/Context;Lcom/android/systemui/vivo/common/upslide/recent/WhiteListHelper;)V

    .line 6311
    return-void
.end method

.method public onCameraHintStarted()V
    .locals 0

    .prologue
    .line 5401
    return-void
.end method

.method public onClosingFinished()V
    .locals 0

    .prologue
    .line 5386
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->runPostCollapseRunnables()V

    .line 5387
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 4443
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4445
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 4446
    const-string v0, "PhoneStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configuration changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4448
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateDisplaySize()V

    .line 4450
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateResources()V

    .line 4451
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateClockSize()V

    .line 4452
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->repositionNavigationBar()V

    .line 4453
    const/16 v0, -0x2710

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    .line 4454
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateShowSearchHoldoff()V

    .line 4455
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateRowStates()V

    .line 4456
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenPinningRequest:Lcom/android/systemui/recent/ScreenPinningRequest;

    invoke-virtual {v0}, Lcom/android/systemui/recent/ScreenPinningRequest;->onConfigurationChanged()V

    .line 4459
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPartitionManager:Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4463
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarColorManager:Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;

    if-eqz v0, :cond_1

    .line 4464
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarColorManager:Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4480
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/BatteryController;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4482
    return-void
.end method

.method public onDragDownReset()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 5450
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setDimmed(ZZ)V

    .line 5451
    return-void
.end method

.method public onDraggedDown(Landroid/view/View;I)Z
    .locals 4
    .param p1, "startingChild"    # Landroid/view/View;
    .param p2, "dragLengthY"    # I

    .prologue
    const/4 v0, 0x0

    .line 5432
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->hasActiveNotifications()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5433
    const/4 v1, 0x2

    int-to-float v2, p2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2, v0}, Lcom/android/systemui/EventLogTags;->writeSysuiLockscreenGesture(III)V

    .line 5439
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->goToLockedShade(Landroid/view/View;)V

    .line 5440
    const/4 v0, 0x1

    .line 5444
    :cond_0
    return v0
.end method

.method public onHeadsUpDismissed()V
    .locals 2

    .prologue
    .line 4522
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4523
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/statusbar/PhoneStatusBarUtils;->releaseAllRedrawIcon(Landroid/content/Context;Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 4527
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->dismiss()V

    .line 4528
    return-void
.end method

.method public onHintFinished()V
    .locals 0

    .prologue
    .line 5397
    return-void
.end method

.method public onHomePressed()Z
    .locals 1

    .prologue
    .line 5257
    invoke-static {}, Lcom/android/systemui/vivo/common/keyguard/utils/KeyguardUtils;->isSupportHomeShortCut()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5258
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->onBackPressed()Z

    move-result v0

    .line 5260
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->onHomeOrBackPressed()Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyguardViewManagerStatesUpdated()V
    .locals 0

    .prologue
    .line 3143
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->logStateToEventlog()V

    .line 3144
    return-void
.end method

.method public onMenuPressed()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 5245
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->onMenuPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPhoneHintStarted()V
    .locals 0

    .prologue
    .line 5405
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5538
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenOnFromKeyguard:Z

    .line 5539
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenOnComingFromTouch:Z

    .line 5540
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenOnTouchLocation:Landroid/graphics/PointF;

    .line 5541
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setAnimationsEnabled(Z)V

    .line 5544
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz v0, :cond_0

    .line 5545
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onScreenTurnedOff()V

    .line 5550
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUpSlideManager:Lcom/android/systemui/vivo/common/upslide/UpSlideManager;

    if-eqz v0, :cond_1

    .line 5551
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUpSlideManager:Lcom/android/systemui/vivo/common/upslide/UpSlideManager;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/UpSlideManager;->onScreenTurnOff()V

    .line 5554
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateVisibleToUser()V

    .line 5555
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 5

    .prologue
    const/16 v4, 0x3f4

    const/4 v1, 0x1

    .line 5558
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenOnFromKeyguard:Z

    .line 5559
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setAnimationsEnabled(Z)V

    .line 5565
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    if-eqz v0, :cond_0

    .line 5566
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 5567
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessageDelayed(IJ)Z

    .line 5571
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateVisibleToUser()V

    .line 5572
    return-void
.end method

.method public onSpacePressed()Z
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v0, 0x1

    .line 5285
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenOn:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenOn:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-ne v1, v2, :cond_1

    .line 5287
    :cond_0
    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels(IZ)V

    .line 5291
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onThresholdReached()V
    .locals 3

    .prologue
    .line 5455
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setDimmed(ZZ)V

    .line 5456
    return-void
.end method

.method public onTouchSlopExceeded()V
    .locals 1

    .prologue
    .line 5460
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeLongPressCallback()V

    .line 5461
    return-void
.end method

.method public onTrackingStarted()V
    .locals 0

    .prologue
    .line 5382
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->runPostCollapseRunnables()V

    .line 5383
    return-void
.end method

.method public onTrackingStopped(Z)V
    .locals 2
    .param p1, "expand"    # Z

    .prologue
    .line 5409
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 5410
    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isCurrentlyInsecure()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5417
    :cond_1
    return-void
.end method

.method public onUnlockHintStarted()V
    .locals 0

    .prologue
    .line 5392
    return-void
.end method

.method public onUnlockMethodStateChanged()V
    .locals 0

    .prologue
    .line 3148
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->logStateToEventlog()V

    .line 3149
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 5658
    if-eqz p1, :cond_0

    .line 5659
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    .line 5663
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyUiVisibilityChanged(I)V

    .line 5664
    return-void

    .line 5661
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    goto :goto_0
.end method

.method panelsEnabled()Z
    .locals 2

    .prologue
    .line 3267
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public postAnimateCollapsePanels()V
    .locals 2

    .prologue
    .line 3341
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimateCollapsePanels:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->post(Ljava/lang/Runnable;)Z

    .line 3342
    return-void
.end method

.method public postStartSettingsActivity(Landroid/content/Intent;I)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "delay"    # I

    .prologue
    .line 4752
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$42;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$42;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/content/Intent;)V

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4758
    return-void
.end method

.method postStartTracing()V
    .locals 4

    .prologue
    .line 4710
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStartTracing:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4711
    return-void
.end method

.method public refreshAllStatusBarIcons()V
    .locals 1

    .prologue
    .line 1620
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->refreshAllIconsForLayout(Landroid/widget/LinearLayout;)V

    .line 1621
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIconsKeyguard:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->refreshAllIconsForLayout(Landroid/widget/LinearLayout;)V

    .line 1622
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/vivo/common/notification/VivoIconMerger;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->refreshAllIconsForLayout(Landroid/widget/LinearLayout;)V

    .line 1623
    return-void
.end method

.method protected refreshLayout(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 1939
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_0

    .line 1940
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setLayoutDirection(I)V

    .line 1942
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->refreshAllStatusBarIcons()V

    .line 1943
    return-void
.end method

.method public removeIcon(Ljava/lang/String;II)V
    .locals 1
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "viewIndex"    # I

    .prologue
    .line 1660
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 1661
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIconsKeyguard:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 1662
    return-void
.end method

.method public removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 1887
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1889
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->clear()V

    .line 1893
    :cond_0
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 1896
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->removeNotificationViews(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 1897
    .local v0, "old":Landroid/service/notification/StatusBarNotification;
    const-string v1, "PhoneStatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeNotification key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " old="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1899
    if-eqz v0, :cond_4

    .line 1901
    invoke-static {v0}, Lcom/android/systemui/vivo/common/utils/DevelopModeManager;->isNotify(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1902
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/systemui/vivo/common/utils/DevelopModeManager;->setState(Z)V

    .line 1903
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/utils/DevelopModeManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/utils/DevelopModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/utils/DevelopModeManager;->updateDisplay()V

    .line 1907
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->isHoodAvailableForNotification(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1908
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->updateHoodDisplay(Landroid/service/notification/StatusBarNotification;Z)V

    .line 1913
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerEnabled:Z

    if-eqz v1, :cond_3

    .line 1914
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicker:Lcom/android/systemui/statusbar/phone/Ticker;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/Ticker;->removeEntry(Landroid/service/notification/StatusBarNotification;)V

    .line 1918
    :cond_3
    const/16 v1, -0x2710

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    .line 1920
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->hasActiveNotifications()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isTracking()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsExpanded()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1928
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    if-eqz v1, :cond_4

    .line 1929
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    .line 1934
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setAreThereNotifications()V

    .line 1935
    return-void
.end method

.method public resetHeadsUpDecayTimer()V
    .locals 5

    .prologue
    const/16 v4, 0x407

    .line 1848
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 1852
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUseHeadsUp:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationDecay:I

    if-lez v0, :cond_0

    .line 1854
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationDecay:I

    int-to-long v2, v1

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessageDelayed(IJ)Z

    .line 1856
    :cond_0
    return-void
.end method

.method public scheduleHeadsUpClose()V
    .locals 2

    .prologue
    const/16 v1, 0x405

    .line 1866
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 1867
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 1868
    return-void
.end method

.method public scheduleHeadsUpEscalation()V
    .locals 2

    .prologue
    const/16 v1, 0x406

    .line 1872
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 1873
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 1874
    return-void
.end method

.method public scheduleHeadsUpOpen()V
    .locals 2

    .prologue
    const/16 v1, 0x404

    .line 1860
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 1861
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 1862
    return-void
.end method

.method protected setAreThereNotifications()V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 2571
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v7, 0x7f1100f0

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2572
    .local v0, "nlo":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->hasActiveNotifications()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->areLightsOn()Z

    move-result v6

    if-nez v6, :cond_2

    move v1, v2

    .line 2573
    .local v1, "showDot":Z
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v6

    cmpl-float v6, v6, v4

    if-nez v6, :cond_3

    :goto_1
    if-eq v1, v2, :cond_1

    .line 2574
    if-eqz v1, :cond_0

    .line 2575
    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 2576
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2578
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    if-eqz v1, :cond_4

    move v2, v4

    :goto_2
    invoke-virtual {v6, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    if-eqz v1, :cond_5

    const-wide/16 v4, 0x2ee

    :goto_3
    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-direct {v4, v5}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    if-eqz v1, :cond_6

    const/4 v2, 0x0

    :goto_4
    invoke-virtual {v4, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2591
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->findAndUpdateMediaNotifications()V

    .line 2593
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateCarrierLabelVisibility(Z)V

    .line 2594
    return-void

    .end local v1    # "showDot":Z
    :cond_2
    move v1, v3

    .line 2572
    goto :goto_0

    .restart local v1    # "showDot":Z
    :cond_3
    move v2, v3

    .line 2573
    goto :goto_1

    :cond_4
    move v2, v5

    .line 2578
    goto :goto_2

    :cond_5
    const-wide/16 v4, 0xfa

    goto :goto_3

    :cond_6
    new-instance v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$25;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$25;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/view/View;)V

    goto :goto_4
.end method

.method public setBarState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    const/4 v1, 0x2

    .line 5350
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-eq p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVisible:Z

    if-eqz v0, :cond_0

    if-ne p1, v1, :cond_0

    .line 5352
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->clearNotificationEffects()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5357
    :cond_0
    :goto_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    .line 5358
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setStatusBarState(I)V

    .line 5361
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStateUtils:Lcom/android/systemui/vivo/common/utils/StateUtils;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/utils/StateUtils;->getStatusBarState()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 5362
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStateUtils:Lcom/android/systemui/vivo/common/utils/StateUtils;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/utils/StateUtils;->setStatsBarState(I)V

    .line 5364
    :cond_1
    if-ne p1, v1, :cond_2

    .line 5365
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateRowStates()V

    .line 5366
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->visibilityChanged(Z)V

    .line 5369
    :cond_2
    return-void

    .line 5353
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setBouncerShowing(Z)V
    .locals 2
    .param p1, "bouncerShowing"    # Z

    .prologue
    .line 5533
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->setBouncerShowing(Z)V

    .line 5534
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabledUnmodified:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->disable(IZ)V

    .line 5535
    return-void
.end method

.method public setEmptyDragAmount(F)V
    .locals 1
    .param p1, "amount"    # F

    .prologue
    .line 5465
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setEmptyDragAmount(F)V

    .line 5466
    return-void
.end method

.method public setImeWindowStatus(Landroid/os/IBinder;IIZ)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "vis"    # I
    .param p3, "backDisposition"    # I
    .param p4, "showImeSwitcher"    # Z

    .prologue
    .line 3914
    and-int/lit8 v2, p2, 0x2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 3915
    .local v1, "imeShown":Z
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationIconHints:I

    .line 3916
    .local v0, "flags":I
    const/4 v2, 0x2

    if-eq p3, v2, :cond_0

    if-eqz v1, :cond_2

    .line 3917
    :cond_0
    or-int/lit8 v0, v0, 0x1

    .line 3921
    :goto_1
    if-eqz p4, :cond_3

    .line 3922
    or-int/lit8 v0, v0, 0x2

    .line 3927
    :goto_2
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setNavigationIconHints(I)V

    .line 3928
    return-void

    .line 3914
    .end local v0    # "flags":I
    .end local v1    # "imeShown":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 3919
    .restart local v0    # "flags":I
    .restart local v1    # "imeShown":Z
    :cond_2
    and-int/lit8 v0, v0, -0x2

    goto :goto_1

    .line 3924
    :cond_3
    and-int/lit8 v0, v0, -0x3

    goto :goto_2
.end method

.method public setInteracting(IZ)V
    .locals 3
    .param p1, "barWindow"    # I
    .param p2, "interacting"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3824
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mInteractingWindows:I

    and-int/2addr v2, p1

    if-eqz v2, :cond_1

    move v2, v0

    :goto_0
    if-eq v2, p2, :cond_2

    .line 3825
    .local v0, "changing":Z
    :goto_1
    if-eqz p2, :cond_3

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mInteractingWindows:I

    or-int/2addr v1, p1

    :goto_2
    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mInteractingWindows:I

    .line 3828
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mInteractingWindows:I

    if-eqz v1, :cond_4

    .line 3829
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->suspendAutohide()V

    .line 3834
    :goto_3
    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 3835
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVolumeComponent:Lcom/android/systemui/volume/VolumeComponent;

    if-eqz v1, :cond_0

    .line 3836
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVolumeComponent:Lcom/android/systemui/volume/VolumeComponent;

    invoke-interface {v1}, Lcom/android/systemui/volume/VolumeComponent;->dismissNow()V

    .line 3839
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->checkBarModes()V

    .line 3840
    return-void

    .end local v0    # "changing":Z
    :cond_1
    move v2, v1

    .line 3824
    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 3825
    .restart local v0    # "changing":Z
    :cond_3
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mInteractingWindows:I

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    goto :goto_2

    .line 3831
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->resumeSuspendedAutohide()V

    goto :goto_3
.end method

.method public setKeyguardFadingAway(JJ)V
    .locals 3
    .param p1, "delay"    # J
    .param p3, "fadeoutDuration"    # J

    .prologue
    const/4 v1, 0x1

    .line 5141
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAway:Z

    .line 5142
    iput-wide p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAwayDelay:J

    .line 5143
    iput-wide p3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardFadingAwayDuration:J

    .line 5144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWaitingForKeyguardExit:Z

    .line 5145
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabledUnmodified:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->disable(IZ)V

    .line 5146
    return-void
.end method

.method public setKeyguardGone(Z)V
    .locals 1
    .param p1, "bouncer"    # Z

    .prologue
    .line 6109
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardHostContainer:Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->hide(Z)V

    .line 6110
    return-void
.end method

.method public setLightsOn(Z)V
    .locals 4
    .param p1, "on"    # Z

    .prologue
    const/4 v3, 0x1

    .line 3884
    const-string v0, "PhoneStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLightsOn("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3885
    if-eqz p1, :cond_0

    .line 3886
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setSystemUiVisibility(II)V

    .line 3890
    :goto_0
    return-void

    .line 3888
    :cond_0
    invoke-virtual {p0, v3, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setSystemUiVisibility(II)V

    goto :goto_0
.end method

.method public setNetworkSpeed(Ljava/lang/String;)V
    .locals 1
    .param p1, "speed"    # Ljava/lang/String;

    .prologue
    .line 6018
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVivoSignalViewLeft:Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;

    if-eqz v0, :cond_0

    .line 6019
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVivoSignalViewLeft:Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->setNetworkSpeed(Ljava/lang/String;)V

    .line 6021
    :cond_0
    return-void
.end method

.method public setQsExpanded(Z)V
    .locals 1
    .param p1, "expanded"    # Z

    .prologue
    .line 3105
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setQsExpanded(Z)V

    .line 3106
    return-void
.end method

.method public setSimcardFlow(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "flow1"    # Ljava/lang/String;
    .param p2, "flow2"    # Ljava/lang/String;

    .prologue
    .line 6013
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationContainerParentFloor:Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->setSimCardFlow(Ljava/lang/String;Ljava/lang/String;)V

    .line 6014
    return-void
.end method

.method public setStatusBarIconColor(Z)V
    .locals 1
    .param p1, "whiteStyle"    # Z

    .prologue
    .line 2471
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarColorManager:Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->setStatusBarIconColor(Z)V

    .line 2472
    return-void
.end method

.method public setStatusBarVisible(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 3272
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setVisibility(I)V

    .line 3273
    return-void

    .line 3272
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setSystemUiVisibility(II)V
    .locals 15
    .param p1, "vis"    # I
    .param p2, "mask"    # I

    .prologue
    .line 3692
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    .line 3693
    .local v1, "oldVal":I
    xor-int/lit8 v0, p2, -0x1

    and-int/2addr v0, v1

    and-int v3, p1, p2

    or-int v2, v0, v3

    .line 3694
    .local v2, "newVal":I
    xor-int v7, v2, v1

    .line 3695
    .local v7, "diff":I
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneStatusBar"

    const-string v3, "setSystemUiVisibility vis=%s mask=%s oldVal=%s newVal=%s diff=%s"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v4, v5

    const/4 v5, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v4, v5

    const/4 v5, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v4, v5

    const/4 v5, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v4, v5

    const/4 v5, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3700
    :cond_0
    if-eqz v7, :cond_c

    .line 3703
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    and-int/lit16 v0, v0, 0x4000

    if-lez v0, :cond_d

    const/4 v13, 0x1

    .line 3705
    .local v13, "wasRecentsVisible":Z
    :goto_0
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    .line 3708
    and-int/lit8 v0, v7, 0x1

    if-eqz v0, :cond_2

    .line 3709
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_e

    const/4 v8, 0x1

    .line 3710
    .local v8, "lightsOut":Z
    :goto_1
    if-eqz v8, :cond_1

    .line 3711
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    .line 3712
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicking:Z

    if-eqz v0, :cond_1

    .line 3713
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->haltTicker()V

    .line 3717
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setAreThereNotifications()V

    .line 3721
    .end local v8    # "lightsOut":Z
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v3

    const/high16 v4, 0x4000000

    const/high16 v5, 0x40000000    # 2.0f

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->computeBarMode(IILcom/android/systemui/statusbar/phone/BarTransitions;II)I

    move-result v11

    .line 3725
    .local v11, "sbMode":I
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-nez v0, :cond_f

    const/4 v9, -0x1

    .line 3728
    .local v9, "nbMode":I
    :goto_2
    const/4 v0, -0x1

    if-eq v11, v0, :cond_10

    const/4 v12, 0x1

    .line 3729
    .local v12, "sbModeChanged":Z
    :goto_3
    const/4 v0, -0x1

    if-eq v9, v0, :cond_11

    const/4 v10, 0x1

    .line 3730
    .local v10, "nbModeChanged":Z
    :goto_4
    const/4 v6, 0x0

    .line 3731
    .local v6, "checkBarModes":Z
    if-eqz v12, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarMode:I

    if-eq v11, v0, :cond_3

    .line 3732
    iput v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarMode:I

    .line 3733
    const/4 v6, 0x1

    .line 3735
    :cond_3
    if-eqz v10, :cond_4

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarMode:I

    if-eq v9, v0, :cond_4

    .line 3736
    iput v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarMode:I

    .line 3737
    const/4 v6, 0x1

    .line 3739
    :cond_4
    if-eqz v6, :cond_5

    .line 3740
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->checkBarModes()V

    .line 3742
    :cond_5
    if-nez v12, :cond_6

    if-eqz v10, :cond_8

    .line 3744
    :cond_6
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarMode:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_7

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarMode:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_12

    .line 3745
    :cond_7
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->scheduleAutohide()V

    .line 3752
    :cond_8
    :goto_5
    const/high16 v0, 0x10000000

    and-int v0, v0, p1

    if-eqz v0, :cond_9

    .line 3753
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    const v3, -0x10000001

    and-int/2addr v0, v3

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    .line 3755
    :cond_9
    const/high16 v0, 0x20000000

    and-int v0, v0, p1

    if-eqz v0, :cond_a

    .line 3756
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    const v3, -0x20000001

    and-int/2addr v0, v3

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    .line 3760
    :cond_a
    if-eqz v13, :cond_b

    .line 3761
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    .line 3765
    :cond_b
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyUiVisibilityChanged(I)V

    .line 3767
    .end local v6    # "checkBarModes":Z
    .end local v9    # "nbMode":I
    .end local v10    # "nbModeChanged":Z
    .end local v11    # "sbMode":I
    .end local v12    # "sbModeChanged":Z
    .end local v13    # "wasRecentsVisible":Z
    :cond_c
    return-void

    .line 3703
    :cond_d
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 3709
    .restart local v13    # "wasRecentsVisible":Z
    :cond_e
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 3725
    .restart local v11    # "sbMode":I
    :cond_f
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;

    move-result-object v3

    const/high16 v4, 0x8000000

    const/high16 v5, -0x80000000

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->computeBarMode(IILcom/android/systemui/statusbar/phone/BarTransitions;II)I

    move-result v9

    goto :goto_2

    .line 3728
    .restart local v9    # "nbMode":I
    :cond_10
    const/4 v12, 0x0

    goto :goto_3

    .line 3729
    .restart local v12    # "sbModeChanged":Z
    :cond_11
    const/4 v10, 0x0

    goto :goto_4

    .line 3747
    .restart local v6    # "checkBarModes":Z
    .restart local v10    # "nbModeChanged":Z
    :cond_12
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->cancelAutohide()V

    goto :goto_5
.end method

.method public setVisibilityWhenDone(Landroid/animation/Animator;Landroid/view/View;I)Landroid/animation/Animator;
    .locals 1
    .param p1, "a"    # Landroid/animation/Animator;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "vis"    # I

    .prologue
    .line 3446
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$34;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$34;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/view/View;I)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3452
    return-object p1
.end method

.method public setVisibilityWhenDone(Landroid/view/ViewPropertyAnimator;Landroid/view/View;I)Landroid/view/ViewPropertyAnimator;
    .locals 1
    .param p1, "a"    # Landroid/view/ViewPropertyAnimator;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "vis"    # I

    .prologue
    .line 3434
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$33;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$33;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/view/View;ILandroid/view/ViewPropertyAnimator;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 3441
    return-object p1
.end method

.method public setWindowState(II)V
    .locals 4
    .param p1, "window"    # I
    .param p2, "state"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3651
    if-nez p2, :cond_2

    move v0, v1

    .line 3652
    .local v0, "showing":Z
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    if-eqz v3, :cond_0

    if-ne p1, v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowState:I

    if-eq v1, p2, :cond_0

    .line 3655
    iput p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindowState:I

    .line 3657
    if-nez v0, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-nez v1, :cond_0

    .line 3658
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->collapseAllPanels(Z)V

    .line 3661
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarWindowState:I

    if-eq v1, p2, :cond_1

    .line 3664
    iput p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarWindowState:I

    .line 3667
    :cond_1
    return-void

    .end local v0    # "showing":Z
    :cond_2
    move v0, v2

    .line 3651
    goto :goto_0
.end method

.method protected setZenMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 1384
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->setZenMode(I)V

    .line 1385
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    if-eqz v0, :cond_0

    .line 1386
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->setZenMode(I)V

    .line 1388
    :cond_0
    return-void
.end method

.method protected shouldDisableNavbarGestures()Z
    .locals 2

    .prologue
    .line 4746
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    const/high16 v1, 0x2000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showClock(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    .line 2908
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-nez v1, :cond_1

    .line 2916
    :cond_0
    :goto_0
    return-void

    .line 2911
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v2, 0x7f110261

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2913
    .local v0, "clock":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 2914
    if-eqz p1, :cond_2

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x8

    goto :goto_1
.end method

.method public showDevelopModeTip(Z)V
    .locals 1
    .param p1, "isModeOn"    # Z

    .prologue
    .line 5982
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClock:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/Clock;->showDevelopModeTip(Z)V

    .line 5983
    return-void
.end method

.method public showKeyguard()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 4904
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationContainerParentFloor:Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;

    invoke-virtual {v0, v3}, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->animateCollapse(Landroid/animation/AnimatorListenerAdapter;)V

    .line 4908
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 4909
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setVisibility(I)V

    .line 4914
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLaunchTransitionFadingAway:Z

    if-eqz v0, :cond_1

    .line 4915
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 4916
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setAlpha(F)V

    .line 4917
    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLaunchTransitionEndRunnable:Ljava/lang/Runnable;

    .line 4919
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLaunchTransitionFadingAway:Z

    .line 4922
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 4925
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->enterKeyguardState()V

    .line 4928
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setBarState(I)V

    .line 4929
    invoke-direct {p0, v2, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateKeyguardState(ZZ)V

    .line 4930
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenOnFromKeyguard:Z

    if-nez v0, :cond_2

    .line 4935
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setTouchDisabled(Z)V

    .line 4937
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->instantExpandNotificationsPanel()V

    .line 4938
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLeaveOpenOnKeyguardHide:Z

    .line 4939
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDraggedDownRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_3

    .line 4940
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDraggedDownRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserLocked(Z)V

    .line 4941
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDraggedDownRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->notifyHeightChanged()V

    .line 4942
    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDraggedDownRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 4946
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setKeyguardStatusBarColor()V

    .line 4950
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateClockVisibility()V

    .line 4954
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    const/16 v1, 0x3f3

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 4956
    return-void
.end method

.method public showLockScreen()V
    .locals 2

    .prologue
    .line 6169
    const-string v0, "PhoneStatusBar"

    const-string v1, "showLockScreen"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6170
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->onBackPressed()Z

    .line 6171
    return-void
.end method

.method protected showRecents(Z)V
    .locals 1
    .param p1, "triggeredFromAltTab"    # Z

    .prologue
    .line 5634
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    .line 5635
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyUiVisibilityChanged(I)V

    .line 5636
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->showRecents(Z)V

    .line 5637
    return-void
.end method

.method public showScreenPinningRequest()V
    .locals 1

    .prologue
    .line 5668
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5674
    :goto_0
    return-void

    .line 5673
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showScreenPinningRequest(Z)V

    goto :goto_0
.end method

.method public showScreenPinningRequest(Z)V
    .locals 1
    .param p1, "allowCancel"    # Z

    .prologue
    .line 5693
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/lockTask/LockTaskHelper;->lockCurrentTask()V

    .line 5695
    return-void
.end method

.method public showSearchPanel()V
    .locals 3

    .prologue
    .line 1445
    invoke-super {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->showSearchPanel()V

    .line 1446
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mShowSearchPanel:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1449
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/SearchPanelView;->setSystemUiVisibility(I)V

    .line 1451
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v1, :cond_0

    .line 1452
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 1454
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x21

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1455
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1457
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method

.method public start(Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .param p1, "a"    # Landroid/animation/Animator;

    .prologue
    .line 3466
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    .line 3467
    return-object p1
.end method

.method public start()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 765
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplay:Landroid/view/Display;

    .line 767
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateDisplaySize()V

    .line 768
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrimSrcModeEnabled:Z

    .line 770
    invoke-super {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->start()V

    .line 772
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const-string v1, "media_session"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSessionManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 777
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->addNavigationBar()V

    .line 780
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCastController:Lcom/android/systemui/statusbar/policy/CastControllerImpl;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/CastController;Lcom/android/systemui/statusbar/policy/HotspotController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    .line 781
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 783
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v4}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 785
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "heads_up_notifications_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 788
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "ticker_gets_heads_up"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 792
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .line 793
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->addListener(Lcom/android/systemui/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;)V

    .line 794
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->startKeyguard()V

    .line 796
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/statusbar/phone/PhoneStatusBar$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;

    .line 797
    const-class v0, Lcom/android/systemui/doze/DozeHost;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozeServiceHost:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 798
    const-class v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {p0, v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 800
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setControllerUsers()V

    .line 802
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyUserAboutHiddenNotifications()V

    .line 804
    new-instance v0, Lcom/android/systemui/recent/ScreenPinningRequest;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/recent/ScreenPinningRequest;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenPinningRequest:Lcom/android/systemui/recent/ScreenPinningRequest;

    .line 806
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenPinningRequest:Lcom/android/systemui/recent/ScreenPinningRequest;

    invoke-virtual {v0, p0}, Lcom/android/systemui/recent/ScreenPinningRequest;->setPhoneStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 807
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarColorManager:Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;

    .line 808
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarColorManager:Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;

    invoke-virtual {v0, p0}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->setStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 809
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->setStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 810
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->setKeyguardCallback(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V

    .line 815
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    const/16 v1, 0x3ec

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 819
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/notification/SceneNotificationManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/SceneNotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSceneNotificationManager:Lcom/android/systemui/vivo/common/notification/SceneNotificationManager;

    .line 820
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSceneNotificationManager:Lcom/android/systemui/vivo/common/notification/SceneNotificationManager;

    invoke-virtual {v0, p0}, Lcom/android/systemui/vivo/common/notification/SceneNotificationManager;->setStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 824
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/utils/SmartMultiWindowUtils;->init()V

    .line 825
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/utils/DevelopModeManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/utils/DevelopModeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/vivo/common/utils/DevelopModeManager;->setStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 827
    return-void
.end method

.method public startActivity(Landroid/content/Intent;Z)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "dismissShade"    # Z

    .prologue
    .line 3097
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZ)V

    .line 3098
    return-void
.end method

.method public startActivityDismissingKeyguard(Landroid/content/Intent;ZZ)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "onlyProvisioned"    # Z
    .param p3, "dismissShade"    # Z

    .prologue
    .line 4222
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4263
    :goto_0
    return-void

    .line 4224
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentUserId:I

    invoke-static {v0, p1, v1}, Lcom/android/systemui/statusbar/policy/PreviewInflater;->wouldLaunchResolverActivity(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v3

    .line 4226
    .local v3, "afterKeyguardGone":Z
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v2

    .line 4227
    .local v2, "keyguardShowing":Z
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$38;

    move-object v1, p0

    move-object v4, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$38;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;ZZLandroid/content/Intent;Z)V

    invoke-virtual {p0, v0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Z)V

    goto :goto_0
.end method

.method public startDelay(ILandroid/animation/Animator;)Landroid/animation/Animator;
    .locals 2
    .param p1, "d"    # I
    .param p2, "a"    # Landroid/animation/Animator;

    .prologue
    .line 3461
    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 3462
    return-object p2
.end method

.method public startLaunchTransitionTimeout()V
    .locals 4

    .prologue
    .line 5051
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    const/16 v1, 0x3eb

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessageDelayed(IJ)Z

    .line 5053
    return-void
.end method

.method protected tick(Landroid/service/notification/StatusBarNotification;Z)V
    .locals 4
    .param p1, "n"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "firstTime"    # Z

    .prologue
    .line 3933
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationOpsManager:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/android/systemui/vivo/common/utils/DoubleInstanceUtils;->getStatusBarNotificationInstanceId(Landroid/service/notification/StatusBarNotification;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->getNotificationTipStyle(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 3934
    .local v0, "style":Ljava/lang/String;
    const-string v1, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3962
    :cond_0
    :goto_0
    return-void

    .line 3940
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerEnabled:Z

    if-eqz v1, :cond_0

    .line 3943
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->areLightsOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3946
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isDeviceProvisioned()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3949
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isNotificationForCurrentProfiles(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3955
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3957
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    const/high16 v2, 0xa0000

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    .line 3959
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicker:Lcom/android/systemui/statusbar/phone/Ticker;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/Ticker;->addEntry(Landroid/service/notification/StatusBarNotification;)V

    goto :goto_0
.end method

.method protected toggleRecents()V
    .locals 1

    .prologue
    .line 5650
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    xor-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    .line 5651
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyUiVisibilityChanged(I)V

    .line 5652
    invoke-super {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->toggleRecents()V

    .line 5653
    return-void
.end method

.method public toggleUpSlideGuideView(ZZ)V
    .locals 1
    .param p1, "show"    # Z
    .param p2, "commit"    # Z

    .prologue
    .line 6273
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUpSlideManager:Lcom/android/systemui/vivo/common/upslide/UpSlideManager;

    if-eqz v0, :cond_0

    .line 6274
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUpSlideManager:Lcom/android/systemui/vivo/common/upslide/UpSlideManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/vivo/common/upslide/UpSlideManager;->toggleUpSlideGuideView(ZZ)V

    .line 6276
    :cond_0
    return-void
.end method

.method protected toggleUpSlideView(ZZ)V
    .locals 2
    .param p1, "isHomeKeyLongPressed"    # Z
    .param p2, "collapse"    # Z

    .prologue
    .line 6260
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 6261
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    .line 6263
    :cond_0
    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsScreenPinningRequest:Z

    if-eqz v0, :cond_2

    .line 6264
    const-string v0, "PhoneStatusBar"

    const-string v1, "Durring screen pinning, return!"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6270
    :cond_1
    :goto_0
    return-void

    .line 6267
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUpSlideManager:Lcom/android/systemui/vivo/common/upslide/UpSlideManager;

    if-eqz v0, :cond_1

    .line 6268
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUpSlideManager:Lcom/android/systemui/vivo/common/upslide/UpSlideManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/vivo/common/upslide/UpSlideManager;->toggleUpSlideView(ZZ)V

    goto :goto_0
.end method

.method public topAppWindowChanged(Z)V
    .locals 3
    .param p1, "showMenu"    # Z

    .prologue
    .line 3900
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 3901
    const-string v1, "PhoneStatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_3

    const-string v0, "showing"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " the MENU button"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3903
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_1

    .line 3904
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setMenuVisibility(Z)V

    .line 3908
    :cond_1
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setLightsOn(Z)V

    .line 3909
    :cond_2
    return-void

    .line 3901
    :cond_3
    const-string v0, "hiding"

    goto :goto_0
.end method

.method public unlockFromFingerprint(IZI)V
    .locals 6
    .param p1, "fpUnlck"    # I
    .param p2, "hideFromFinger"    # Z
    .param p3, "hide"    # I

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 6127
    const-string v0, "PhoneStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unlockFromFingerprint, fpUnlck, fromFinger, hide: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6129
    if-eqz p2, :cond_2

    .line 6130
    if-ne v5, p3, :cond_1

    .line 6131
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardHostContainer:Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;

    invoke-virtual {v0, v3}, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->setAlpha(F)V

    .line 6132
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setAlpha(F)V

    .line 6159
    :cond_0
    :goto_0
    return-void

    .line 6133
    :cond_1
    if-nez p3, :cond_0

    .line 6134
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardHostContainer:Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;

    invoke-virtual {v0, v4}, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->setAlpha(F)V

    .line 6137
    const-string v0, "PhoneStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unlockFromFingerprint isBouncerShowing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , isShowing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , isOccluded = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6141
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6142
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setAlpha(F)V

    goto :goto_0

    .line 6147
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDismissWithAnim:Z

    .line 6148
    if-ne p1, v5, :cond_3

    .line 6149
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardHostContainer:Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;

    invoke-virtual {v0, v3}, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->setAlpha(F)V

    .line 6150
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setAlpha(F)V

    .line 6152
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->preChangeStatusBarColor()V

    .line 6155
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-eqz v0, :cond_0

    .line 6156
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->executeFingerprintAction()V

    goto :goto_0
.end method

.method protected updateCarrierLabelVisibility(Z)V
    .locals 0
    .param p1, "force"    # Z

    .prologue
    .line 2558
    return-void
.end method

.method public updateClockVisibility()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5940
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/DevelopModeManager;->isModeOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5941
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClock:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/Clock;->setVisibility(I)V

    .line 5963
    :cond_0
    :goto_0
    return-void

    .line 5944
    :cond_1
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/FunctionConfig;->alwaysShowClock()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5945
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isPhoneInCall()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5946
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClock:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/Clock;->setVisibility(I)V

    goto :goto_0

    .line 5948
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStateUtils:Lcom/android/systemui/vivo/common/utils/StateUtils;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/utils/StateUtils;->isKeyguardShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5949
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClock:Lcom/android/systemui/statusbar/policy/Clock;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/Clock;->setVisibility(I)V

    goto :goto_0

    .line 5958
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClock:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/Clock;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateCollapsingRunnable()V
    .locals 1

    .prologue
    .line 3421
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPostCollapseRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 3422
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$32;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$32;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->addPostCollapseAction(Ljava/lang/Runnable;)V

    .line 3429
    :cond_0
    return-void
.end method

.method updateDisplaySize()V
    .locals 2

    .prologue
    .line 4208
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 4209
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 4214
    return-void
.end method

.method public updateExpandedViewPos(I)V
    .locals 4
    .param p1, "thingy"    # I

    .prologue
    .line 4196
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanelMinHeightFrac:F

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentDisplaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setMinimumHeight(I)V

    .line 4199
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 4200
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanelGravity:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 4201
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4203
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateCarrierLabelVisibility(Z)V

    .line 4204
    return-void
.end method

.method public updateIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;Lcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 2
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "viewIndex"    # I
    .param p4, "old"    # Lcom/android/internal/statusbar/StatusBarIcon;
    .param p5, "icon"    # Lcom/android/internal/statusbar/StatusBarIcon;

    .prologue
    .line 1652
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 1653
    .local v0, "view":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v0, p5}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 1654
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIconsKeyguard:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "view":Lcom/android/systemui/statusbar/StatusBarIconView;
    check-cast v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 1655
    .restart local v0    # "view":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v0, p5}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 1656
    return-void
.end method

.method public updateMediaMetaData(Z)V
    .locals 0
    .param p1, "metaDataChanged"    # Z

    .prologue
    .line 2803
    return-void
.end method

.method public updateNotificationIcons(I)V
    .locals 0
    .param p1, "iconColorFlag"    # I

    .prologue
    .line 2438
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconColorFlag:I

    .line 2439
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNotificationIcons()V

    .line 2440
    return-void
.end method

.method protected updateNotificationRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 1
    .param p1, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 1879
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 1881
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationData;->updateRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 1882
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNotifications()V

    .line 1883
    return-void
.end method

.method protected updateNotifications()V
    .locals 2

    .prologue
    const/16 v1, 0x3ee

    .line 2261
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2262
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 2263
    const-string v0, "TAG"

    const-string v1, "updateNotifications,process msg"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2267
    :goto_0
    return-void

    .line 2265
    :cond_0
    const-string v0, "TAG"

    const-string v1, "updateNotifications,skip msg"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method updateResources()V
    .locals 2

    .prologue
    .line 4539
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v0, :cond_0

    .line 4540
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->updateResources()V

    .line 4543
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->loadDimens()V

    .line 4544
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const v1, 0x10c000e

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLinearOutSlowIn:Landroid/view/animation/Interpolator;

    .line 4547
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz v0, :cond_1

    .line 4548
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateResources()V

    .line 4550
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    if-eqz v0, :cond_2

    .line 4551
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->updateResources()V

    .line 4553
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    if-eqz v0, :cond_3

    .line 4554
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessMirrorController:Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->updateResources()V

    .line 4558
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->updatePartitionTitles()V

    .line 4559
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->updateTextResources()V

    .line 4561
    return-void
.end method

.method public updateRowStates()V
    .locals 1

    .prologue
    .line 2506
    invoke-super {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateRowStates()V

    .line 2507
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->notifyVisibleChildrenChanged()V

    .line 2508
    return-void
.end method

.method protected updateSearchPanel()V
    .locals 2

    .prologue
    .line 1437
    invoke-super {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateSearchPanel()V

    .line 1438
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_0

    .line 1439
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDelegateView(Landroid/view/View;)V

    .line 1441
    :cond_0
    return-void
.end method

.method public updateStackScrollerState(Z)V
    .locals 7
    .param p1, "goingToFullShade"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 5205
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    if-nez v4, :cond_1

    .line 5227
    :cond_0
    :goto_0
    return-void

    .line 5206
    :cond_1
    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    if-ne v4, v1, :cond_2

    .line 5207
    .local v1, "onKeyguard":Z
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isLockscreenPublicMode()Z

    move-result v5

    invoke-virtual {v4, v5, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setHideSensitive(ZZ)V

    .line 5208
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4, v1, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setDimmed(ZZ)V

    .line 5212
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getActivatedChild()Lcom/android/systemui/statusbar/ActivatableNotificationView;

    move-result-object v0

    .line 5213
    .local v0, "activatedChild":Lcom/android/systemui/statusbar/ActivatableNotificationView;
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setActivatedChild(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    .line 5214
    if-eqz v0, :cond_3

    .line 5215
    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->makeInactive(Z)V

    goto :goto_0

    .end local v0    # "activatedChild":Lcom/android/systemui/statusbar/ActivatableNotificationView;
    .end local v1    # "onKeyguard":Z
    :cond_2
    move v1, v3

    .line 5206
    goto :goto_1

    .line 5220
    .restart local v0    # "activatedChild":Lcom/android/systemui/statusbar/ActivatableNotificationView;
    .restart local v1    # "onKeyguard":Z
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getShowTapTipChild()Lcom/android/systemui/statusbar/ActivatableNotificationView;

    move-result-object v2

    .line 5221
    .local v2, "showTapTipView":Lcom/android/systemui/statusbar/ActivatableNotificationView;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3, v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setShowTapTipChild(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    .line 5222
    if-eqz v2, :cond_0

    .line 5223
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->removeTapTip()V

    goto :goto_0
.end method

.method public userActivity()V
    .locals 2

    .prologue
    .line 5232
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 5235
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/keyguard/ViewMediatorCallback;->userActivity()V

    .line 5237
    :cond_1
    return-void
.end method

.method public userSwitched(I)V
    .locals 0
    .param p1, "newUserId"    # I

    .prologue
    .line 4486
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->userSwitched(I)V

    .line 4488
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    .line 4489
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updatePublicMode()V

    .line 4490
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNotifications()V

    .line 4491
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->resetUserSetupObserver()V

    .line 4492
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setControllerUsers()V

    .line 4493
    return-void
.end method

.method vibrate()V
    .locals 4

    .prologue
    .line 4714
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 4716
    .local v0, "vib":Landroid/os/Vibrator;
    const-wide/16 v2, 0xfa

    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    .line 4717
    return-void
.end method

.method public wakeUpIfDozing(JLandroid/view/MotionEvent;)V
    .locals 5
    .param p1, "time"    # J
    .param p3, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 5708
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozing:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->isPulsing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5709
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 5710
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0, p1, p2}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 5711
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenOnComingFromTouch:Z

    .line 5712
    new-instance v1, Landroid/graphics/PointF;

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenOnTouchLocation:Landroid/graphics/PointF;

    .line 5713
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setTouchDisabled(Z)V

    .line 5715
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    return-void
.end method
