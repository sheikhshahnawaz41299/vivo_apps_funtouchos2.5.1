.class public abstract Lcom/android/systemui/statusbar/BaseStatusBar;
.super Lcom/android/systemui/SystemUI;
.source "BaseStatusBar.java"

# interfaces
.implements Lcom/android/systemui/RecentsComponent$Callbacks;
.implements Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/statusbar/ExpandableNotificationRow$ExpansionLogger;
.implements Lcom/android/systemui/statusbar/NotificationData$Environment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;,
        Lcom/android/systemui/statusbar/BaseStatusBar$TouchOutsideListener;,
        Lcom/android/systemui/statusbar/BaseStatusBar$H;
    }
.end annotation


# static fields
.field private static final BANNER_ACTION_CANCEL:Ljava/lang/String; = "com.android.systemui.statusbar.banner_action_cancel"

.field private static final BANNER_ACTION_SETUP:Ljava/lang/String; = "com.android.systemui.statusbar.banner_action_setup"

.field public static final DEBUG:Z

.field protected static final ENABLE_HEADS_UP:Z = true

.field public static final EXPANDED_FULL_OPEN:I = -0x2711

.field public static final EXPANDED_LEAVE_ALONE:I = -0x2710

.field private static final HIDDEN_NOTIFICATION_ID:I = 0x2710

.field protected static final INTERRUPTION_THRESHOLD:I = 0xa

.field protected static final MSG_CANCEL_PRELOAD_RECENT_APPS:I = 0x3ff

.field protected static final MSG_CLOSE_SEARCH_PANEL:I = 0x403

.field protected static final MSG_DECAY_HEADS_UP:I = 0x407

.field protected static final MSG_ESCALATE_HEADS_UP:I = 0x406

.field protected static final MSG_HIDE_HEADS_UP:I = 0x405

.field protected static final MSG_HIDE_RECENT_APPS:I = 0x3fc

.field protected static final MSG_PRELOAD_RECENT_APPS:I = 0x3fe

.field protected static final MSG_SHOW_HEADS_UP:I = 0x404

.field protected static final MSG_SHOW_NEXT_AFFILIATED_TASK:I = 0x400

.field protected static final MSG_SHOW_PREV_AFFILIATED_TASK:I = 0x401

.field protected static final MSG_SHOW_RECENT_APPS:I = 0x3fb

.field protected static final MSG_TOGGLE_RECENTS_APPS:I = 0x3fd

.field public static final MULTIUSER_DEBUG:Z = false

.field private static final NOTIFICATION_CLICK_DEBUG:Z = true

.field protected static final SETTING_HEADS_UP_TICKER:Ljava/lang/String; = "ticker_gets_heads_up"

.field public static final SYSTEM_DIALOG_REASON_RECENT_APPS:Ljava/lang/String; = "recentapps"

.field public static final TAG:Ljava/lang/String; = "StatusBar"


# instance fields
.field protected mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field protected mApplicationUtils:Lcom/android/systemui/vivo/common/utils/ApplicationUtils;

.field protected mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field protected mBlockOrManage:Z

.field protected mBlocked:Z

.field protected mBlockedAppLabel:Ljava/lang/String;

.field protected mBlockedInstanceId:I

.field protected mBlockedPkg:Ljava/lang/String;

.field private mBouncerCount:I

.field protected mBouncerShowing:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field protected mCalendarData:Lcom/android/systemui/statusbar/NotificationData;

.field protected mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field protected final mCurrentProfiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mCurrentUserId:I

.field protected mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mDeviceProvisioned:Z

.field protected mDisableNotificationAlerts:Z

.field protected mDismissView:Lcom/android/systemui/statusbar/DismissView;

.field protected mDisplay:Landroid/view/Display;

.field protected mDreamManager:Landroid/service/dreams/IDreamManager;

.field protected mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

.field private mExpandableNotificationRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field private mFastOutLinearIn:Landroid/animation/TimeInterpolator;

.field private mFontScale:F

.field protected mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

.field protected mHeadsUpNotificationDecay:I

.field protected mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

.field protected mHeadsUpTicker:Z

.field protected mLayoutDirection:I

.field private mLinearOutSlowIn:Landroid/animation/TimeInterpolator;

.field private mLocale:Ljava/util/Locale;

.field private mLockscreenPublicMode:Z

.field private final mLockscreenSettingsObserver:Landroid/database/ContentObserver;

.field protected mMusicData:Lcom/android/systemui/statusbar/NotificationData;

.field protected mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

.field private mNotificationColorUtil:Lcom/android/internal/util/NotificationColorUtil;

.field protected mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

.field private mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

.field private final mNotificationListener:Landroid/service/notification/NotificationListenerService;

.field protected mNotificationOpsManager:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

.field protected mNotificationPartitionManager:Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;

.field private mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

.field protected mOngoingData:Lcom/android/systemui/statusbar/NotificationData;

.field mPowerManager:Landroid/os/PowerManager;

.field private mRecents:Lcom/android/systemui/RecentsComponent;

.field protected mRecentsPreloadOnTouchListener:Landroid/view/View$OnTouchListener;

.field protected mRowMaxHeight:I

.field protected mRowMinHeight:I

.field protected mScreenOn:Ljava/lang/Boolean;

.field protected mScreenOnFromKeyguard:Z

.field protected mSearchPanelView:Lcom/android/systemui/SearchPanelView;

.field protected final mSettingsObserver:Landroid/database/ContentObserver;

.field protected mShowLockscreenNotifications:Z

.field protected mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

.field protected mState:I

.field protected mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field private final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field protected mUseHeadsUp:Z

.field private mUserManager:Landroid/os/UserManager;

.field private final mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

.field protected mVisible:Z

.field private mVisibleToUser:Z

.field protected mWindowManager:Landroid/view/WindowManager;

.field protected mWindowManagerService:Landroid/view/IWindowManager;

.field protected mZenMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 138
    const-string v0, "StatusBar"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 133
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 176
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->createHandler()Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    .line 193
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBlocked:Z

    .line 194
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBlockOrManage:Z

    .line 198
    iput v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBouncerCount:I

    .line 208
    iput v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    .line 209
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    .line 211
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLayoutDirection:I

    .line 215
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 233
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUseHeadsUp:Z

    .line 234
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpTicker:Z

    .line 235
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDisableNotificationAlerts:Z

    .line 245
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockscreenPublicMode:Z

    .line 246
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    .line 266
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDeviceProvisioned:Z

    .line 295
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$1;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$1;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 312
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$2;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$2;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockscreenSettingsObserver:Landroid/database/ContentObserver;

    .line 323
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$3;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    .line 414
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$4;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 452
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$5;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationListener:Landroid/service/notification/NotificationListenerService;

    .line 1147
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$10;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$10;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 1457
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$13;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$13;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecentsPreloadOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 1998
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/BaseStatusBar;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/BaseStatusBar;

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/BaseStatusBar;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/BaseStatusBar;
    .param p1, "x1"    # Z

    .prologue
    .line 133
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDeviceProvisioned:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/BaseStatusBar;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateLockscreenNotificationSetting()V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/systemui/statusbar/BaseStatusBar;Lcom/android/systemui/statusbar/NotificationGuts;)Lcom/android/systemui/statusbar/NotificationGuts;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/BaseStatusBar;
    .param p1, "x1"    # Lcom/android/systemui/statusbar/NotificationGuts;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/BaseStatusBar;)Landroid/util/SparseBooleanArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/BaseStatusBar;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/BaseStatusBar;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateCurrentProfilesCache()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/BaseStatusBar;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/BaseStatusBar;

    .prologue
    .line 133
    iget v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBouncerCount:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/BaseStatusBar;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/BaseStatusBar;
    .param p1, "x1"    # I

    .prologue
    .line 133
    iput p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBouncerCount:I

    return p1
.end method

.method static synthetic access$508(Lcom/android/systemui/statusbar/BaseStatusBar;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/systemui/statusbar/BaseStatusBar;

    .prologue
    .line 133
    iget v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBouncerCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBouncerCount:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/BaseStatusBar;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/BaseStatusBar;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 133
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/BaseStatusBar;->startNotificationOpsDetailsActivity(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/BaseStatusBar;)Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/BaseStatusBar;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mExpandableNotificationRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/systemui/statusbar/BaseStatusBar;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/BaseStatusBar;
    .param p1, "x1"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mExpandableNotificationRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/BaseStatusBar;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/BaseStatusBar;
    .param p1, "x1"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->inflateGuts(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/BaseStatusBar;)Landroid/animation/TimeInterpolator;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/BaseStatusBar;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLinearOutSlowIn:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method private alertAgain(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/app/Notification;)Z
    .locals 1
    .param p1, "oldEntry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "newNotification"    # Landroid/app/Notification;

    .prologue
    .line 2768
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->hasInterrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p2, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private inflateGuts(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 22
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 942
    const v2, 0x7f110116

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/view/ViewStub;

    .line 943
    .local v20, "stub":Landroid/view/ViewStub;
    if-eqz v20, :cond_0

    .line 944
    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 946
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v7

    .line 947
    .local v7, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->getPackageManagerForUser(I)Landroid/content/pm/PackageManager;

    move-result-object v19

    .line 949
    .local v19, "pmUser":Landroid/content/pm/PackageManager;
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setTag(Ljava/lang/Object;)V

    .line 950
    const v2, 0x7f1100b7

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 951
    .local v14, "guts":Landroid/view/View;
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 952
    .local v4, "pkg":Ljava/lang/String;
    move-object v9, v4

    .line 953
    .local v9, "appname":Ljava/lang/String;
    const/16 v18, 0x0

    .line 954
    .local v18, "pkgicon":Landroid/graphics/drawable/Drawable;
    const/4 v8, -0x1

    .line 956
    .local v8, "appUid":I
    const/16 v2, 0x2200

    :try_start_0
    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v16

    .line 959
    .local v16, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v16, :cond_2

    .line 960
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 961
    invoke-static {v7}, Lcom/android/systemui/vivo/common/utils/DoubleInstanceUtils;->getStatusBarNotificationInstanceId(Landroid/service/notification/StatusBarNotification;)I

    move-result v2

    if-lez v2, :cond_1

    .line 962
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v2, v9}, Lcom/android/systemui/vivo/common/utils/DoubleInstanceUtils;->getClonedLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 966
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mApplicationUtils:Lcom/android/systemui/vivo/common/utils/ApplicationUtils;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationOpsManager:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    invoke-virtual {v3, v4}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->changePkgFromNotification(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/vivo/common/utils/ApplicationUtils;->getAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    .line 968
    move-object/from16 v0, v16

    iget v8, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 980
    .end local v16    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Lcom/android/systemui/vivo/compatible/proxy/ImageUtilProxy;->createRedrawIconBitmap(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 983
    .local v10, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v7}, Lcom/android/systemui/vivo/common/utils/DoubleInstanceUtils;->getStatusBarNotificationInstanceId(Landroid/service/notification/StatusBarNotification;)I

    move-result v2

    if-lez v2, :cond_3

    .line 984
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Lcom/android/systemui/vivo/compatible/proxy/ImageUtilProxyForDualInstance;->drawCloneBitmap(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 989
    :cond_3
    const v2, 0x1020006

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v3, v0, v10}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 990
    const v2, 0x1020006

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 995
    const v2, 0x7f1100b9

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0e01f2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 997
    const v2, 0x7f1100b8

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1042
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/NotificationContentView;->setVisibility(I)V

    .line 1044
    const v2, 0x7f1100bb

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 1045
    .local v11, "blockButton":Landroid/widget/TextView;
    const v2, 0x7f1100bc

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .line 1046
    .local v12, "blockManageDivider":Landroid/view/View;
    const v2, 0x7f1100bd

    invoke-virtual {v14, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 1047
    .local v17, "manageButton":Landroid/widget/TextView;
    move-object v5, v9

    .line 1048
    .local v5, "appLabel":Ljava/lang/String;
    move v6, v8

    .line 1049
    .local v6, "appUidF":I
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v15

    .line 1053
    .local v15, "id":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/utils/DisplayUtils;->getDensityDpi(Landroid/content/Context;)I

    move-result v2

    const/16 v3, 0x140

    if-gt v2, v3, :cond_4

    .line 1054
    const v2, 0x7f0f0124

    const/high16 v3, -0x3fc00000    # -3.0f

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->shrinkGutsButtonText(Landroid/widget/TextView;IF)V

    .line 1055
    const v2, 0x7f0f0124

    const/high16 v3, -0x3fc00000    # -3.0f

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->shrinkGutsButtonText(Landroid/widget/TextView;IF)V

    .line 1059
    :cond_4
    const v2, 0x7f0e01b4

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1060
    const v2, 0x7f0e01b6

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1061
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationOpsManager:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    invoke-virtual {v2, v4, v15}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->isNotificationBlockable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1062
    new-instance v2, Lcom/android/systemui/statusbar/BaseStatusBar$8;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v4, v5, v7}, Lcom/android/systemui/statusbar/BaseStatusBar$8;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Ljava/lang/String;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;)V

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1083
    new-instance v2, Lcom/android/systemui/statusbar/BaseStatusBar$9;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/statusbar/BaseStatusBar$9;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Ljava/lang/String;Ljava/lang/String;ILandroid/service/notification/StatusBarNotification;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1096
    :goto_1
    return-void

    .line 970
    .end local v5    # "appLabel":Ljava/lang/String;
    .end local v6    # "appUidF":I
    .end local v10    # "bitmap":Landroid/graphics/Bitmap;
    .end local v11    # "blockButton":Landroid/widget/TextView;
    .end local v12    # "blockManageDivider":Landroid/view/View;
    .end local v15    # "id":I
    .end local v17    # "manageButton":Landroid/widget/TextView;
    :catch_0
    move-exception v13

    .line 972
    .local v13, "e":Ljava/lang/Exception;
    invoke-virtual/range {v19 .. v19}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v18

    .line 975
    const-string v2, "StatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "inflateGuts getApplicationInfo error! e: "

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1091
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v5    # "appLabel":Ljava/lang/String;
    .restart local v6    # "appUidF":I
    .restart local v10    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v11    # "blockButton":Landroid/widget/TextView;
    .restart local v12    # "blockManageDivider":Landroid/view/View;
    .restart local v15    # "id":I
    .restart local v17    # "manageButton":Landroid/widget/TextView;
    :cond_5
    const/16 v2, 0x8

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1092
    const/16 v2, 0x8

    invoke-virtual {v12, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1093
    const/16 v2, 0x8

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z
    .locals 1
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1656
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;Z)Z

    move-result v0

    return v0
.end method

.method private inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;Z)Z
    .locals 47
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "isHeadsUp"    # Z

    .prologue
    .line 1664
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->getPackageManagerForUser(I)Landroid/content/pm/PackageManager;

    move-result-object v32

    .line 1667
    .local v32, "pmUser":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRowMaxHeight:I

    move/from16 v31, v0

    .line 1668
    .local v31, "maxHeight":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v39, v0

    .line 1669
    .local v39, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual/range {v39 .. v39}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v0, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v18, v0

    .line 1670
    .local v18, "contentView":Landroid/widget/RemoteViews;
    invoke-virtual/range {v39 .. v39}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v15, v4, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 1672
    .local v15, "bigContentView":Landroid/widget/RemoteViews;
    if-eqz p3, :cond_0

    .line 1673
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0f001c

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v31

    .line 1676
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    move-result-object v4

    invoke-virtual/range {v39 .. v39}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->isAppLockedByIManager(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1678
    const/4 v15, 0x0

    .line 1685
    :cond_0
    :goto_0
    if-nez v18, :cond_2

    .line 1686
    const-string v4, "StatusBar"

    const-string v6, "InflateViews failed, contentView is null!!!"

    invoke-static {v4, v6}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1687
    const/4 v4, 0x0

    .line 1979
    :goto_1
    return v4

    .line 1681
    :cond_1
    invoke-virtual/range {v39 .. v39}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v15, v4, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    goto :goto_0

    .line 1690
    :cond_2
    sget-boolean v4, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v4, :cond_3

    .line 1691
    const-string v4, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "publicNotification: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v39 .. v39}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v9

    iget-object v9, v9, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    :cond_3
    invoke-virtual/range {v39 .. v39}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v0, v4, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    move-object/from16 v36, v0

    .line 1700
    .local v36, "publicNotification":Landroid/app/Notification;
    const/16 v23, 0x0

    .line 1701
    .local v23, "hasUserChangedExpansion":Z
    const/16 v44, 0x0

    .line 1702
    .local v44, "userExpanded":Z
    const/16 v45, 0x0

    .line 1704
    .local v45, "userLocked":Z
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v4, :cond_10

    .line 1705
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v38, v0

    .line 1706
    .local v38, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual/range {v38 .. v38}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->hasUserChangedExpansion()Z

    move-result v23

    .line 1707
    invoke-virtual/range {v38 .. v38}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserExpanded()Z

    move-result v44

    .line 1708
    invoke-virtual/range {v38 .. v38}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserLocked()Z

    move-result v45

    .line 1709
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->reset()V

    .line 1710
    if-eqz v23, :cond_4

    .line 1711
    move-object/from16 v0, v38

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserExpanded(Z)V

    .line 1722
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->workAroundBadLayerDrawableOpacity(Landroid/view/View;)V

    .line 1723
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotificationVetoButton(Landroid/view/View;Landroid/service/notification/StatusBarNotification;)Landroid/view/View;

    move-result-object v46

    .line 1724
    .local v46, "vetoButton":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const v6, 0x7f0e008e

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1730
    const v4, 0x7f110113

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Lcom/android/systemui/statusbar/NotificationContentView;

    .line 1732
    .local v21, "expanded":Lcom/android/systemui/statusbar/NotificationContentView;
    const v4, 0x7f110114

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Lcom/android/systemui/statusbar/NotificationContentView;

    .line 1735
    .local v22, "expandedPublic":Lcom/android/systemui/statusbar/NotificationContentView;
    const/high16 v4, 0x60000

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setDescendantFocusability(I)V

    .line 1737
    invoke-virtual/range {v39 .. v39}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v0, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    move-object/from16 v17, v0

    .line 1738
    .local v17, "contentIntent":Landroid/app/PendingIntent;
    if-eqz v17, :cond_11

    .line 1739
    invoke-virtual/range {v39 .. v39}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, p3

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->makeClicker(Landroid/app/PendingIntent;Ljava/lang/String;Z)Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    move-result-object v30

    .line 1741
    .local v30, "listener":Landroid/view/View$OnClickListener;
    move-object/from16 v0, v38

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1747
    .end local v30    # "listener":Landroid/view/View$OnClickListener;
    :goto_3
    const/4 v5, 0x0

    .line 1748
    .local v5, "contentViewLocal":Landroid/view/View;
    const/16 v16, 0x0

    .line 1750
    .local v16, "bigContentViewLocal":Landroid/view/View;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v4, v1, v6}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v5

    .line 1752
    if-eqz v15, :cond_5

    .line 1753
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    move-object/from16 v0, v21

    invoke-virtual {v15, v4, v0, v6}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    .line 1763
    :cond_5
    if-eqz v5, :cond_6

    .line 1764
    const/4 v4, 0x1

    invoke-virtual {v5, v4}, Landroid/view/View;->setIsRootNamespace(Z)V

    .line 1765
    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/NotificationContentView;->setContractedChild(Landroid/view/View;)V

    .line 1769
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual/range {v39 .. v39}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static/range {v39 .. v39}, Lcom/android/systemui/vivo/common/utils/DoubleInstanceUtils;->getStatusBarNotificationInstanceId(Landroid/service/notification/StatusBarNotification;)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual/range {v39 .. v39}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v10

    iget-object v10, v10, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static/range {v4 .. v10}, Lcom/android/systemui/vivo/common/statusbar/PhoneStatusBarUtils;->redrawIcon(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;ZIZLjava/lang/CharSequence;)V

    .line 1773
    move-object/from16 v0, v39

    invoke-static {v5, v0}, Lcom/android/systemui/vivo/common/statusbar/PhoneStatusBarUtils;->setTextViewDirection(Landroid/view/View;Landroid/service/notification/StatusBarNotification;)V

    .line 1774
    move-object/from16 v0, v39

    invoke-static {v5, v0}, Lcom/android/systemui/vivo/common/statusbar/PhoneStatusBarUtils;->invertSpannedToString(Landroid/view/View;Landroid/service/notification/StatusBarNotification;)V

    .line 1777
    :cond_6
    if-eqz v16, :cond_7

    .line 1778
    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/view/View;->setIsRootNamespace(Z)V

    .line 1779
    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->setExpandedChild(Landroid/view/View;)V

    .line 1783
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual/range {v39 .. v39}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static/range {v39 .. v39}, Lcom/android/systemui/vivo/common/utils/DoubleInstanceUtils;->getStatusBarNotificationInstanceId(Landroid/service/notification/StatusBarNotification;)I

    move-result v10

    const/4 v11, 0x1

    invoke-virtual/range {v39 .. v39}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v12, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    move-object/from16 v7, v16

    invoke-static/range {v6 .. v12}, Lcom/android/systemui/vivo/common/statusbar/PhoneStatusBarUtils;->redrawIcon(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;ZIZLjava/lang/CharSequence;)V

    .line 1787
    move-object/from16 v0, v16

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/statusbar/PhoneStatusBarUtils;->setTextViewDirection(Landroid/view/View;Landroid/service/notification/StatusBarNotification;)V

    .line 1788
    move-object/from16 v0, v16

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/statusbar/PhoneStatusBarUtils;->invertSpannedToString(Landroid/view/View;Landroid/service/notification/StatusBarNotification;)V

    .line 1793
    :cond_7
    const/4 v7, 0x0

    .line 1795
    .local v7, "publicViewLocal":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    move-result-object v4

    invoke-virtual/range {v39 .. v39}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->isAppLockedByIManager(Ljava/lang/String;)Z

    move-result v29

    .line 1798
    .local v29, "isAppLocked":Z
    if-eqz v36, :cond_9

    if-nez v29, :cond_9

    .line 1800
    :try_start_1
    move-object/from16 v0, v36

    iget-object v4, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    move-object/from16 v0, v22

    invoke-virtual {v4, v6, v0, v9}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v7

    .line 1803
    if-eqz v7, :cond_8

    .line 1804
    const/4 v4, 0x1

    invoke-virtual {v7, v4}, Landroid/view/View;->setIsRootNamespace(Z)V

    .line 1805
    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/NotificationContentView;->setContractedChild(Landroid/view/View;)V

    .line 1810
    :cond_8
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual/range {v39 .. v39}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static/range {v39 .. v39}, Lcom/android/systemui/vivo/common/utils/DoubleInstanceUtils;->getStatusBarNotificationInstanceId(Landroid/service/notification/StatusBarNotification;)I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual/range {v39 .. v39}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v12, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static/range {v6 .. v12}, Lcom/android/systemui/vivo/common/statusbar/PhoneStatusBarUtils;->redrawIcon(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;ZIZLjava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1823
    :cond_9
    :goto_4
    :try_start_2
    invoke-virtual/range {v39 .. v39}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v28

    .line 1824
    .local v28, "info":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, v28

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move-object/from16 v0, p1

    iput v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->targetSdk:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1833
    .end local v28    # "info":Landroid/content/pm/ApplicationInfo;
    :goto_5
    if-nez v7, :cond_e

    .line 1835
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v6, 0x7f040025

    const/4 v9, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v4, v6, v0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 1838
    const/4 v4, 0x1

    invoke-virtual {v7, v4}, Landroid/view/View;->setIsRootNamespace(Z)V

    .line 1839
    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/NotificationContentView;->setContractedChild(Landroid/view/View;)V

    .line 1841
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-direct {v0, v7, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->setPublicNotificationClicker(Landroid/view/View;Landroid/service/notification/StatusBarNotification;)V

    .line 1843
    const v4, 0x7f11009b

    invoke-virtual {v7, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v42

    check-cast v42, Landroid/widget/TextView;

    .line 1845
    .local v42, "title":Landroid/widget/TextView;
    :try_start_3
    invoke-static/range {v39 .. v39}, Lcom/android/systemui/vivo/common/utils/DoubleInstanceUtils;->getStatusBarNotificationInstanceId(Landroid/service/notification/StatusBarNotification;)I

    move-result v4

    if-lez v4, :cond_12

    .line 1846
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v6, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/systemui/vivo/common/utils/DoubleInstanceUtils;->getClonedLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 1861
    :goto_6
    const v4, 0x7f1100bf

    invoke-virtual {v7, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/ImageView;

    .line 1862
    .local v24, "icon":Landroid/widget/ImageView;
    const v4, 0x7f1100c0

    invoke-virtual {v7, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v34

    check-cast v34, Landroid/widget/ImageView;

    .line 1865
    .local v34, "profileBadge":Landroid/widget/ImageView;
    new-instance v8, Lcom/android/internal/statusbar/StatusBarIcon;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v10

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget v11, v4, Landroid/app/Notification;->icon:I

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget v12, v4, Landroid/app/Notification;->iconLevel:I

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget v13, v4, Landroid/app/Notification;->number:I

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-object v14, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-direct/range {v8 .. v14}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;Landroid/os/UserHandle;IIILjava/lang/CharSequence;)V

    .line 1872
    .local v8, "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v4, v8}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIcon(Landroid/content/Context;Lcom/android/internal/statusbar/StatusBarIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object v25

    .line 1877
    .local v25, "iconDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v25, :cond_13

    .line 1879
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual/range {v39 .. v39}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v39 .. v39}, Lcom/android/systemui/vivo/common/utils/DoubleInstanceUtils;->getStatusBarNotificationInstanceId(Landroid/service/notification/StatusBarNotification;)I

    move-result v9

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v4, v0, v1, v6, v9}, Lcom/android/systemui/vivo/common/statusbar/PhoneStatusBarUtils;->redrawStatusBarIcon(Landroid/content/Context;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)Z

    move-result v37

    .line 1881
    .local v37, "result":Z
    if-nez v37, :cond_a

    .line 1882
    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1904
    .end local v37    # "result":Z
    :cond_a
    :goto_7
    if-eqz v34, :cond_b

    .line 1906
    const/16 v35, 0x0

    .line 1908
    .local v35, "profileDrawable":Landroid/graphics/drawable/Drawable;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    const/4 v9, 0x0

    invoke-virtual {v4, v6, v9}, Landroid/content/pm/PackageManager;->getUserBadgeForDensity(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v35

    .line 1915
    :goto_8
    if-eqz v35, :cond_14

    .line 1916
    invoke-virtual/range {v34 .. v35}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1917
    const/4 v4, 0x0

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1923
    .end local v35    # "profileDrawable":Landroid/graphics/drawable/Drawable;
    :cond_b
    :goto_9
    const v4, 0x102007f

    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    .line 1924
    .local v33, "privateTime":Landroid/view/View;
    const v4, 0x7f11005b

    invoke-virtual {v7, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/DateTimeView;

    .line 1925
    .local v41, "time":Landroid/widget/DateTimeView;
    if-eqz v33, :cond_c

    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_c

    .line 1926
    const/4 v4, 0x0

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Landroid/widget/DateTimeView;->setVisibility(I)V

    .line 1927
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget-wide v10, v4, Landroid/app/Notification;->when:J

    move-object/from16 v0, v41

    invoke-virtual {v0, v10, v11}, Landroid/widget/DateTimeView;->setTime(J)V

    .line 1930
    :cond_c
    const v4, 0x7f1100c1

    invoke-virtual {v7, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/TextView;

    .line 1931
    .local v40, "text":Landroid/widget/TextView;
    if-eqz v40, :cond_d

    .line 1934
    const v4, 0x7f0e01e2

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1943
    const v4, -0x666667

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1947
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {v4, v6, v9}, Landroid/app/Notification$Builder;->calculateTopPadding(Landroid/content/Context;ZF)I

    move-result v43

    .line 1950
    .local v43, "topPadding":I
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v42

    move/from16 v1, v43

    invoke-virtual {v0, v4, v1, v6, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1952
    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->autoRedacted:Z

    .line 1962
    .end local v8    # "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    .end local v24    # "icon":Landroid/widget/ImageView;
    .end local v25    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    .end local v33    # "privateTime":Landroid/view/View;
    .end local v34    # "profileBadge":Landroid/widget/ImageView;
    .end local v40    # "text":Landroid/widget/TextView;
    .end local v41    # "time":Landroid/widget/DateTimeView;
    .end local v42    # "title":Landroid/widget/TextView;
    .end local v43    # "topPadding":I
    :cond_e
    move-object/from16 v0, v38

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1963
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRowMinHeight:I

    move/from16 v0, v31

    invoke-virtual {v4, v6, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setHeightRange(II)V

    .line 1964
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnActivatedListener(Lcom/android/systemui/statusbar/ActivatableNotificationView$OnActivatedListener;)V

    .line 1965
    move-object/from16 v0, p1

    iput-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    .line 1966
    move-object/from16 v0, p1

    iput-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedPublic:Landroid/view/View;

    .line 1967
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->setBigContentView(Landroid/view/View;)V

    .line 1969
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->applyColorsAndBackgrounds(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 1972
    if-eqz v23, :cond_f

    .line 1975
    move-object/from16 v0, v38

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserExpanded(Z)V

    .line 1977
    :cond_f
    move-object/from16 v0, v38

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserLocked(Z)V

    .line 1978
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setStatusBarNotification(Landroid/service/notification/StatusBarNotification;)V

    .line 1979
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 1715
    .end local v5    # "contentViewLocal":Landroid/view/View;
    .end local v7    # "publicViewLocal":Landroid/view/View;
    .end local v16    # "bigContentViewLocal":Landroid/view/View;
    .end local v17    # "contentIntent":Landroid/app/PendingIntent;
    .end local v21    # "expanded":Lcom/android/systemui/statusbar/NotificationContentView;
    .end local v22    # "expandedPublic":Lcom/android/systemui/statusbar/NotificationContentView;
    .end local v29    # "isAppLocked":Z
    .end local v38    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v46    # "vetoButton":Landroid/view/View;
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/view/LayoutInflater;

    .line 1717
    .local v27, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f040045

    const/4 v6, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v38

    check-cast v38, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1719
    .restart local v38    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setExpansionLogger(Lcom/android/systemui/statusbar/ExpandableNotificationRow$ExpansionLogger;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1743
    .end local v27    # "inflater":Landroid/view/LayoutInflater;
    .restart local v17    # "contentIntent":Landroid/app/PendingIntent;
    .restart local v21    # "expanded":Lcom/android/systemui/statusbar/NotificationContentView;
    .restart local v22    # "expandedPublic":Lcom/android/systemui/statusbar/NotificationContentView;
    .restart local v46    # "vetoButton":Landroid/view/View;
    :cond_11
    const/4 v4, 0x0

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    .line 1757
    .restart local v5    # "contentViewLocal":Landroid/view/View;
    .restart local v16    # "bigContentViewLocal":Landroid/view/View;
    :catch_0
    move-exception v19

    .line 1758
    .local v19, "e":Ljava/lang/RuntimeException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v39 .. v39}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/0x"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v39 .. v39}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 1759
    .local v26, "ident":Ljava/lang/String;
    const-string v4, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "couldn\'t inflate view for notification "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1760
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 1814
    .end local v19    # "e":Ljava/lang/RuntimeException;
    .end local v26    # "ident":Ljava/lang/String;
    .restart local v7    # "publicViewLocal":Landroid/view/View;
    .restart local v29    # "isAppLocked":Z
    :catch_1
    move-exception v19

    .line 1815
    .restart local v19    # "e":Ljava/lang/RuntimeException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v39 .. v39}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/0x"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v39 .. v39}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 1816
    .restart local v26    # "ident":Ljava/lang/String;
    const-string v4, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "couldn\'t inflate public view for notification "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1817
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 1825
    .end local v19    # "e":Ljava/lang/RuntimeException;
    .end local v26    # "ident":Ljava/lang/String;
    :catch_2
    move-exception v20

    .line 1826
    .local v20, "ex":Ljava/lang/Exception;
    const-string v4, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed looking up ApplicationInfo for "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v39 .. v39}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1829
    const-string v4, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "inflateViews getApplicationInfo---1 error! e: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/systemui/vivo/common/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1850
    .end local v20    # "ex":Ljava/lang/Exception;
    .restart local v42    # "title":Landroid/widget/TextView;
    :cond_12
    :try_start_5
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_6

    .line 1853
    :catch_3
    move-exception v19

    .line 1854
    .local v19, "e":Ljava/lang/Exception;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1857
    const-string v4, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "inflateViews getApplicationInfo---2 error! e: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/systemui/vivo/common/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1885
    .end local v19    # "e":Ljava/lang/Exception;
    .restart local v8    # "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    .restart local v24    # "icon":Landroid/widget/ImageView;
    .restart local v25    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v34    # "profileBadge":Landroid/widget/ImageView;
    :cond_13
    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_7

    .line 1910
    .restart local v35    # "profileDrawable":Landroid/graphics/drawable/Drawable;
    :catch_4
    move-exception v19

    .line 1911
    .restart local v19    # "e":Ljava/lang/Exception;
    const-string v4, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "inflateViews getUserBadgeForDensity error! e: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/systemui/vivo/common/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1919
    .end local v19    # "e":Ljava/lang/Exception;
    :cond_14
    const/16 v4, 0x8

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_9
.end method

.method static sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 1447
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1449
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1453
    :cond_0
    :goto_0
    return-void

    .line 1450
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setHeadsUpUser(I)V
    .locals 1
    .param p1, "newUserId"    # I

    .prologue
    .line 768
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    if-eqz v0, :cond_0

    .line 769
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->setUser(I)V

    .line 771
    :cond_0
    return-void
.end method

.method private setPublicNotificationClicker(Landroid/view/View;Landroid/service/notification/StatusBarNotification;)V
    .locals 3
    .param p1, "publicView"    # Landroid/view/View;
    .param p2, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 1984
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_0

    .line 1985
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/ExportUtils;->getMainActivtyPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1986
    .local v0, "intent":Landroid/app/PendingIntent;
    if-eqz v0, :cond_0

    .line 1987
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->makeClicker(Landroid/app/PendingIntent;Ljava/lang/String;Z)Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1990
    .end local v0    # "intent":Landroid/app/PendingIntent;
    :cond_0
    return-void
.end method

.method private shouldShowOnKeyguard(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 2354
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mShowLockscreenNotifications:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationData;->isAmbient(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shrinkGutsButtonText(Landroid/widget/TextView;IF)V
    .locals 5
    .param p1, "tv"    # Landroid/widget/TextView;
    .param p2, "resDimenId"    # I
    .param p3, "suggestedOffset"    # F

    .prologue
    const/4 v4, 0x1

    .line 1101
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 1102
    .local v0, "lan":Ljava/lang/String;
    const-string v3, "ru"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "ml"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    if-eqz p1, :cond_1

    .line 1105
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 1106
    .local v2, "value":Landroid/util/TypedValue;
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p2, v2, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1109
    iget v3, v2, Landroid/util/TypedValue;->data:I

    invoke-static {v3}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v3

    add-float v1, v3, p3

    .line 1110
    .local v1, "suggestedValue":F
    invoke-virtual {p1, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1112
    .end local v1    # "suggestedValue":F
    .end local v2    # "value":Landroid/util/TypedValue;
    :cond_1
    return-void
.end method

.method private startAppNotificationSettingsActivity(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appUid"    # I

    .prologue
    .line 902
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APP_NOTIFICATION_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 903
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "app_package"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 904
    const-string v1, "app_uid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 905
    invoke-direct {p0, v0, p2}, Lcom/android/systemui/statusbar/BaseStatusBar;->startNotificationGutsIntent(Landroid/content/Intent;I)V

    .line 906
    return-void
.end method

.method private startAppOwnNotificationSettingsActivity(Landroid/content/Intent;ILjava/lang/String;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "notificationId"    # I
    .param p3, "notificationTag"    # Ljava/lang/String;
    .param p4, "appUid"    # I

    .prologue
    .line 895
    const-string v0, "notification_id"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 896
    const-string v0, "notification_tag"

    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 897
    invoke-direct {p0, p1, p4}, Lcom/android/systemui/statusbar/BaseStatusBar;->startNotificationGutsIntent(Landroid/content/Intent;I)V

    .line 898
    return-void
.end method

.method private startNotificationGutsIntent(Landroid/content/Intent;I)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "appUid"    # I

    .prologue
    .line 909
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    .line 910
    .local v0, "keyguardShowing":Z
    new-instance v1, Lcom/android/systemui/statusbar/BaseStatusBar$7;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/android/systemui/statusbar/BaseStatusBar$7;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;ZLandroid/content/Intent;I)V

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Z)V

    .line 939
    return-void
.end method

.method private startNotificationOpsDetailsActivity(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "appLabel"    # Ljava/lang/String;
    .param p3, "appUid"    # I
    .param p4, "instanceId"    # I

    .prologue
    const/4 v3, 0x1

    .line 1117
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/StateUtils;->getInstance()Lcom/android/systemui/vivo/common/utils/StateUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/utils/StateUtils;->isKeyguardShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1118
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->dismissKeyguard()V

    .line 1120
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/systemui/vivo/common/notification/NotificationOpsDetailsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1121
    .local v0, "intent":Landroid/content/Intent;
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1122
    const-string v1, "pkg"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1123
    const-string v1, "label"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1124
    const-string v1, "uid"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1125
    const-string v1, "instanceId"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1126
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBlockOrManage:Z

    .line 1127
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1128
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/StateUtils;->getInstance()Lcom/android/systemui/vivo/common/utils/StateUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/utils/StateUtils;->isKeyguardShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1129
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->animateCollapsePanels(IZ)V

    .line 1131
    :cond_1
    return-void
.end method

.method private updateCurrentProfilesCache()V
    .locals 5

    .prologue
    .line 569
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    monitor-enter v3

    .line 570
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 571
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUserManager:Landroid/os/UserManager;

    if-eqz v2, :cond_0

    .line 572
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUserManager:Landroid/os/UserManager;

    iget v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    invoke-virtual {v2, v4}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 573
    .local v1, "user":Landroid/content/pm/UserInfo;
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 576
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "user":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 577
    return-void
.end method

.method private updateHeadsUpViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V
    .locals 1
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "notification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 2694
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotificationViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;Z)V

    .line 2695
    return-void
.end method

.method private updateLockscreenNotificationSetting()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2369
    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lock_screen_show_notifications"

    iget v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    invoke-static {v5, v6, v3, v7}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-eqz v5, :cond_0

    move v2, v3

    .line 2373
    .local v2, "show":Z
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    invoke-virtual {v5, v6, v7}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v1

    .line 2375
    .local v1, "dpmFlags":I
    and-int/lit8 v5, v1, 0x4

    if-nez v5, :cond_1

    move v0, v3

    .line 2377
    .local v0, "allowedByDpm":Z
    :goto_1
    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->setShowLockscreenNotifications(Z)V

    .line 2378
    return-void

    .end local v0    # "allowedByDpm":Z
    .end local v1    # "dpmFlags":I
    .end local v2    # "show":Z
    :cond_0
    move v2, v4

    .line 2369
    goto :goto_0

    .restart local v1    # "dpmFlags":I
    .restart local v2    # "show":Z
    :cond_1
    move v0, v4

    .line 2375
    goto :goto_1

    .restart local v0    # "allowedByDpm":Z
    :cond_2
    move v3, v4

    .line 2377
    goto :goto_2
.end method

.method private updateNotificationViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V
    .locals 1
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "notification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 2689
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotificationViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;Z)V

    .line 2690
    return-void
.end method

.method private updateNotificationViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;Z)V
    .locals 14
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "notification"    # Landroid/service/notification/StatusBarNotification;
    .param p3, "isHeadsUp"    # Z

    .prologue
    .line 2699
    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v10, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 2700
    .local v10, "contentView":Landroid/widget/RemoteViews;
    if-eqz p3, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v8, v1, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 2703
    .local v8, "bigContentView":Landroid/widget/RemoteViews;
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v13, v1, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    .line 2704
    .local v13, "publicVersion":Landroid/app/Notification;
    if-eqz v13, :cond_3

    iget-object v12, v13, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 2708
    .local v12, "publicContentView":Landroid/widget/RemoteViews;
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {v10, v1, v2, v3}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 2712
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static/range {p2 .. p2}, Lcom/android/systemui/vivo/common/utils/DoubleInstanceUtils;->getStatusBarNotificationInstanceId(Landroid/service/notification/StatusBarNotification;)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-object v7, v7, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static/range {v1 .. v7}, Lcom/android/systemui/vivo/common/statusbar/PhoneStatusBarUtils;->redrawIcon(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;ZIZLjava/lang/CharSequence;)V

    .line 2717
    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    move-object/from16 v0, p2

    invoke-static {v1, v0}, Lcom/android/systemui/vivo/common/statusbar/PhoneStatusBarUtils;->setTextViewDirection(Landroid/view/View;Landroid/service/notification/StatusBarNotification;)V

    .line 2718
    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    move-object/from16 v0, p2

    invoke-static {v1, v0}, Lcom/android/systemui/vivo/common/statusbar/PhoneStatusBarUtils;->invertSpannedToString(Landroid/view/View;Landroid/service/notification/StatusBarNotification;)V

    .line 2721
    if-eqz v8, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getBigContentView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2722
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getBigContentView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {v8, v1, v2, v3}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 2727
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getBigContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static/range {p2 .. p2}, Lcom/android/systemui/vivo/common/utils/DoubleInstanceUtils;->getStatusBarNotificationInstanceId(Landroid/service/notification/StatusBarNotification;)I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-object v7, v7, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static/range {v1 .. v7}, Lcom/android/systemui/vivo/common/statusbar/PhoneStatusBarUtils;->redrawIcon(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;ZIZLjava/lang/CharSequence;)V

    .line 2732
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getBigContentView()Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-static {v1, v0}, Lcom/android/systemui/vivo/common/statusbar/PhoneStatusBarUtils;->setTextViewDirection(Landroid/view/View;Landroid/service/notification/StatusBarNotification;)V

    .line 2733
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getBigContentView()Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-static {v1, v0}, Lcom/android/systemui/vivo/common/statusbar/PhoneStatusBarUtils;->invertSpannedToString(Landroid/view/View;Landroid/service/notification/StatusBarNotification;)V

    .line 2737
    :cond_0
    if-eqz v12, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getPublicContentView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2738
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getPublicContentView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {v12, v1, v2, v3}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 2742
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getPublicContentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static/range {p2 .. p2}, Lcom/android/systemui/vivo/common/utils/DoubleInstanceUtils;->getStatusBarNotificationInstanceId(Landroid/service/notification/StatusBarNotification;)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-object v7, v7, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static/range {v1 .. v7}, Lcom/android/systemui/vivo/common/statusbar/PhoneStatusBarUtils;->redrawIcon(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;ZIZLjava/lang/CharSequence;)V

    .line 2748
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v9, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 2749
    .local v9, "contentIntent":Landroid/app/PendingIntent;
    if-eqz v9, :cond_4

    .line 2750
    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    move/from16 v0, p3

    invoke-virtual {p0, v9, v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->makeClicker(Landroid/app/PendingIntent;Ljava/lang/String;Z)Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    move-result-object v11

    .line 2752
    .local v11, "listener":Landroid/view/View$OnClickListener;
    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1, v11}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2756
    .end local v11    # "listener":Landroid/view/View$OnClickListener;
    :goto_2
    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setStatusBarNotification(Landroid/service/notification/StatusBarNotification;)V

    .line 2757
    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->notifyContentUpdated()V

    .line 2758
    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->resetHeight()V

    .line 2759
    return-void

    .line 2700
    .end local v8    # "bigContentView":Landroid/widget/RemoteViews;
    .end local v9    # "contentIntent":Landroid/app/PendingIntent;
    .end local v12    # "publicContentView":Landroid/widget/RemoteViews;
    .end local v13    # "publicVersion":Landroid/app/Notification;
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v8, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    goto/16 :goto_0

    .line 2704
    .restart local v8    # "bigContentView":Landroid/widget/RemoteViews;
    .restart local v13    # "publicVersion":Landroid/app/Notification;
    :cond_3
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 2754
    .restart local v9    # "contentIntent":Landroid/app/PendingIntent;
    .restart local v12    # "publicContentView":Landroid/widget/RemoteViews;
    :cond_4
    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2
.end method


# virtual methods
.method public abstract addNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
.end method

.method protected addNotificationViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 2
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 2234
    if-nez p1, :cond_0

    .line 2244
    :goto_0
    return-void

    .line 2240
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationPartitionManager:Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;

    invoke-static {p1}, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->sortNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 2241
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationPartitionManager:Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->getNotificationParentData(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/NotificationData;->add(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 2243
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotifications()V

    goto :goto_0
.end method

.method public animateCollapsePanels(IZ)V
    .locals 0
    .param p1, "flags"    # I
    .param p2, "force"    # Z

    .prologue
    .line 2092
    return-void
.end method

.method protected applyColorsAndBackgrounds(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 5
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    const/16 v4, 0x15

    const/4 v3, 0x1

    .line 859
    iget-object v1, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x1020338

    if-eq v1, v2, :cond_2

    .line 861
    iget v1, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->targetSdk:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    iget v1, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->targetSdk:I

    if-ge v1, v4, :cond_0

    .line 863
    iget-object v1, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setShowingLegacyBackground(Z)V

    .line 864
    iput-boolean v3, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->legacy:Z

    .line 877
    :cond_0
    :goto_0
    iget-object v1, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v1, :cond_1

    .line 878
    iget v1, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->targetSdk:I

    if-lt v1, v4, :cond_4

    .line 879
    iget-object v1, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setColorFilter(I)V

    .line 884
    :cond_1
    :goto_1
    return-void

    .line 868
    :cond_2
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v0, v1, Landroid/app/Notification;->color:I

    .line 869
    .local v0, "color":I
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/BaseStatusBar;->isMediaNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 870
    iget-object v1, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v0, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0028

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .end local v0    # "color":I
    :cond_3
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setTintColor(I)V

    goto :goto_0

    .line 881
    :cond_4
    iget-object v1, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_1
.end method

.method protected blockNotification(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "appLabel"    # Ljava/lang/String;
    .param p3, "instanceId"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1134
    if-nez p1, :cond_0

    .line 1145
    :goto_0
    return-void

    .line 1137
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationOpsManager:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    invoke-virtual {v1, p1, v4, p3}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->setNotificationEnabled(Ljava/lang/String;ZI)V

    .line 1138
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationOpsManager:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    invoke-virtual {v1, p1, p3}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->onNotificationEnabledChange(Ljava/lang/String;I)V

    .line 1139
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e01b7

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1140
    .local v0, "blockTip":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1141
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBlocked:Z

    .line 1142
    iput-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBlockedPkg:Ljava/lang/String;

    .line 1143
    iput-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBlockedAppLabel:Ljava/lang/String;

    .line 1144
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBlockedInstanceId:I

    goto :goto_0
.end method

.method public cancelPreloadRecentApps()V
    .locals 2

    .prologue
    .line 1379
    const/16 v0, 0x3ff

    .line 1380
    .local v0, "msg":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 1381
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 1382
    return-void
.end method

.method protected cancelPreloadingRecents()V
    .locals 1

    .prologue
    .line 1506
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    if-eqz v0, :cond_0

    .line 1507
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    invoke-interface {v0}, Lcom/android/systemui/RecentsComponent;->cancelPreloadingRecents()V

    .line 1509
    :cond_0
    return-void
.end method

.method public changeUpslideState(ZZ)V
    .locals 0
    .param p1, "down"    # Z
    .param p2, "canceled"    # Z

    .prologue
    .line 1174
    return-void
.end method

.method public collapseUpSlideView()V
    .locals 0

    .prologue
    .line 1182
    return-void
.end method

.method protected abstract createAndAddWindows()V
.end method

.method protected createHandler()Lcom/android/systemui/statusbar/BaseStatusBar$H;
    .locals 1

    .prologue
    .line 1443
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    return-object v0
.end method

.method protected createNotificationViews(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/NotificationData$Entry;
    .locals 11
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v10, 0x0

    .line 2205
    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 2206
    const-string v1, "StatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createNotificationViews(notification="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2209
    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v9

    .line 2210
    .local v9, "n":Landroid/app/Notification;
    new-instance v8, Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v1, v2, v9}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;)V

    .line 2212
    .local v8, "iconView":Lcom/android/systemui/statusbar/StatusBarIconView;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2214
    new-instance v0, Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    iget v3, v9, Landroid/app/Notification;->icon:I

    iget v4, v9, Landroid/app/Notification;->iconLevel:I

    iget v5, v9, Landroid/app/Notification;->number:I

    iget-object v6, v9, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;Landroid/os/UserHandle;IIILjava/lang/CharSequence;)V

    .line 2220
    .local v0, "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    invoke-virtual {v8, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t create icon: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->handleNotificationError(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V

    move-object v7, v10

    .line 2230
    :cond_1
    :goto_0
    return-object v7

    .line 2225
    :cond_2
    new-instance v7, Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-direct {v7, p1, v8}, Lcom/android/systemui/statusbar/NotificationData$Entry;-><init>(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/StatusBarIconView;)V

    .line 2226
    .local v7, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-direct {p0, v7, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t expand RemoteViews for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->handleNotificationError(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V

    move-object v7, v10

    .line 2228
    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 2853
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    if-eqz v0, :cond_0

    .line 2854
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 2856
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2858
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationListener:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService;->unregisterAsSystemService()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2862
    :goto_0
    return-void

    .line 2859
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected dismissKeyguardThenExecute(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;Z)V
    .locals 0
    .param p1, "action"    # Lcom/android/keyguard/KeyguardHostView$OnDismissAction;
    .param p2, "afterKeyguardGone"    # Z

    .prologue
    .line 805
    invoke-interface {p1}, Lcom/android/keyguard/KeyguardHostView$OnDismissAction;->onDismiss()Z

    .line 806
    return-void
.end method

.method public dismissPopups()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 1291
    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v5, :cond_0

    .line 1292
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

    .line 1293
    .local v2, "v":Lcom/android/systemui/statusbar/NotificationGuts;
    iput-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

    .line 1296
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mExpandableNotificationRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1300
    .local v1, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    iput-object v6, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mExpandableNotificationRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1303
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationGuts;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    if-nez v5, :cond_1

    .line 1326
    .end local v1    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v2    # "v":Lcom/android/systemui/statusbar/NotificationGuts;
    :cond_0
    :goto_0
    return-void

    .line 1305
    .restart local v1    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .restart local v2    # "v":Lcom/android/systemui/statusbar/NotificationGuts;
    :cond_1
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationGuts;->getLeft()I

    move-result v5

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationGuts;->getRight()I

    move-result v6

    add-int/2addr v5, v6

    div-int/lit8 v3, v5, 0x2

    .line 1306
    .local v3, "x":I
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationGuts;->getTop()I

    move-result v5

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationGuts;->getActualHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int v4, v5, v6

    .line 1307
    .local v4, "y":I
    int-to-float v5, v3

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    .line 1309
    .local v0, "a":Landroid/animation/Animator;
    const-wide/16 v6, 0xc8

    invoke-virtual {v0, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1310
    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mFastOutLinearIn:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1311
    new-instance v5, Lcom/android/systemui/statusbar/BaseStatusBar$12;

    invoke-direct {v5, p0, v2, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$12;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Lcom/android/systemui/statusbar/NotificationGuts;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    invoke-virtual {v0, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1324
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method

.method public dismissPopupsWithoutAnimator()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1330
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v2, :cond_1

    .line 1331
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

    .line 1332
    .local v1, "v":Lcom/android/systemui/statusbar/NotificationGuts;
    iput-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

    .line 1333
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mExpandableNotificationRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1334
    .local v0, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/NotificationGuts;->setVisibility(I)V

    .line 1335
    if-eqz v0, :cond_0

    .line 1336
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/NotificationContentView;->setVisibility(I)V

    .line 1339
    :cond_0
    iput-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mExpandableNotificationRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1342
    .end local v0    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v1    # "v":Lcom/android/systemui/statusbar/NotificationGuts;
    :cond_1
    return-void
.end method

.method protected doNotTickThisNotification(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 2382
    const-string v0, "com.android.incallui"

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2712

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2383
    const/4 v0, 0x1

    .line 2385
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentMediaNotificationKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 796
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract getMaxKeyguardNotifications()I
.end method

.method protected getNotificationLongClicker()Lcom/android/systemui/SwipeHelper$LongPressListener;
    .locals 1

    .prologue
    .line 1211
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$11;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$11;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    return-object v0
.end method

.method protected getPackageManagerForUser(I)Landroid/content/pm/PackageManager;
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 2869
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    .line 2871
    .local v0, "contextForUser":Landroid/content/Context;
    if-ltz p1, :cond_0

    .line 2875
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2883
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    return-object v1

    .line 2879
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected abstract getSearchLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/WindowManager$LayoutParams;
.end method

.method protected abstract getStatusBarView()Landroid/view/View;
.end method

.method protected abstract haltTicker()V
.end method

.method handleNotificationError(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V
    .locals 8
    .param p1, "n"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 2156
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 2158
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v4

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    move-result v5

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v7

    move-object v6, p2

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationError(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2163
    :goto_0
    return-void

    .line 2160
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected handleVisibleToUserChanged(Z)V
    .locals 4
    .param p1, "visibleToUser"    # Z

    .prologue
    .line 2132
    if-eqz p1, :cond_2

    .line 2135
    :try_start_0
    iget v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mState:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 2137
    .local v0, "clearNotificationEffects":Z
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v2, v0}, Lcom/android/internal/statusbar/IStatusBarService;->onPanelRevealed(Z)V

    .line 2147
    .end local v0    # "clearNotificationEffects":Z
    :goto_1
    return-void

    .line 2135
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2139
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v2}, Lcom/android/internal/statusbar/IStatusBarService;->onPanelHidden()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 2141
    :catch_0
    move-exception v2

    goto :goto_1

    .line 2143
    :catch_1
    move-exception v1

    .line 2145
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string v2, "StatusBar"

    const-string v3, "system is not avaiable: NullPointerException"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public hideRecentApps(ZZ)V
    .locals 5
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHomeKey"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1357
    const/16 v0, 0x3fc

    .line 1358
    .local v0, "msg":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 1359
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    if-eqz p1, :cond_0

    move v3, v1

    :goto_0
    if-eqz p2, :cond_1

    :goto_1
    invoke-virtual {v4, v0, v3, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1361
    return-void

    :cond_0
    move v3, v2

    .line 1359
    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method protected hideRecents(ZZ)V
    .locals 1
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHomeKey"    # Z

    .prologue
    .line 1487
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    if-eqz v0, :cond_0

    .line 1488
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/RecentsComponent;->hideRecents(ZZ)V

    .line 1490
    :cond_0
    return-void
.end method

.method public hideSearchPanel()V
    .locals 2

    .prologue
    .line 1407
    const/16 v0, 0x403

    .line 1408
    .local v0, "msg":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 1409
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 1410
    return-void
.end method

.method protected inflateViewsForHeadsUp(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z
    .locals 1
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1660
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;Z)Z

    move-result v0

    return v0
.end method

.method public isBouncerShowing()Z
    .locals 1

    .prologue
    .line 2849
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBouncerShowing:Z

    return v0
.end method

.method protected isCurrentProfile(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 789
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    monitor-enter v1

    .line 790
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 791
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isDeviceProvisioned()Z
    .locals 1

    .prologue
    .line 292
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDeviceProvisioned:Z

    return v0
.end method

.method public isHeadsUp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 774
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->isShowing(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isKeyguardSecure()Z
    .locals 3

    .prologue
    .line 2899
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-nez v0, :cond_0

    .line 2903
    const-string v0, "StatusBar"

    const-string v1, "isKeyguardSecure() called before startKeyguard(), returning false"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2905
    const/4 v0, 0x0

    .line 2907
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isSecure()Z

    move-result v0

    goto :goto_0
.end method

.method public isLockscreenPublicMode()Z
    .locals 1

    .prologue
    .line 1544
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockscreenPublicMode:Z

    return v0
.end method

.method public isMediaNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 2
    .param p1, "entry"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    .line 888
    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedBig:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedBig:Landroid/view/View;

    const v1, 0x102033d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNotificationForCurrentProfiles(Landroid/service/notification/StatusBarNotification;)Z
    .locals 3
    .param p1, "n"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 779
    iget v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    .line 780
    .local v1, "thisUserId":I
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v0

    .line 781
    .local v0, "notificationUserId":I
    sget-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 785
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isCurrentProfile(I)Z

    move-result v2

    return v2
.end method

.method public logNotificationExpansion(Ljava/lang/String;ZZ)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userAction"    # Z
    .param p3, "expanded"    # Z

    .prologue
    .line 2889
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationExpansionChanged(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2896
    :goto_0
    return-void

    .line 2890
    :catch_0
    move-exception v0

    .line 2893
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "StatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "logNotificationExpansion error! e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public makeClicker(Landroid/app/PendingIntent;Ljava/lang/String;Z)Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;
    .locals 1
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "notificationKey"    # Ljava/lang/String;
    .param p3, "forHun"    # Z

    .prologue
    .line 1995
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Landroid/app/PendingIntent;Ljava/lang/String;Z)V

    return-object v0
.end method

.method protected notifyHeadsUpScreenOn(Z)V
    .locals 0
    .param p1, "screenOn"    # Z

    .prologue
    .line 2762
    if-nez p1, :cond_0

    .line 2763
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->scheduleHeadsUpEscalation()V

    .line 2765
    :cond_0
    return-void
.end method

.method public notifyStatusBarColorInfo(IIZ)V
    .locals 0
    .param p1, "iconColor"    # I
    .param p2, "bgColor"    # I
    .param p3, "bgVisible"    # Z

    .prologue
    .line 1166
    return-void
.end method

.method protected notifyUserAboutHiddenNotifications()V
    .locals 8

    .prologue
    const/high16 v7, 0x10000000

    const/4 v6, 0x0

    .line 713
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "show_note_about_notification_hiding"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    .line 715
    const-string v3, "StatusBar"

    const-string v4, "user hasn\'t seen notification about hidden notifications"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 717
    .local v1, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v3

    if-nez v3, :cond_1

    .line 718
    const-string v3, "StatusBar"

    const-string v4, "insecure lockscreen, skipping notification"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "show_note_about_notification_hiding"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 761
    .end local v1    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_0
    :goto_0
    return-void

    .line 723
    .restart local v1    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_1
    const-string v3, "StatusBar"

    const-string v4, "disabling lockecreen notifications and alerting the user"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lock_screen_show_notifications"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 727
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lock_screen_allow_private_notifications"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 730
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 731
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.systemui.statusbar.banner_action_cancel"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-static {v3, v6, v4, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 734
    .local v0, "cancelIntent":Landroid/app/PendingIntent;
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.systemui.statusbar.banner_action_setup"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-static {v3, v6, v4, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 810
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v2, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 811
    .local v2, "locale":Ljava/util/Locale;
    invoke-static {v2}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    .line 812
    .local v1, "ld":I
    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 814
    .local v0, "fontScale":F
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLocale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLayoutDirection:I

    if-ne v1, v3, :cond_0

    iget v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mFontScale:F

    cmpl-float v3, v0, v3

    if-eqz v3, :cond_2

    .line 815
    :cond_0
    sget-boolean v3, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 816
    const-string v3, "StatusBar"

    const-string v4, "config changed locale/LD: %s (%d) -> %s (%d)"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLocale:Ljava/util/Locale;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLayoutDirection:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object v2, v5, v6

    const/4 v6, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    :cond_1
    iput-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLocale:Ljava/util/Locale;

    .line 821
    iput v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLayoutDirection:I

    .line 822
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->refreshLayout(I)V

    .line 824
    :cond_2
    return-void
.end method

.method public onHeadsUpDismissed()V
    .locals 0

    .prologue
    .line 1346
    return-void
.end method

.method public onNotificationClear(Landroid/service/notification/StatusBarNotification;)V
    .locals 5
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 1583
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationClear(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1591
    :goto_0
    return-void

    .line 1588
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onShowTapTip(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V
    .locals 1
    .param p1, "view"    # Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    if-nez v0, :cond_0

    .line 1190
    :goto_0
    return-void

    .line 1189
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setShowTapTipChild(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    goto :goto_0
.end method

.method public onShowTapTipReset(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V
    .locals 2
    .param p1, "view"    # Lcom/android/systemui/statusbar/ActivatableNotificationView;

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getShowTapTipChild()Lcom/android/systemui/statusbar/ActivatableNotificationView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1195
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setShowTapTipChild(Lcom/android/systemui/statusbar/ActivatableNotificationView;)V

    .line 1197
    :cond_0
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 1526
    return-void
.end method

.method public overrideActivityPendingAppTransition(Z)V
    .locals 6
    .param p1, "keyguardShowing"    # Z

    .prologue
    .line 2095
    if-eqz p1, :cond_0

    .line 2097
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManagerService:Landroid/view/IWindowManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/view/IWindowManager;->overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2102
    :cond_0
    :goto_0
    return-void

    .line 2098
    :catch_0
    move-exception v0

    .line 2099
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "StatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error overriding app transition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public preloadRecentApps()V
    .locals 2

    .prologue
    .line 1372
    const/16 v0, 0x3fe

    .line 1373
    .local v0, "msg":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 1374
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 1375
    return-void
.end method

.method protected preloadRecents()V
    .locals 1

    .prologue
    .line 1500
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    if-eqz v0, :cond_0

    .line 1501
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    invoke-interface {v0}, Lcom/android/systemui/RecentsComponent;->preloadRecents()V

    .line 1503
    :cond_0
    return-void
.end method

.method protected abstract refreshLayout(I)V
.end method

.method public abstract removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V
.end method

.method protected removeNotificationViews(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)Landroid/service/notification/StatusBarNotification;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 2166
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v3, p1, p2}, Lcom/android/systemui/statusbar/NotificationData;->remove(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    .line 2169
    .local v0, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-nez v0, :cond_0

    .line 2170
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOngoingData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v3, p1, p2}, Lcom/android/systemui/statusbar/NotificationData;->remove(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    .line 2172
    :cond_0
    if-nez v0, :cond_1

    .line 2173
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCalendarData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v3, p1, p2}, Lcom/android/systemui/statusbar/NotificationData;->remove(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    .line 2175
    :cond_1
    if-nez v0, :cond_2

    .line 2176
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mMusicData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v3, p1, p2}, Lcom/android/systemui/statusbar/NotificationData;->remove(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    .line 2181
    :cond_2
    if-nez v0, :cond_3

    .line 2182
    const-string v3, "StatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeNotification for unknown key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2183
    const/4 v3, 0x0

    .line 2201
    :goto_0
    return-object v3

    .line 2185
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotifications()V

    .line 2188
    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 2189
    .local v1, "sbn":Landroid/service/notification/StatusBarNotification;
    if-eqz v1, :cond_5

    .line 2191
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/android/systemui/vivo/common/statusbar/PhoneStatusBarUtils;->releaseAllRedrawIcon(Landroid/content/Context;Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    .line 2193
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getPublicContentView()Landroid/view/View;

    move-result-object v2

    .line 2194
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_4

    .line 2195
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const v4, 0x7f1100bf

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/systemui/vivo/common/statusbar/PhoneStatusBarUtils;->releaseStatusBarRedrawIcon(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    .line 2197
    :cond_4
    invoke-static {}, Lcom/android/systemui/vivo/common/notification/NotificationUpdateManager;->getInstance()Lcom/android/systemui/vivo/common/notification/NotificationUpdateManager;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3, v4}, Lcom/android/systemui/vivo/common/notification/NotificationUpdateManager;->onNotificationRemove(Landroid/service/notification/StatusBarNotification;)V

    .line 2201
    .end local v2    # "view":Landroid/view/View;
    :cond_5
    iget-object v3, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    goto :goto_0
.end method

.method public abstract resetHeadsUpDecayTimer()V
.end method

.method public abstract scheduleHeadsUpClose()V
.end method

.method public abstract scheduleHeadsUpEscalation()V
.end method

.method public abstract scheduleHeadsUpOpen()V
.end method

.method protected abstract setAreThereNotifications()V
.end method

.method public setBouncerShowing(Z)V
    .locals 0
    .param p1, "bouncerShowing"    # Z

    .prologue
    .line 2842
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBouncerShowing:Z

    .line 2843
    return-void
.end method

.method public setInteracting(IZ)V
    .locals 0
    .param p1, "barWindow"    # I
    .param p2, "interacting"    # Z

    .prologue
    .line 2839
    return-void
.end method

.method public setLockscreenPublicMode(Z)V
    .locals 0
    .param p1, "publicMode"    # Z

    .prologue
    .line 1540
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockscreenPublicMode:Z

    .line 1541
    return-void
.end method

.method public setNetworkSpeed(Ljava/lang/String;)V
    .locals 0
    .param p1, "speed"    # Ljava/lang/String;

    .prologue
    .line 1207
    return-void
.end method

.method protected setShowLockscreenNotifications(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 2365
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mShowLockscreenNotifications:Z

    .line 2366
    return-void
.end method

.method public setSimcardFlow(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "flow1"    # Ljava/lang/String;
    .param p2, "flow2"    # Ljava/lang/String;

    .prologue
    .line 1203
    return-void
.end method

.method public setStatusBarIconColor(Z)V
    .locals 0
    .param p1, "whiteStyle"    # Z

    .prologue
    .line 1170
    return-void
.end method

.method protected setZenMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 2358
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2361
    :goto_0
    return-void

    .line 2359
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mZenMode:I

    .line 2360
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotifications()V

    goto :goto_0
.end method

.method protected abstract shouldDisableNavbarGestures()Z
.end method

.method public shouldHideSensitiveContents(I)Z
    .locals 1
    .param p1, "userid"    # I

    .prologue
    .line 1578
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->isLockscreenPublicMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->userAllowsPrivateNotificationsInPublic(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected shouldInterrupt(Landroid/service/notification/StatusBarNotification;)Z
    .locals 13
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2773
    iget-object v11, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v11, p1}, Lcom/android/systemui/statusbar/NotificationData;->shouldFilterOut(Landroid/service/notification/StatusBarNotification;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 2774
    sget-boolean v10, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v10, :cond_0

    .line 2775
    const-string v10, "StatusBar"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Skipping HUN check for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " since it\'s filtered out."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2834
    :cond_0
    :goto_0
    return v9

    .line 2781
    :cond_1
    iget-object v11, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOngoingData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v11, p1}, Lcom/android/systemui/statusbar/NotificationData;->shouldFilterOut(Landroid/service/notification/StatusBarNotification;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 2782
    sget-boolean v10, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v10, :cond_0

    .line 2783
    const-string v10, "StatusBar"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Skipping HUN check for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " since it\'s filtered out."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2788
    :cond_2
    iget-object v11, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCalendarData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v11, p1}, Lcom/android/systemui/statusbar/NotificationData;->shouldFilterOut(Landroid/service/notification/StatusBarNotification;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 2789
    sget-boolean v10, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v10, :cond_0

    .line 2790
    const-string v10, "StatusBar"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Skipping HUN check for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " since it\'s filtered out."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2795
    :cond_3
    iget-object v11, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mMusicData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v11, p1}, Lcom/android/systemui/statusbar/NotificationData;->shouldFilterOut(Landroid/service/notification/StatusBarNotification;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 2796
    sget-boolean v10, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v10, :cond_0

    .line 2797
    const-string v10, "StatusBar"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Skipping HUN check for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " since it\'s filtered out."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2803
    :cond_4
    iget-object v11, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->isSnoozed(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 2807
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v8

    .line 2809
    .local v8, "notification":Landroid/app/Notification;
    iget v11, v8, Landroid/app/Notification;->defaults:I

    and-int/lit8 v11, v11, 0x1

    if-nez v11, :cond_5

    iget v11, v8, Landroid/app/Notification;->defaults:I

    and-int/lit8 v11, v11, 0x2

    if-nez v11, :cond_5

    iget-object v11, v8, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-nez v11, :cond_5

    iget-object v11, v8, Landroid/app/Notification;->vibrate:[J

    if-eqz v11, :cond_9

    :cond_5
    move v7, v10

    .line 2813
    .local v7, "isNoisy":Z
    :goto_1
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getScore()I

    move-result v11

    const/16 v12, 0xa

    if-lt v11, v12, :cond_a

    move v6, v10

    .line 2814
    .local v6, "isHighPriority":Z
    :goto_2
    iget-object v11, v8, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v11, :cond_b

    move v5, v10

    .line 2815
    .local v5, "isFullscreen":Z
    :goto_3
    iget-boolean v11, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpTicker:Z

    if-eqz v11, :cond_c

    iget-object v11, v8, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_c

    move v2, v10

    .line 2816
    .local v2, "hasTicker":Z
    :goto_4
    iget-object v11, v8, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v12, "headsup"

    invoke-virtual {v11, v12, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_d

    move v4, v10

    .line 2818
    .local v4, "isAllowed":Z
    :goto_5
    if-eqz v5, :cond_e

    iget-object v11, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v11}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v11

    if-eqz v11, :cond_e

    move v0, v10

    .line 2821
    .local v0, "accessibilityForcesLaunch":Z
    :goto_6
    if-nez v5, :cond_6

    if-eqz v6, :cond_f

    if-nez v7, :cond_6

    if-eqz v2, :cond_f

    :cond_6
    if-eqz v4, :cond_f

    if-nez v0, :cond_f

    iget-object v11, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v11}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v11

    if-eqz v11, :cond_f

    iget-object v11, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v11

    if-eqz v11, :cond_7

    iget-object v11, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v11

    if-eqz v11, :cond_f

    :cond_7
    iget-object v11, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isInputRestricted()Z

    move-result v11

    if-nez v11, :cond_f

    move v3, v10

    .line 2829
    .local v3, "interrupt":Z
    :goto_7
    if-eqz v3, :cond_10

    :try_start_0
    iget-object v11, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDreamManager:Landroid/service/dreams/IDreamManager;

    invoke-interface {v11}, Landroid/service/dreams/IDreamManager;->isDreaming()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    if-nez v11, :cond_10

    move v3, v10

    .line 2833
    :goto_8
    sget-boolean v9, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v9, :cond_8

    const-string v9, "StatusBar"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "interrupt: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move v9, v3

    .line 2834
    goto/16 :goto_0

    .end local v0    # "accessibilityForcesLaunch":Z
    .end local v2    # "hasTicker":Z
    .end local v3    # "interrupt":Z
    .end local v4    # "isAllowed":Z
    .end local v5    # "isFullscreen":Z
    .end local v6    # "isHighPriority":Z
    .end local v7    # "isNoisy":Z
    :cond_9
    move v7, v9

    .line 2809
    goto/16 :goto_1

    .restart local v7    # "isNoisy":Z
    :cond_a
    move v6, v9

    .line 2813
    goto/16 :goto_2

    .restart local v6    # "isHighPriority":Z
    :cond_b
    move v5, v9

    .line 2814
    goto/16 :goto_3

    .restart local v5    # "isFullscreen":Z
    :cond_c
    move v2, v9

    .line 2815
    goto :goto_4

    .restart local v2    # "hasTicker":Z
    :cond_d
    move v4, v9

    .line 2816
    goto :goto_5

    .restart local v4    # "isAllowed":Z
    :cond_e
    move v0, v9

    .line 2818
    goto :goto_6

    .restart local v0    # "accessibilityForcesLaunch":Z
    :cond_f
    move v3, v9

    .line 2821
    goto :goto_7

    .restart local v3    # "interrupt":Z
    :cond_10
    move v3, v9

    .line 2829
    goto :goto_8

    .line 2830
    :catch_0
    move-exception v1

    .line 2831
    .local v1, "e":Landroid/os/RemoteException;
    const-string v9, "StatusBar"

    const-string v10, "failed to query dream manager"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8
.end method

.method public showNextAffiliatedTask()V
    .locals 2

    .prologue
    .line 1386
    const/16 v0, 0x400

    .line 1387
    .local v0, "msg":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 1388
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 1389
    return-void
.end method

.method public showPreviousAffiliatedTask()V
    .locals 2

    .prologue
    .line 1393
    const/16 v0, 0x401

    .line 1394
    .local v0, "msg":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 1395
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 1396
    return-void
.end method

.method public showRecentApps(Z)V
    .locals 4
    .param p1, "triggeredFromAltTab"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1350
    const/16 v0, 0x3fb

    .line 1351
    .local v0, "msg":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 1352
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1353
    return-void

    :cond_0
    move v1, v2

    .line 1352
    goto :goto_0
.end method

.method protected showRecents(Z)V
    .locals 2
    .param p1, "triggeredFromAltTab"    # Z

    .prologue
    .line 1480
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    if-eqz v0, :cond_0

    .line 1481
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v1, "recentapps"

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 1482
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->getStatusBarView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/systemui/RecentsComponent;->showRecents(ZLandroid/view/View;)V

    .line 1484
    :cond_0
    return-void
.end method

.method protected showRecentsNextAffiliatedTask()V
    .locals 1

    .prologue
    .line 1512
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    if-eqz v0, :cond_0

    .line 1513
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    invoke-interface {v0}, Lcom/android/systemui/RecentsComponent;->showNextAffiliatedTask()V

    .line 1515
    :cond_0
    return-void
.end method

.method protected showRecentsPreviousAffiliatedTask()V
    .locals 1

    .prologue
    .line 1518
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    if-eqz v0, :cond_0

    .line 1519
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    invoke-interface {v0}, Lcom/android/systemui/RecentsComponent;->showPrevAffiliatedTask()V

    .line 1521
    :cond_0
    return-void
.end method

.method public showSearchPanel()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1400
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/SearchPanelView;->isAssistantAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1401
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/SearchPanelView;->show(ZZ)V

    .line 1403
    :cond_0
    return-void
.end method

.method public start()V
    .locals 15

    .prologue
    .line 580
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v11, "window"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowManager;

    iput-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    .line 581
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManagerService:Landroid/view/IWindowManager;

    .line 582
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v10}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDisplay:Landroid/view/Display;

    .line 583
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v11, "device_policy"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/admin/DevicePolicyManager;

    iput-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 586
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/internal/util/NotificationColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/NotificationColorUtil;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    .line 588
    new-instance v10, Lcom/android/systemui/statusbar/NotificationData;

    invoke-direct {v10, p0}, Lcom/android/systemui/statusbar/NotificationData;-><init>(Lcom/android/systemui/statusbar/NotificationData$Environment;)V

    iput-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    .line 590
    new-instance v10, Lcom/android/systemui/statusbar/NotificationData;

    invoke-direct {v10, p0}, Lcom/android/systemui/statusbar/NotificationData;-><init>(Lcom/android/systemui/statusbar/NotificationData$Environment;)V

    iput-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOngoingData:Lcom/android/systemui/statusbar/NotificationData;

    .line 591
    new-instance v10, Lcom/android/systemui/statusbar/NotificationData;

    invoke-direct {v10, p0}, Lcom/android/systemui/statusbar/NotificationData;-><init>(Lcom/android/systemui/statusbar/NotificationData$Environment;)V

    iput-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCalendarData:Lcom/android/systemui/statusbar/NotificationData;

    .line 592
    new-instance v10, Lcom/android/systemui/statusbar/NotificationData;

    invoke-direct {v10, p0}, Lcom/android/systemui/statusbar/NotificationData;-><init>(Lcom/android/systemui/statusbar/NotificationData$Environment;)V

    iput-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mMusicData:Lcom/android/systemui/statusbar/NotificationData;

    .line 596
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/systemui/vivo/common/utils/ApplicationUtils;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/utils/ApplicationUtils;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mApplicationUtils:Lcom/android/systemui/vivo/common/utils/ApplicationUtils;

    .line 597
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationOpsManager:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    .line 598
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v10

    iget-object v11, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v10, v11}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 601
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v11, "accessibility"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/accessibility/AccessibilityManager;

    iput-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 604
    const-string v10, "dreams"

    invoke-static {v10}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDreamManager:Landroid/service/dreams/IDreamManager;

    .line 606
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v11, "power"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/PowerManager;

    iput-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mPowerManager:Landroid/os/PowerManager;

    .line 608
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 609
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "device_provisioned"

    invoke-static {v11}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    const/4 v12, 0x1

    iget-object v13, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 612
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "zen_mode"

    invoke-static {v11}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 615
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "lock_screen_show_notifications"

    invoke-static {v11}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v14, -0x1

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 620
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "lock_screen_allow_private_notifications"

    invoke-static {v11}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    const/4 v12, 0x1

    iget-object v13, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLockscreenSettingsObserver:Landroid/database/ContentObserver;

    const/4 v14, -0x1

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 626
    const-string v10, "statusbar"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 634
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 635
    .local v2, "currentConfig":Landroid/content/res/Configuration;
    iget-object v10, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLocale:Ljava/util/Locale;

    .line 636
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLocale:Ljava/util/Locale;

    invoke-static {v10}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v10

    iput v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLayoutDirection:I

    .line 637
    iget v10, v2, Landroid/content/res/Configuration;->fontScale:F

    iput v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mFontScale:F

    .line 639
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v11, "user"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/UserManager;

    iput-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUserManager:Landroid/os/UserManager;

    .line 641
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const v11, 0x10c000e

    invoke-static {v10, v11}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLinearOutSlowIn:Landroid/animation/TimeInterpolator;

    .line 643
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const v11, 0x10c000f

    invoke-static {v10, v11}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mFastOutLinearIn:Landroid/animation/TimeInterpolator;

    .line 647
    new-instance v7, Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-direct {v7}, Lcom/android/internal/statusbar/StatusBarIconList;-><init>()V

    .line 648
    .local v7, "iconList":Lcom/android/internal/statusbar/StatusBarIconList;
    new-instance v10, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-direct {v10, p0, v7}, Lcom/android/systemui/statusbar/CommandQueue;-><init>(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;Lcom/android/internal/statusbar/StatusBarIconList;)V

    iput-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 650
    const/16 v10, 0x8

    new-array v8, v10, [I

    .line 651
    .local v8, "switches":[I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 653
    .local v1, "binders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    :try_start_0
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v11, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-interface {v10, v11, v7, v8, v1}, Lcom/android/internal/statusbar/IStatusBarService;->registerStatusBar(Lcom/android/internal/statusbar/IStatusBar;Lcom/android/internal/statusbar/StatusBarIconList;[ILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 658
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->createAndAddWindows()V

    .line 660
    const/4 v10, 0x0

    aget v10, v8, v10

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/android/systemui/statusbar/BaseStatusBar;->disable(IZ)V

    .line 661
    const/4 v10, 0x1

    aget v10, v8, v10

    const/4 v11, -0x1

    invoke-virtual {p0, v10, v11}, Lcom/android/systemui/statusbar/BaseStatusBar;->setSystemUiVisibility(II)V

    .line 662
    const/4 v10, 0x2

    aget v10, v8, v10

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    :goto_1
    invoke-virtual {p0, v10}, Lcom/android/systemui/statusbar/BaseStatusBar;->topAppWindowChanged(Z)V

    .line 664
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/IBinder;

    const/4 v11, 0x3

    aget v12, v8, v11

    const/4 v11, 0x4

    aget v13, v8, v11

    const/4 v11, 0x5

    aget v11, v8, v11

    if-eqz v11, :cond_2

    const/4 v11, 0x1

    :goto_2
    invoke-virtual {p0, v10, v12, v13, v11}, Lcom/android/systemui/statusbar/BaseStatusBar;->setImeWindowStatus(Landroid/os/IBinder;IIZ)V

    .line 667
    invoke-virtual {v7}, Lcom/android/internal/statusbar/StatusBarIconList;->size()I

    move-result v0

    .line 668
    .local v0, "N":I
    const/4 v9, 0x0

    .line 669
    .local v9, "viewIndex":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    if-ge v5, v0, :cond_3

    .line 670
    invoke-virtual {v7, v5}, Lcom/android/internal/statusbar/StatusBarIconList;->getIcon(I)Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v6

    .line 671
    .local v6, "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    if-eqz v6, :cond_0

    .line 672
    invoke-virtual {v7, v5}, Lcom/android/internal/statusbar/StatusBarIconList;->getSlot(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10, v5, v9, v6}, Lcom/android/systemui/statusbar/BaseStatusBar;->addIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;)V

    .line 673
    add-int/lit8 v9, v9, 0x1

    .line 669
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 662
    .end local v0    # "N":I
    .end local v5    # "i":I
    .end local v6    # "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    .end local v9    # "viewIndex":I
    :cond_1
    const/4 v10, 0x0

    goto :goto_1

    .line 664
    :cond_2
    const/4 v11, 0x0

    goto :goto_2

    .line 679
    .restart local v0    # "N":I
    .restart local v5    # "i":I
    .restart local v9    # "viewIndex":I
    :cond_3
    :try_start_1
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationListener:Landroid/service/notification/NotificationListenerService;

    iget-object v11, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    new-instance v12, Landroid/content/ComponentName;

    iget-object v13, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, -0x1

    invoke-virtual {v10, v11, v12, v13}, Landroid/service/notification/NotificationListenerService;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 687
    :goto_4
    sget-boolean v10, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v10, :cond_4

    .line 688
    const-string v10, "StatusBar"

    const-string v11, "init: icons=%d disabled=0x%08x lights=0x%08x menu=0x%08x imeButton=0x%08x"

    const/4 v12, 0x5

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual {v7}, Lcom/android/internal/statusbar/StatusBarIconList;->size()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x0

    aget v14, v8, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const/4 v14, 0x1

    aget v14, v8, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    const/4 v14, 0x2

    aget v14, v8, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x4

    const/4 v14, 0x3

    aget v14, v8, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    :cond_4
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v10

    iput v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    .line 699
    iget v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCurrentUserId:I

    invoke-direct {p0, v10}, Lcom/android/systemui/statusbar/BaseStatusBar;->setHeadsUpUser(I)V

    .line 701
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 702
    .local v4, "filter":Landroid/content/IntentFilter;
    const-string v10, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v4, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 703
    const-string v10, "android.intent.action.USER_ADDED"

    invoke-virtual {v4, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 704
    const-string v10, "com.android.systemui.statusbar.banner_action_cancel"

    invoke-virtual {v4, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 705
    const-string v10, "com.android.systemui.statusbar.banner_action_setup"

    invoke-virtual {v4, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 706
    const-string v10, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v4, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 707
    iget-object v10, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v10, v11, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 709
    invoke-direct {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateCurrentProfilesCache()V

    .line 710
    return-void

    .line 682
    .end local v4    # "filter":Landroid/content/IntentFilter;
    :catch_0
    move-exception v3

    .line 683
    .local v3, "e":Landroid/os/RemoteException;
    const-string v10, "StatusBar"

    const-string v11, "Unable to register notification listener"

    invoke-static {v10, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 654
    .end local v0    # "N":I
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v5    # "i":I
    .end local v9    # "viewIndex":I
    :catch_1
    move-exception v10

    goto/16 :goto_0
.end method

.method protected abstract tick(Landroid/service/notification/StatusBarNotification;Z)V
.end method

.method public toggleRecentApps()V
    .locals 2

    .prologue
    .line 1365
    const/16 v0, 0x3fd

    .line 1366
    .local v0, "msg":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 1367
    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 1368
    return-void
.end method

.method protected toggleRecents()V
    .locals 4

    .prologue
    .line 1493
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    if-eqz v0, :cond_0

    .line 1494
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const-string v1, "recentapps"

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 1495
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mRecents:Lcom/android/systemui/RecentsComponent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDisplay:Landroid/view/Display;

    iget v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mLayoutDirection:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->getStatusBarView()Landroid/view/View;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/RecentsComponent;->toggleRecents(Landroid/view/Display;ILandroid/view/View;)V

    .line 1497
    :cond_0
    return-void
.end method

.method protected toggleUpSlideView(ZZ)V
    .locals 0
    .param p1, "isHomeKeyLongPressed"    # Z
    .param p2, "collapse"    # Z

    .prologue
    .line 1178
    return-void
.end method

.method protected abstract updateExpandedViewPos(I)V
.end method

.method public updateNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 41
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "ranking"    # Landroid/service/notification/NotificationListenerService$RankingMap;

    .prologue
    .line 2402
    const-string v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateNotification("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", ticker is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-object v7, v7, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2405
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationOpsManager:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/vivo/common/utils/DoubleInstanceUtils;->getStatusBarNotificationInstanceId(Landroid/service/notification/StatusBarNotification;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->getNotificationTipStyle(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v37

    .line 2408
    .local v37, "style":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v22

    .line 2409
    .local v22, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->isHeadsUp(Ljava/lang/String;)Z

    move-result v40

    .line 2411
    .local v40, "wasHeadsUp":Z
    if-eqz v40, :cond_1

    .line 2412
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v27

    .line 2414
    .local v27, "oldEntry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-eqz v27, :cond_0

    .line 2415
    const/4 v5, 0x1

    move-object/from16 v0, v27

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->displayFromHeadsUp:Z

    .line 2438
    :cond_0
    :goto_0
    if-nez v27, :cond_5

    .line 2685
    :goto_1
    return-void

    .line 2419
    .end local v27    # "oldEntry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v27

    .line 2421
    .restart local v27    # "oldEntry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-nez v27, :cond_2

    .line 2422
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOngoingData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v27

    .line 2424
    :cond_2
    if-nez v27, :cond_3

    .line 2425
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCalendarData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v27

    .line 2427
    :cond_3
    if-nez v27, :cond_4

    .line 2428
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mMusicData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v27

    .line 2433
    :cond_4
    if-eqz v27, :cond_0

    .line 2434
    const/4 v5, 0x0

    move-object/from16 v0, v27

    iput-boolean v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->displayFromHeadsUp:Z

    goto :goto_0

    .line 2443
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->isHoodAvailableForNotification(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2444
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v6}, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->updateHoodDisplay(Landroid/service/notification/StatusBarNotification;Z)V

    .line 2446
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v6

    move-object/from16 v0, v27

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/16 v8, 0x64

    cmp-long v5, v6, v8

    if-gez v5, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationPartitionManager:Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->isOverSpeedUpdating(Landroid/service/notification/StatusBarNotification;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2448
    const-string v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "catch an overspeed notification["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "], abandon it!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/systemui/vivo/common/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2453
    :cond_7
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v29, v0

    .line 2456
    .local v29, "oldNotification":Landroid/service/notification/StatusBarNotification;
    invoke-virtual/range {v29 .. v29}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-object v0, v5, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v26, v0

    .line 2457
    .local v26, "oldContentView":Landroid/widget/RemoteViews;
    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v23

    .line 2458
    .local v23, "n":Landroid/app/Notification;
    move-object/from16 v0, v23

    iget-object v14, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 2459
    .local v14, "contentView":Landroid/widget/RemoteViews;
    invoke-virtual/range {v29 .. v29}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-object v0, v5, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    move-object/from16 v25, v0

    .line 2460
    .local v25, "oldBigContentView":Landroid/widget/RemoteViews;
    move-object/from16 v0, v23

    iget-object v12, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 2461
    .local v12, "bigContentView":Landroid/widget/RemoteViews;
    invoke-virtual/range {v29 .. v29}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-object v0, v5, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    move-object/from16 v28, v0

    .line 2462
    .local v28, "oldHeadsUpContentView":Landroid/widget/RemoteViews;
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    move-object/from16 v17, v0

    .line 2463
    .local v17, "headsUpContentView":Landroid/widget/RemoteViews;
    invoke-virtual/range {v29 .. v29}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-object v0, v5, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    move-object/from16 v31, v0

    .line 2464
    .local v31, "oldPublicNotification":Landroid/app/Notification;
    if-eqz v31, :cond_19

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v30, v0

    .line 2466
    .local v30, "oldPublicContentView":Landroid/widget/RemoteViews;
    :goto_2
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    move-object/from16 v34, v0

    .line 2467
    .local v34, "publicNotification":Landroid/app/Notification;
    if-eqz v34, :cond_1a

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v33, v0

    .line 2470
    .local v33, "publicContentView":Landroid/widget/RemoteViews;
    :goto_3
    sget-boolean v5, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v5, :cond_8

    .line 2471
    const-string v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "old notification: when="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v29 .. v29}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-wide v8, v7, Landroid/app/Notification;->when:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ongoing="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v29 .. v29}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " expanded="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v27

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " contentView="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bigContentView="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " publicView="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " rowParent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v27

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2478
    const-string v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "new notification: when="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v23

    iget-wide v8, v0, Landroid/app/Notification;->when:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ongoing="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " contentView="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bigContentView="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " publicView="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v33

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2488
    :cond_8
    move-object/from16 v0, v27

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    if-eqz v5, :cond_1b

    invoke-virtual {v14}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1b

    invoke-virtual/range {v26 .. v26}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1b

    invoke-virtual/range {v26 .. v26}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-virtual/range {v26 .. v26}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v5

    invoke-virtual {v14}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v6

    if-ne v5, v6, :cond_1b

    const/4 v15, 0x1

    .line 2494
    .local v15, "contentsUnchanged":Z
    :goto_4
    invoke-virtual/range {v27 .. v27}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getBigContentView()Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_9

    if-eqz v12, :cond_a

    :cond_9
    invoke-virtual/range {v27 .. v27}, Lcom/android/systemui/statusbar/NotificationData$Entry;->getBigContentView()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_1c

    if-eqz v12, :cond_1c

    invoke-virtual {v12}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1c

    invoke-virtual/range {v25 .. v25}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1c

    invoke-virtual/range {v25 .. v25}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-virtual/range {v25 .. v25}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v5

    invoke-virtual {v12}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v6

    if-ne v5, v6, :cond_1c

    :cond_a
    const/4 v13, 0x1

    .line 2501
    .local v13, "bigContentsUnchanged":Z
    :goto_5
    if-nez v28, :cond_b

    if-eqz v17, :cond_c

    :cond_b
    if-eqz v28, :cond_1d

    if-eqz v17, :cond_1d

    invoke-virtual/range {v17 .. v17}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1d

    invoke-virtual/range {v28 .. v28}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1d

    invoke-virtual/range {v28 .. v28}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-virtual/range {v28 .. v28}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v5

    invoke-virtual/range {v17 .. v17}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v6

    if-ne v5, v6, :cond_1d

    :cond_c
    const/16 v18, 0x1

    .line 2508
    .local v18, "headsUpContentsUnchanged":Z
    :goto_6
    if-nez v30, :cond_d

    if-eqz v33, :cond_e

    :cond_d
    if-eqz v30, :cond_1e

    if-eqz v33, :cond_1e

    invoke-virtual/range {v33 .. v33}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1e

    invoke-virtual/range {v30 .. v30}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1e

    invoke-virtual/range {v30 .. v30}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v33 .. v33}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-virtual/range {v30 .. v30}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v5

    invoke-virtual/range {v33 .. v33}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v6

    if-ne v5, v6, :cond_1e

    :cond_e
    const/16 v35, 0x1

    .line 2515
    .local v35, "publicUnchanged":Z
    :goto_7
    move-object/from16 v0, v23

    iget-object v5, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v5, :cond_1f

    move-object/from16 v0, v23

    iget-object v5, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    move-object/from16 v0, v27

    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget-object v6, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1f

    const/16 v39, 0x1

    .line 2520
    .local v39, "updateTicker":Z
    :goto_8
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->doNotTickThisNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 2521
    const/16 v39, 0x0

    .line 2525
    :cond_f
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->shouldInterrupt(Landroid/service/notification/StatusBarNotification;)Z

    move-result v36

    .line 2526
    .local v36, "shouldInterrupt":Z
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->alertAgain(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/app/Notification;)Z

    move-result v11

    .line 2528
    .local v11, "alertAgain":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationPartitionManager:Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->considerAsOngoing(Landroid/service/notification/StatusBarNotification;)Z

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationPartitionManager:Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->considerAsOngoing(Landroid/service/notification/StatusBarNotification;)Z

    move-result v6

    xor-int v32, v5, v6

    .line 2531
    .local v32, "partitionChange":Z
    const/16 v38, 0x0

    .line 2532
    .local v38, "updateSuccessful":Z
    if-eqz v15, :cond_13

    if-eqz v13, :cond_13

    if-eqz v18, :cond_13

    if-eqz v35, :cond_13

    .line 2534
    sget-boolean v5, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v5, :cond_10

    const-string v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reusing notification for key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2537
    :cond_10
    move-object/from16 v0, v27

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget v0, v5, Landroid/app/Notification;->isKeyguardNotification:I

    move/from16 v21, v0

    .line 2538
    .local v21, "isKeyguardNotification":I
    move-object/from16 v0, p1

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 2539
    move-object/from16 v0, v27

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    move/from16 v0, v21

    iput v0, v5, Landroid/app/Notification;->isKeyguardNotification:I

    .line 2542
    :try_start_0
    move-object/from16 v0, v27

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v5, :cond_11

    .line 2544
    new-instance v4, Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    move-object/from16 v0, v23

    iget v7, v0, Landroid/app/Notification;->icon:I

    move-object/from16 v0, v23

    iget v8, v0, Landroid/app/Notification;->iconLevel:I

    move-object/from16 v0, v23

    iget v9, v0, Landroid/app/Notification;->number:I

    move-object/from16 v0, v23

    iget-object v10, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;Landroid/os/UserHandle;IIILjava/lang/CharSequence;)V

    .line 2550
    .local v4, "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    move-object/from16 v0, v27

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->setNotification(Landroid/app/Notification;)V

    .line 2559
    .end local v4    # "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    :cond_11
    if-eqz v40, :cond_21

    .line 2560
    if-eqz v36, :cond_20

    .line 2561
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateHeadsUpViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V

    .line 2562
    if-eqz v11, :cond_12

    .line 2563
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->resetHeadsUpDecayTimer()V

    .line 2589
    :cond_12
    :goto_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/NotificationData;->updateRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 2592
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCalendarData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/NotificationData;->updateRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 2593
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mMusicData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/NotificationData;->updateRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 2595
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotifications()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2596
    const/16 v38, 0x1

    .line 2603
    .end local v21    # "isKeyguardNotification":I
    :cond_13
    :goto_a
    if-nez v38, :cond_16

    .line 2604
    sget-boolean v5, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v5, :cond_14

    const-string v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "not reusing notification for key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2605
    :cond_14
    if-eqz v40, :cond_28

    .line 2606
    if-eqz v36, :cond_26

    .line 2607
    sget-boolean v5, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v5, :cond_15

    const-string v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rebuilding heads up for key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2608
    :cond_15
    new-instance v24, Lcom/android/systemui/statusbar/NotificationData$Entry;

    const/4 v5, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/android/systemui/statusbar/NotificationData$Entry;-><init>(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/StatusBarIconView;)V

    .line 2609
    .local v24, "newEntry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getHolder()Landroid/view/ViewGroup;

    move-result-object v19

    .line 2610
    .local v19, "holder":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->inflateViewsForHeadsUp(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 2611
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->showNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    .line 2612
    if-eqz v11, :cond_16

    .line 2613
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->resetHeadsUpDecayTimer()V

    .line 2666
    .end local v19    # "holder":Landroid/view/ViewGroup;
    .end local v24    # "newEntry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_16
    :goto_b
    move-object/from16 v0, v27

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v5, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotificationVetoButton(Landroid/view/View;Landroid/service/notification/StatusBarNotification;)Landroid/view/View;

    .line 2669
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->isNotificationForCurrentProfiles(Landroid/service/notification/StatusBarNotification;)Z

    move-result v20

    .line 2670
    .local v20, "isForCurrentUser":Z
    sget-boolean v5, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v5, :cond_17

    const-string v6, "StatusBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notification is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v20, :cond_2e

    const-string v5, ""

    :goto_c
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "for you"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2673
    :cond_17
    if-eqz v39, :cond_18

    if-eqz v20, :cond_18

    .line 2674
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->haltTicker()V

    .line 2675
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Lcom/android/systemui/statusbar/BaseStatusBar;->tick(Landroid/service/notification/StatusBarNotification;Z)V

    .line 2679
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->setAreThereNotifications()V

    .line 2680
    const/16 v5, -0x2710

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateExpandedViewPos(I)V

    .line 2683
    invoke-static {}, Lcom/android/systemui/vivo/common/notification/NotificationUpdateManager;->getInstance()Lcom/android/systemui/vivo/common/notification/NotificationUpdateManager;

    move-result-object v5

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v5, v0, v1}, Lcom/android/systemui/vivo/common/notification/NotificationUpdateManager;->onNotificationUpdate(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V

    goto/16 :goto_1

    .line 2464
    .end local v11    # "alertAgain":Z
    .end local v13    # "bigContentsUnchanged":Z
    .end local v15    # "contentsUnchanged":Z
    .end local v18    # "headsUpContentsUnchanged":Z
    .end local v20    # "isForCurrentUser":Z
    .end local v30    # "oldPublicContentView":Landroid/widget/RemoteViews;
    .end local v32    # "partitionChange":Z
    .end local v33    # "publicContentView":Landroid/widget/RemoteViews;
    .end local v34    # "publicNotification":Landroid/app/Notification;
    .end local v35    # "publicUnchanged":Z
    .end local v36    # "shouldInterrupt":Z
    .end local v38    # "updateSuccessful":Z
    .end local v39    # "updateTicker":Z
    :cond_19
    const/16 v30, 0x0

    goto/16 :goto_2

    .line 2467
    .restart local v30    # "oldPublicContentView":Landroid/widget/RemoteViews;
    .restart local v34    # "publicNotification":Landroid/app/Notification;
    :cond_1a
    const/16 v33, 0x0

    goto/16 :goto_3

    .line 2488
    .restart local v33    # "publicContentView":Landroid/widget/RemoteViews;
    :cond_1b
    const/4 v15, 0x0

    goto/16 :goto_4

    .line 2494
    .restart local v15    # "contentsUnchanged":Z
    :cond_1c
    const/4 v13, 0x0

    goto/16 :goto_5

    .line 2501
    .restart local v13    # "bigContentsUnchanged":Z
    :cond_1d
    const/16 v18, 0x0

    goto/16 :goto_6

    .line 2508
    .restart local v18    # "headsUpContentsUnchanged":Z
    :cond_1e
    const/16 v35, 0x0

    goto/16 :goto_7

    .line 2515
    .restart local v35    # "publicUnchanged":Z
    :cond_1f
    const/16 v39, 0x0

    goto/16 :goto_8

    .line 2567
    .restart local v11    # "alertAgain":Z
    .restart local v21    # "isKeyguardNotification":I
    .restart local v32    # "partitionChange":Z
    .restart local v36    # "shouldInterrupt":Z
    .restart local v38    # "updateSuccessful":Z
    .restart local v39    # "updateTicker":Z
    :cond_20
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->releaseAndClose()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 2598
    :catch_0
    move-exception v16

    .line 2600
    .local v16, "e":Ljava/lang/RuntimeException;
    const-string v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t reapply views for package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v14}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_a

    .line 2573
    .end local v16    # "e":Ljava/lang/RuntimeException;
    :cond_21
    if-eqz v36, :cond_22

    if-nez v11, :cond_23

    :cond_22
    if-nez v32, :cond_23

    :try_start_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v5

    if-nez v5, :cond_24

    const-string v5, "1"

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationPartitionManager:Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->considerAsOngoing(Landroid/service/notification/StatusBarNotification;)Z

    move-result v5

    if-nez v5, :cond_24

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-object v5, v5, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v5, :cond_24

    if-eqz v39, :cond_24

    if-eqz v11, :cond_24

    .line 2583
    :cond_23
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->removeNotificationViews(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)Landroid/service/notification/StatusBarNotification;

    .line 2584
    invoke-virtual/range {p0 .. p2}, Lcom/android/systemui/statusbar/BaseStatusBar;->addNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    goto/16 :goto_9

    .line 2586
    :cond_24
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotificationViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/StatusBarNotification;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_9

    .line 2616
    .end local v21    # "isKeyguardNotification":I
    .restart local v19    # "holder":Landroid/view/ViewGroup;
    .restart local v24    # "newEntry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_25
    const-string v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t create new updated headsup for package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v14}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 2620
    .end local v19    # "holder":Landroid/view/ViewGroup;
    .end local v24    # "newEntry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_26
    sget-boolean v5, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v5, :cond_27

    const-string v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "releasing heads up for key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2621
    :cond_27
    move-object/from16 v0, p1

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 2622
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->releaseAndClose()V

    goto/16 :goto_1

    .line 2626
    :cond_28
    if-eqz v36, :cond_29

    if-nez v11, :cond_2a

    :cond_29
    if-nez v32, :cond_2a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v5

    if-nez v5, :cond_2c

    const-string v5, "1"

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationPartitionManager:Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->considerAsOngoing(Landroid/service/notification/StatusBarNotification;)Z

    move-result v5

    if-nez v5, :cond_2c

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-object v5, v5, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v5, :cond_2c

    if-eqz v39, :cond_2c

    if-eqz v11, :cond_2c

    .line 2636
    :cond_2a
    sget-boolean v5, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v5, :cond_2b

    const-string v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "reposting to invoke heads up for key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2637
    :cond_2b
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->removeNotificationViews(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)Landroid/service/notification/StatusBarNotification;

    .line 2638
    invoke-virtual/range {p0 .. p2}, Lcom/android/systemui/statusbar/BaseStatusBar;->addNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    goto/16 :goto_b

    .line 2640
    :cond_2c
    sget-boolean v5, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v5, :cond_2d

    const-string v5, "StatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rebuilding update in place for key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2641
    :cond_2d
    move-object/from16 v0, p1

    move-object/from16 v1, v27

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 2642
    new-instance v4, Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    move-object/from16 v0, v23

    iget v7, v0, Landroid/app/Notification;->icon:I

    move-object/from16 v0, v23

    iget v8, v0, Landroid/app/Notification;->iconLevel:I

    move-object/from16 v0, v23

    iget v9, v0, Landroid/app/Notification;->number:I

    move-object/from16 v0, v23

    iget-object v10, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;Landroid/os/UserHandle;IIILjava/lang/CharSequence;)V

    .line 2648
    .restart local v4    # "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    move-object/from16 v0, v27

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->setNotification(Landroid/app/Notification;)V

    .line 2652
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v40

    invoke-direct {v0, v1, v5, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;Z)Z

    .line 2653
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/NotificationData;->updateRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 2655
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOngoingData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/NotificationData;->updateRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 2656
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mCalendarData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/NotificationData;->updateRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 2657
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mMusicData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/NotificationData;->updateRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 2659
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotifications()V

    goto/16 :goto_b

    .line 2670
    .end local v4    # "ic":Lcom/android/internal/statusbar/StatusBarIcon;
    .restart local v20    # "isForCurrentUser":Z
    :cond_2e
    const-string v5, "not "

    goto/16 :goto_c
.end method

.method protected abstract updateNotificationRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V
.end method

.method protected updateNotificationVetoButton(Landroid/view/View;Landroid/service/notification/StatusBarNotification;)Landroid/view/View;
    .locals 7
    .param p1, "row"    # Landroid/view/View;
    .param p2, "n"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 827
    const v0, 0x7f110115

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 828
    .local v6, "vetoButton":Landroid/view/View;
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-ne v0, p1, :cond_1

    .line 830
    :cond_0
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 831
    .local v2, "_pkg":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v3

    .line 832
    .local v3, "_tag":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v4

    .line 833
    .local v4, "_id":I
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v5

    .line 834
    .local v5, "_userId":I
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$6;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/BaseStatusBar$6;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 847
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 851
    .end local v2    # "_pkg":Ljava/lang/String;
    .end local v3    # "_tag":Ljava/lang/String;
    .end local v4    # "_id":I
    .end local v5    # "_userId":I
    :goto_0
    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 852
    return-object v6

    .line 849
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected abstract updateNotifications()V
.end method

.method protected updateRowStates()V
    .locals 17

    .prologue
    .line 2255
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->getMaxKeyguardNotifications()I

    move-result v10

    .line 2260
    .local v10, "maxKeyguardNotifications":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v14}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v5

    .line 2261
    .local v5, "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2263
    .local v1, "N":I
    const/4 v13, 0x0

    .line 2264
    .local v13, "visibleNotifications":I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mState:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_3

    const/4 v11, 0x1

    .line 2265
    .local v11, "onKeyguard":Z
    :goto_0
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v1, :cond_6

    .line 2266
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 2268
    .local v7, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    move-result-object v14

    iget-object v15, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->isAppLockedByIManager(Ljava/lang/String;)Z

    move-result v9

    .line 2271
    .local v9, "isAppLocked":Z
    if-nez v11, :cond_0

    if-eqz v9, :cond_4

    .line 2272
    :cond_0
    iget-object v14, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setExpansionDisabled(Z)V

    .line 2285
    :cond_1
    :goto_2
    iget-object v14, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v14}, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->isPartitionTitle(Landroid/view/View;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 2265
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 2264
    .end local v7    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v8    # "i":I
    .end local v9    # "isAppLocked":Z
    .end local v11    # "onKeyguard":Z
    :cond_3
    const/4 v11, 0x0

    goto :goto_0

    .line 2274
    .restart local v7    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .restart local v8    # "i":I
    .restart local v9    # "isAppLocked":Z
    .restart local v11    # "onKeyguard":Z
    :cond_4
    iget-object v14, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setExpansionDisabled(Z)V

    .line 2275
    iget-object v14, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v14}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserLocked()Z

    move-result v14

    if-nez v14, :cond_1

    .line 2279
    const/4 v14, 0x1

    if-ne v8, v14, :cond_5

    const/4 v12, 0x1

    .line 2281
    .local v12, "top":Z
    :goto_3
    iget-object v14, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v14, v12}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setSystemExpanded(Z)V

    goto :goto_2

    .line 2279
    .end local v12    # "top":Z
    :cond_5
    const/4 v12, 0x0

    goto :goto_3

    .line 2311
    .end local v7    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v9    # "isAppLocked":Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mOngoingData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v14}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v6

    .line 2312
    .local v6, "activeOngoings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2313
    .local v2, "N2":I
    const/4 v8, 0x0

    :goto_4
    if-ge v8, v2, :cond_b

    .line 2314
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 2315
    .restart local v7    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-eqz v11, :cond_9

    .line 2316
    iget-object v14, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setExpansionDisabled(Z)V

    .line 2324
    :cond_7
    :goto_5
    iget-object v14, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v14}, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->isPartitionTitle(Landroid/view/View;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 2313
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 2318
    :cond_9
    iget-object v14, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setExpansionDisabled(Z)V

    .line 2319
    iget-object v14, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v14}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserLocked()Z

    move-result v14

    if-nez v14, :cond_7

    .line 2320
    const/4 v14, 0x1

    if-ne v8, v14, :cond_a

    const/4 v12, 0x1

    .line 2321
    .restart local v12    # "top":Z
    :goto_6
    iget-object v14, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v14, v12}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setSystemExpanded(Z)V

    goto :goto_5

    .line 2320
    .end local v12    # "top":Z
    :cond_a
    const/4 v12, 0x0

    goto :goto_6

    .line 2329
    .end local v7    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mMusicData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v14}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v4

    .line 2330
    .local v4, "activeMusics":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2331
    .local v3, "N4":I
    const/4 v8, 0x0

    :goto_7
    if-ge v8, v3, :cond_c

    .line 2332
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 2333
    .restart local v7    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v14, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setSystemExpanded(Z)V

    .line 2331
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 2349
    .end local v7    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mEmptyShadeView:Lcom/android/systemui/statusbar/EmptyShadeView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v16

    add-int/lit8 v16, v16, -0x2

    invoke-virtual/range {v14 .. v16}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->changeViewPosition(Landroid/view/View;I)V

    .line 2350
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    invoke-virtual/range {v14 .. v16}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->changeViewPosition(Landroid/view/View;I)V

    .line 2351
    return-void
.end method

.method protected updateSearchPanel()V
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1417
    const/4 v3, 0x0

    .line 1418
    .local v3, "visible":Z
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    if-eqz v4, :cond_0

    .line 1419
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-virtual {v4}, Lcom/android/systemui/SearchPanelView;->isShowing()Z

    move-result v3

    .line 1420
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-interface {v4, v7}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1424
    :cond_0
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1425
    .local v1, "tmpRoot":Landroid/widget/LinearLayout;
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v7, 0x7f040049

    invoke-virtual {v4, v7, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/SearchPanelView;

    iput-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    .line 1427
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    new-instance v7, Lcom/android/systemui/statusbar/BaseStatusBar$TouchOutsideListener;

    const/16 v8, 0x403

    iget-object v9, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-direct {v7, p0, v8, v9}, Lcom/android/systemui/statusbar/BaseStatusBar$TouchOutsideListener;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar;ILcom/android/systemui/statusbar/StatusBarPanel;)V

    invoke-virtual {v4, v7}, Lcom/android/systemui/SearchPanelView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1429
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Lcom/android/systemui/SearchPanelView;->setVisibility(I)V

    .line 1430
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isVertical()Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v5

    .line 1431
    .local v2, "vertical":Z
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-virtual {v4, v2}, Lcom/android/systemui/SearchPanelView;->setHorizontal(Z)V

    .line 1433
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-virtual {v4}, Lcom/android/systemui/SearchPanelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->getSearchLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1435
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mWindowManager:Landroid/view/WindowManager;

    iget-object v7, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-interface {v4, v7, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1436
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-virtual {v4, p0}, Lcom/android/systemui/SearchPanelView;->setBar(Lcom/android/systemui/statusbar/BaseStatusBar;)V

    .line 1437
    if-eqz v3, :cond_1

    .line 1438
    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/SearchPanelView;->show(ZZ)V

    .line 1440
    :cond_1
    return-void

    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v2    # "vertical":Z
    :cond_2
    move v2, v6

    .line 1430
    goto :goto_0
.end method

.method protected updateVisibleToUser()V
    .locals 2

    .prologue
    .line 2115
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mVisibleToUser:Z

    .line 2116
    .local v0, "oldVisibleToUser":Z
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mVisible:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mScreenOnFromKeyguard:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mVisibleToUser:Z

    .line 2118
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mVisibleToUser:Z

    if-eq v0, v1, :cond_0

    .line 2119
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mVisibleToUser:Z

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->handleVisibleToUserChanged(Z)V

    .line 2121
    :cond_0
    return-void

    .line 2116
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public userAllowsPrivateNotificationsInPublic(I)Z
    .locals 7
    .param p1, "userHandle"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1552
    const/4 v5, -0x1

    if-ne p1, v5, :cond_0

    .line 1568
    :goto_0
    return v3

    .line 1556
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v5

    if-gez v5, :cond_4

    .line 1557
    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lock_screen_allow_private_notifications"

    invoke-static {v5, v6, v4, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-eqz v5, :cond_1

    move v0, v3

    .line 1560
    .local v0, "allowed":Z
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, p1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v2

    .line 1562
    .local v2, "dpmFlags":I
    and-int/lit8 v5, v2, 0x8

    if-nez v5, :cond_2

    move v1, v3

    .line 1564
    .local v1, "allowedByDpm":Z
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    :goto_3
    invoke-virtual {v5, p1, v3}, Landroid/util/SparseBooleanArray;->append(IZ)V

    move v3, v0

    .line 1565
    goto :goto_0

    .end local v0    # "allowed":Z
    .end local v1    # "allowedByDpm":Z
    .end local v2    # "dpmFlags":I
    :cond_1
    move v0, v4

    .line 1557
    goto :goto_1

    .restart local v0    # "allowed":Z
    .restart local v2    # "dpmFlags":I
    :cond_2
    move v1, v4

    .line 1562
    goto :goto_2

    .restart local v1    # "allowedByDpm":Z
    :cond_3
    move v3, v4

    .line 1564
    goto :goto_3

    .line 1568
    .end local v0    # "allowed":Z
    .end local v1    # "allowedByDpm":Z
    .end local v2    # "dpmFlags":I
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mUsersAllowingPrivateNotifications:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    goto :goto_0
.end method

.method public userSwitched(I)V
    .locals 0
    .param p1, "newUserId"    # I

    .prologue
    .line 764
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/BaseStatusBar;->setHeadsUpUser(I)V

    .line 765
    return-void
.end method

.method protected visibilityChanged(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 2105
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mVisible:Z

    if-eq v0, p1, :cond_0

    .line 2106
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar;->mVisible:Z

    .line 2107
    if-nez p1, :cond_0

    .line 2108
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->dismissPopups()V

    .line 2111
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateVisibleToUser()V

    .line 2112
    return-void
.end method

.method protected workAroundBadLayerDrawableOpacity(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1653
    return-void
.end method
