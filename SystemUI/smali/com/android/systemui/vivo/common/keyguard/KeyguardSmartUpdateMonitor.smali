.class public Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;
.super Ljava/lang/Object;
.source "KeyguardSmartUpdateMonitor.java"

# interfaces
.implements Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager$Callback;


# static fields
.field private static final ACTION_APPLY_THEME:Ljava/lang/String; = "intent.action.theme.changed"

.field private static final ACTION_BTP_STARTSERVICE:Ljava/lang/String; = "btp.intent.action.statr_service"

.field private static final ACTION_BTP_UNLOCK:Ljava/lang/String; = "com.crucialtec.btp.service.unclock"

.field private static final ACTION_EXTERNAL_APPLICATIONS_AVAILABLE:Ljava/lang/String; = "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

.field private static final ACTION_LOCK_SCREEN:Ljava/lang/String; = "let.bbk.status.bar.lock.screen"

.field private static final ACTION_MISSED_CALL:Ljava/lang/String; = "android.no.read.BBKLockScreen.INCALL"

.field private static final ACTION_MUSIC_FORCE_KILLED:Ljava/lang/String; = "android.intent.action.KILL_BACKGROUND_SERVICE.com.android.bbkmusic"

.field private static final ACTION_MUSIC_FORCE_STOPED:Ljava/lang/String; = "android.intent.action.FORCE_STOP_PACKAGE.com.android.bbkmusic"

.field private static final ACTION_SMART_CHEKOUT:I = 0x8

.field private static final ACTION_SMART_REMIND:I = 0x2

.field private static final ACTION_SMART_REMIND_REGISTER:Ljava/lang/String; = "com.vivo.action.MESSAGE_REMIND"

.field private static final ACTION_SMART_UNLOCK:I = 0x4

.field private static final ACTION_SMART_WAKE_DISMISS:Ljava/lang/String; = "com.vivo.smartwake.dismiss"

.field private static final ACTION_SUPER_POWER_SAVE_CHANGED:Ljava/lang/String; = "intent.action.super_power_save_send"

.field private static final ACTION_UNREAD_MSG:Ljava/lang/String; = "android.no.read.BBKLockScreen.MSG"

.field private static final ACTION_WALLPAPER_CHANGED:Ljava/lang/String; = "com.mediatek.lockscreen.action.WALLPAPER_SET.DONE"

.field private static final CHARGING_MODE_CHECK_DELAY:I = 0xbb8

.field private static final DUAL_ENGINE_STATE:I = 0x1

.field private static final DURAION_SHOW_OR_HIDE_LOCKSCREEN:I = 0x96

.field private static final EXTRA_ENGINE:Ljava/lang/String; = "engine"

.field private static final EXTRA_PLMN:Ljava/lang/String; = "plmn"

.field private static final EXTRA_SHOW_PLMN:Ljava/lang/String; = "showPlmn"

.field private static final EXTRA_SHOW_SPN:Ljava/lang/String; = "showSpn"

.field private static final EXTRA_SIM_ID:Ljava/lang/String; = "phone"

.field private static final EXTRA_SPN:Ljava/lang/String; = "spn"

.field private static final KEYGUARD_CHARGING_MODE:Ljava/lang/String; = "vivo_fast_charge_state"

.field private static final KEYGUARD_DB_VERSION:Ljava/lang/String; = "keyguard_version"

.field private static final KEYGUARD_SMART_CHECKOUT:Ljava/lang/String; = "bbk_screen_disable_to_view_setting"

.field private static final KEYGUARD_SMART_REMIND:Ljava/lang/String; = "bbk_smart_remind"

.field private static final KEYGUARD_SMART_UNLOCK:Ljava/lang/String; = "bbk_smart_unlock"

.field private static final KEYGUARD_THEME_ID:Ljava/lang/String; = "lock_screen_theme_id"

.field private static final KEYGUARD_THEME_ID_2:Ljava/lang/String; = "lock_screen_theme_id_2"

.field private static final KEYGUARD_THEME_ZIP_ID:Ljava/lang/String; = "lock_screen_zip_id"

.field private static final KEYGUARD_VERSION:I = 0x1e

.field private static final MAX_CHECK_TIMES:I = 0x14

.field private static final MSG_HALL_DISMISS:I = 0xf

.field private static final MSG_HANDLE_HALL_LOCK:I = 0x9

.field private static final MSG_HANDLE_HALL_LOCK_LATER:I = 0x13

.field private static final MSG_HANDLE_SMART_MOTION_CHECKOUT:I = 0x6

.field private static final MSG_HANDLE_SMART_MOTION_REMIND:I = 0x7

.field private static final MSG_HANDLE_SMART_MOTION_UNLOCK:I = 0x8

.field private static final MSG_LAUCHER_WALLPAPER_CHANGED:I = 0xd

.field private static final MSG_LIVEWALLPAPER_CHANGED:I = 0xc

.field private static final MSG_PACKAGE_REMOVED:I = 0x11

.field private static final MSG_PARSE_THEME_DATA:I = 0xe

.field private static final MSG_QUICKCHARGE_SUPPORTED:I = 0x14

.field private static final MSG_REGISTER_SMART_MOTION_CHECKOUT:I = 0x0

.field private static final MSG_REGISTER_SMART_MOTION_REMIND:I = 0x1

.field private static final MSG_REGISTER_SMART_MOTION_UNLOCK:I = 0x2

.field private static final MSG_SUPER_POWER_SAVE_CHANGED:I = 0x12

.field private static final MSG_THEME_CHANGED:I = 0x15

.field private static final MSG_TIME_CHANGED:I = 0xb

.field private static final MSG_UNREGISTER_SMART_MOTION_CHECKOUT:I = 0x3

.field private static final MSG_UNREGISTER_SMART_MOTION_REMIND:I = 0x4

.field private static final MSG_UNREGISTER_SMART_MOTION_UNLOCK:I = 0x5

.field private static final MSG_UPDATE_INFO:I = 0x16

.field private static final MSG_WAKE_UP:I = 0x10

.field private static final MSG_WALLPAPER_CHANGED:I = 0xa

.field private static final SIM_ID_0:I = 0x0

.field private static final SIM_ID_1:I = 0x1

.field private static final SPN_STRINGS_UPDATED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SPN_STRINGS_UPDATED"

.field private static final STATUS_BAR_UPDATE_ACTION:Ljava/lang/String; = "status.bar.update.plmn.spn"

.field private static final TAG:Ljava/lang/String; = "KeyguardSmartUpdateMonitor"


# instance fields
.field private mAllSimString:Ljava/lang/String;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallCount:I

.field private mCallShowing:Z

.field private mCallback:Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;

.field private mCallbackFromReg:Z

.field private mCheckCount:I

.field private mContext:Landroid/content/Context;

.field private mCurrentEngineState:I

.field private mDayOfYear:I

.field public mHallListener:Lcom/vivo/services/hallstate/IHallEventListener;

.field private mHallManager:Lcom/vivo/services/hallstate/HallManager;

.field private mHandler:Landroid/os/Handler;

.field private final mHaveHolsterWindow:Z

.field private mHostView:Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;

.field private volatile mIgnoreUEvent:Z

.field private mIsHallClosed:Z

.field private mIsHallWindowShowing:Z

.field private mIsQuickCharging:Z

.field private mIsQuickChargingOn:Z

.field private mIsSmartWakeShowing:Z

.field private mKWM:Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;

.field private mKeyguardStateManager:Lcom/android/systemui/vivo/common/keyguard/KeyguardStateManager;

.field private mMsgCount:I

.field private mMsgShowing:Z

.field private mPM:Landroid/os/PowerManager;

.field private mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private mParseManager:Lcom/android/systemui/vivo/common/keyguard/xmlParse/KeyguardParseManager;

.field private mPhoneState:I

.field private mPlmnSim0:Ljava/lang/String;

.field private mPlmnSim1:Ljava/lang/String;

.field private mRemovedPackage:Ljava/lang/String;

.field private mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

.field private mScreenOn:Z

.field private mShowing:Z

.field private mSim0String:Ljava/lang/String;

.field private mSim1String:Ljava/lang/String;

.field private mSmartCheckoutOn:Z

.field private mSmartCheckoutRegistered:Z

.field private mSmartMotionListener:Lcom/vivo/services/motion/MotionRecognitionListener;

.field private mSmartMotionManager:Lcom/vivo/services/motion/MotionRecognitionManager;

.field private mSmartRemindOn:Z

.field private mSmartRemindRegistered:Z

.field private mSmartUnlockOn:Z

.field private mSmartUnlockRegistered:Z

.field private mThemeZipId:Ljava/lang/String;

.field private mTryCount:I

.field private mUEventStatus:[I

.field private final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;
    .param p3, "hostView"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const-string v1, "Have_holster_with_window"

    const-string v2, "persist.vivo.phone.holster"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mHaveHolsterWindow:Z

    .line 96
    const-string v1, ""

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mPlmnSim0:Ljava/lang/String;

    .line 97
    const-string v1, ""

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mPlmnSim1:Ljava/lang/String;

    .line 98
    const-string v1, ""

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mSim0String:Ljava/lang/String;

    .line 99
    const-string v1, ""

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mSim1String:Ljava/lang/String;

    .line 100
    const-string v1, ""

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mAllSimString:Ljava/lang/String;

    .line 139
    iput-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mThemeZipId:Ljava/lang/String;

    .line 142
    iput-boolean v3, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mSmartCheckoutOn:Z

    .line 143
    iput-boolean v3, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mSmartCheckoutRegistered:Z

    .line 146
    iput-boolean v3, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mSmartRemindOn:Z

    .line 147
    iput-boolean v3, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mSmartRemindRegistered:Z

    .line 150
    iput-boolean v3, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mSmartUnlockOn:Z

    .line 151
    iput-boolean v3, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mSmartUnlockRegistered:Z

    .line 152
    iput-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mHallManager:Lcom/vivo/services/hallstate/HallManager;

    .line 164
    iput v3, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mPhoneState:I

    .line 168
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mUEventStatus:[I

    .line 176
    iput v3, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mCurrentEngineState:I

    .line 314
    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$8;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$8;-><init>(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)V

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mHallListener:Lcom/vivo/services/hallstate/IHallEventListener;

    .line 335
    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$9;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$9;-><init>(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)V

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 469
    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$10;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$10;-><init>(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)V

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 612
    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$11;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$11;-><init>(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)V

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    .line 681
    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$12;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$12;-><init>(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)V

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mSmartMotionListener:Lcom/vivo/services/motion/MotionRecognitionListener;

    .line 705
    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$13;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$13;-><init>(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)V

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mHandler:Landroid/os/Handler;

    .line 181
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mContext:Landroid/content/Context;

    .line 182
    iput-object p2, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mCallback:Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;

    .line 183
    iput-object p3, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mHostView:Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;

    .line 184
    const-string v1, "motion_recongnition"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vivo/services/motion/MotionRecognitionManager;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mSmartMotionManager:Lcom/vivo/services/motion/MotionRecognitionManager;

    .line 185
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mPM:Landroid/os/PowerManager;

    .line 186
    invoke-static {p1}, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mKWM:Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;

    .line 187
    invoke-static {p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardStateManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/keyguard/KeyguardStateManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mKeyguardStateManager:Lcom/android/systemui/vivo/common/keyguard/KeyguardStateManager;

    .line 188
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mKeyguardStateManager:Lcom/android/systemui/vivo/common/keyguard/KeyguardStateManager;

    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mHaveHolsterWindow:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/KeyguardStateManager;->setHallProperty(Z)V

    .line 189
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->init()V

    .line 192
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_theme_id"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$1;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$1;-><init>(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;Landroid/os/Handler;)V

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 200
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_theme_id_2"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$2;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$2;-><init>(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;Landroid/os/Handler;)V

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 209
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "bbk_screen_disable_to_view_setting"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$3;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$3;-><init>(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;Landroid/os/Handler;)V

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 218
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "bbk_smart_remind"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$4;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$4;-><init>(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;Landroid/os/Handler;)V

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 227
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "bbk_smart_unlock"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$5;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$5;-><init>(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;Landroid/os/Handler;)V

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 236
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_screen_zip_id"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$6;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$6;-><init>(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;Landroid/os/Handler;)V

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 245
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "vivo_fast_charge_state"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$7;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$7;-><init>(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;Landroid/os/Handler;)V

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 254
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->registerHallListener()V

    .line 256
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->registerUpdateMonitorCallback()V

    .line 257
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->registerNotificationCallback()V

    .line 258
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->registerBroadcastReceiver()V

    .line 260
    invoke-static {p1}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    .line 261
    new-instance v0, Landroid/content/Intent;

    const-string v1, "status.bar.update.plmn.spn"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 262
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 263
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 265
    return-void

    .line 168
    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->updateThemeId()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->updateSmartCheckoutOn()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mShowing:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mShowing:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mCallback:Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->isCallStateIdle()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Landroid/os/PowerManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mPM:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Lcom/android/systemui/vivo/common/keyguard/KeyguardStateManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mKeyguardStateManager:Lcom/android/systemui/vivo/common/keyguard/KeyguardStateManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mScreenOn:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;
    .param p1, "x1"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->registerOrUnregisterSmartMotion(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->updateSmartCheckoutRegisterState()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->handleShowSmartWake(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    .prologue
    .line 54
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mPhoneState:I

    return v0
.end method

.method static synthetic access$1902(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;
    .param p1, "x1"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mPhoneState:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->updateSmartRemindOn()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mIsHallClosed:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->lockNow()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;
    .param p1, "x1"    # Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->isPlugged(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mIsQuickCharging:Z

    return p1
.end method

.method static synthetic access$2502(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;
    .param p1, "x1"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mCheckCount:I

    return p1
.end method

.method static synthetic access$2600(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mHostView:Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->handleSmartDismiss()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->handleFingerprintDismiss()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mKWM:Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->updateSmartUnlockOn()V

    return-void
.end method

.method static synthetic access$3002(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;
    .param p1, "x1"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mMsgCount:I

    return p1
.end method

.method static synthetic access$3100(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    .prologue
    .line 54
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mCallCount:I

    return v0
.end method

.method static synthetic access$3102(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;
    .param p1, "x1"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mCallCount:I

    return p1
.end method

.method static synthetic access$3200(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mCallShowing:Z

    return v0
.end method

.method static synthetic access$3300(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->goToSleep()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    .prologue
    .line 54
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mCurrentEngineState:I

    return v0
.end method

.method static synthetic access$3402(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;
    .param p1, "x1"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mCurrentEngineState:I

    return p1
.end method

.method static synthetic access$3500(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->isMultiSimEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mPlmnSim0:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mPlmnSim0:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mPlmnSim1:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mPlmnSim1:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mRemovedPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mRemovedPackage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3900(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mSmartCheckoutOn:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->updateThemeZipId()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mSmartCheckoutRegistered:Z

    return v0
.end method

.method static synthetic access$4002(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mSmartCheckoutRegistered:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Lcom/vivo/services/motion/MotionRecognitionListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mSmartMotionListener:Lcom/vivo/services/motion/MotionRecognitionListener;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Lcom/vivo/services/motion/MotionRecognitionManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mSmartMotionManager:Lcom/vivo/services/motion/MotionRecognitionManager;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mSmartRemindOn:Z

    return v0
.end method

.method static synthetic access$4400(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mSmartRemindRegistered:Z

    return v0
.end method

.method static synthetic access$4402(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mSmartRemindRegistered:Z

    return p1
.end method

.method static synthetic access$4500(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->hasUnread()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4600(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mSmartUnlockOn:Z

    return v0
.end method

.method static synthetic access$4700(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mSmartUnlockRegistered:Z

    return v0
.end method

.method static synthetic access$4702(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mSmartUnlockRegistered:Z

    return p1
.end method

.method static synthetic access$4800(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->handleHall(Z)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->handleHallLater()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->updateChargingMode()V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->handleWallpaperChanged()V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;
    .param p1, "x1"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->handleLauncherWallpaperChanged(I)V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->handleTimeChanged(Z)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->handleHallDismiss()V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->wakeUp()V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->handlePackageRemoved()V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->handleSuperPowerSave(Z)V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->handleQuickChargeSupported()V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->handleThemeChanged()V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->updateCarrierInfo(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mHaveHolsterWindow:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mCallbackFromReg:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mCallbackFromReg:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;
    .param p1, "x1"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->sendUEventMessageCorrectly(I)V

    return-void
.end method

.method private checkKeyguardVersion()V
    .locals 4

    .prologue
    const/16 v3, 0x1e

    .line 839
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mContext:Landroid/content/Context;

    const-string v1, "keyguard_version"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/systemui/vivo/common/keyguard/utils/KeyguardUtils;->getIntFromSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 840
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mContext:Landroid/content/Context;

    const-string v1, "keyguard_version"

    invoke-static {v0, v1, v3}, Lcom/android/systemui/vivo/common/keyguard/utils/KeyguardUtils;->putIntToSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 842
    :cond_0
    return-void
.end method

.method private getSimCardName(I)Ljava/lang/String;
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 1267
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->getSIMName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private goToSleep()V
    .locals 4

    .prologue
    .line 952
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mPM:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 953
    return-void
.end method

.method private hallDismiss()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 994
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mCallback:Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 995
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->wakeUp()V

    .line 1002
    :goto_0
    return-void

    .line 998
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mHostView:Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->updateNotification(ZZ)V

    .line 999
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mCallback:Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;

    invoke-virtual {v0, v2}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;->dismiss(Z)V

    .line 1000
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->wakeUp()V

    goto :goto_0
.end method

.method private handleFingerprintDismiss()V
    .locals 2

    .prologue
    .line 1035
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mIsHallClosed:Z

    if-nez v0, :cond_0

    .line 1036
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mCallback:Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;->dismiss(Z)V

    .line 1038
    :cond_0
    return-void
.end method

.method private handleHall(Z)V
    .locals 2
    .param p1, "lock"    # Z

    .prologue
    const/4 v1, 0x0

    .line 956
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mIsHallClosed:Z

    .line 957
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mKeyguardStateManager:Lcom/android/systemui/vivo/common/keyguard/KeyguardStateManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardStateManager;->setHallState(Z)V

    .line 958
    if-eqz p1, :cond_0

    .line 959
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->lockNow()V

    .line 969
    :goto_0
    return-void

    .line 961
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mHaveHolsterWindow:Z

    if-eqz v0, :cond_1

    .line 962
    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->handleShowHallWindow(Z)V

    .line 963
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->hallDismiss()V

    goto :goto_0

    .line 965
    :cond_1
    iput v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mTryCount:I

    .line 966
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->handleHallDismiss()V

    goto :goto_0
.end method

.method private handleHallDismiss()V
    .locals 5

    .prologue
    const/16 v4, 0xf

    .line 981
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 983
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mShowing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mCallback:Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;->isOccluded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 984
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->hallDismiss()V

    .line 991
    :goto_0
    return-void

    .line 985
    :cond_1
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mTryCount:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_2

    .line 986
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mTryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mTryCount:I

    .line 987
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 989
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->wakeUp()V

    goto :goto_0
.end method

.method private handleHallLater()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 972
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mIgnoreUEvent:Z

    .line 973
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mUEventStatus:[I

    aget v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mUEventStatus:[I

    aget v0, v0, v3

    if-eq v0, v3, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mUEventStatus:[I

    aget v0, v0, v1

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mUEventStatus:[I

    aget v0, v0, v3

    if-nez v0, :cond_2

    .line 975
    :cond_1
    const-string v0, "KeyguardSmartUpdateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "last event status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mUEventStatus:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mUEventStatus:[I

    aget v0, v0, v3

    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->sendUEventMessageCorrectly(I)V

    .line 978
    :cond_2
    return-void
.end method

.method private handleLauncherWallpaperChanged(I)V
    .locals 5
    .param p1, "showLiveWallpaperFlag"    # I

    .prologue
    const/4 v4, 0x1

    .line 1012
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mKWM:Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->checkIfLauncherUsingLiveWallpaper()Z

    move-result v0

    .line 1013
    .local v0, "launcherLiveWallpaper":Z
    const-string v1, "KeyguardSmartUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "launcherLiveWallpaper ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    if-nez v0, :cond_1

    .line 1015
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mKWM:Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->showLiveWallpaper(Z)V

    .line 1021
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mHostView:Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->updateWallpaper()V

    .line 1022
    return-void

    .line 1016
    :cond_1
    if-eqz v0, :cond_0

    if-ne v4, p1, :cond_0

    .line 1017
    invoke-static {}, Lcom/android/systemui/vivo/common/keyguard/KeyguardTheme;->canShowLiveWallpaper()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1018
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mKWM:Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;

    invoke-virtual {v1, v4}, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->showLiveWallpaper(Z)V

    goto :goto_0
.end method

.method private handlePackageRemoved()V
    .locals 6

    .prologue
    .line 1168
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mRemovedPackage:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 1169
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mContext:Landroid/content/Context;

    const-string v4, "custom_settings"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1170
    .local v0, "customSettings":Landroid/content/SharedPreferences;
    const-string v3, "left_pkg"

    const-string v4, "com.android.dialer"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1171
    .local v1, "leftPkg":Ljava/lang/String;
    const-string v3, "right_pkg"

    const-string v4, "com.android.camera"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1172
    .local v2, "rightPkg":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mRemovedPackage:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1173
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "left_pkg"

    const-string v5, "com.android.dialer"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1174
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "left_cls"

    const-string v5, "com.android.dialer.TwelveKeyDialer"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1176
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mRemovedPackage:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1177
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "right_pkg"

    const-string v5, "com.android.camera"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1178
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "right_cls"

    const-string v5, "com.android.camera.CameraActivity"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1180
    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mRemovedPackage:Ljava/lang/String;

    .line 1182
    .end local v0    # "customSettings":Landroid/content/SharedPreferences;
    .end local v1    # "leftPkg":Ljava/lang/String;
    .end local v2    # "rightPkg":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private handleQuickChargeSupported()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1240
    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mCurrentEngineState:I

    if-ne v2, v0, :cond_1

    .line 1241
    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mIsQuickCharging:Z

    .line 1242
    const-string v2, "KeyguardSmartUpdateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleQuickChargeSupported()--mIsQuickCharging = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mIsQuickCharging:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mIsQuickChargingOn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mIsQuickChargingOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mHostView:Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;

    iget-boolean v3, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mIsQuickCharging:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mIsQuickChargingOn:Z

    if-eqz v3, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->updateChargingMode(Z)V

    .line 1248
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 1243
    goto :goto_0

    .line 1245
    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mIsQuickCharging:Z

    .line 1246
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mHostView:Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;

    iget-boolean v3, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mIsQuickCharging:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mIsQuickChargingOn:Z

    if-eqz v3, :cond_2

    :goto_2
    invoke-virtual {v2, v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->updateChargingMode(Z)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method private handleShowSmartWake(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    .line 648
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mSmartCheckoutOn:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_4

    .line 649
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mCallback:Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mCallback:Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;->isOccluded()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    if-nez p1, :cond_3

    .line 650
    :cond_2
    const-string v0, "KeyguardSmartUpdateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show smart view ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mIsSmartWakeShowing:Z

    .line 652
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mKeyguardStateManager:Lcom/android/systemui/vivo/common/keyguard/KeyguardStateManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardStateManager;->setSmartWakeState(Z)V

    .line 653
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mHostView:Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->updateSmartWakeVisibility(Z)V

    .line 655
    :cond_3
    if-eqz p1, :cond_4

    .line 656
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 659
    :cond_4
    return-void
.end method

.method private handleSmartDismiss()V
    .locals 2

    .prologue
    .line 671
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mCallback:Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;->isOccluded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 672
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mCallback:Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;->dismiss(Z)V

    .line 674
    :cond_0
    return-void
.end method

.method private handleSuperPowerSave(Z)V
    .locals 6
    .param p1, "enter"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1041
    if-eqz p1, :cond_3

    .line 1042
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;

    move-result-object v3

    invoke-virtual {v3, v2, v2}, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->showLiveWallpaper(ZZ)V

    .line 1043
    invoke-static {}, Lcom/android/systemui/vivo/common/keyguard/KeyguardTheme;->getCurrentThemeId()I

    move-result v3

    if-nez v3, :cond_1

    .line 1045
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->requestUpdateWallpaper()V

    .line 1062
    :cond_0
    :goto_0
    return-void

    .line 1047
    :cond_1
    invoke-static {v2}, Lcom/android/systemui/vivo/common/keyguard/KeyguardTheme;->setCurrentThemeId(I)V

    .line 1048
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mHostView:Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;

    invoke-virtual {v3, v2}, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->updateMainView(I)V

    .line 1049
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mHostView:Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;

    iget-boolean v4, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mIsQuickCharging:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mIsQuickChargingOn:Z

    if-eqz v4, :cond_2

    :goto_1
    invoke-virtual {v3, v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->updateChargingMode(Z)V

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    .line 1052
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->reshowLiveWallpaperIfNeed()V

    .line 1053
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mContext:Landroid/content/Context;

    const-string v4, "lock_screen_theme_id"

    const/4 v5, -0x1

    invoke-static {v3, v4, v5}, Lcom/android/systemui/vivo/common/keyguard/utils/KeyguardUtils;->settingsGetInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 1054
    .local v0, "id":I
    if-nez v0, :cond_4

    .line 1055
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->requestUpdateWallpaper()V

    goto :goto_0

    .line 1056
    :cond_4
    invoke-static {}, Lcom/android/systemui/vivo/common/keyguard/KeyguardTheme;->getCurrentThemeId()I

    move-result v3

    if-eq v0, v3, :cond_0

    .line 1057
    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardTheme;->setCurrentThemeId(I)V

    .line 1058
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mHostView:Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;

    invoke-virtual {v3, v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->updateMainView(I)V

    .line 1059
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mHostView:Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;

    iget-boolean v4, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mIsQuickCharging:Z

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mIsQuickChargingOn:Z

    if-eqz v4, :cond_5

    :goto_2
    invoke-virtual {v3, v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->updateChargingMode(Z)V

    goto :goto_0

    :cond_5
    move v1, v2

    goto :goto_2
.end method

.method private handleThemeChanged()V
    .locals 1

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mHostView:Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->onThemeChanged()V

    .line 1066
    return-void
.end method

.method private handleTimeChanged(Z)V
    .locals 4
    .param p1, "force"    # Z

    .prologue
    .line 1025
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 1026
    .local v0, "day":I
    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mDayOfYear:I

    if-ne v1, v0, :cond_0

    if-eqz p1, :cond_1

    .line 1027
    :cond_0
    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mDayOfYear:I

    .line 1028
    const-string v1, "KeyguardSmartUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Day of year is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mKWM:Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->requestUpdateWallpaper()V

    .line 1032
    :cond_1
    return-void
.end method

.method private handleWallpaperChanged()V
    .locals 2

    .prologue
    .line 1005
    invoke-static {}, Lcom/android/systemui/vivo/common/keyguard/utils/KeyguardUtils;->isPowerSaveMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1006
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mKWM:Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->showLiveWallpaper(Z)V

    .line 1008
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mHostView:Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->updateWallpaper()V

    .line 1009
    return-void
.end method

.method private hasUnread()Z
    .locals 1

    .prologue
    .line 903
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mMsgShowing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mCallShowing:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 629
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->checkKeyguardVersion()V

    .line 632
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mContext:Landroid/content/Context;

    const-string v1, "android.intent.category.sps.HOME"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/systemui/vivo/common/keyguard/utils/KeyguardUtils;->settingsGetInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 633
    const-string v0, "KeyguardSmartUpdateMonitor"

    const-string v1, "my--reboot to super power save"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    invoke-direct {p0, v3}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->handleSuperPowerSave(Z)V

    .line 639
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->updateSmartCheckoutOn()V

    .line 640
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->updateSmartRemindOn()V

    .line 641
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->updateSmartUnlockOn()V

    .line 642
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->updateHallWindowOn()V

    .line 643
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->updateThemeZipId()V

    .line 644
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->updateChargingMode()V

    .line 645
    return-void

    .line 636
    :cond_0
    const-string v0, "KeyguardSmartUpdateMonitor"

    const-string v1, "my--updateThemeId()"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->updateThemeId()V

    goto :goto_0
.end method

.method private isCallStateIdle()Z
    .locals 1

    .prologue
    .line 899
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mPhoneState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDeviceProvisioned()Z
    .locals 1

    .prologue
    .line 1164
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v0

    return v0
.end method

.method private isMultiSimEnabled()Z
    .locals 1

    .prologue
    .line 1263
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->isSupportDualSIM()Z

    move-result v0

    return v0
.end method

.method private isNoSim()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1271
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->isMultiSimEnabled()Z

    move-result v0

    .line 1272
    .local v0, "isMultiSimEnabled":Z
    invoke-direct {p0, v4}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->isSimInserted(I)Z

    move-result v1

    .line 1273
    .local v1, "isSim1Inserted":Z
    if-eqz v0, :cond_2

    invoke-direct {p0, v3}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->isSimInserted(I)Z

    move-result v5

    if-eqz v5, :cond_2

    move v2, v3

    .line 1274
    .local v2, "isSim2Inserted":Z
    :goto_0
    const-string v5, "KeyguardSmartUpdateMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TH-TRUEMOVE ->  isNoSim isMultiSimEnabled = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , isSim1Inserted = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , isSim2Inserted = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1277
    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    if-nez v0, :cond_3

    if-nez v1, :cond_3

    :cond_1
    :goto_1
    return v3

    .end local v2    # "isSim2Inserted":Z
    :cond_2
    move v2, v4

    .line 1273
    goto :goto_0

    .restart local v2    # "isSim2Inserted":Z
    :cond_3
    move v3, v4

    .line 1277
    goto :goto_1
.end method

.method private isPlugged(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)Z
    .locals 2
    .param p1, "status"    # Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .prologue
    .line 1221
    iget v0, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->plugged:I

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSimInserted(I)Z
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 1282
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->isSIMInserted(I)Z

    move-result v0

    return v0
.end method

.method private isSubActive(I)Z
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 1291
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->isRadioOn(I)Z

    move-result v0

    return v0
.end method

.method private lockNow()V
    .locals 3

    .prologue
    .line 929
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 930
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->isCallStateIdle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 931
    const-string v0, "KeyguardSmartUpdateMonitor"

    const-string v1, "Call state is not idle, do keyguard lock later."

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    :goto_0
    return-void

    .line 935
    :cond_0
    const-string v0, "KeyguardSmartUpdateMonitor"

    const-string v1, "lockNow called"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mHaveHolsterWindow:Z

    if-eqz v0, :cond_1

    .line 937
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->handleShowHallWindow(Z)V

    .line 938
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mCallback:Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;->lockNow()V

    .line 943
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mCallback:Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;->show()V

    .line 944
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.action.BBK_LOCK_SCREEN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 940
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->goToSleep()V

    goto :goto_1
.end method

.method private readNode(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1185
    const-string v7, ""

    .line 1186
    .local v7, "value":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1187
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1188
    const-string v8, "KeyguardSmartUpdateMonitor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " may not exist."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v7

    .line 1216
    :cond_0
    :goto_0
    return-object v8

    .line 1192
    :cond_1
    const/4 v4, 0x0

    .line 1194
    .local v4, "is":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1195
    .end local v4    # "is":Ljava/io/FileInputStream;
    .local v5, "is":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/FileInputStream;->available()I

    move-result v6

    .line 1196
    .local v6, "len":I
    if-lez v6, :cond_2

    .line 1197
    new-array v0, v6, [B

    .line 1198
    .local v0, "buf":[B
    invoke-virtual {v5, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    .line 1199
    const-string v7, "..."

    .line 1200
    const-string v8, "KeyguardSmartUpdateMonitor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    const/4 v8, 0x0

    add-int/lit8 v9, v6, -0x1

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v8

    .line 1211
    if-eqz v5, :cond_0

    .line 1212
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1214
    :catch_0
    move-exception v2

    .line 1215
    .local v2, "ex":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1203
    .end local v0    # "buf":[B
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_2
    :try_start_3
    const-string v8, "KeyguardSmartUpdateMonitor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is empty"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1211
    if-eqz v5, :cond_3

    .line 1212
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_3
    :goto_1
    move-object v8, v7

    .line 1216
    goto :goto_0

    .line 1214
    :catch_1
    move-exception v2

    .line 1215
    .restart local v2    # "ex":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1206
    .end local v2    # "ex":Ljava/lang/Exception;
    .end local v5    # "is":Ljava/io/FileInputStream;
    .end local v6    # "len":I
    .restart local v4    # "is":Ljava/io/FileInputStream;
    :catch_2
    move-exception v1

    .line 1207
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_5
    const-string v8, "KeyguardSmartUpdateMonitor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "fail to read node: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1211
    if-eqz v4, :cond_4

    .line 1212
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :cond_4
    :goto_3
    move-object v8, v7

    .line 1216
    goto/16 :goto_0

    .line 1214
    :catch_3
    move-exception v2

    .line 1215
    .restart local v2    # "ex":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 1210
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 1211
    :goto_4
    if-eqz v4, :cond_5

    .line 1212
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 1216
    :cond_5
    :goto_5
    throw v8

    .line 1214
    :catch_4
    move-exception v2

    .line 1215
    .restart local v2    # "ex":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 1210
    .end local v2    # "ex":Ljava/lang/Exception;
    .end local v4    # "is":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v4    # "is":Ljava/io/FileInputStream;
    goto :goto_4

    .line 1206
    .end local v4    # "is":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    :catch_5
    move-exception v1

    move-object v4, v5

    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v4    # "is":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method private registerBroadcastReceiver()V
    .locals 4

    .prologue
    .line 290
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 291
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "com.vivo.smartwake.dismiss"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 292
    const-string v2, "com.crucialtec.btp.service.unclock"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 293
    const-string v2, "com.mediatek.lockscreen.action.WALLPAPER_SET.DONE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 294
    const-string v2, "intent.action.super_power_save_send"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 295
    const-string v2, "android.no.read.BBKLockScreen.INCALL"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 296
    const-string v2, "android.no.read.BBKLockScreen.MSG"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 297
    const-string v2, "intent.action.theme.changed"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 298
    const-string v2, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 299
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 300
    const-string v2, "android.intent.action.WALLPAPER_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 301
    const-string v2, "let.bbk.status.bar.lock.screen"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 302
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 303
    const-string v2, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 304
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 305
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 306
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 308
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 309
    .local v1, "packageIntentFilter":Landroid/content/IntentFilter;
    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 310
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 311
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 312
    return-void
.end method

.method private registerHallListener()V
    .locals 5

    .prologue
    .line 268
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mHallManager:Lcom/vivo/services/hallstate/HallManager;

    if-nez v1, :cond_0

    .line 269
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mContext:Landroid/content/Context;

    const-string v2, "hall_state_manager"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vivo/services/hallstate/HallManager;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mHallManager:Lcom/vivo/services/hallstate/HallManager;

    .line 271
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mHallManager:Lcom/vivo/services/hallstate/HallManager;

    if-eqz v1, :cond_1

    .line 272
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mHallManager:Lcom/vivo/services/hallstate/HallManager;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mHallListener:Lcom/vivo/services/hallstate/IHallEventListener;

    const-string v3, "KeyguardSmartUpdateMonitor"

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v3, v4}, Lcom/vivo/services/hallstate/HallManager;->registerHallStateListener(Lcom/vivo/services/hallstate/IHallEventListener;Ljava/lang/String;I)Z

    move-result v0

    .line 274
    .local v0, "result":Z
    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mCallbackFromReg:Z

    .line 275
    const-string v1, "KeyguardSmartUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerHallStateListener, result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    .end local v0    # "result":Z
    :goto_0
    return-void

    .line 277
    :cond_1
    const-string v1, "KeyguardSmartUpdateMonitor"

    const-string v2, "mHallManager is null."

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private registerNotificationCallback()V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->registerCallback(Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager$Callback;)V

    .line 287
    return-void
.end method

.method private registerOrUnregisterSmartMotion(I)V
    .locals 2
    .param p1, "action"    # I

    .prologue
    .line 677
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 678
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 679
    return-void
.end method

.method private registerUpdateMonitorCallback()V
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 283
    return-void
.end method

.method private declared-synchronized sendUEventMessageCorrectly(I)V
    .locals 6
    .param p1, "status"    # I

    .prologue
    .line 911
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mIgnoreUEvent:Z

    if-nez v1, :cond_0

    .line 912
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mIgnoreUEvent:Z

    .line 913
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mUEventStatus:[I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mUEventStatus:[I

    const/4 v4, 0x1

    const/4 v5, -0x1

    aput v5, v3, v4

    aput v5, v1, v2

    .line 914
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mUEventStatus:[I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 915
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 916
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 917
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 919
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 920
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x13

    const-wide/16 v4, 0x96

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 926
    .end local v0    # "msg":Landroid/os/Message;
    :goto_0
    monitor-exit p0

    return-void

    .line 922
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mUEventStatus:[I

    const/4 v2, 0x1

    aput p1, v1, v2

    .line 923
    const-string v1, "KeyguardSmartUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendUEventMessageCorrectly last event = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mUEventStatus:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", first event = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mUEventStatus:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 911
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private shouldShowInfo(I)Z
    .locals 4
    .param p1, "slotId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1286
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->isSimInserted(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->isSubActive(I)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 1287
    .local v0, "isSubActive":Z
    :goto_0
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mSIMAndNetworkHelper:Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    return v1

    .end local v0    # "isSubActive":Z
    :cond_0
    move v0, v2

    .line 1286
    goto :goto_0

    .restart local v0    # "isSubActive":Z
    :cond_1
    move v1, v2

    .line 1287
    goto :goto_1
.end method

.method private startFingerprintService()V
    .locals 4

    .prologue
    .line 1094
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "btp.intent.action.statr_service"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1095
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1099
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 1096
    :catch_0
    move-exception v0

    .line 1097
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "KeyguardSmartUpdateMonitor"

    const-string v3, "start finger print service failed."

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateCarrierInfo(ILjava/lang/String;)V
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "plmn"    # Ljava/lang/String;

    .prologue
    .line 1295
    const-string v2, ""

    .line 1296
    .local v2, "simName":Ljava/lang/String;
    const-string v0, ""

    .line 1297
    .local v0, "info":Ljava/lang/String;
    const-string v1, ""

    .line 1298
    .local v1, "simInfoShow":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->isMultiSimEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1299
    if-eqz p2, :cond_0

    .line 1300
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->getSimCardName(I)Ljava/lang/String;

    move-result-object v2

    .line 1301
    if-nez v2, :cond_4

    const-string v2, ""

    .line 1305
    :cond_0
    :goto_0
    if-nez p2, :cond_1

    const-string p2, ""

    .line 1307
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->isNoSim()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1308
    const-string v3, ""

    iput-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mSim0String:Ljava/lang/String;

    .line 1309
    const-string v3, ""

    iput-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mSim1String:Ljava/lang/String;

    .line 1313
    :cond_2
    :goto_1
    const-string v3, "KeyguardSmartUpdateMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TH-TRUEMOVE -> updateCarrierInfo slotId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", info:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1315
    if-nez p1, :cond_6

    .line 1316
    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mSim0String:Ljava/lang/String;

    .line 1317
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mSim0String:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u0008\u0008\u0008"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mSim1String:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mAllSimString:Ljava/lang/String;

    .line 1318
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mAllSimString:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->updateCarrierInfo(Ljava/lang/String;)V

    .line 1325
    :cond_3
    :goto_2
    return-void

    .line 1301
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1310
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->shouldShowInfo(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1311
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1319
    :cond_6
    const/4 v3, 0x1

    if-ne p1, v3, :cond_3

    .line 1320
    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mSim1String:Ljava/lang/String;

    .line 1321
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mSim0String:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u0008\u0008\u0008"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mSim1String:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mAllSimString:Ljava/lang/String;

    .line 1322
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mAllSimString:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->updateCarrierInfo(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private updateCarrierInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 1257
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mHostView:Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;

    if-eqz v0, :cond_0

    .line 1258
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mHostView:Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->onCarrierInfoChanged(Ljava/lang/String;)V

    .line 1260
    :cond_0
    return-void
.end method

.method private updateChargingMode()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1251
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mContext:Landroid/content/Context;

    const-string v3, "vivo_fast_charge_state"

    invoke-static {v0, v3, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/KeyguardUtils;->settingsGetInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mIsQuickChargingOn:Z

    .line 1252
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mHostView:Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;

    iget-boolean v3, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mIsQuickCharging:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mIsQuickChargingOn:Z

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->updateChargingMode(Z)V

    .line 1253
    const-string v0, "KeyguardSmartUpdateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateChargingMode()--mIsQuickChargingOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mIsQuickChargingOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsQuickCharging = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mIsQuickCharging:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1254
    return-void

    :cond_0
    move v0, v2

    .line 1251
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1252
    goto :goto_1
.end method

.method private updateHallWindowOn()V
    .locals 3

    .prologue
    .line 894
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mHostView:Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;

    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mHaveHolsterWindow:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->updateHallView(Z)V

    .line 895
    const-string v0, "KeyguardSmartUpdateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hall window is on = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mHaveHolsterWindow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    return-void
.end method

.method private updateKeyguardShortcutIcon()V
    .locals 1

    .prologue
    .line 1069
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$14;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$14;-><init>(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)V

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$14;->start()V

    .line 1090
    return-void
.end method

.method private updateSmartCheckoutOn()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 870
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mContext:Landroid/content/Context;

    const-string v3, "bbk_screen_disable_to_view_setting"

    invoke-static {v2, v3, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/KeyguardUtils;->settingsGetInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 871
    .local v0, "flag":I
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mSmartCheckoutOn:Z

    .line 872
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mHostView:Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;

    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mSmartCheckoutOn:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->updateSmartWakeView(Z)V

    .line 873
    const-string v1, "KeyguardSmartUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smart checkout is on = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mSmartCheckoutOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    return-void
.end method

.method private updateSmartCheckoutRegisterState()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const-wide/16 v4, 0x64

    const/4 v3, 0x6

    const/4 v2, 0x0

    .line 443
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mCallback:Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mCallback:Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 444
    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mScreenOn:Z

    if-eqz v1, :cond_1

    .line 445
    invoke-direct {p0, v6}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->registerOrUnregisterSmartMotion(I)V

    .line 446
    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mIsSmartWakeShowing:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mShowing:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mCallback:Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;->isOccluded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 447
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 448
    .local v0, "msg":Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 449
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 467
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 452
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->registerOrUnregisterSmartMotion(I)V

    .line 453
    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mIsSmartWakeShowing:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mSmartCheckoutOn:Z

    if-eqz v1, :cond_0

    .line 454
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 455
    .restart local v0    # "msg":Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 456
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 460
    .end local v0    # "msg":Landroid/os/Message;
    :cond_2
    invoke-direct {p0, v6}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->registerOrUnregisterSmartMotion(I)V

    .line 461
    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mIsSmartWakeShowing:Z

    if-eqz v1, :cond_0

    .line 462
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 463
    .restart local v0    # "msg":Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 464
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private updateSmartRemindOn()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 877
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mContext:Landroid/content/Context;

    const-string v3, "bbk_smart_remind"

    invoke-static {v2, v3, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/KeyguardUtils;->settingsGetInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 878
    .local v0, "flag":I
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mSmartRemindOn:Z

    .line 879
    const-string v1, "KeyguardSmartUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smart remind is on = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mSmartRemindOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    return-void
.end method

.method private updateSmartUnlockOn()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 883
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mContext:Landroid/content/Context;

    const-string v3, "bbk_smart_unlock"

    invoke-static {v2, v3, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/KeyguardUtils;->settingsGetInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 884
    .local v0, "flag":I
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mSmartUnlockOn:Z

    .line 885
    const-string v1, "KeyguardSmartUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smart unlock is on = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mSmartUnlockOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    return-void
.end method

.method private updateThemeId()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 848
    invoke-static {}, Lcom/android/systemui/vivo/common/keyguard/utils/KeyguardUtils;->isCmccEntry()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_0

    .line 849
    const-string v1, "KeyguardSmartUpdateMonitor"

    const-string v2, "device is not provisioned"

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    :goto_0
    return-void

    .line 853
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mContext:Landroid/content/Context;

    const-string v2, "lock_screen_theme_id"

    invoke-static {v1, v2, v3}, Lcom/android/systemui/vivo/common/keyguard/utils/KeyguardUtils;->settingsGetInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 854
    .local v0, "id":I
    if-ne v0, v3, :cond_1

    .line 855
    invoke-static {}, Lcom/android/systemui/vivo/common/keyguard/KeyguardTheme;->getDefaultThemeId()I

    move-result v0

    .line 856
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mContext:Landroid/content/Context;

    const-string v2, "lock_screen_theme_id"

    invoke-static {v1, v2, v0}, Lcom/android/systemui/vivo/common/keyguard/utils/KeyguardUtils;->putIntToSettings(Landroid/content/Context;Ljava/lang/String;I)V

    .line 858
    :cond_1
    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardTheme;->setCurrentThemeId(I)V

    .line 859
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mHostView:Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;

    invoke-virtual {v1, v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->updateMainView(I)V

    .line 860
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mHostView:Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;

    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mIsQuickCharging:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mIsQuickChargingOn:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->updateChargingMode(Z)V

    .line 862
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mAllSimString:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 863
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mAllSimString:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->updateCarrierInfo(Ljava/lang/String;)V

    .line 866
    :cond_2
    const-string v1, "KeyguardSmartUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "theme id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 860
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private updateThemeZipId()V
    .locals 3

    .prologue
    const/16 v2, 0xe

    .line 1157
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mContext:Landroid/content/Context;

    const-string v1, "lock_screen_zip_id"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/KeyguardUtils;->settingsGetString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mThemeZipId:Ljava/lang/String;

    .line 1158
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1159
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1160
    const-string v0, "KeyguardSmartUpdateMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "theme zip id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mThemeZipId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1161
    return-void
.end method

.method private wakeUp()V
    .locals 4

    .prologue
    .line 948
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mPM:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 949
    return-void
.end method


# virtual methods
.method public handleShowHallWindow(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 662
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mHaveHolsterWindow:Z

    if-eqz v0, :cond_0

    .line 663
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mKeyguardStateManager:Lcom/android/systemui/vivo/common/keyguard/KeyguardStateManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardStateManager;->setForceUpdate(Z)V

    .line 664
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mIsHallWindowShowing:Z

    .line 665
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mKeyguardStateManager:Lcom/android/systemui/vivo/common/keyguard/KeyguardStateManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardStateManager;->setHallWindowState(Z)V

    .line 666
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mHostView:Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->updateHallWindowVisibility(Z)V

    .line 668
    :cond_0
    return-void
.end method

.method public isHallClosed()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 889
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mContext:Landroid/content/Context;

    const-string v4, "protect_lock"

    invoke-static {v3, v4, v2}, Lcom/android/systemui/vivo/common/keyguard/utils/KeyguardUtils;->settingsGetInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 890
    .local v0, "on":I
    iget-boolean v3, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mIsHallClosed:Z

    if-eqz v3, :cond_0

    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public onKeyguardNotificationAppear(Z)V
    .locals 2
    .param p1, "doNotChangeKeyguardBackground"    # Z

    .prologue
    .line 1106
    const-string v0, "KeyguardSmartUpdateMonitor"

    const-string v1, "notification appear"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mHostView:Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->updateNotification(ZZ)V

    .line 1108
    return-void
.end method

.method public onKeyguardNotificationClick(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "clickRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 1142
    const-string v0, "KeyguardSmartUpdateMonitor"

    const-string v1, "KeyguardNotificationClick"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1143
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mHostView:Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->notificationClicked(Ljava/lang/Runnable;)V

    .line 1144
    return-void
.end method

.method public onKeyguardNotificationDisappear(Z)V
    .locals 3
    .param p1, "doNotChangeKeyguardBackground"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1112
    const-string v0, "KeyguardSmartUpdateMonitor"

    const-string v1, "notification disappear"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    if-nez p1, :cond_0

    .line 1114
    invoke-virtual {p0, v2}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->onMissedCallNotificationChanged(Z)V

    .line 1115
    invoke-virtual {p0, v2}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->onUnreadSmsNotificationChanged(Z)V

    .line 1117
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mHostView:Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->updateNotification(ZZ)V

    .line 1118
    return-void
.end method

.method public onMissedCallNotificationChanged(Z)V
    .locals 4
    .param p1, "has"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1122
    const-string v0, "KeyguardSmartUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "has missed call = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", screen on: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mScreenOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mCallShowing:Z

    .line 1124
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mHostView:Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mMsgShowing:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mMsgCount:I

    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mCallShowing:Z

    if-eqz v3, :cond_0

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mCallCount:I

    :cond_0
    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->updateUnreadInfo(II)V

    .line 1125
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mScreenOn:Z

    if-nez v0, :cond_1

    .line 1126
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->registerOrUnregisterSmartMotion(I)V

    .line 1128
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 1124
    goto :goto_0
.end method

.method public onUnreadSmsNotificationChanged(Z)V
    .locals 4
    .param p1, "has"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1132
    const-string v0, "KeyguardSmartUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "has unread sms = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", screen on: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mScreenOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mMsgShowing:Z

    .line 1134
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mHostView:Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mMsgShowing:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mMsgCount:I

    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mCallShowing:Z

    if-eqz v3, :cond_0

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mCallCount:I

    :cond_0
    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->updateUnreadInfo(II)V

    .line 1135
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mScreenOn:Z

    if-nez v0, :cond_1

    .line 1136
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->registerOrUnregisterSmartMotion(I)V

    .line 1138
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 1134
    goto :goto_0
.end method

.method public parseXmlDate()V
    .locals 3

    .prologue
    .line 1147
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mParseManager:Lcom/android/systemui/vivo/common/keyguard/xmlParse/KeyguardParseManager;

    if-nez v0, :cond_0

    .line 1148
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/xmlParse/KeyguardParseManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/keyguard/xmlParse/KeyguardParseManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mParseManager:Lcom/android/systemui/vivo/common/keyguard/xmlParse/KeyguardParseManager;

    .line 1151
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mParseManager:Lcom/android/systemui/vivo/common/keyguard/xmlParse/KeyguardParseManager;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mThemeZipId:Ljava/lang/String;

    invoke-static {}, Lcom/android/systemui/vivo/common/keyguard/KeyguardTheme;->getCurrentThemeId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/vivo/common/keyguard/xmlParse/KeyguardParseManager;->InitParseManager(Ljava/lang/String;I)V

    .line 1152
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mParseManager:Lcom/android/systemui/vivo/common/keyguard/xmlParse/KeyguardParseManager;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/xmlParse/KeyguardParseManager;->loadData()Lcom/android/systemui/vivo/common/keyguard/xmlParse/SkinData;

    .line 1153
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->mHostView:Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->updateSkin()V

    .line 1154
    return-void
.end method
