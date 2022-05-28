.class public Lcom/android/settings/applications/InstalledAppDetails;
.super Lcom/vivo/settings/VivoFragment;
.source "InstalledAppDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/android/settings/applications/ApplicationsState$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/InstalledAppDetails$MoveToItem;,
        Lcom/android/settings/applications/InstalledAppDetails$MyAdapter;,
        Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;,
        Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;,
        Lcom/android/settings/applications/InstalledAppDetails$PremiumSmsSelectionListener;,
        Lcom/android/settings/applications/InstalledAppDetails$SdCardSpaceTask;,
        Lcom/android/settings/applications/InstalledAppDetails$PackageMoveObserver;,
        Lcom/android/settings/applications/InstalledAppDetails$ClearCacheObserver;,
        Lcom/android/settings/applications/InstalledAppDetails$ClearUserDataObserver;
    }
.end annotation


# static fields
.field private static ACTION_NOTIFICATION_STATE_CHANGE:Ljava/lang/String; = null

.field public static final ARG_PACKAGE_NAME:Ljava/lang/String; = "package"

.field private static final CLEAR_CACHE:I = 0x3

.field private static final CLEAR_USER_DATA:I = 0x1

.field private static final DLG_APP_NOT_FOUND:I = 0x3

.field private static final DLG_BASE:I = 0x0

.field private static final DLG_CANNOT_CLEAR_DATA:I = 0x4

.field private static final DLG_CLEAR_DATA:I = 0x1

.field private static final DLG_DISABLE:I = 0x7

.field private static final DLG_DISABLE_NOTIFICATIONS:I = 0x8

.field private static final DLG_FACTORY_RESET:I = 0x2

.field private static final DLG_FORCE_STOP:I = 0x5

.field private static final DLG_INSERT_SD_CARD:I = 0x9

.field private static final DLG_LIMIT_INTERNAL_SPACE:I = 0xb

.field private static final DLG_MOVE_FAILED:I = 0x6

.field private static final DLG_MOVE_TO:I = 0xf

.field private static final DLG_NOT_ENOUGH_SD_SPACE:I = 0xa

.field private static final DLG_NOT_ENOUGH_U_DISK_SPACE:I = 0xe

.field private static final DLG_SHARED_SD_CARD:I = 0xc

.field private static final DLG_SPECIAL_DISABLE:I = 0xd

.field private static final OP_FAILED:I = 0x2

.field private static final OP_SUCCESSFUL:I = 0x1

.field private static final PACKAGE_MOVE:I = 0x4

.field private static final PREFS_NAME:Ljava/lang/String; = "settings_info"

.field private static final REFRESH_MOVE_BTN:I = 0x5

.field public static final REQUEST_MANAGE_SPACE:I = 0x2

.field public static final REQUEST_UNINSTALL:I = 0x1

.field private static final SIZE_INVALID:I = -0x1

.field private static final STORED_EMMC_SIZE:Ljava/lang/String; = "stored_emmc_size"

.field private static final TAG:Ljava/lang/String; = "InstalledAppDetails"

.field public static final UNINSTALL_ALL_USERS_MENU:I = 0x1

.field private static isTFSupport:Z

.field private static final localLOGV:Z

.field private static mIsEmulate:Z

.field private static multiTaskApp:[Ljava/lang/String;


# instance fields
.field private DELAY_TIME:J

.field private checkChangedFlag:Z

.field dataSpaceEnough:Z

.field private loadingDialog:Landroid/app/ProgressDialog;

.field private mActivitiesButton:Landroid/widget/Button;

.field private mAppControlRestricted:Z

.field private mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

.field private mAppSize:Landroid/widget/TextView;

.field private mAppVersion:Landroid/widget/TextView;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mApplicationNofifiData:Lcom/vivo/settings/applications/ApplicationNotifiData;

.field private mAskCompatibilityCB:Landroid/widget/CheckBox;

.field private mAsyncImageLoader:Lcom/vivo/settings/AsyncImageLoader;

.field private mCacheSize:Landroid/widget/TextView;

.field private mCachedImage:Landroid/graphics/drawable/Drawable;

.field private mCanBeOnSdCardChecker:Lcom/android/settings/applications/CanBeOnSdCardChecker;

.field private mCanClearData:Z

.field private final mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

.field private mClearCacheButton:Landroid/widget/Button;

.field private mClearCacheObserver:Lcom/android/settings/applications/InstalledAppDetails$ClearCacheObserver;

.field private mClearDataButton:Landroid/widget/Button;

.field private mClearDataObserver:Lcom/android/settings/applications/InstalledAppDetails$ClearUserDataObserver;

.field private mComputingStr:Ljava/lang/CharSequence;

.field private mContext:Landroid/content/Context;

.field private mDataFileStats:Landroid/os/StatFs;

.field private mDataFreeStorage:J

.field private mDataSize:Landroid/widget/TextView;

.field private mDisableAfterUninstall:Z

.field private mDisableNotification:Landroid/app/Dialog;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mEnableCompatibilityCB:Landroid/widget/CheckBox;

.field private mExtStoragePath:Ljava/lang/String;

.field private mExternalCodeSize:Landroid/widget/TextView;

.field private mExternalCodeSizePrefix:Landroid/widget/TextView;

.field private mExternalDataSize:Landroid/widget/TextView;

.field private mExternalDataSizePrefix:Landroid/widget/TextView;

.field private mForceStopButton:Landroid/widget/Button;

.field private mHandler:Landroid/os/Handler;

.field private mHaveSizes:Z

.field private mHomePackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInitialized:Z

.field private mIntent:Landroid/content/Intent;

.field private mInvalidSizeStr:Ljava/lang/CharSequence;

.field private mLastCacheSize:J

.field private mLastCodeSize:J

.field private mLastDataSize:J

.field private mLastExternalCodeSize:J

.field private mLastExternalDataSize:J

.field private mLastTotalSize:J

.field private mLaunchButton:Landroid/widget/Button;

.field private mMoreControlButtons:Landroid/view/View;

.field private mMoveAppButton:Landroid/widget/Button;

.field private mMoveInProgress:Z

.field private mMoveToAdapter:Lcom/android/settings/applications/InstalledAppDetails$MyAdapter;

.field private mMoveToClick:Landroid/content/DialogInterface$OnClickListener;

.field private mMoveToItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/InstalledAppDetails$MoveToItem;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationReceiver:Landroid/content/BroadcastReceiver;

.field private mNotificationSwitch:Landroid/widget/CompoundButton;

.field private mPackageInfo:Landroid/content/pm/PackageInfo;

.field private mPackageMoveObserver:Lcom/android/settings/applications/InstalledAppDetails$PackageMoveObserver;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mRootView:Landroid/view/View;

.field mSDStorageManager:Landroid/os/storage/StorageManager;

.field private mScreenCompatSection:Landroid/view/View;

.field private mSdCardSpaceTask:Lcom/android/settings/applications/InstalledAppDetails$SdCardSpaceTask;

.field private mSession:Lcom/android/settings/applications/ApplicationsState$Session;

.field private mShowUninstalled:Z

.field private mSmsManager:Lcom/android/internal/telephony/ISms;

.field private mSoftReference:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mSpecialDisableButton:Landroid/widget/Button;

.field private mStartTime:J

.field private mState:Lcom/android/settings/applications/ApplicationsState;

.field mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field mStorageManagerWrapper:Lcom/vivo/settings/StorageManagerWrapper;

.field private mTotalSize:Landroid/widget/TextView;

.field private mUninstallButton:Landroid/widget/Button;

.field private mUpdatedSysApp:Z

.field private mUsbManager:Landroid/hardware/usb/IUsbManager;

.field private mUserManager:Landroid/os/UserManager;

.field moveDisable:Z

.field private moveFlag:I

.field sdSpaceEnough:Z

.field private sdStatus:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 245
    sput-boolean v2, Lcom/android/settings/applications/InstalledAppDetails;->isTFSupport:Z

    .line 255
    sput-boolean v2, Lcom/android/settings/applications/InstalledAppDetails;->mIsEmulate:Z

    .line 265
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.android.mms"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "com.android.VideoPlayer"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.android.BBKVivoVideo"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.android.providers.media"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.vivo.video"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.android.notes"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.android.bbkmusic"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/applications/InstalledAppDetails;->multiTaskApp:[Ljava/lang/String;

    .line 275
    const-string v0, "com.vivo.action.NOTIFICATION_STATE_CHANGE"

    sput-object v0, Lcom/android/settings/applications/InstalledAppDetails;->ACTION_NOTIFICATION_STATE_CHANGE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    .line 127
    invoke-direct {p0}, Lcom/vivo/settings/VivoFragment;-><init>()V

    .line 152
    iput-boolean v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveInProgress:Z

    .line 153
    iput-boolean v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    .line 158
    iput-boolean v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mCanClearData:Z

    .line 159
    iput-boolean v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppControlRestricted:Z

    .line 187
    iput-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mCachedImage:Landroid/graphics/drawable/Drawable;

    .line 191
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    .line 195
    iput-boolean v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHaveSizes:Z

    .line 196
    iput-wide v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastCodeSize:J

    .line 197
    iput-wide v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastDataSize:J

    .line 198
    iput-wide v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastExternalCodeSize:J

    .line 199
    iput-wide v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastExternalDataSize:J

    .line 200
    iput-wide v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastCacheSize:J

    .line 201
    iput-wide v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastTotalSize:J

    .line 239
    iput-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSDStorageManager:Landroid/os/storage/StorageManager;

    .line 240
    iput-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mStorageManagerWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    .line 241
    iput-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->sdStatus:Ljava/lang/String;

    .line 242
    iput-boolean v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->sdSpaceEnough:Z

    .line 243
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->DELAY_TIME:J

    .line 244
    iput-boolean v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->dataSpaceEnough:Z

    .line 246
    iput-boolean v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->moveDisable:Z

    .line 247
    iput-wide v8, p0, Lcom/android/settings/applications/InstalledAppDetails;->mStartTime:J

    .line 251
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveToItems:Ljava/util/ArrayList;

    .line 254
    iput-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->loadingDialog:Landroid/app/ProgressDialog;

    .line 276
    new-instance v0, Lcom/android/settings/applications/InstalledAppDetails$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/InstalledAppDetails$1;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHandler:Landroid/os/Handler;

    .line 690
    new-instance v0, Lcom/android/settings/applications/InstalledAppDetails$2;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/InstalledAppDetails$2;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 1940
    new-instance v0, Lcom/android/settings/applications/InstalledAppDetails$4;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/InstalledAppDetails$4;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    .line 2000
    iput-boolean v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->checkChangedFlag:Z

    .line 2236
    new-instance v0, Lcom/android/settings/applications/InstalledAppDetails$5;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/InstalledAppDetails$5;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mNotificationReceiver:Landroid/content/BroadcastReceiver;

    .line 2256
    iput-wide v8, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDataFreeStorage:J

    .line 2540
    new-instance v0, Lcom/android/settings/applications/InstalledAppDetails$6;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/InstalledAppDetails$6;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveToClick:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/InstalledAppDetails;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/InstalledAppDetails;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails;->processClearMsg(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/applications/InstalledAppDetails;)Lcom/android/settings/applications/ApplicationsState$AppEntry;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/InstalledAppDetails;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    return-object v0
.end method

.method static synthetic access$1000()Z
    .locals 1

    .prologue
    .line 127
    sget-boolean v0, Lcom/android/settings/applications/InstalledAppDetails;->isTFSupport:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/settings/applications/InstalledAppDetails;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/InstalledAppDetails;
    .param p1, "x1"    # Z

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails;->getSDStorageStates(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/settings/applications/InstalledAppDetails;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/InstalledAppDetails;

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getFreeDataSpace()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/settings/applications/InstalledAppDetails;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/InstalledAppDetails;

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->initiateClearUserData()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings/applications/InstalledAppDetails;Ljava/lang/String;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/InstalledAppDetails;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .prologue
    .line 127
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings/applications/InstalledAppDetails;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/InstalledAppDetails;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 127
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/InstalledAppDetails;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings/applications/InstalledAppDetails;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/InstalledAppDetails;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails;->forceStopPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800()Z
    .locals 1

    .prologue
    .line 127
    sget-boolean v0, Lcom/android/settings/applications/InstalledAppDetails;->mIsEmulate:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/settings/applications/InstalledAppDetails;I)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/InstalledAppDetails;
    .param p1, "x1"    # I

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails;->getMoveErrMsg(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/applications/InstalledAppDetails;)Lcom/android/settings/applications/ApplicationsState;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/InstalledAppDetails;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mState:Lcom/android/settings/applications/ApplicationsState;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/InstalledAppDetails;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDisableNotification:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/settings/applications/InstalledAppDetails;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/InstalledAppDetails;
    .param p1, "x1"    # Landroid/app/Dialog;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDisableNotification:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/widget/CompoundButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/InstalledAppDetails;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/settings/applications/InstalledAppDetails;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/InstalledAppDetails;
    .param p1, "x1"    # Z

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails;->setNotificationsEnabled(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/settings/applications/InstalledAppDetails;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/InstalledAppDetails;
    .param p1, "x1"    # Z

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/InstalledAppDetails;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/settings/applications/InstalledAppDetails;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/InstalledAppDetails;

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->refreshButtons()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/settings/applications/InstalledAppDetails;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/InstalledAppDetails;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveToItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/settings/applications/InstalledAppDetails;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/InstalledAppDetails;

    .prologue
    .line 127
    iget v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->moveFlag:I

    return v0
.end method

.method static synthetic access$2702(Lcom/android/settings/applications/InstalledAppDetails;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/InstalledAppDetails;
    .param p1, "x1"    # I

    .prologue
    .line 127
    iput p1, p0, Lcom/android/settings/applications/InstalledAppDetails;->moveFlag:I

    return p1
.end method

.method static synthetic access$2800(Lcom/android/settings/applications/InstalledAppDetails;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/InstalledAppDetails;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 127
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    return-void
.end method

.method static synthetic access$2902(Lcom/android/settings/applications/InstalledAppDetails;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/InstalledAppDetails;
    .param p1, "x1"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveInProgress:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/applications/InstalledAppDetails;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/InstalledAppDetails;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails;->processMoveMsg(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/settings/applications/InstalledAppDetails;)Lcom/android/settings/applications/InstalledAppDetails$PackageMoveObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/InstalledAppDetails;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageMoveObserver:Lcom/android/settings/applications/InstalledAppDetails$PackageMoveObserver;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/applications/InstalledAppDetails;)Ljava/lang/ref/SoftReference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/InstalledAppDetails;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSoftReference:Ljava/lang/ref/SoftReference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/applications/InstalledAppDetails;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/settings/applications/InstalledAppDetails;

    .prologue
    .line 127
    iget-wide v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mStartTime:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/android/settings/applications/InstalledAppDetails;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/InstalledAppDetails;
    .param p1, "x1"    # J

    .prologue
    .line 127
    iput-wide p1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mStartTime:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/InstalledAppDetails;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/InstalledAppDetails;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/applications/InstalledAppDetails;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/InstalledAppDetails;

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->initDataButtons()V

    return-void
.end method

.method private checkForceStop()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 1957
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.vivo.minscreen"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1959
    :cond_0
    const-string v0, "InstalledAppDetails"

    const-string v2, "checkForceStop --- mDpm.packageHasActiveAdmins(mPackageInfo.packageName"

    invoke-static {v0, v2}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1961
    invoke-direct {p0, v6}, Lcom/android/settings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    .line 1977
    :goto_0
    return-void

    .line 1962
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x200000

    and-int/2addr v0, v2

    if-nez v0, :cond_2

    .line 1965
    const-string v0, "InstalledAppDetails"

    const-string v2, "checkForceStop,(mAppEntry.info.flags&ApplicationInfo.FLAG_STOPPED) == 0"

    invoke-static {v0, v2}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1966
    invoke-direct {p0, v5}, Lcom/android/settings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    goto :goto_0

    .line 1968
    :cond_2
    const-string v0, "InstalledAppDetails"

    const-string v2, "checkForceStop --- sendOrderedBroadcast"

    invoke-static {v0, v2}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1969
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.QUERY_PACKAGE_RESTART"

    const-string v2, "package"

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v4, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1971
    .local v1, "intent":Landroid/content/Intent;
    const-string v0, "android.intent.extra.PACKAGES"

    new-array v2, v5, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v4, v2, v6

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1972
    const-string v0, "android.intent.extra.UID"

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1973
    const-string v0, "android.intent.extra.user_handle"

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1974
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    move-object v5, v3

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/app/Activity;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private forceStopPackage(Ljava/lang/String;)V
    .locals 11
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1914
    const-string v8, "InstalledAppDetails"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " to force stop pkg name is : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1915
    sget-object v1, Lcom/android/settings/applications/InstalledAppDetails;->multiTaskApp:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v7, v1, v3

    .line 1916
    .local v7, "pkgeName":Ljava/lang/String;
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1917
    new-instance v5, Landroid/content/Intent;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "android.intent.action.TO_FORCE_STOP_PACKAGE."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1918
    .local v5, "mIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1920
    const-wide/16 v8, 0x12c

    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1929
    .end local v5    # "mIntent":Landroid/content/Intent;
    .end local v7    # "pkgeName":Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string v9, "activity"

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1931
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 1932
    iget-object v8, p0, Lcom/android/settings/applications/InstalledAppDetails;->mState:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v8, p1}, Lcom/android/settings/applications/ApplicationsState;->invalidatePackage(Ljava/lang/String;)V

    .line 1933
    iget-object v8, p0, Lcom/android/settings/applications/InstalledAppDetails;->mState:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v8, p1}, Lcom/android/settings/applications/ApplicationsState;->getEntry(Ljava/lang/String;)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v6

    .line 1934
    .local v6, "newEnt":Lcom/android/settings/applications/ApplicationsState$AppEntry;
    if-eqz v6, :cond_1

    .line 1935
    iput-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 1937
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->checkForceStop()V

    .line 1938
    return-void

    .line 1921
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v6    # "newEnt":Lcom/android/settings/applications/ApplicationsState$AppEntry;
    .restart local v5    # "mIntent":Landroid/content/Intent;
    .restart local v7    # "pkgeName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1923
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string v8, "InstalledAppDetails"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "InterruptedException is : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1915
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .end local v5    # "mIntent":Landroid/content/Intent;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private getEmmcSize()F
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2400
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2401
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 2410
    :goto_0
    return v1

    .line 2404
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "settings_info"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 2405
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "stored_emmc_size"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2406
    const-string v3, "stored_emmc_size"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    goto :goto_0

    .line 2408
    :cond_1
    invoke-static {}, Lcom/android/settings/AppFeature;->getIntTotalSpaceSize()F

    move-result v1

    .line 2409
    .local v1, "emmcSize":F
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "stored_emmc_size"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private getFreeDataSpace()Z
    .locals 12

    .prologue
    const/16 v11, 0x14

    const/4 v10, 0x0

    .line 2258
    const/4 v0, 0x0

    .line 2259
    .local v0, "apkDir":Ljava/lang/String;
    const/4 v1, 0x0

    .line 2260
    .local v1, "apkFile":Ljava/io/File;
    const-wide/16 v2, 0x0

    .line 2261
    .local v2, "apkSize":J
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v6, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 2262
    new-instance v1, Ljava/io/File;

    .end local v1    # "apkFile":Ljava/io/File;
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2263
    .restart local v1    # "apkFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    shr-long v2, v6, v11

    .line 2264
    const-string v6, "InstalledAppDetails"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "get apk Size is : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2265
    const-wide/16 v4, 0x0

    .line 2266
    .local v4, "freeStorage":J
    new-instance v6, Landroid/os/StatFs;

    const-string v7, "/data"

    invoke-direct {v6, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDataFileStats:Landroid/os/StatFs;

    .line 2267
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDataFileStats:Landroid/os/StatFs;

    const-string v7, "/data"

    invoke-virtual {v6, v7}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 2268
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDataFileStats:Landroid/os/StatFs;

    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v6

    iget-object v8, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDataFileStats:Landroid/os/StatFs;

    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v8

    mul-long v4, v6, v8

    .line 2270
    shr-long/2addr v4, v11

    .line 2271
    iput-wide v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDataFreeStorage:J

    .line 2272
    const-string v6, "InstalledAppDetails"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "data free Storage is : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2274
    invoke-direct {p0, v4, v5}, Lcom/android/settings/applications/InstalledAppDetails;->isFreeStorageLimited(J)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2275
    iput-boolean v10, p0, Lcom/android/settings/applications/InstalledAppDetails;->dataSpaceEnough:Z

    .line 2281
    :goto_0
    const-string v6, "InstalledAppDetails"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " dataSpaceEnough is : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/settings/applications/InstalledAppDetails;->dataSpaceEnough:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2282
    iget-boolean v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->dataSpaceEnough:Z

    return v6

    .line 2276
    :cond_0
    sub-long v6, v4, v2

    invoke-direct {p0, v6, v7}, Lcom/android/settings/applications/InstalledAppDetails;->isFreeStorageWarning(J)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2277
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->dataSpaceEnough:Z

    goto :goto_0

    .line 2279
    :cond_1
    iput-boolean v10, p0, Lcom/android/settings/applications/InstalledAppDetails;->dataSpaceEnough:Z

    goto :goto_0
.end method

.method private getMoveErrMsg(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "errCode"    # I

    .prologue
    const v1, 0x7f0b0876

    .line 400
    packed-switch p1, :pswitch_data_0

    .line 420
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 402
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b0396

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 404
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b0397

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 406
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b0398

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 408
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b0399

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 410
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b039a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 414
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 400
    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getPremiumSmsPermission(Ljava/lang/String;)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2027
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSmsManager:Lcom/android/internal/telephony/ISms;

    if-eqz v0, :cond_0

    .line 2028
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSmsManager:Lcom/android/internal/telephony/ISms;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISms;->getPremiumSmsPermission(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2033
    :goto_0
    return v0

    .line 2030
    :catch_0
    move-exception v0

    .line 2033
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSDStorageStates(Z)Z
    .locals 20
    .param p1, "isSdCard"    # Z

    .prologue
    .line 2286
    const-string v11, "InstalledAppDetails"

    const-string v14, " to call getSDStorageStates !!"

    invoke-static {v11, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2287
    const/4 v10, 0x1

    .line 2288
    .local v10, "ret":Z
    const-string v11, "InstalledAppDetails"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getSDStorageStates isSdCard: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " isTFSupport:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-boolean v15, Lcom/android/settings/applications/InstalledAppDetails;->isTFSupport:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2289
    if-nez p1, :cond_2

    .line 2291
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/applications/InstalledAppDetails;->mStorageManagerWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/applications/InstalledAppDetails;->mStorageManagerWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    invoke-virtual {v14}, Lcom/vivo/settings/StorageManagerWrapper;->getInternalStoragePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/vivo/settings/StorageManagerWrapper;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/settings/applications/InstalledAppDetails;->sdStatus:Ljava/lang/String;

    .line 2296
    :goto_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/applications/InstalledAppDetails;->sdStatus:Ljava/lang/String;

    const-string v14, "mounted_ro"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 2297
    const-string v11, "mounted"

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/settings/applications/InstalledAppDetails;->sdStatus:Ljava/lang/String;

    .line 2299
    :cond_0
    const-string v11, "InstalledAppDetails"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "  status = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/applications/InstalledAppDetails;->sdStatus:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2300
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/applications/InstalledAppDetails;->sdStatus:Ljava/lang/String;

    const-string v14, "mounted"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 2301
    const/4 v2, 0x0

    .line 2302
    .local v2, "apkDir":Ljava/lang/String;
    const/4 v3, 0x0

    .line 2303
    .local v3, "apkFile":Ljava/io/File;
    const-wide/16 v4, 0x0

    .line 2304
    .local v4, "apkSize":J
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    if-eqz v11, :cond_1

    .line 2305
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v11, v11, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v11, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 2306
    new-instance v3, Ljava/io/File;

    .end local v3    # "apkFile":Ljava/io/File;
    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2307
    .restart local v3    # "apkFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v14

    const/16 v11, 0x14

    shr-long v4, v14, v11

    .line 2308
    const-string v11, "InstalledAppDetails"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "apkSize is : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2310
    :cond_1
    if-nez p1, :cond_6

    .line 2313
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/applications/InstalledAppDetails;->mStorageManagerWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/applications/InstalledAppDetails;->mStorageManagerWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    invoke-virtual {v14}, Lcom/vivo/settings/StorageManagerWrapper;->getInternalStoragePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/vivo/settings/StorageManagerWrapper;->getAvailSize(Ljava/lang/String;)J

    move-result-wide v8

    .line 2314
    .local v8, "freeStorage":J
    const-string v11, "InstalledAppDetails"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "internal sd card freeStorage is : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2315
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 2316
    .local v12, "start":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 2317
    .local v6, "end":J
    :goto_1
    const-wide/16 v14, 0x0

    cmp-long v11, v8, v14

    if-gtz v11, :cond_3

    sub-long v14, v6, v12

    const-wide/16 v16, 0x7d0

    cmp-long v11, v14, v16

    if-gez v11, :cond_3

    .line 2319
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/applications/InstalledAppDetails;->mStorageManagerWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/applications/InstalledAppDetails;->mStorageManagerWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    invoke-virtual {v14}, Lcom/vivo/settings/StorageManagerWrapper;->getInternalStoragePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/vivo/settings/StorageManagerWrapper;->getAvailSize(Ljava/lang/String;)J

    move-result-wide v8

    .line 2320
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    goto :goto_1

    .line 2294
    .end local v2    # "apkDir":Ljava/lang/String;
    .end local v3    # "apkFile":Ljava/io/File;
    .end local v4    # "apkSize":J
    .end local v6    # "end":J
    .end local v8    # "freeStorage":J
    .end local v12    # "start":J
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/applications/InstalledAppDetails;->mStorageManagerWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/applications/InstalledAppDetails;->mStorageManagerWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    invoke-virtual {v14}, Lcom/vivo/settings/StorageManagerWrapper;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/vivo/settings/StorageManagerWrapper;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/settings/applications/InstalledAppDetails;->sdStatus:Ljava/lang/String;

    goto/16 :goto_0

    .line 2323
    .restart local v2    # "apkDir":Ljava/lang/String;
    .restart local v3    # "apkFile":Ljava/io/File;
    .restart local v4    # "apkSize":J
    .restart local v6    # "end":J
    .restart local v8    # "freeStorage":J
    .restart local v12    # "start":J
    :cond_3
    const-string v11, "InstalledAppDetails"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "get internal sd card freeStorage is : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2324
    const-wide/16 v14, 0x400

    cmp-long v11, v8, v14

    if-ltz v11, :cond_4

    .line 2325
    const/4 v10, 0x1

    .line 2362
    .end local v2    # "apkDir":Ljava/lang/String;
    .end local v3    # "apkFile":Ljava/io/File;
    .end local v4    # "apkSize":J
    .end local v6    # "end":J
    .end local v8    # "freeStorage":J
    .end local v12    # "start":J
    :goto_2
    return v10

    .line 2327
    .restart local v2    # "apkDir":Ljava/lang/String;
    .restart local v3    # "apkFile":Ljava/io/File;
    .restart local v4    # "apkSize":J
    .restart local v6    # "end":J
    .restart local v8    # "freeStorage":J
    .restart local v12    # "start":J
    :cond_4
    long-to-double v14, v8

    const-wide/high16 v16, 0x3ff8000000000000L    # 1.5

    long-to-double v0, v4

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    sub-double v14, v14, v16

    const-wide/16 v16, 0x0

    cmpl-double v11, v14, v16

    if-lez v11, :cond_5

    .line 2328
    const/4 v10, 0x1

    goto :goto_2

    .line 2330
    :cond_5
    const/4 v10, 0x0

    goto :goto_2

    .line 2337
    .end local v6    # "end":J
    .end local v8    # "freeStorage":J
    .end local v12    # "start":J
    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/applications/InstalledAppDetails;->mStorageManagerWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/applications/InstalledAppDetails;->mStorageManagerWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    invoke-virtual {v14}, Lcom/vivo/settings/StorageManagerWrapper;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/vivo/settings/StorageManagerWrapper;->getAvailSize(Ljava/lang/String;)J

    move-result-wide v8

    .line 2338
    .restart local v8    # "freeStorage":J
    const-string v11, "InstalledAppDetails"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "external sd card freeStorage is : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2339
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 2340
    .restart local v12    # "start":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 2341
    .restart local v6    # "end":J
    :goto_3
    const-wide/16 v14, 0x0

    cmp-long v11, v8, v14

    if-gtz v11, :cond_7

    sub-long v14, v6, v12

    const-wide/16 v16, 0x7d0

    cmp-long v11, v14, v16

    if-gez v11, :cond_7

    .line 2343
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/applications/InstalledAppDetails;->mStorageManagerWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/applications/InstalledAppDetails;->mStorageManagerWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    invoke-virtual {v14}, Lcom/vivo/settings/StorageManagerWrapper;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/vivo/settings/StorageManagerWrapper;->getAvailSize(Ljava/lang/String;)J

    move-result-wide v8

    .line 2344
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    goto :goto_3

    .line 2347
    :cond_7
    const-string v11, "InstalledAppDetails"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "get external sd card freeStorage is : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2348
    const-wide/16 v14, 0x400

    cmp-long v11, v8, v14

    if-ltz v11, :cond_8

    .line 2349
    const/4 v10, 0x1

    goto/16 :goto_2

    .line 2351
    :cond_8
    long-to-double v14, v8

    const-wide/high16 v16, 0x3ff8000000000000L    # 1.5

    long-to-double v0, v4

    move-wide/from16 v18, v0

    mul-double v16, v16, v18

    sub-double v14, v14, v16

    const-wide/16 v16, 0x0

    cmpl-double v11, v14, v16

    if-lez v11, :cond_9

    .line 2352
    const/4 v10, 0x1

    goto/16 :goto_2

    .line 2354
    :cond_9
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 2360
    .end local v2    # "apkDir":Ljava/lang/String;
    .end local v3    # "apkFile":Ljava/io/File;
    .end local v4    # "apkSize":J
    .end local v6    # "end":J
    .end local v8    # "freeStorage":J
    .end local v12    # "start":J
    :cond_a
    const/4 v10, 0x0

    goto/16 :goto_2
.end method

.method private getSizeStr(J)Ljava/lang/String;
    .locals 3
    .param p1, "size"    # J

    .prologue
    .line 340
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mInvalidSizeStr:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 343
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private handleDisableable(Landroid/widget/Button;)Z
    .locals 2
    .param p1, "button"    # Landroid/widget/Button;

    .prologue
    .line 499
    const/4 v0, 0x0

    .line 517
    .local v0, "disableable":Z
    const v1, 0x7f0b0359

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(I)V

    .line 519
    return v0
.end method

.method private initDataButtons()V
    .locals 4

    .prologue
    const v3, 0x7f0b035d

    const/4 v2, 0x0

    .line 347
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_2

    .line 348
    :cond_0
    const-string v0, "InstalledAppDetails"

    const-string v1, "initDataButtons mAppEntry or mAppEntry.info is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_1
    :goto_0
    return-void

    .line 354
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x41

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 359
    :cond_3
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 360
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 361
    iput-boolean v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mCanClearData:Z

    .line 394
    :goto_1
    iget-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppControlRestricted:Z

    if-eqz v0, :cond_1

    .line 395
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 388
    :cond_4
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 391
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method private initMoveButton()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 429
    const/4 v0, 0x0

    .line 430
    .local v0, "dataOnly":Z
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    if-eqz v3, :cond_1

    move v0, v1

    .line 433
    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->moveDisable:Z

    .line 435
    if-eqz v0, :cond_2

    .line 436
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const v3, 0x7f0b0392

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(I)V

    .line 466
    :goto_1
    const-string v1, "persist.sys.new.install.policy"

    const-string v3, "0"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 467
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const v3, 0x7f0b0988

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(I)V

    .line 478
    :cond_0
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 479
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 481
    return-void

    :cond_1
    move v0, v2

    .line 430
    goto :goto_0

    .line 437
    :cond_2
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x40000

    and-int/2addr v3, v4

    if-eqz v3, :cond_4

    .line 438
    sget-boolean v1, Lcom/android/settings/applications/InstalledAppDetails;->mIsEmulate:Z

    if-eqz v1, :cond_3

    .line 439
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const v3, 0x7f0b0874

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(I)V

    .line 444
    :goto_2
    iput-boolean v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->moveDisable:Z

    goto :goto_1

    .line 441
    :cond_3
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const v3, 0x7f0b0393

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_2

    .line 448
    :cond_4
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mCanBeOnSdCardChecker:Lcom/android/settings/applications/CanBeOnSdCardChecker;

    invoke-virtual {v3}, Lcom/android/settings/applications/CanBeOnSdCardChecker;->init()V

    .line 449
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mCanBeOnSdCardChecker:Lcom/android/settings/applications/CanBeOnSdCardChecker;

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4}, Lcom/android/settings/applications/CanBeOnSdCardChecker;->check(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-nez v3, :cond_5

    move v3, v1

    :goto_3
    iput-boolean v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->moveDisable:Z

    .line 451
    const-string v3, "InstalledAppDetails"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isTFSupport is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/settings/applications/InstalledAppDetails;->isTFSupport:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " moveDisable:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->moveDisable:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    sget-boolean v3, Lcom/android/settings/applications/InstalledAppDetails;->isTFSupport:Z

    if-nez v3, :cond_7

    .line 453
    sget-boolean v3, Lcom/android/settings/applications/InstalledAppDetails;->mIsEmulate:Z

    if-eqz v3, :cond_6

    .line 454
    iput-boolean v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->moveDisable:Z

    .line 455
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_1

    :cond_5
    move v3, v2

    .line 449
    goto :goto_3

    .line 457
    :cond_6
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const v3, 0x7f0b098b

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_1

    .line 460
    :cond_7
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const v3, 0x7f0b0394

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_1
.end method

.method private initNotificationButton()V
    .locals 6

    .prologue
    .line 594
    const-string v3, "notification"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    .line 596
    .local v1, "nm":Landroid/app/INotificationManager;
    const/4 v0, 0x1

    .line 598
    .local v0, "enabled":Z
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v1, v3, v4}, Landroid/app/INotificationManager;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 604
    :goto_0
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 605
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mApplicationNofifiData:Lcom/vivo/settings/applications/ApplicationNotifiData;

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/vivo/settings/applications/ApplicationNotifiData;->isAppNotificationEnable(Ljava/lang/String;)Z

    move-result v2

    .line 606
    .local v2, "notifiEnable":Z
    const-string v3, "InstalledAppDetails"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initNotificationButton notification check::"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " notifiEnable:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v3, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 609
    if-nez v2, :cond_0

    .line 610
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 615
    :goto_1
    return-void

    .line 612
    :cond_0
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 613
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v3, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_1

    .line 600
    .end local v2    # "notifiEnable":Z
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private initUninstallButtons()V
    .locals 10

    .prologue
    const v9, 0x7f0b0359

    const/16 v8, 0x8

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 523
    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_6

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    .line 524
    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_7

    move v3, v6

    .line 525
    .local v3, "isBundled":Z
    :goto_1
    const/4 v1, 0x1

    .line 526
    .local v1, "enabled":Z
    iget-boolean v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v5, :cond_9

    .line 527
    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    const v9, 0x7f0b035e

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setText(I)V

    .line 528
    const/4 v4, 0x0

    .line 529
    .local v4, "showSpecialDisable":Z
    if-eqz v3, :cond_0

    .line 530
    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSpecialDisableButton:Landroid/widget/Button;

    invoke-direct {p0, v5}, Lcom/android/settings/applications/InstalledAppDetails;->handleDisableable(Landroid/widget/Button;)Z

    move-result v4

    .line 531
    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSpecialDisableButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 533
    :cond_0
    iget-boolean v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppControlRestricted:Z

    if-eqz v5, :cond_1

    .line 534
    const/4 v4, 0x0

    .line 536
    :cond_1
    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    if-eqz v4, :cond_8

    move v5, v7

    :goto_2
    invoke-virtual {v9, v5}, Landroid/view/View;->setVisibility(I)V

    .line 554
    .end local v4    # "showSpecialDisable":Z
    :goto_3
    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v8, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v8, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 555
    const/4 v1, 0x0

    .line 564
    :cond_2
    if-eqz v1, :cond_3

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    iget-object v8, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v8, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 565
    if-eqz v3, :cond_c

    .line 566
    const/4 v1, 0x0

    .line 582
    :cond_3
    :goto_4
    iget-boolean v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppControlRestricted:Z

    if-eqz v5, :cond_4

    .line 583
    const/4 v1, 0x0

    .line 586
    :cond_4
    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v5, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 587
    if-eqz v1, :cond_5

    .line 589
    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 591
    :cond_5
    return-void

    .end local v1    # "enabled":Z
    .end local v3    # "isBundled":Z
    :cond_6
    move v5, v7

    .line 523
    goto :goto_0

    :cond_7
    move v3, v7

    .line 524
    goto :goto_1

    .restart local v1    # "enabled":Z
    .restart local v3    # "isBundled":Z
    .restart local v4    # "showSpecialDisable":Z
    :cond_8
    move v5, v8

    .line 536
    goto :goto_2

    .line 538
    .end local v4    # "showSpecialDisable":Z
    :cond_9
    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 539
    if-eqz v3, :cond_a

    .line 540
    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-direct {p0, v5}, Lcom/android/settings/applications/InstalledAppDetails;->handleDisableable(Landroid/widget/Button;)Z

    move-result v1

    goto :goto_3

    .line 541
    :cond_a
    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v8, 0x800000

    and-int/2addr v5, v8

    if-nez v5, :cond_b

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v8, 0x2

    if-lt v5, v8, :cond_b

    .line 546
    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setText(I)V

    .line 547
    const/4 v1, 0x0

    goto :goto_3

    .line 549
    :cond_b
    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setText(I)V

    goto :goto_3

    .line 568
    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 569
    .local v2, "homeActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v2}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v0

    .line 570
    .local v0, "currentDefaultHome":Landroid/content/ComponentName;
    if-nez v0, :cond_e

    .line 573
    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    if-le v5, v6, :cond_d

    move v1, v6

    :goto_5
    goto :goto_4

    :cond_d
    move v1, v7

    goto :goto_5

    .line 577
    :cond_e
    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    move v1, v6

    :goto_6
    goto :goto_4

    :cond_f
    move v1, v7

    goto :goto_6
.end method

.method private initiateClearUserData()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 1553
    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v9, v12}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1555
    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v9, v9, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1556
    .local v6, "packageName":Ljava/lang/String;
    const-string v9, "InstalledAppDetails"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Clearing user data for package : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1557
    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataObserver:Lcom/android/settings/applications/InstalledAppDetails$ClearUserDataObserver;

    if-nez v9, :cond_0

    .line 1558
    new-instance v9, Lcom/android/settings/applications/InstalledAppDetails$ClearUserDataObserver;

    invoke-direct {v9, p0}, Lcom/android/settings/applications/InstalledAppDetails$ClearUserDataObserver;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    iput-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataObserver:Lcom/android/settings/applications/InstalledAppDetails$ClearUserDataObserver;

    .line 1561
    :cond_0
    sget-object v1, Lcom/android/settings/applications/InstalledAppDetails;->multiTaskApp:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v7, v1, v3

    .line 1562
    .local v7, "pkgeName":Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1563
    new-instance v5, Landroid/content/Intent;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "android.intent.action.TO_FORCE_STOP_PACKAGE."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1564
    .local v5, "mIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1566
    const-wide/16 v10, 0x12c

    :try_start_0
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1574
    .end local v5    # "mIntent":Landroid/content/Intent;
    .end local v7    # "pkgeName":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string v10, "activity"

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1576
    .local v0, "am":Landroid/app/ActivityManager;
    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataObserver:Lcom/android/settings/applications/InstalledAppDetails$ClearUserDataObserver;

    invoke-virtual {v0, v6, v9}, Landroid/app/ActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    move-result v8

    .line 1577
    .local v8, "res":Z
    if-nez v8, :cond_3

    .line 1579
    const-string v9, "InstalledAppDetails"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Couldnt clear application user data for package:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1580
    const/4 v9, 0x4

    invoke-direct {p0, v9, v12}, Lcom/android/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    .line 1584
    :goto_2
    return-void

    .line 1567
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v8    # "res":Z
    .restart local v5    # "mIntent":Landroid/content/Intent;
    .restart local v7    # "pkgeName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1569
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string v9, "InstalledAppDetails"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "InterruptedException is : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1561
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .end local v5    # "mIntent":Landroid/content/Intent;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1582
    .end local v7    # "pkgeName":Ljava/lang/String;
    .restart local v0    # "am":Landroid/app/ActivityManager;
    .restart local v8    # "res":Z
    :cond_3
    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const v10, 0x7f0b037b

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setText(I)V

    goto :goto_2
.end method

.method private isFreeStorageLimited(J)Z
    .locals 7
    .param p1, "freeStorage"    # J

    .prologue
    .line 2419
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getEmmcSize()F

    move-result v0

    .line 2420
    .local v0, "emmcSize":F
    const/4 v1, 0x0

    .line 2421
    .local v1, "isLimited":Z
    const-string v2, "InstalledAppDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isFreeStorageLimited emmcSize:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "GB, freeStorage:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "MB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2423
    sget-boolean v2, Lcom/android/settings/applications/InstalledAppDetails;->mIsEmulate:Z

    if-eqz v2, :cond_3

    .line 2424
    float-to-double v2, v0

    const-wide v4, 0x402fcccccccccccdL    # 15.9

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_1

    .line 2425
    const-wide/16 v2, 0x258

    cmp-long v2, p1, v2

    if-gtz v2, :cond_0

    .line 2426
    const/4 v1, 0x1

    .line 2443
    :cond_0
    :goto_0
    return v1

    .line 2428
    :cond_1
    float-to-double v2, v0

    const-wide v4, 0x401f99999999999aL    # 7.9

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_2

    .line 2429
    const-wide/16 v2, 0x190

    cmp-long v2, p1, v2

    if-gtz v2, :cond_0

    .line 2430
    const/4 v1, 0x1

    goto :goto_0

    .line 2432
    :cond_2
    float-to-double v2, v0

    const-wide v4, 0x400f333333333333L    # 3.9

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_0

    .line 2433
    const-wide/16 v2, 0xc8

    cmp-long v2, p1, v2

    if-gtz v2, :cond_0

    .line 2434
    const/4 v1, 0x1

    goto :goto_0

    .line 2438
    :cond_3
    const-wide/16 v2, 0x64

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    .line 2439
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isFreeStorageWarning(J)Z
    .locals 7
    .param p1, "freeStorage"    # J

    .prologue
    .line 2452
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getEmmcSize()F

    move-result v0

    .line 2453
    .local v0, "emmcSize":F
    const/4 v1, 0x0

    .line 2454
    .local v1, "isWarning":Z
    const-string v2, "InstalledAppDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isFreeStorageWarning emmcSize:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "GB, freeStorage:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "MB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2456
    sget-boolean v2, Lcom/android/settings/applications/InstalledAppDetails;->mIsEmulate:Z

    if-eqz v2, :cond_3

    .line 2457
    float-to-double v2, v0

    const-wide v4, 0x402fcccccccccccdL    # 15.9

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_1

    .line 2458
    const-wide/16 v2, 0x320

    cmp-long v2, p1, v2

    if-gtz v2, :cond_0

    .line 2459
    const/4 v1, 0x1

    .line 2476
    :cond_0
    :goto_0
    return v1

    .line 2461
    :cond_1
    float-to-double v2, v0

    const-wide v4, 0x401f99999999999aL    # 7.9

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_2

    .line 2462
    const-wide/16 v2, 0x1f4

    cmp-long v2, p1, v2

    if-gtz v2, :cond_0

    .line 2463
    const/4 v1, 0x1

    goto :goto_0

    .line 2465
    :cond_2
    float-to-double v2, v0

    const-wide v4, 0x400f333333333333L    # 3.9

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_0

    .line 2466
    const-wide/16 v2, 0x12c

    cmp-long v2, p1, v2

    if-gtz v2, :cond_0

    .line 2467
    const/4 v1, 0x1

    goto :goto_0

    .line 2471
    :cond_3
    const-wide/16 v2, 0x96

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    .line 2472
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isThisASystemPackage()Z
    .locals 2

    .prologue
    .line 492
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.android.bbk.lockscreen3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.vivo.space"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private limitInternalSpace(I)V
    .locals 4
    .param p1, "result"    # I

    .prologue
    .line 2480
    sget-boolean v1, Lcom/android/settings/applications/InstalledAppDetails;->mIsEmulate:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.iqoo.secure.CLEANSPACE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/vivo/settings/VivoUtils;->isIntentExist(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2481
    const-string v1, "InstalledAppDetails"

    const-string v2, "limitInternalSpace to com.iqoo.secure.CLEANSPACE"

    invoke-static {v1, v2}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2483
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2484
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "pkg_name"

    const-string v2, "com.android.settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2485
    const-string v1, "com.iqoo.secure.CLEANSPACE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2486
    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2487
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/InstalledAppDetails;->startActivity(Landroid/content/Intent;)V

    .line 2491
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 2489
    :cond_0
    const/16 v1, 0xb

    invoke-direct {p0, v1, p1}, Lcom/android/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0
.end method

.method private processClearMsg(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    .line 1474
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1475
    .local v1, "result":I
    const-string v2, "InstalledAppDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cleared user data result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1476
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1477
    .local v0, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const v3, 0x7f0b035d

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 1478
    if-ne v1, v5, :cond_0

    .line 1479
    const-string v2, "InstalledAppDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cleared user data for package : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mState:Lcom/android/settings/applications/ApplicationsState;

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/ApplicationsState;->requestSize(Ljava/lang/String;)V

    .line 1491
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->checkForceStop()V

    .line 1492
    return-void

    .line 1488
    :cond_0
    const-string v2, "InstalledAppDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to clear user data for package : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1489
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private processMoveMsg(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 1509
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 1511
    .local v2, "result":I
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->loadingDialog:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->loadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1513
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->loadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1517
    iput-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->loadingDialog:Landroid/app/ProgressDialog;

    .line 1521
    :cond_0
    :goto_0
    const-string v3, "InstalledAppDetails"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "move result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " moveFlag:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->moveFlag:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1524
    .local v1, "packageName":Ljava/lang/String;
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveInProgress:Z

    .line 1525
    if-ne v2, v8, :cond_1

    .line 1526
    const-string v3, "InstalledAppDetails"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Moved resources for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mState:Lcom/android/settings/applications/ApplicationsState;

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/settings/applications/ApplicationsState;->requestSize(Ljava/lang/String;)V

    .line 1545
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->refreshUi()Z

    .line 1546
    return-void

    .line 1514
    .end local v1    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1515
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "InstalledAppDetails"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processMoveMsg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1517
    iput-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->loadingDialog:Landroid/app/ProgressDialog;

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    iput-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->loadingDialog:Landroid/app/ProgressDialog;

    throw v3

    .line 1531
    .restart local v1    # "packageName":Ljava/lang/String;
    :cond_1
    iget v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->moveFlag:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    if-ne v2, v6, :cond_2

    .line 1533
    const/16 v3, 0xa

    invoke-direct {p0, v3, v2}, Lcom/android/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_1

    .line 1534
    :cond_2
    iget v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->moveFlag:I

    if-ne v3, v8, :cond_3

    if-ne v2, v6, :cond_3

    .line 1537
    invoke-direct {p0, v2}, Lcom/android/settings/applications/InstalledAppDetails;->limitInternalSpace(I)V

    goto :goto_1

    .line 1538
    :cond_3
    iget v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->moveFlag:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_4

    if-ne v2, v6, :cond_4

    .line 1540
    const/16 v3, 0xe

    invoke-direct {p0, v3, v2}, Lcom/android/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_1

    .line 1542
    :cond_4
    const/4 v3, 0x6

    invoke-direct {p0, v3, v2}, Lcom/android/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_1
.end method

.method private refreshButtons()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1495
    iget-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveInProgress:Z

    if-nez v0, :cond_0

    .line 1496
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->initUninstallButtons()V

    .line 1497
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->initDataButtons()V

    .line 1498
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->initMoveButton()V

    .line 1499
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->initNotificationButton()V

    .line 1506
    :goto_0
    return-void

    .line 1501
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    const v1, 0x7f0b0395

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 1502
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1503
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1504
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSpecialDisableButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private refreshSizeInfo()V
    .locals 10

    .prologue
    .line 1393
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v8, -0x2

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    .line 1395
    :cond_0
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastTotalSize:J

    iput-wide v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastCacheSize:J

    iput-wide v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastDataSize:J

    iput-wide v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastCodeSize:J

    .line 1396
    const-string v6, "InstalledAppDetails"

    const-string v7, "refreshSizeInfo no size"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    iget-boolean v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHaveSizes:Z

    if-nez v6, :cond_1

    .line 1398
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppSize:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1399
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDataSize:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1400
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mCacheSize:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1401
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mTotalSize:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1403
    :cond_1
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1404
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1406
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mState:Lcom/android/settings/applications/ApplicationsState;

    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/settings/applications/ApplicationsState;->requestSize(Ljava/lang/String;)V

    .line 1463
    :goto_0
    iget-boolean v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppControlRestricted:Z

    if-eqz v6, :cond_2

    .line 1464
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1465
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1467
    :cond_2
    return-void

    .line 1409
    :cond_3
    const-string v6, "InstalledAppDetails"

    const-string v7, "refreshSizeInfo have size"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHaveSizes:Z

    .line 1411
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v2, v6, Lcom/android/settings/applications/ApplicationsState$AppEntry;->codeSize:J

    .line 1412
    .local v2, "codeSize":J
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v4, v6, Lcom/android/settings/applications/ApplicationsState$AppEntry;->dataSize:J

    .line 1417
    .local v4, "dataSize":J
    iget-wide v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastExternalCodeSize:J

    iget-object v8, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_4

    .line 1418
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    iput-wide v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastExternalCodeSize:J

    .line 1419
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mExternalCodeSize:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v8, v7, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    invoke-direct {p0, v8, v9}, Lcom/android/settings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1421
    :cond_4
    iget-wide v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastExternalDataSize:J

    iget-object v8, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalDataSize:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_5

    .line 1422
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalDataSize:J

    iput-wide v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastExternalDataSize:J

    .line 1423
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mExternalDataSize:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v8, v7, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalDataSize:J

    invoke-direct {p0, v8, v9}, Lcom/android/settings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1426
    :cond_5
    iget-wide v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastCodeSize:J

    cmp-long v6, v6, v2

    if-eqz v6, :cond_6

    .line 1427
    iput-wide v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastCodeSize:J

    .line 1429
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppSize:Landroid/widget/TextView;

    if-eqz v6, :cond_6

    .line 1430
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppSize:Landroid/widget/TextView;

    invoke-direct {p0, v2, v3}, Lcom/android/settings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1433
    :cond_6
    iget-wide v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastDataSize:J

    cmp-long v6, v6, v4

    if-eqz v6, :cond_7

    .line 1434
    iput-wide v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastDataSize:J

    .line 1436
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDataSize:Landroid/widget/TextView;

    if-eqz v6, :cond_7

    .line 1437
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDataSize:Landroid/widget/TextView;

    invoke-direct {p0, v4, v5}, Lcom/android/settings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1440
    :cond_7
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/settings/applications/ApplicationsState$AppEntry;->cacheSize:J

    iget-object v8, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalCacheSize:J

    add-long v0, v6, v8

    .line 1441
    .local v0, "cacheSize":J
    iget-wide v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastCacheSize:J

    cmp-long v6, v6, v0

    if-eqz v6, :cond_8

    .line 1442
    iput-wide v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastCacheSize:J

    .line 1443
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mCacheSize:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1445
    :cond_8
    iget-wide v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastTotalSize:J

    iget-object v8, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_9

    .line 1446
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    iput-wide v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLastTotalSize:J

    .line 1447
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mTotalSize:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v8, v7, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    invoke-direct {p0, v8, v9}, Lcom/android/settings/applications/InstalledAppDetails;->getSizeStr(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1450
    :cond_9
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v6, Lcom/android/settings/applications/ApplicationsState$AppEntry;->dataSize:J

    iget-object v8, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v8, v8, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalDataSize:J

    add-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_a

    iget-boolean v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mCanClearData:Z

    if-nez v6, :cond_b

    .line 1451
    :cond_a
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1456
    :goto_1
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-gtz v6, :cond_c

    .line 1457
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1453
    :cond_b
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1454
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 1459
    :cond_c
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1460
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method private refreshUi()Z
    .locals 49

    .prologue
    .line 1063
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveInProgress:Z

    move/from16 v44, v0

    if-eqz v44, :cond_0

    .line 1064
    const/16 v44, 0x1

    .line 1315
    :goto_0
    return v44

    .line 1066
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->retrieveAppEntry()Ljava/lang/String;

    move-result-object v28

    .line 1068
    .local v28, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-object/from16 v44, v0

    if-nez v44, :cond_1

    .line 1069
    const/16 v44, 0x0

    goto :goto_0

    .line 1072
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v44, v0

    if-nez v44, :cond_2

    .line 1073
    const/16 v44, 0x0

    goto :goto_0

    .line 1077
    :cond_2
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 1078
    .local v23, "homeActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    .line 1079
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    move-object/from16 v44, v0

    invoke-virtual/range {v44 .. v44}, Ljava/util/HashSet;->clear()V

    .line 1080
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_1
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v44

    move/from16 v0, v24

    move/from16 v1, v44

    if-ge v0, v1, :cond_4

    .line 1081
    invoke-interface/range {v23 .. v24}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/content/pm/ResolveInfo;

    .line 1082
    .local v36, "ri":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1083
    .local v6, "activityPkg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1086
    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v27, v0

    .line 1087
    .local v27, "metadata":Landroid/os/Bundle;
    if-eqz v27, :cond_3

    .line 1088
    const-string v44, "android.app.home.alternate"

    move-object/from16 v0, v27

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 1089
    .local v26, "metaPkg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v6}, Lcom/android/settings/applications/InstalledAppDetails;->signaturesMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v44

    if-eqz v44, :cond_3

    .line 1090
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1080
    .end local v26    # "metaPkg":Ljava/lang/String;
    :cond_3
    add-int/lit8 v24, v24, 0x1

    goto :goto_1

    .line 1096
    .end local v6    # "activityPkg":Ljava/lang/String;
    .end local v27    # "metadata":Landroid/os/Bundle;
    .end local v36    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_4
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 1099
    .local v33, "prefActList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 1100
    .local v25, "intentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v25

    move-object/from16 v2, v33

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 1103
    const/16 v22, 0x0

    .line 1105
    .local v22, "hasUsbDefaults":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    move-object/from16 v44, v0

    if-eqz v44, :cond_5

    .line 1106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    move-object/from16 v44, v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v45

    move-object/from16 v0, v44

    move-object/from16 v1, v28

    move/from16 v2, v45

    invoke-interface {v0, v1, v2}, Landroid/hardware/usb/IUsbManager;->hasDefaults(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v22

    .line 1111
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Landroid/appwidget/AppWidgetManager;->hasBindAppWidgetPermission(Ljava/lang/String;)Z

    move-result v21

    .line 1114
    .local v21, "hasBindAppWidgetPermission":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    move-object/from16 v44, v0

    const v45, 0x7f0e012a

    invoke-virtual/range {v44 .. v45}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 1115
    .local v15, "autoLaunchTitleView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    move-object/from16 v44, v0

    const v45, 0x7f0e012b

    invoke-virtual/range {v44 .. v45}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 1116
    .local v16, "autoLaunchView":Landroid/widget/TextView;
    invoke-interface/range {v33 .. v33}, Ljava/util/List;->size()I

    move-result v44

    if-gtz v44, :cond_6

    if-eqz v22, :cond_9

    :cond_6
    const/4 v14, 0x1

    .line 1118
    .local v14, "autoLaunchEnabled":Z
    :goto_3
    const-string v44, "InstalledAppDetails"

    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    const-string v46, "refreshUi hasUsbDefaults:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " autoLaunchEnabled:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string v46, " hasBindAppWidgetPermission:"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    invoke-static/range {v44 .. v45}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    if-nez v14, :cond_a

    if-nez v21, :cond_a

    .line 1122
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/settings/applications/InstalledAppDetails;->resetLaunchDefaultsUi(Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 1161
    :goto_4
    invoke-static {}, Lcom/android/settings/AppFeature;->isCMCC()Z

    move-result v44

    if-eqz v44, :cond_7

    .line 1162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/applications/InstalledAppDetails;->mIntent:Landroid/content/Intent;

    .line 1163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mIntent:Landroid/content/Intent;

    move-object/from16 v44, v0

    if-eqz v44, :cond_13

    .line 1164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mIntent:Landroid/content/Intent;

    move-object/from16 v44, v0

    const/high16 v45, 0x30200000

    invoke-virtual/range {v44 .. v45}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mLaunchButton:Landroid/widget/Button;

    move-object/from16 v44, v0

    const/16 v45, 0x1

    invoke-virtual/range {v44 .. v45}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mLaunchButton:Landroid/widget/Button;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1176
    :cond_7
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v44

    const-string v45, "activity"

    invoke-virtual/range {v44 .. v45}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager;

    .line 1178
    .local v10, "am":Landroid/app/ActivityManager;
    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Landroid/app/ActivityManager;->getPackageScreenCompatMode(Ljava/lang/String;)I

    move-result v18

    .line 1189
    .local v18, "compatMode":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mScreenCompatSection:Landroid/view/View;

    move-object/from16 v44, v0

    const/16 v45, 0x8

    invoke-virtual/range {v44 .. v45}, Landroid/view/View;->setVisibility(I)V

    .line 1193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    move-object/from16 v44, v0

    const v45, 0x7f0e0133

    invoke-virtual/range {v44 .. v45}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/LinearLayout;

    .line 1194
    .local v30, "permsView":Landroid/widget/LinearLayout;
    new-instance v12, Landroid/widget/AppSecurityPermissions;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v28

    invoke-direct {v12, v0, v1}, Landroid/widget/AppSecurityPermissions;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1195
    .local v12, "asp":Landroid/widget/AppSecurityPermissions;
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->getPremiumSmsPermission(Ljava/lang/String;)I

    move-result v34

    .line 1199
    .local v34, "premiumSmsPermission":I
    invoke-virtual {v12}, Landroid/widget/AppSecurityPermissions;->getPermissionCount()I

    move-result v44

    if-gtz v44, :cond_8

    if-eqz v34, :cond_14

    .line 1201
    :cond_8
    const/16 v44, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1206
    :goto_6
    const v44, 0x7f0e0134

    move-object/from16 v0, v30

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v38

    check-cast v38, Landroid/widget/TextView;

    .line 1208
    .local v38, "securityBillingDesc":Landroid/widget/TextView;
    const v44, 0x7f0e0135

    move-object/from16 v0, v30

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v39

    check-cast v39, Landroid/widget/LinearLayout;

    .line 1210
    .local v39, "securityBillingList":Landroid/widget/LinearLayout;
    if-eqz v34, :cond_15

    .line 1212
    const/16 v44, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1213
    const/16 v44, 0x0

    move-object/from16 v0, v39

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1214
    const v44, 0x7f0e0136

    move-object/from16 v0, v30

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/Spinner;

    .line 1216
    .local v41, "spinner":Landroid/widget/Spinner;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v44

    const v45, 0x7f080055

    const v46, 0x1090008

    invoke-static/range {v44 .. v46}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v7

    .line 1219
    .local v7, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v44, 0x1090009

    move/from16 v0, v44

    invoke-virtual {v7, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1220
    move-object/from16 v0, v41

    invoke-virtual {v0, v7}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1222
    add-int/lit8 v44, v34, -0x1

    move-object/from16 v0, v41

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1223
    new-instance v44, Lcom/android/settings/applications/InstalledAppDetails$PremiumSmsSelectionListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mSmsManager:Lcom/android/internal/telephony/ISms;

    move-object/from16 v45, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v28

    move-object/from16 v2, v45

    invoke-direct {v0, v1, v2}, Lcom/android/settings/applications/InstalledAppDetails$PremiumSmsSelectionListener;-><init>(Ljava/lang/String;Lcom/android/internal/telephony/ISms;)V

    move-object/from16 v0, v41

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1231
    .end local v7    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local v41    # "spinner":Landroid/widget/Spinner;
    :goto_7
    invoke-virtual {v12}, Landroid/widget/AppSecurityPermissions;->getPermissionCount()I

    move-result v44

    if-lez v44, :cond_18

    .line 1233
    const v44, 0x7f0e0138

    move-object/from16 v0, v30

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/LinearLayout;

    .line 1235
    .local v40, "securityList":Landroid/widget/LinearLayout;
    invoke-virtual/range {v40 .. v40}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1236
    invoke-virtual {v12}, Landroid/widget/AppSecurityPermissions;->getPermissionsViewWithRevokeButtons()Landroid/view/View;

    move-result-object v44

    move-object/from16 v0, v40

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v29

    .line 1240
    .local v29, "packages":[Ljava/lang/String;
    if-eqz v29, :cond_18

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v44, v0

    const/16 v45, 0x1

    move/from16 v0, v44

    move/from16 v1, v45

    if-le v0, v1, :cond_18

    .line 1241
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 1242
    .local v32, "pnames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/16 v24, 0x0

    :goto_8
    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v44, v0

    move/from16 v0, v24

    move/from16 v1, v44

    if-ge v0, v1, :cond_17

    .line 1243
    aget-object v31, v29, v24

    .line 1244
    .local v31, "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v44

    if-eqz v44, :cond_16

    .line 1242
    :goto_9
    add-int/lit8 v24, v24, 0x1

    goto :goto_8

    .line 1108
    .end local v10    # "am":Landroid/app/ActivityManager;
    .end local v12    # "asp":Landroid/widget/AppSecurityPermissions;
    .end local v14    # "autoLaunchEnabled":Z
    .end local v15    # "autoLaunchTitleView":Landroid/widget/TextView;
    .end local v16    # "autoLaunchView":Landroid/widget/TextView;
    .end local v18    # "compatMode":I
    .end local v21    # "hasBindAppWidgetPermission":Z
    .end local v29    # "packages":[Ljava/lang/String;
    .end local v30    # "permsView":Landroid/widget/LinearLayout;
    .end local v31    # "pkg":Ljava/lang/String;
    .end local v32    # "pnames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v34    # "premiumSmsPermission":I
    .end local v38    # "securityBillingDesc":Landroid/widget/TextView;
    .end local v39    # "securityBillingList":Landroid/widget/LinearLayout;
    .end local v40    # "securityList":Landroid/widget/LinearLayout;
    :catch_0
    move-exception v20

    .line 1109
    .local v20, "e":Landroid/os/RemoteException;
    const-string v44, "InstalledAppDetails"

    const-string v45, "mUsbManager.hasDefaults"

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 1116
    .end local v20    # "e":Landroid/os/RemoteException;
    .restart local v15    # "autoLaunchTitleView":Landroid/widget/TextView;
    .restart local v16    # "autoLaunchView":Landroid/widget/TextView;
    .restart local v21    # "hasBindAppWidgetPermission":Z
    :cond_9
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 1124
    .restart local v14    # "autoLaunchEnabled":Z
    :cond_a
    if-eqz v21, :cond_f

    if-eqz v14, :cond_f

    const/16 v43, 0x1

    .line 1126
    .local v43, "useBullets":Z
    :goto_a
    if-eqz v21, :cond_10

    .line 1127
    const v44, 0x7f0b034d

    move/from16 v0, v44

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1132
    :goto_b
    const/16 v42, 0x0

    .line 1133
    .local v42, "text":Ljava/lang/CharSequence;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v44

    const v45, 0x7f0d000b

    invoke-virtual/range {v44 .. v45}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    .line 1135
    .local v17, "bulletIndent":I
    if-eqz v14, :cond_c

    .line 1136
    const v44, 0x7f0b035f

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    .line 1137
    .local v13, "autoLaunchEnableText":Ljava/lang/CharSequence;
    new-instance v37, Landroid/text/SpannableString;

    move-object/from16 v0, v37

    invoke-direct {v0, v13}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1138
    .local v37, "s":Landroid/text/SpannableString;
    if-eqz v43, :cond_b

    .line 1139
    new-instance v44, Landroid/text/style/BulletSpan;

    move-object/from16 v0, v44

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/text/style/BulletSpan;-><init>(I)V

    const/16 v45, 0x0

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v46

    const/16 v47, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v44

    move/from16 v2, v45

    move/from16 v3, v46

    move/from16 v4, v47

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1141
    :cond_b
    if-nez v42, :cond_11

    const/16 v44, 0x2

    move/from16 v0, v44

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    aput-object v37, v44, v45

    const/16 v45, 0x1

    const-string v46, "\n"

    aput-object v46, v44, v45

    invoke-static/range {v44 .. v44}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v42

    .line 1144
    .end local v13    # "autoLaunchEnableText":Ljava/lang/CharSequence;
    .end local v37    # "s":Landroid/text/SpannableString;
    :cond_c
    :goto_c
    if-eqz v21, :cond_e

    .line 1145
    const v44, 0x7f0b0360

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 1147
    .local v9, "alwaysAllowBindAppWidgetsText":Ljava/lang/CharSequence;
    new-instance v37, Landroid/text/SpannableString;

    move-object/from16 v0, v37

    invoke-direct {v0, v9}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1148
    .restart local v37    # "s":Landroid/text/SpannableString;
    if-eqz v43, :cond_d

    .line 1149
    new-instance v44, Landroid/text/style/BulletSpan;

    move-object/from16 v0, v44

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/text/style/BulletSpan;-><init>(I)V

    const/16 v45, 0x0

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v46

    const/16 v47, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v44

    move/from16 v2, v45

    move/from16 v3, v46

    move/from16 v4, v47

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1152
    :cond_d
    if-nez v42, :cond_12

    const/16 v44, 0x2

    move/from16 v0, v44

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    aput-object v37, v44, v45

    const/16 v45, 0x1

    const-string v46, "\n"

    aput-object v46, v44, v45

    invoke-static/range {v44 .. v44}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v42

    .line 1155
    .end local v9    # "alwaysAllowBindAppWidgetsText":Ljava/lang/CharSequence;
    .end local v37    # "s":Landroid/text/SpannableString;
    :cond_e
    :goto_d
    move-object/from16 v0, v16

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    move-object/from16 v44, v0

    const/16 v45, 0x1

    invoke-virtual/range {v44 .. v45}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4

    .line 1124
    .end local v17    # "bulletIndent":I
    .end local v42    # "text":Ljava/lang/CharSequence;
    .end local v43    # "useBullets":Z
    :cond_f
    const/16 v43, 0x0

    goto/16 :goto_a

    .line 1129
    .restart local v43    # "useBullets":Z
    :cond_10
    const v44, 0x7f0b034c

    move/from16 v0, v44

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_b

    .line 1141
    .restart local v13    # "autoLaunchEnableText":Ljava/lang/CharSequence;
    .restart local v17    # "bulletIndent":I
    .restart local v37    # "s":Landroid/text/SpannableString;
    .restart local v42    # "text":Ljava/lang/CharSequence;
    :cond_11
    const/16 v44, 0x4

    move/from16 v0, v44

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    aput-object v42, v44, v45

    const/16 v45, 0x1

    const-string v46, "\n"

    aput-object v46, v44, v45

    const/16 v45, 0x2

    aput-object v37, v44, v45

    const/16 v45, 0x3

    const-string v46, "\n"

    aput-object v46, v44, v45

    invoke-static/range {v44 .. v44}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v42

    goto/16 :goto_c

    .line 1152
    .end local v13    # "autoLaunchEnableText":Ljava/lang/CharSequence;
    .restart local v9    # "alwaysAllowBindAppWidgetsText":Ljava/lang/CharSequence;
    :cond_12
    const/16 v44, 0x4

    move/from16 v0, v44

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    aput-object v42, v44, v45

    const/16 v45, 0x1

    const-string v46, "\n"

    aput-object v46, v44, v45

    const/16 v45, 0x2

    aput-object v37, v44, v45

    const/16 v45, 0x3

    const-string v46, "\n"

    aput-object v46, v44, v45

    invoke-static/range {v44 .. v44}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v42

    goto :goto_d

    .line 1170
    .end local v9    # "alwaysAllowBindAppWidgetsText":Ljava/lang/CharSequence;
    .end local v17    # "bulletIndent":I
    .end local v37    # "s":Landroid/text/SpannableString;
    .end local v42    # "text":Ljava/lang/CharSequence;
    .end local v43    # "useBullets":Z
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mLaunchButton:Landroid/widget/Button;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    invoke-virtual/range {v44 .. v45}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_5

    .line 1203
    .restart local v10    # "am":Landroid/app/ActivityManager;
    .restart local v12    # "asp":Landroid/widget/AppSecurityPermissions;
    .restart local v18    # "compatMode":I
    .restart local v30    # "permsView":Landroid/widget/LinearLayout;
    .restart local v34    # "premiumSmsPermission":I
    :cond_14
    const/16 v44, 0x8

    move-object/from16 v0, v30

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_6

    .line 1227
    .restart local v38    # "securityBillingDesc":Landroid/widget/TextView;
    .restart local v39    # "securityBillingList":Landroid/widget/LinearLayout;
    :cond_15
    const/16 v44, 0x8

    move-object/from16 v0, v38

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1228
    const/16 v44, 0x8

    move-object/from16 v0, v39

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_7

    .line 1248
    .restart local v29    # "packages":[Ljava/lang/String;
    .restart local v31    # "pkg":Ljava/lang/String;
    .restart local v32    # "pnames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .restart local v40    # "securityList":Landroid/widget/LinearLayout;
    :cond_16
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    move-object/from16 v0, v44

    move-object/from16 v1, v31

    move/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 1249
    .local v8, "ainfo":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    invoke-virtual {v8, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v44

    move-object/from16 v0, v32

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_9

    .line 1250
    .end local v8    # "ainfo":Landroid/content/pm/ApplicationInfo;
    :catch_1
    move-exception v44

    goto/16 :goto_9

    .line 1253
    .end local v31    # "pkg":Ljava/lang/String;
    :cond_17
    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1254
    .local v5, "N":I
    if-lez v5, :cond_18

    .line 1255
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    .line 1257
    .local v35, "res":Landroid/content/res/Resources;
    const/16 v44, 0x1

    move/from16 v0, v44

    if-ne v5, v0, :cond_1c

    .line 1258
    const/16 v44, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Ljava/lang/CharSequence;

    invoke-interface/range {v44 .. v44}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1271
    .local v11, "appListStr":Ljava/lang/String;
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    move-object/from16 v44, v0

    const v45, 0x7f0e0137

    invoke-virtual/range {v44 .. v45}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 1273
    .local v19, "descr":Landroid/widget/TextView;
    const v44, 0x7f0b0387

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v48, v0

    invoke-virtual/range {v47 .. v48}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v47

    aput-object v47, v45, v46

    const/16 v46, 0x1

    aput-object v11, v45, v46

    move-object/from16 v0, v35

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v19

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1279
    .end local v5    # "N":I
    .end local v11    # "appListStr":Ljava/lang/String;
    .end local v19    # "descr":Landroid/widget/TextView;
    .end local v29    # "packages":[Ljava/lang/String;
    .end local v32    # "pnames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v35    # "res":Landroid/content/res/Resources;
    .end local v40    # "securityList":Landroid/widget/LinearLayout;
    :cond_18
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->checkForceStop()V

    .line 1280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->setAppLabelAndIcon(Landroid/content/pm/PackageInfo;)V

    .line 1281
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->refreshButtons()V

    .line 1282
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->refreshSizeInfo()V

    .line 1284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mSdCardSpaceTask:Lcom/android/settings/applications/InstalledAppDetails$SdCardSpaceTask;

    move-object/from16 v44, v0

    if-eqz v44, :cond_19

    .line 1285
    const/16 v44, 0x0

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/applications/InstalledAppDetails;->mSdCardSpaceTask:Lcom/android/settings/applications/InstalledAppDetails$SdCardSpaceTask;

    .line 1287
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mSdCardSpaceTask:Lcom/android/settings/applications/InstalledAppDetails$SdCardSpaceTask;

    move-object/from16 v44, v0

    if-nez v44, :cond_1a

    .line 1288
    new-instance v44, Lcom/android/settings/applications/InstalledAppDetails$SdCardSpaceTask;

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/applications/InstalledAppDetails$SdCardSpaceTask;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/applications/InstalledAppDetails;->mSdCardSpaceTask:Lcom/android/settings/applications/InstalledAppDetails$SdCardSpaceTask;

    .line 1290
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mSdCardSpaceTask:Lcom/android/settings/applications/InstalledAppDetails$SdCardSpaceTask;

    move-object/from16 v45, v0

    sget-object v46, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/16 v44, 0x0

    check-cast v44, [Ljava/lang/Void;

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/InstalledAppDetails$SdCardSpaceTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1293
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mInitialized:Z

    move/from16 v44, v0

    if-nez v44, :cond_21

    .line 1295
    const/16 v44, 0x1

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/applications/InstalledAppDetails;->mInitialized:Z

    .line 1296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v44, v0

    const/high16 v45, 0x800000

    and-int v44, v44, v45

    if-nez v44, :cond_20

    const/16 v44, 0x1

    :goto_f
    move/from16 v0, v44

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/applications/InstalledAppDetails;->mShowUninstalled:Z

    .line 1315
    :cond_1b
    const/16 v44, 0x1

    goto/16 :goto_0

    .line 1259
    .restart local v5    # "N":I
    .restart local v29    # "packages":[Ljava/lang/String;
    .restart local v32    # "pnames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .restart local v35    # "res":Landroid/content/res/Resources;
    .restart local v40    # "securityList":Landroid/widget/LinearLayout;
    :cond_1c
    const/16 v44, 0x2

    move/from16 v0, v44

    if-ne v5, v0, :cond_1d

    .line 1260
    const v44, 0x7f0b0388

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    const/16 v47, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v47

    aput-object v47, v45, v46

    const/16 v46, 0x1

    const/16 v47, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v47

    aput-object v47, v45, v46

    move-object/from16 v0, v35

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "appListStr":Ljava/lang/String;
    goto/16 :goto_e

    .line 1263
    .end local v11    # "appListStr":Ljava/lang/String;
    :cond_1d
    add-int/lit8 v44, v5, -0x2

    move-object/from16 v0, v32

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Ljava/lang/CharSequence;

    invoke-interface/range {v44 .. v44}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1264
    .restart local v11    # "appListStr":Ljava/lang/String;
    add-int/lit8 v24, v5, -0x3

    :goto_10
    if-ltz v24, :cond_1f

    .line 1265
    if-nez v24, :cond_1e

    const v44, 0x7f0b038a

    :goto_11
    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v47

    aput-object v47, v45, v46

    const/16 v46, 0x1

    aput-object v11, v45, v46

    move-object/from16 v0, v35

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 1264
    add-int/lit8 v24, v24, -0x1

    goto :goto_10

    .line 1265
    :cond_1e
    const v44, 0x7f0b038b

    goto :goto_11

    .line 1268
    :cond_1f
    const v44, 0x7f0b0389

    const/16 v45, 0x2

    move/from16 v0, v45

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v45, v0

    const/16 v46, 0x0

    aput-object v11, v45, v46

    const/16 v46, 0x1

    add-int/lit8 v47, v5, -0x1

    move-object/from16 v0, v32

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v47

    aput-object v47, v45, v46

    move-object/from16 v0, v35

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_e

    .line 1296
    .end local v5    # "N":I
    .end local v11    # "appListStr":Ljava/lang/String;
    .end local v29    # "packages":[Ljava/lang/String;
    .end local v32    # "pnames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v35    # "res":Landroid/content/res/Resources;
    .end local v40    # "securityList":Landroid/widget/LinearLayout;
    :cond_20
    const/16 v44, 0x0

    goto/16 :goto_f

    .line 1301
    :cond_21
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v45, v0

    const/16 v46, 0x2200

    invoke-virtual/range {v44 .. v46}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 1304
    .restart local v8    # "ainfo":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mShowUninstalled:Z

    move/from16 v44, v0

    if-nez v44, :cond_1b

    .line 1308
    iget v0, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v44, v0
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    const/high16 v45, 0x800000

    and-int v44, v44, v45

    if-eqz v44, :cond_22

    const/16 v44, 0x1

    goto/16 :goto_0

    :cond_22
    const/16 v44, 0x0

    goto/16 :goto_0

    .line 1310
    .end local v8    # "ainfo":Landroid/content/pm/ApplicationInfo;
    :catch_2
    move-exception v20

    .line 1311
    .local v20, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/16 v44, 0x0

    goto/16 :goto_0
.end method

.method private resetLaunchDefaultsUi(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 2
    .param p1, "title"    # Landroid/widget/TextView;
    .param p2, "autoLaunchView"    # Landroid/widget/TextView;

    .prologue
    .line 1378
    const v0, 0x7f0b034c

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1379
    const v0, 0x7f0b0361

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1381
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1382
    return-void
.end method

.method private retrieveAppEntry()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 1007
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 1008
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_3

    const-string v5, "package"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1009
    .local v4, "packageName":Ljava/lang/String;
    :goto_0
    if-nez v4, :cond_2

    .line 1010
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 1011
    .local v3, "intentEx":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 1012
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v3, :cond_0

    .line 1013
    const-string v5, "new_intent"

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_0

    .line 1014
    move-object v2, v3

    .line 1018
    :cond_0
    if-nez v2, :cond_1

    .line 1019
    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 1022
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1023
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    .line 1027
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "intentEx":Landroid/content/Intent;
    :cond_2
    const-string v5, "InstalledAppDetails"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "retrieveAppEntry  packageName:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mState:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v5, v4}, Lcom/android/settings/applications/ApplicationsState;->getEntry(Ljava/lang/String;)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 1029
    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    if-eqz v5, :cond_5

    .line 1032
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v7, 0x2240

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1044
    :goto_2
    return-object v4

    .end local v4    # "packageName":Ljava/lang/String;
    :cond_3
    move-object v4, v6

    .line 1008
    goto :goto_0

    .line 1019
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "intentEx":Landroid/content/Intent;
    .restart local v4    # "packageName":Ljava/lang/String;
    :cond_4
    const-string v5, "intent"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    move-object v2, v5

    goto :goto_1

    .line 1036
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "intentEx":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 1037
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "InstalledAppDetails"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception when retrieving package:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1040
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_5
    const-string v5, "InstalledAppDetails"

    const-string v7, "Missing AppEntry; maybe reinstalling?"

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    iput-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    goto :goto_2
.end method

.method private setAppLabelAndIcon(Landroid/content/pm/PackageInfo;)V
    .locals 9
    .param p1, "pkgInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v8, 0x0

    .line 858
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v4, 0x7f0e0018

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 859
    .local v0, "appSnippet":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v8, v3, v8, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 861
    const v3, 0x7f0e0013

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 866
    .local v1, "icon":Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAsyncImageLoader:Lcom/vivo/settings/AsyncImageLoader;

    iget-object v4, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v5, 0x0

    new-instance v6, Lcom/android/settings/applications/InstalledAppDetails$3;

    invoke-direct {v6, p0}, Lcom/android/settings/applications/InstalledAppDetails$3;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    invoke-virtual {v3, v4, v5, v1, v6}, Lcom/vivo/settings/AsyncImageLoader;->loadDrawable(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Landroid/widget/ImageView;Lcom/vivo/settings/AsyncImageLoader$ImageCallback;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mCachedImage:Landroid/graphics/drawable/Drawable;

    .line 874
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mCachedImage:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_0

    .line 875
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAsyncImageLoader:Lcom/vivo/settings/AsyncImageLoader;

    invoke-virtual {v3}, Lcom/vivo/settings/AsyncImageLoader;->getDefaultItemIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 881
    :goto_0
    const v3, 0x7f0e0014

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 882
    .local v2, "label":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 884
    const v3, 0x7f0e014e

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    .line 886
    if-eqz p1, :cond_1

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 887
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 888
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0b0391

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 893
    :goto_1
    return-void

    .line 877
    .end local v2    # "label":Landroid/widget/TextView;
    :cond_0
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mCachedImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 891
    .restart local v2    # "label":Landroid/widget/TextView;
    :cond_1
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppVersion:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private setIntentAndFinish(ZZ)V
    .locals 3
    .param p1, "finish"    # Z
    .param p2, "appChanged"    # Z

    .prologue
    .line 1386
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1387
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "chg"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1388
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    .line 1389
    .local v1, "sa":Lcom/android/settings/SettingsActivity;
    const/4 v2, -0x1

    invoke-virtual {v1, p0, v2, v0}, Lcom/android/settings/SettingsActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    .line 1390
    return-void
.end method

.method private setNotificationsEnabled(Z)V
    .locals 10
    .param p1, "enabled"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2003
    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2004
    .local v4, "packageName":Ljava/lang/String;
    const-string v7, "notification"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v3

    .line 2006
    .local v3, "nm":Landroid/app/INotificationManager;
    const-string v7, "InstalledAppDetails"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setNotificationsEnabled enabled:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2009
    :try_start_0
    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v7}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    .line 2010
    .local v0, "enable":Z
    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v3, v4, v7, p1}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V

    .line 2011
    new-instance v2, Landroid/content/Intent;

    const-string v7, "intent.action.notifcation.ops.changed"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2012
    .local v2, "mIntent":Landroid/content/Intent;
    const-string v7, "pkg"

    invoke-virtual {v2, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2013
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 2015
    if-eq v0, p1, :cond_0

    .line 2016
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->checkChangedFlag:Z

    .line 2017
    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v7, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 2018
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->checkChangedFlag:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2023
    .end local v0    # "enable":Z
    .end local v2    # "mIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 2020
    :catch_0
    move-exception v1

    .line 2021
    .local v1, "ex":Landroid/os/RemoteException;
    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    if-nez p1, :cond_1

    :goto_1
    invoke-virtual {v7, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0

    :cond_1
    move v5, v6

    goto :goto_1
.end method

.method private showDialogInner(II)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "moveErrorCode"    # I

    .prologue
    .line 1587
    invoke-static {p1, p2}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->newInstance(II)Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;

    move-result-object v1

    .line 1588
    .local v1, "newFragment":Landroid/app/DialogFragment;
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1591
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dialog "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1595
    :goto_0
    return-void

    .line 1592
    :catch_0
    move-exception v0

    .line 1593
    .local v0, "ignored":Ljava/lang/IllegalStateException;
    const-string v2, "InstalledAppDetails"

    const-string v3, "IllegalStateException exception but ignore"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private showMovingDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2596
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->loadingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 2597
    const-string v0, "InstalledAppDetails"

    const-string v1, "showMovingDialog ProgressDialog is showing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2599
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->loadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2618
    :goto_0
    return-void

    .line 2605
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->loadingDialog:Landroid/app/ProgressDialog;

    .line 2609
    :cond_1
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->loadingDialog:Landroid/app/ProgressDialog;

    .line 2611
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->loadingDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0b0989

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2612
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->loadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 2613
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->loadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 2614
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->loadingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 2616
    const-string v0, "InstalledAppDetails"

    const-string v1, "showMovingDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private signaturesMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkg1"    # Ljava/lang/String;
    .param p2, "pkg2"    # Ljava/lang/String;

    .prologue
    .line 1048
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1050
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1051
    .local v0, "match":I
    if-ltz v0, :cond_0

    .line 1052
    const/4 v1, 0x1

    .line 1059
    .end local v0    # "match":I
    :goto_0
    return v1

    .line 1054
    :catch_0
    move-exception v1

    .line 1059
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private uninstallPkg(Ljava/lang/String;ZZ)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "allUsers"    # Z
    .param p3, "andDisable"    # Z

    .prologue
    .line 1905
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1906
    .local v0, "packageURI":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1907
    .local v1, "uninstallIntent":Landroid/content/Intent;
    const-string v2, "android.intent.extra.UNINSTALL_ALL_USERS"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1908
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/applications/InstalledAppDetails;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1909
    iput-boolean p3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDisableAfterUninstall:Z

    .line 1910
    return-void
.end method

.method private updateForceStopButton(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 1948
    iget-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppControlRestricted:Z

    if-eqz v0, :cond_0

    .line 1949
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1954
    :goto_0
    return-void

    .line 1951
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1952
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 834
    invoke-super {p0, p1, p2, p3}, Lcom/vivo/settings/VivoFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 835
    if-ne p1, v5, :cond_1

    .line 836
    iget-boolean v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDisableAfterUninstall:Z

    if-eqz v1, :cond_0

    .line 837
    iput-boolean v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDisableAfterUninstall:Z

    .line 839
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v3, 0x2200

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 842
    .local v0, "ainfo":Landroid/content/pm/ApplicationInfo;
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_0

    .line 843
    new-instance v2, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v1, v3}, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;-><init>(Lcom/android/settings/applications/InstalledAppDetails;Landroid/content/pm/ApplicationInfo;I)V

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 850
    .end local v0    # "ainfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->refreshUi()Z

    move-result v1

    if-nez v1, :cond_1

    .line 851
    invoke-direct {p0, v5, v5}, Lcom/android/settings/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    .line 854
    :cond_1
    return-void

    .line 847
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onAllSizesComputed()V
    .locals 0

    .prologue
    .line 961
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2368
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-nez v4, :cond_2

    .line 2369
    :cond_0
    const-string v2, "InstalledAppDetails"

    const-string v3, "onCheckedChanged mAppEntry or mAppEntry.info is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2392
    :cond_1
    :goto_0
    return-void

    .line 2373
    :cond_2
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2374
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2376
    .local v0, "am":Landroid/app/ActivityManager;
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAskCompatibilityCB:Landroid/widget/CheckBox;

    if-ne p1, v4, :cond_3

    .line 2377
    invoke-virtual {v0, v1, p2}, Landroid/app/ActivityManager;->setPackageAskScreenCompat(Ljava/lang/String;Z)V

    goto :goto_0

    .line 2378
    :cond_3
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mEnableCompatibilityCB:Landroid/widget/CheckBox;

    if-ne p1, v4, :cond_5

    .line 2379
    if-eqz p2, :cond_4

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->setPackageScreenCompatMode(Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_1

    .line 2381
    :cond_5
    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    if-ne p1, v4, :cond_1

    .line 2383
    iget-boolean v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->checkChangedFlag:Z

    if-nez v4, :cond_1

    .line 2386
    if-nez p2, :cond_6

    .line 2387
    const/16 v2, 0x8

    invoke-direct {p0, v2, v3}, Lcom/android/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0

    .line 2389
    :cond_6
    invoke-direct {p0, v2}, Lcom/android/settings/applications/InstalledAppDetails;->setNotificationsEnabled(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2041
    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-nez v7, :cond_2

    .line 2042
    :cond_0
    const-string v7, "InstalledAppDetails"

    const-string v8, "onClick mAppEntry or mAppEntry.info is null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2216
    :cond_1
    :goto_0
    return-void

    .line 2045
    :cond_2
    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2046
    .local v6, "packageName":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    if-ne p1, v7, :cond_7

    .line 2047
    const-string v7, "InstalledAppDetails"

    const-string v8, "click uninstall button"

    invoke-static {v7, v8}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2048
    iget-boolean v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v7, :cond_3

    .line 2049
    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-direct {p0, v7, v8}, Lcom/android/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0

    .line 2051
    :cond_3
    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_5

    .line 2052
    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v7, v7, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v7, :cond_4

    .line 2053
    const/4 v7, 0x7

    const/4 v8, 0x0

    invoke-direct {p0, v7, v8}, Lcom/android/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0

    .line 2055
    :cond_4
    new-instance v8, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;

    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v7, v9}, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;-><init>(Lcom/android/settings/applications/InstalledAppDetails;Landroid/content/pm/ApplicationInfo;I)V

    const/4 v7, 0x1

    new-array v9, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/4 v7, 0x0

    check-cast v7, Ljava/lang/Object;

    aput-object v7, v9, v10

    invoke-virtual {v8, v9}, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 2059
    :cond_5
    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v8, 0x800000

    and-int/2addr v7, v8

    if-nez v7, :cond_6

    .line 2060
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/android/settings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 2062
    :cond_6
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, Lcom/android/settings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 2065
    :cond_7
    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSpecialDisableButton:Landroid/widget/Button;

    if-ne p1, v7, :cond_8

    .line 2066
    const/16 v7, 0xd

    const/4 v8, 0x0

    invoke-direct {p0, v7, v8}, Lcom/android/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_0

    .line 2067
    :cond_8
    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    if-ne p1, v7, :cond_9

    .line 2068
    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    if-eqz v7, :cond_1

    .line 2069
    const-string v7, "InstalledAppDetails"

    const-string v8, "click activiies button"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2070
    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v6}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 2072
    :try_start_0
    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-interface {v7, v6, v8}, Landroid/hardware/usb/IUsbManager;->clearDefaults(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2076
    :goto_1
    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v6, v8}, Landroid/appwidget/AppWidgetManager;->setBindAppWidgetPermission(Ljava/lang/String;Z)V

    .line 2077
    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v8, 0x7f0e012a

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2079
    .local v1, "autoLaunchTitleView":Landroid/widget/TextView;
    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    const v8, 0x7f0e012b

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2080
    .local v2, "autoLaunchView":Landroid/widget/TextView;
    invoke-direct {p0, v1, v2}, Lcom/android/settings/applications/InstalledAppDetails;->resetLaunchDefaultsUi(Landroid/widget/TextView;Landroid/widget/TextView;)V

    goto/16 :goto_0

    .line 2073
    .end local v1    # "autoLaunchTitleView":Landroid/widget/TextView;
    .end local v2    # "autoLaunchView":Landroid/widget/TextView;
    :catch_0
    move-exception v4

    .line 2074
    .local v4, "e":Landroid/os/RemoteException;
    const-string v7, "InstalledAppDetails"

    const-string v8, "mUsbManager.clearDefaults"

    invoke-static {v7, v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2082
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_9
    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    if-ne p1, v7, :cond_a

    .line 2094
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct {p0, v7, v8}, Lcom/android/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto/16 :goto_0

    .line 2096
    :cond_a
    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    if-ne p1, v7, :cond_c

    .line 2097
    const-string v7, "InstalledAppDetails"

    const-string v8, "click clear cache button"

    invoke-static {v7, v8}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2099
    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearCacheObserver:Lcom/android/settings/applications/InstalledAppDetails$ClearCacheObserver;

    if-nez v7, :cond_b

    .line 2100
    new-instance v7, Lcom/android/settings/applications/InstalledAppDetails$ClearCacheObserver;

    invoke-direct {v7, p0}, Lcom/android/settings/applications/InstalledAppDetails$ClearCacheObserver;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    iput-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearCacheObserver:Lcom/android/settings/applications/InstalledAppDetails$ClearCacheObserver;

    .line 2102
    :cond_b
    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v8, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearCacheObserver:Lcom/android/settings/applications/InstalledAppDetails$ClearCacheObserver;

    invoke-virtual {v7, v6, v8}, Landroid/content/pm/PackageManager;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    goto/16 :goto_0

    .line 2103
    :cond_c
    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    if-ne p1, v7, :cond_d

    .line 2104
    const-string v7, "InstalledAppDetails"

    const-string v8, "click force stop button"

    invoke-static {v7, v8}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2105
    const/4 v7, 0x5

    const/4 v8, 0x0

    invoke-direct {p0, v7, v8}, Lcom/android/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto/16 :goto_0

    .line 2107
    :cond_d
    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    if-ne p1, v7, :cond_1d

    .line 2108
    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageMoveObserver:Lcom/android/settings/applications/InstalledAppDetails$PackageMoveObserver;

    if-nez v7, :cond_e

    .line 2109
    new-instance v7, Lcom/android/settings/applications/InstalledAppDetails$PackageMoveObserver;

    invoke-direct {v7, p0}, Lcom/android/settings/applications/InstalledAppDetails$PackageMoveObserver;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    iput-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageMoveObserver:Lcom/android/settings/applications/InstalledAppDetails$PackageMoveObserver;

    .line 2112
    :cond_e
    const-string v7, "persist.sys.new.install.policy"

    const-string v8, "0"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "0"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 2114
    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v8, 0x40000

    and-int/2addr v7, v8

    if-eqz v7, :cond_10

    const/4 v5, 0x1

    .line 2119
    .local v5, "moveFlags":I
    :goto_2
    iput v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->moveFlag:I

    .line 2120
    const-string v7, "InstalledAppDetails"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  moveFlag = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->moveFlag:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2121
    iget v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->moveFlag:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_15

    .line 2123
    const-string v7, "InstalledAppDetails"

    const-string v8, "to judge sdStatus state !"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2124
    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->sdStatus:Ljava/lang/String;

    if-nez v7, :cond_f

    .line 2125
    const-string v7, "InstalledAppDetails"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  sdStatus is : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->sdStatus:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2127
    const-wide/16 v8, 0xc8

    :try_start_1
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2133
    :cond_f
    :goto_3
    const-string v7, "InstalledAppDetails"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  now sdStatus is : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->sdStatus:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " dataSpaceEnough:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->dataSpaceEnough:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mDataFreeStorage:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDataFreeStorage:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2134
    iget-wide v8, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDataFreeStorage:J

    const-wide/16 v10, 0x64

    cmp-long v7, v8, v10

    if-gez v7, :cond_11

    .line 2136
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/android/settings/applications/InstalledAppDetails;->limitInternalSpace(I)V

    goto/16 :goto_0

    .line 2114
    .end local v5    # "moveFlags":I
    :cond_10
    const/4 v5, 0x2

    goto/16 :goto_2

    .line 2128
    .restart local v5    # "moveFlags":I
    :catch_1
    move-exception v4

    .line 2130
    .local v4, "e":Ljava/lang/InterruptedException;
    const-string v7, "InstalledAppDetails"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "java.lang.InterruptedException is : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2137
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :cond_11
    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->sdStatus:Ljava/lang/String;

    if-eqz v7, :cond_12

    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->sdStatus:Ljava/lang/String;

    const-string v8, "shared"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 2138
    const/16 v7, 0xc

    const/4 v8, 0x0

    invoke-direct {p0, v7, v8}, Lcom/android/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto/16 :goto_0

    .line 2139
    :cond_12
    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->sdStatus:Ljava/lang/String;

    if-eqz v7, :cond_13

    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->sdStatus:Ljava/lang/String;

    const-string v8, "mounted"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_13

    .line 2140
    const/16 v7, 0x9

    const/4 v8, 0x0

    invoke-direct {p0, v7, v8}, Lcom/android/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto/16 :goto_0

    .line 2141
    :cond_13
    iget-boolean v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->sdSpaceEnough:Z

    if-nez v7, :cond_14

    .line 2142
    const/16 v7, 0xa

    const/4 v8, 0x0

    invoke-direct {p0, v7, v8}, Lcom/android/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto/16 :goto_0

    .line 2144
    :cond_14
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveInProgress:Z

    .line 2145
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->refreshButtons()V

    .line 2146
    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v8, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v8, v8, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageMoveObserver:Lcom/android/settings/applications/InstalledAppDetails$PackageMoveObserver;

    invoke-virtual {v7, v8, v9, v5}, Landroid/content/pm/PackageManager;->movePackage(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;I)V

    goto/16 :goto_0

    .line 2149
    :cond_15
    const-string v7, "InstalledAppDetails"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dataSpaceEnough is : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->dataSpaceEnough:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2150
    iget-boolean v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->dataSpaceEnough:Z

    if-nez v7, :cond_16

    .line 2152
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/android/settings/applications/InstalledAppDetails;->limitInternalSpace(I)V

    goto/16 :goto_0

    .line 2154
    :cond_16
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveInProgress:Z

    .line 2155
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->refreshButtons()V

    .line 2156
    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v8, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v8, v8, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageMoveObserver:Lcom/android/settings/applications/InstalledAppDetails$PackageMoveObserver;

    invoke-virtual {v7, v8, v9, v5}, Landroid/content/pm/PackageManager;->movePackage(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;I)V

    goto/16 :goto_0

    .line 2161
    .end local v5    # "moveFlags":I
    :cond_17
    const-string v7, "InstalledAppDetails"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  now sdStatus is : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->sdStatus:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mDataFreeStorage:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDataFreeStorage:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " isTFSupport:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Lcom/android/settings/applications/InstalledAppDetails;->isTFSupport:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2162
    iget-wide v8, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDataFreeStorage:J

    const-wide/16 v10, 0x64

    cmp-long v7, v8, v10

    if-gez v7, :cond_18

    .line 2163
    const/16 v7, 0xb

    const/4 v8, 0x0

    invoke-direct {p0, v7, v8}, Lcom/android/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto/16 :goto_0

    .line 2167
    :cond_18
    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveToItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 2168
    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v8, 0x40000

    and-int/2addr v7, v8

    if-eqz v7, :cond_19

    .line 2170
    const-string v7, "InstalledAppDetails"

    const-string v8, "onClick mMoveToItems in sd card"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2171
    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveToItems:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/settings/applications/InstalledAppDetails$MoveToItem;

    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mContext:Landroid/content/Context;

    const v10, 0x7f0b08d2

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x4

    invoke-direct {v8, p0, v9, v10}, Lcom/android/settings/applications/InstalledAppDetails$MoveToItem;-><init>(Lcom/android/settings/applications/InstalledAppDetails;Ljava/lang/String;I)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2172
    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveToItems:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/settings/applications/InstalledAppDetails$MoveToItem;

    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mContext:Landroid/content/Context;

    const v10, 0x7f0b0379

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-direct {v8, p0, v9, v10}, Lcom/android/settings/applications/InstalledAppDetails$MoveToItem;-><init>(Lcom/android/settings/applications/InstalledAppDetails;Ljava/lang/String;I)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2191
    :goto_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mContext:Landroid/content/Context;

    invoke-direct {v0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2192
    .local v0, "ab":Landroid/app/AlertDialog$Builder;
    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveToAdapter:Lcom/android/settings/applications/InstalledAppDetails$MyAdapter;

    iget-object v8, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveToClick:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x1010355

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0b0987

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2197
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 2198
    .local v3, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v3}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 2199
    invoke-virtual {v3}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/applications/InstalledAppDetails;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mContext:Landroid/content/Context;

    const v10, 0x1010214

    invoke-static {v9, v10}, Lvivo/util/VivoThemeUtil;->getAttributeResId(Landroid/content/Context;I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 2201
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 2173
    .end local v0    # "ab":Landroid/app/AlertDialog$Builder;
    .end local v3    # "dialog":Landroid/app/AlertDialog;
    :cond_19
    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flagsEx:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_1b

    .line 2175
    const-string v7, "InstalledAppDetails"

    const-string v8, "onClick mMoveToItems in U_disk"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2176
    sget-boolean v7, Lcom/android/settings/applications/InstalledAppDetails;->isTFSupport:Z

    if-eqz v7, :cond_1a

    .line 2177
    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveToItems:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/settings/applications/InstalledAppDetails$MoveToItem;

    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mContext:Landroid/content/Context;

    const v10, 0x7f0b037a

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    invoke-direct {v8, p0, v9, v10}, Lcom/android/settings/applications/InstalledAppDetails$MoveToItem;-><init>(Lcom/android/settings/applications/InstalledAppDetails;Ljava/lang/String;I)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2178
    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveToItems:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/settings/applications/InstalledAppDetails$MoveToItem;

    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mContext:Landroid/content/Context;

    const v10, 0x7f0b0379

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-direct {v8, p0, v9, v10}, Lcom/android/settings/applications/InstalledAppDetails$MoveToItem;-><init>(Lcom/android/settings/applications/InstalledAppDetails;Ljava/lang/String;I)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 2180
    :cond_1a
    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveToItems:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/settings/applications/InstalledAppDetails$MoveToItem;

    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mContext:Landroid/content/Context;

    const v10, 0x7f0b0379

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-direct {v8, p0, v9, v10}, Lcom/android/settings/applications/InstalledAppDetails$MoveToItem;-><init>(Lcom/android/settings/applications/InstalledAppDetails;Ljava/lang/String;I)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 2183
    :cond_1b
    sget-boolean v7, Lcom/android/settings/applications/InstalledAppDetails;->isTFSupport:Z

    if-eqz v7, :cond_1c

    .line 2184
    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveToItems:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/settings/applications/InstalledAppDetails$MoveToItem;

    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mContext:Landroid/content/Context;

    const v10, 0x7f0b08d2

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x4

    invoke-direct {v8, p0, v9, v10}, Lcom/android/settings/applications/InstalledAppDetails$MoveToItem;-><init>(Lcom/android/settings/applications/InstalledAppDetails;Ljava/lang/String;I)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2185
    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveToItems:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/settings/applications/InstalledAppDetails$MoveToItem;

    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mContext:Landroid/content/Context;

    const v10, 0x7f0b037a

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    invoke-direct {v8, p0, v9, v10}, Lcom/android/settings/applications/InstalledAppDetails$MoveToItem;-><init>(Lcom/android/settings/applications/InstalledAppDetails;Ljava/lang/String;I)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 2187
    :cond_1c
    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveToItems:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/settings/applications/InstalledAppDetails$MoveToItem;

    iget-object v9, p0, Lcom/android/settings/applications/InstalledAppDetails;->mContext:Landroid/content/Context;

    const v10, 0x7f0b08d2

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x4

    invoke-direct {v8, p0, v9, v10}, Lcom/android/settings/applications/InstalledAppDetails$MoveToItem;-><init>(Lcom/android/settings/applications/InstalledAppDetails;Ljava/lang/String;I)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 2207
    :cond_1d
    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLaunchButton:Landroid/widget/Button;

    if-ne p1, v7, :cond_1

    .line 2209
    :try_start_2
    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mIntent:Landroid/content/Intent;

    if-eqz v7, :cond_1

    .line 2210
    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v7}, Lcom/android/settings/applications/InstalledAppDetails;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 2212
    :catch_2
    move-exception v4

    .line 2213
    .local v4, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f0b0858

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 620
    invoke-super {p0, p1}, Lcom/vivo/settings/VivoFragment;->onCreate(Landroid/os/Bundle;)V

    .line 622
    const-string v2, "InstalledAppDetails"

    const-string v3, "onCreate() begin"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 624
    const-string v2, "InstalledAppDetails"

    const-string v3, "monkey is running, finish"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 628
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settings/applications/ApplicationsState;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mState:Lcom/android/settings/applications/ApplicationsState;

    .line 629
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mState:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v2, p0}, Lcom/android/settings/applications/ApplicationsState;->newSession(Lcom/android/settings/applications/ApplicationsState$Callbacks;)Lcom/android/settings/applications/ApplicationsState$Session;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSession:Lcom/android/settings/applications/ApplicationsState$Session;

    .line 630
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    .line 631
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "user"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iput-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    .line 632
    const-string v2, "usb"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 633
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    .line 634
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 635
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    iput-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 636
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSmsManager:Lcom/android/internal/telephony/ISms;

    .line 638
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mContext:Landroid/content/Context;

    .line 639
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAsyncImageLoader:Lcom/vivo/settings/AsyncImageLoader;

    if-nez v2, :cond_1

    .line 640
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/vivo/settings/AsyncImageLoader;->getInstance(Landroid/content/Context;)Lcom/vivo/settings/AsyncImageLoader;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAsyncImageLoader:Lcom/vivo/settings/AsyncImageLoader;

    .line 642
    :cond_1
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSDStorageManager:Landroid/os/storage/StorageManager;

    if-nez v2, :cond_2

    .line 643
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "storage"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    iput-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSDStorageManager:Landroid/os/storage/StorageManager;

    .line 644
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSDStorageManager:Landroid/os/storage/StorageManager;

    if-nez v2, :cond_2

    .line 645
    const-string v2, "InstalledAppDetails"

    const-string v3, "Failed to get StorageManager"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    :cond_2
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSDStorageManager:Landroid/os/storage/StorageManager;

    invoke-static {v2}, Lcom/vivo/settings/StorageManagerWrapper;->getInstance(Ljava/lang/Object;)Lcom/vivo/settings/StorageManagerWrapper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mStorageManagerWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    .line 649
    const-string v2, "persist.sys.app.move.internal"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 650
    const-string v2, "InstalledAppDetails"

    const-string v3, "no need to judge whether surport TF card !"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :goto_0
    const-string v2, "1"

    const-string v3, "persist.sys.primary.emulate"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lcom/android/settings/applications/InstalledAppDetails;->mIsEmulate:Z

    .line 656
    const-string v2, "InstalledAppDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate isTFSurport   is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/settings/applications/InstalledAppDetails;->isTFSupport:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mIsEmulate:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/settings/applications/InstalledAppDetails;->mIsEmulate:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    new-instance v1, Landroid/content/IntentFilter;

    sget-object v2, Lcom/android/settings/applications/InstalledAppDetails;->ACTION_NOTIFICATION_STATE_CHANGE:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 664
    .local v1, "intentNotificationFilter":Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mNotificationReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 667
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSoftReference:Ljava/lang/ref/SoftReference;

    .line 670
    new-instance v2, Lcom/android/settings/applications/CanBeOnSdCardChecker;

    invoke-direct {v2}, Lcom/android/settings/applications/CanBeOnSdCardChecker;-><init>()V

    iput-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mCanBeOnSdCardChecker:Lcom/android/settings/applications/CanBeOnSdCardChecker;

    .line 673
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSession:Lcom/android/settings/applications/ApplicationsState$Session;

    invoke-virtual {v2}, Lcom/android/settings/applications/ApplicationsState$Session;->resume()V

    .line 675
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->retrieveAppEntry()Ljava/lang/String;

    .line 677
    new-instance v2, Lcom/android/settings/applications/InstalledAppDetails$MyAdapter;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/settings/applications/InstalledAppDetails$MyAdapter;-><init>(Lcom/android/settings/applications/InstalledAppDetails;Lcom/android/settings/applications/InstalledAppDetails$1;)V

    iput-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveToAdapter:Lcom/android/settings/applications/InstalledAppDetails$MyAdapter;

    .line 679
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/InstalledAppDetails;->setHasOptionsMenu(Z)V

    .line 681
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/vivo/settings/applications/ApplicationNotifiData;->getInstance(Landroid/content/Context;)Lcom/vivo/settings/applications/ApplicationNotifiData;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mApplicationNofifiData:Lcom/vivo/settings/applications/ApplicationNotifiData;

    .line 683
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "storage"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    iput-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 684
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 685
    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mExtStoragePath:Ljava/lang/String;

    .line 686
    const-string v2, "InstalledAppDetails"

    const-string v3, "onCreate() end"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    return-void

    .line 652
    .end local v1    # "intentNotificationFilter":Landroid/content/IntentFilter;
    :cond_3
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mStorageManagerWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    invoke-virtual {v2}, Lcom/vivo/settings/StorageManagerWrapper;->isSupportTF()Z

    move-result v2

    sput-boolean v2, Lcom/android/settings/applications/InstalledAppDetails;->isTFSupport:Z

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 799
    const v0, 0x7f0b035a

    invoke-interface {p1, v1, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 801
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v10, 0x7f0e0239

    const v9, 0x7f0e0238

    const/4 v8, 0x0

    .line 706
    const v6, 0x7f040063

    invoke-virtual {p1, v6, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 707
    .local v5, "view":Landroid/view/View;
    const-string v6, "InstalledAppDetails"

    const-string v7, "onCreateView() begin"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    const v6, 0x7f0e0017

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 709
    .local v0, "allDetails":Landroid/view/ViewGroup;
    const/4 v6, 0x1

    invoke-static {v0, v6}, Lcom/android/settings/Utils;->forceCustomPadding(Landroid/view/View;Z)V

    .line 711
    iput-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mRootView:Landroid/view/View;

    .line 712
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0b038e

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mComputingStr:Ljava/lang/CharSequence;

    .line 715
    const v6, 0x7f0e011a

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mTotalSize:Landroid/widget/TextView;

    .line 716
    const v6, 0x7f0e011c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppSize:Landroid/widget/TextView;

    .line 717
    const v6, 0x7f0e0121

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDataSize:Landroid/widget/TextView;

    .line 718
    const v6, 0x7f0e011e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mExternalCodeSize:Landroid/widget/TextView;

    .line 720
    const v6, 0x7f0e011d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mExternalCodeSizePrefix:Landroid/widget/TextView;

    .line 721
    const v6, 0x7f0e0122

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mExternalDataSizePrefix:Landroid/widget/TextView;

    .line 723
    sget-boolean v6, Lcom/android/settings/applications/InstalledAppDetails;->isTFSupport:Z

    if-nez v6, :cond_2

    sget-boolean v6, Lcom/android/settings/applications/InstalledAppDetails;->mIsEmulate:Z

    if-eqz v6, :cond_2

    .line 724
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mExternalCodeSizePrefix:Landroid/widget/TextView;

    const v7, 0x7f0b0820

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 725
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mExternalDataSizePrefix:Landroid/widget/TextView;

    const v7, 0x7f0b0821

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 732
    :cond_0
    :goto_0
    const v6, 0x7f0e0123

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mExternalDataSize:Landroid/widget/TextView;

    .line 740
    const v6, 0x7f0e0115

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 741
    .local v1, "btnPanel":Landroid/view/View;
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    .line 742
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    const v7, 0x7f0b0353

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    .line 743
    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    .line 744
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 747
    const v6, 0x7f0e0116

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    .line 748
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 749
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSpecialDisableButton:Landroid/widget/Button;

    .line 750
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoreControlButtons:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 753
    const v6, 0x7f0e0124

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 757
    .local v3, "data_buttons_panel":Landroid/view/View;
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearDataButton:Landroid/widget/Button;

    .line 758
    invoke-virtual {v3, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMoveAppButton:Landroid/widget/Button;

    .line 771
    const v6, 0x7f0e0128

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mCacheSize:Landroid/widget/TextView;

    .line 772
    const v6, 0x7f0e0129

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mClearCacheButton:Landroid/widget/Button;

    .line 774
    const v6, 0x7f0e012c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mActivitiesButton:Landroid/widget/Button;

    .line 777
    const v6, 0x7f0e0130

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mScreenCompatSection:Landroid/view/View;

    .line 778
    const v6, 0x7f0e0131

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    iput-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAskCompatibilityCB:Landroid/widget/CheckBox;

    .line 779
    const v6, 0x7f0e0132

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    iput-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mEnableCompatibilityCB:Landroid/widget/CheckBox;

    .line 781
    const v6, 0x7f0e0117

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CompoundButton;

    iput-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mNotificationSwitch:Landroid/widget/CompoundButton;

    .line 784
    invoke-static {}, Lcom/android/settings/AppFeature;->isCMCC()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 785
    const v6, 0x7f0e012f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLaunchButton:Landroid/widget/Button;

    .line 786
    const v6, 0x7f0e012d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 787
    .local v2, "c":Landroid/view/View;
    const v6, 0x7f0e012e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 788
    .local v4, "t":Landroid/view/View;
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLaunchButton:Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 789
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 790
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 793
    .end local v2    # "c":Landroid/view/View;
    .end local v4    # "t":Landroid/view/View;
    :cond_1
    const-string v6, "InstalledAppDetails"

    const-string v7, "onCreateView() end"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    return-object v5

    .line 726
    .end local v1    # "btnPanel":Landroid/view/View;
    .end local v3    # "data_buttons_panel":Landroid/view/View;
    :cond_2
    sget-boolean v6, Lcom/android/settings/applications/InstalledAppDetails;->isTFSupport:Z

    if-nez v6, :cond_0

    sget-boolean v6, Lcom/android/settings/applications/InstalledAppDetails;->mIsEmulate:Z

    if-nez v6, :cond_0

    .line 727
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mExternalCodeSizePrefix:Landroid/widget/TextView;

    const v7, 0x7f0b098d

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 728
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mExternalDataSizePrefix:Landroid/widget/TextView;

    const v7, 0x7f0b098e

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 937
    const-string v0, "InstalledAppDetails"

    const-string v1, "onDestroy() begin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mStorageListener:Landroid/os/storage/StorageEventListener;

    if-eqz v0, :cond_0

    .line 941
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 944
    :cond_0
    const-string v0, "InstalledAppDetails"

    const-string v1, "calling onDestroy !"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSession:Lcom/android/settings/applications/ApplicationsState$Session;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSession:Lcom/android/settings/applications/ApplicationsState$Session;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ApplicationsState$Session;->releaseMem(Lcom/android/settings/applications/ApplicationsState$Session;)V

    .line 946
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 947
    iput-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    .line 948
    iput-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSession:Lcom/android/settings/applications/ApplicationsState$Session;

    .line 949
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAsyncImageLoader:Lcom/vivo/settings/AsyncImageLoader;

    if-eqz v0, :cond_1

    .line 950
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAsyncImageLoader:Lcom/vivo/settings/AsyncImageLoader;

    invoke-virtual {v0}, Lcom/vivo/settings/AsyncImageLoader;->resetCachedDrawable()V

    .line 952
    :cond_1
    iput-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAsyncImageLoader:Lcom/vivo/settings/AsyncImageLoader;

    .line 954
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mNotificationReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 956
    invoke-super {p0}, Lcom/vivo/settings/VivoFragment;->onDestroy()V

    .line 957
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 929
    const-string v0, "InstalledAppDetails"

    const-string v1, "onDestroyView() begin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    invoke-super {p0}, Lcom/vivo/settings/VivoFragment;->onDestroyView()V

    .line 931
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSession:Lcom/android/settings/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsState$Session;->release()V

    .line 932
    const-string v0, "InstalledAppDetails"

    const-string v1, "onDestroyView() end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 824
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 825
    .local v0, "menuId":I
    if-ne v0, v1, :cond_0

    .line 826
    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v3, v1, v2}, Lcom/android/settings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    .line 829
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public onPackageIconChanged()V
    .locals 0

    .prologue
    .line 965
    return-void
.end method

.method public onPackageListChanged()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 970
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->isResumed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 971
    const-string v0, "InstalledAppDetails"

    const-string v1, "onPackageListChanged , not resumed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    :cond_0
    :goto_0
    return-void

    .line 976
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSession:Lcom/android/settings/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsState$Session;->resume()V

    .line 979
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->refreshUi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 980
    invoke-direct {p0, v1, v1}, Lcom/android/settings/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    goto :goto_0
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 992
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->isResumed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 993
    const-string v0, "InstalledAppDetails"

    const-string v1, "onPackageSizeChanged not resumed,not refresh size info"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    :cond_0
    :goto_0
    return-void

    .line 997
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 998
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->refreshSizeInfo()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 911
    invoke-super {p0}, Lcom/vivo/settings/VivoFragment;->onPause()V

    .line 913
    const-string v0, "InstalledAppDetails"

    const-string v1, " calling onPause !"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDisableNotification:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDisableNotification:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 915
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDisableNotification:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 916
    iput-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDisableNotification:Landroid/app/Dialog;

    .line 918
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSdCardSpaceTask:Lcom/android/settings/applications/InstalledAppDetails$SdCardSpaceTask;

    if-eqz v0, :cond_1

    .line 919
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSdCardSpaceTask:Lcom/android/settings/applications/InstalledAppDetails$SdCardSpaceTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/InstalledAppDetails$SdCardSpaceTask;->cancel(Z)Z

    .line 921
    :cond_1
    iput-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSdCardSpaceTask:Lcom/android/settings/applications/InstalledAppDetails$SdCardSpaceTask;

    .line 923
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSession:Lcom/android/settings/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsState$Session;->pause()V

    .line 924
    const-string v0, "InstalledAppDetails"

    const-string v1, "onPause() end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 805
    const/4 v0, 0x1

    .line 806
    .local v0, "showIt":Z
    iget-boolean v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v1, :cond_1

    .line 807
    const/4 v0, 0x0

    .line 819
    :cond_0
    :goto_0
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 820
    return-void

    .line 808
    :cond_1
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    if-nez v1, :cond_2

    .line 809
    const/4 v0, 0x0

    goto :goto_0

    .line 810
    :cond_2
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    .line 811
    const/4 v0, 0x0

    goto :goto_0

    .line 812
    :cond_3
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 813
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 814
    :cond_5
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_6

    .line 815
    const/4 v0, 0x0

    goto :goto_0

    .line 816
    :cond_6
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 817
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 987
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 897
    const-string v0, "InstalledAppDetails"

    const-string v1, "onResume() begin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    invoke-super {p0}, Lcom/vivo/settings/VivoFragment;->onResume()V

    .line 900
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    const-string v1, "no_control_apps"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppControlRestricted:Z

    .line 901
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->showBBKBackButton()V

    .line 902
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSession:Lcom/android/settings/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsState$Session;->resume()V

    .line 903
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->refreshUi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 904
    invoke-direct {p0, v2, v2}, Lcom/android/settings/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    .line 906
    :cond_0
    const-string v0, "InstalledAppDetails"

    const-string v1, "onResume() end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0
    .param p1, "running"    # Z

    .prologue
    .line 1004
    return-void
.end method
