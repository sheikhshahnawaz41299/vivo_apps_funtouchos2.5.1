.class public Lcom/android/settings/deviceinfo/UsbSettings;
.super Lcom/vivo/settings/VivoSettingsPreferenceFragment;
.source "UsbSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field private static final DLG_PROGRESS_UNMOUNT_MASS_STORAGE:I = 0x0

.field private static final DLG_SHOW_ADB_CONFIRM:I = 0x4

.field private static final DLG_TETHER_MASS_STORAGE:I = 0x3

.field private static final DLG_TETHER_MTP:I = 0x1

.field private static final DLG_TETHER_PTP:I = 0x2

.field private static final DLG_VIVO_ASSISTANT:I = 0x5

.field private static final DLG_VIVO_ASSISTANT_CONFIRM:I = 0x7

.field private static final DLG_VIVO_ASSISTANT_INSTALL:I = 0x6

.field private static final FILE_VIVO_ASSISTANT:Ljava/lang/String; = "/system/etc/autorun.iso"

.field private static final IS_CTS:Z

.field private static final IS_ENG:Z

.field private static final IS_INGORE_USB_SECURE:Z

.field private static final IS_NET_ENTRY:Z

.field private static final IS_OVERSEA:Z

.field private static final KEY_VIVO_LOG_CTRL:Ljava/lang/String; = "persist.sys.log.ctrl"

.field private static final MASS_STORAGE_TIME_OUT:J = 0x4e20L

.field public static final MSG_ASSISTANT_DEFAULT_STATUS:I = 0x2

.field public static final MSG_ASSISTANT_INSTALLED:I = 0x1

.field public static final MSG_ASSISTANT_INSTALLING:I = 0x0

.field public static final MSG_TOAST_PACKAGE_NOT_EXIST:I = 0x3

.field public static final MSG_UPDATE_USB_FUNCTION:I = 0x4

.field public static final SHOW_PC_ASSISTANT:Ljava/lang/String; = "show_pc_assistant"

.field private static final STORED_U_DICK_TOTAL_SIZE_KEY:Ljava/lang/String; = "stored_int_u_disk_totalSize"

.field private static final TAG:Ljava/lang/String; = "UsbSettings"

.field private static final USB_FUNCTION_BICR:Ljava/lang/String; = "bicr"

.field public static final USB_FUNCTION_CHARGING_ONLY:Ljava/lang/String; = "charging"

.field private static final USB_STATE_PATH:Ljava/lang/String; = "/sys/class/android_usb/android0/state"

.field private static volatile UmsSwitchTimeOut:J

.field private static volatile UmsSwitching:Z

.field private static mOldFunction:Ljava/lang/String;


# instance fields
.field private mAdbDialog:Landroid/app/Dialog;

.field private mAdbOkClicked:Z

.field private volatile mAllDisable:Z

.field private mAlwaysShowUsbSettings:Lcom/vivo/settings/preference/CheckBoxPreferenceFront;

.field private mChargeOnly:Lcom/vivo/settings/preference/RadioPreference;

.field private mEnableAdb:Landroid/preference/CheckBoxPreference;

.field private mFinishUsbSettings:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mIsEmulated:Z

.field private mMassStorage:Lcom/vivo/settings/preference/RadioPreference;

.field private mMtp:Lcom/vivo/settings/preference/RadioPreference;

.field private mMtpDriver:Landroid/preference/PreferenceCategory;

.field private mOnServiceConnectedListener:Lcom/vivo/pctools/helper/server/RemoteServiceConnection$OnServiceConnectedListener;

.field mProgressDialog:Landroid/app/ProgressDialog;

.field private mPtp:Lcom/vivo/settings/preference/RadioPreference;

.field private mRemoteServiceConnection:Lcom/vivo/pctools/helper/server/RemoteServiceConnection;

.field private mRestoreRunnable:Ljava/lang/Runnable;

.field private mSimUtils:Lcom/vivo/settings/SimUtils;

.field private final mStateReceiver:Landroid/content/BroadcastReceiver;

.field private mStorageEventListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mStorageManagerWrapper:Lcom/vivo/settings/StorageManagerWrapper;

.field private mUsbActivityDialog:Landroid/app/Dialog;

.field private mUsbManager:Landroid/hardware/usb/UsbManager;

.field private mVivoAssistant:Landroid/preference/Preference;

.field private mVivoAssistantHandler:Landroid/os/Handler;

.field private usbRegexs:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 81
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/deviceinfo/UsbSettings;->UmsSwitching:Z

    .line 82
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/settings/deviceinfo/UsbSettings;->UmsSwitchTimeOut:J

    .line 83
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/deviceinfo/UsbSettings;->mOldFunction:Ljava/lang/String;

    .line 141
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/deviceinfo/UsbSettings;->IS_ENG:Z

    .line 142
    const-string v0, "yes"

    const-string v1, "ro.vivo.net.entry"

    const-string v2, "no"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/deviceinfo/UsbSettings;->IS_NET_ENTRY:Z

    .line 143
    const-string v0, "yes"

    const-string v1, "ro.vivo.product.overseas"

    const-string v2, "no"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/deviceinfo/UsbSettings;->IS_OVERSEA:Z

    .line 144
    const-string v0, "persist.ingore.usb.secure"

    const-string v1, "no"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/deviceinfo/UsbSettings;->IS_INGORE_USB_SECURE:Z

    .line 145
    const-string v0, "persist.debug.ctstest"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/deviceinfo/UsbSettings;->IS_CTS:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;-><init>()V

    .line 84
    iput-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 85
    iput-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 87
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mHandler:Landroid/os/Handler;

    .line 88
    new-instance v0, Lcom/android/settings/deviceinfo/UsbSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/UsbSettings$1;-><init>(Lcom/android/settings/deviceinfo/UsbSettings;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mVivoAssistantHandler:Landroid/os/Handler;

    .line 124
    iput-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mChargeOnly:Lcom/vivo/settings/preference/RadioPreference;

    .line 125
    iput-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMassStorage:Lcom/vivo/settings/preference/RadioPreference;

    .line 126
    iput-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Lcom/vivo/settings/preference/RadioPreference;

    .line 127
    iput-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Lcom/vivo/settings/preference/RadioPreference;

    .line 128
    iput-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    .line 129
    iput-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mAlwaysShowUsbSettings:Lcom/vivo/settings/preference/CheckBoxPreferenceFront;

    .line 130
    iput-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mVivoAssistant:Landroid/preference/Preference;

    .line 131
    iput-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtpDriver:Landroid/preference/PreferenceCategory;

    .line 138
    iput-boolean v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mIsEmulated:Z

    .line 147
    new-instance v0, Lcom/android/settings/deviceinfo/UsbSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/UsbSettings$2;-><init>(Lcom/android/settings/deviceinfo/UsbSettings;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    .line 502
    iput-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 575
    new-instance v0, Lcom/android/settings/deviceinfo/UsbSettings$7;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/UsbSettings$7;-><init>(Lcom/android/settings/deviceinfo/UsbSettings;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mFinishUsbSettings:Ljava/lang/Runnable;

    .line 584
    new-instance v0, Lcom/android/settings/deviceinfo/UsbSettings$8;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/UsbSettings$8;-><init>(Lcom/android/settings/deviceinfo/UsbSettings;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mRestoreRunnable:Ljava/lang/Runnable;

    .line 613
    new-instance v0, Lcom/android/settings/deviceinfo/UsbSettings$9;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/UsbSettings$9;-><init>(Lcom/android/settings/deviceinfo/UsbSettings;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStorageEventListener:Landroid/os/storage/StorageEventListener;

    .line 778
    iput-boolean v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mAllDisable:Z

    .line 890
    iput-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mRemoteServiceConnection:Lcom/vivo/pctools/helper/server/RemoteServiceConnection;

    .line 904
    new-instance v0, Lcom/android/settings/deviceinfo/UsbSettings$14;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/UsbSettings$14;-><init>(Lcom/android/settings/deviceinfo/UsbSettings;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mOnServiceConnectedListener:Lcom/vivo/pctools/helper/server/RemoteServiceConnection$OnServiceConnectedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/UsbSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mVivoAssistant:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/deviceinfo/UsbSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/UsbSettings;->setAllEnabled(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/deviceinfo/UsbSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/deviceinfo/UsbSettings;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mRestoreRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/android/settings/deviceinfo/UsbSettings;->mOldFunction:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/deviceinfo/UsbSettings;)Landroid/hardware/usb/UsbManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/deviceinfo/UsbSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->disableUsbTether()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings/deviceinfo/UsbSettings;)Lcom/vivo/settings/preference/RadioPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMassStorage:Lcom/vivo/settings/preference/RadioPreference;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/deviceinfo/UsbSettings;Lcom/vivo/settings/preference/RadioPreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;
    .param p1, "x1"    # Lcom/vivo/settings/preference/RadioPreference;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/UsbSettings;->setCheck(Lcom/vivo/settings/preference/RadioPreference;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/settings/deviceinfo/UsbSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/UsbSettings;->switchUsbMassStorage(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/settings/deviceinfo/UsbSettings;)Lcom/vivo/settings/preference/RadioPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Lcom/vivo/settings/preference/RadioPreference;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settings/deviceinfo/UsbSettings;)Lcom/vivo/settings/preference/RadioPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Lcom/vivo/settings/preference/RadioPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/deviceinfo/UsbSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mIsEmulated:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/settings/deviceinfo/UsbSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->installPCAssistantTools()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/settings/deviceinfo/UsbSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->installPCToolsWithRemoteService()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/settings/deviceinfo/UsbSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/settings/deviceinfo/UsbSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->installVivoAssistant()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/settings/deviceinfo/UsbSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mVivoAssistantHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/settings/deviceinfo/UsbSettings;)Lcom/vivo/pctools/helper/server/RemoteServiceConnection;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mRemoteServiceConnection:Lcom/vivo/pctools/helper/server/RemoteServiceConnection;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/deviceinfo/UsbSettings;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getCurrentFuction()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 63
    sget-boolean v0, Lcom/android/settings/deviceinfo/UsbSettings;->UmsSwitching:Z

    return v0
.end method

.method static synthetic access$402(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 63
    sput-boolean p0, Lcom/android/settings/deviceinfo/UsbSettings;->UmsSwitching:Z

    return p0
.end method

.method static synthetic access$500(Lcom/android/settings/deviceinfo/UsbSettings;)Lcom/vivo/settings/StorageManagerWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStorageManagerWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/deviceinfo/UsbSettings;)Landroid/os/storage/StorageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/deviceinfo/UsbSettings;)Lcom/vivo/settings/preference/RadioPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mChargeOnly:Lcom/vivo/settings/preference/RadioPreference;

    return-object v0
.end method

.method static synthetic access$800()J
    .locals 2

    .prologue
    .line 63
    sget-wide v0, Lcom/android/settings/deviceinfo/UsbSettings;->UmsSwitchTimeOut:J

    return-wide v0
.end method

.method static synthetic access$802(J)J
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 63
    sput-wide p0, Lcom/android/settings/deviceinfo/UsbSettings;->UmsSwitchTimeOut:J

    return-wide p0
.end method

.method static synthetic access$900(Lcom/android/settings/deviceinfo/UsbSettings;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mFinishUsbSettings:Ljava/lang/Runnable;

    return-object v0
.end method

.method private disableUsbTether()V
    .locals 4

    .prologue
    .line 864
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/UsbSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 865
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 866
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings;->usbRegexs:[Ljava/lang/String;

    .line 868
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v1

    .line 870
    .local v1, "tethered":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings;->usbRegexs:[Ljava/lang/String;

    invoke-direct {p0, v1, v3}, Lcom/android/settings/deviceinfo/UsbSettings;->findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 871
    .local v2, "usbIface":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 877
    :cond_1
    :goto_0
    return-void

    .line 874
    :cond_2
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0
.end method

.method private dismissDialog()V
    .locals 1

    .prologue
    .line 757
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mAdbDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 761
    :goto_0
    return-void

    .line 759
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mAdbDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 760
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mAdbDialog:Landroid/app/Dialog;

    goto :goto_0
.end method

.method private dismissUsbActivityDialog()V
    .locals 1

    .prologue
    .line 953
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbActivityDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 954
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbActivityDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 955
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbActivityDialog:Landroid/app/Dialog;

    .line 957
    :cond_0
    return-void
.end method

.method private findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "ifaces"    # [Ljava/lang/String;
    .param p2, "regexes"    # [Ljava/lang/String;

    .prologue
    .line 880
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, v2

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v5    # "len$":I
    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v4, v0, v3

    .line 881
    .local v4, "iface":Ljava/lang/String;
    move-object v1, p2

    .local v1, "arr$":[Ljava/lang/String;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v6, :cond_1

    aget-object v7, v1, v2

    .line 882
    .local v7, "regex":Ljava/lang/String;
    invoke-virtual {v4, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 887
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v4    # "iface":Ljava/lang/String;
    .end local v6    # "len$":I
    .end local v7    # "regex":Ljava/lang/String;
    :goto_2
    return-object v4

    .line 881
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v4    # "iface":Ljava/lang/String;
    .restart local v6    # "len$":I
    .restart local v7    # "regex":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 880
    .end local v7    # "regex":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_0

    .line 887
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v4    # "iface":Ljava/lang/String;
    .end local v6    # "len$":I
    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private getCurrentFuction()Ljava/lang/String;
    .locals 5

    .prologue
    .line 797
    const-string v2, "sys.usb.config"

    const-string v3, "none"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 799
    .local v1, "functions":Ljava/lang/String;
    const-string v2, "UsbSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current function: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 801
    .local v0, "commandIndex":I
    if-lez v0, :cond_0

    .line 802
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 804
    .end local v1    # "functions":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private installPCAssistantTools()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 491
    invoke-static {}, Lcom/android/settings/AppFeature;->isMTK()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v1, "bicr"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 493
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mChargeOnly:Lcom/vivo/settings/preference/RadioPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/UsbSettings;->setCheck(Lcom/vivo/settings/preference/RadioPreference;)V

    .line 494
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 500
    :goto_0
    return-void

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v1, "mtp"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 497
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Lcom/vivo/settings/preference/RadioPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/UsbSettings;->setCheck(Lcom/vivo/settings/preference/RadioPreference;)V

    .line 498
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private installPCToolsWithRemoteService()V
    .locals 2

    .prologue
    .line 892
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mRemoteServiceConnection:Lcom/vivo/pctools/helper/server/RemoteServiceConnection;

    if-nez v0, :cond_0

    .line 893
    new-instance v0, Lcom/vivo/pctools/helper/server/RemoteServiceConnection;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vivo/pctools/helper/server/RemoteServiceConnection;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mRemoteServiceConnection:Lcom/vivo/pctools/helper/server/RemoteServiceConnection;

    .line 894
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mRemoteServiceConnection:Lcom/vivo/pctools/helper/server/RemoteServiceConnection;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mOnServiceConnectedListener:Lcom/vivo/pctools/helper/server/RemoteServiceConnection$OnServiceConnectedListener;

    invoke-virtual {v0, v1}, Lcom/vivo/pctools/helper/server/RemoteServiceConnection;->setOnServiceConnectedListener(Lcom/vivo/pctools/helper/server/RemoteServiceConnection$OnServiceConnectedListener;)V

    .line 896
    :cond_0
    monitor-enter p0

    .line 897
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mRemoteServiceConnection:Lcom/vivo/pctools/helper/server/RemoteServiceConnection;

    invoke-virtual {v0}, Lcom/vivo/pctools/helper/server/RemoteServiceConnection;->safelyConnectTheService()V

    .line 898
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 899
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mRemoteServiceConnection:Lcom/vivo/pctools/helper/server/RemoteServiceConnection;

    invoke-virtual {v0}, Lcom/vivo/pctools/helper/server/RemoteServiceConnection;->isServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 900
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->installVivoAssistant()V

    .line 902
    :cond_1
    return-void

    .line 898
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private installPackageExist()Z
    .locals 2

    .prologue
    .line 486
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/autorun.iso"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 487
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method private declared-synchronized installVivoAssistant()V
    .locals 2

    .prologue
    .line 912
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mRemoteServiceConnection:Lcom/vivo/pctools/helper/server/RemoteServiceConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 936
    :goto_0
    monitor-exit p0

    return-void

    .line 915
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/settings/deviceinfo/UsbSettings$15;

    const-string v1, "Install VivoAssistant"

    invoke-direct {v0, p0, v1}, Lcom/android/settings/deviceinfo/UsbSettings$15;-><init>(Lcom/android/settings/deviceinfo/UsbSettings;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/UsbSettings$15;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 912
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isUsbTether()Z
    .locals 13

    .prologue
    .line 844
    const/4 v11, 0x0

    .line 846
    .local v11, "usbTethered":Z
    const-string v12, "connectivity"

    invoke-virtual {p0, v12}, Lcom/android/settings/deviceinfo/UsbSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 847
    .local v2, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 848
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/deviceinfo/UsbSettings;->usbRegexs:[Ljava/lang/String;

    .line 851
    :cond_0
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v10

    .line 853
    .local v10, "tethered":[Ljava/lang/String;
    move-object v0, v10

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    move v4, v3

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v7, v0, v4

    .local v7, "o":Ljava/lang/String;
    move-object v9, v7

    .line 854
    check-cast v9, Ljava/lang/String;

    .line 855
    .local v9, "s":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->usbRegexs:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v3, 0x0

    .end local v4    # "i$":I
    .restart local v3    # "i$":I
    :goto_1
    if-ge v3, v6, :cond_2

    aget-object v8, v1, v3

    .line 856
    .local v8, "regex":Ljava/lang/String;
    invoke-virtual {v9, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 857
    const/4 v11, 0x1

    .line 855
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 853
    .end local v8    # "regex":Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3    # "i$":I
    .restart local v4    # "i$":I
    goto :goto_0

    .line 860
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v6    # "len$":I
    .end local v7    # "o":Ljava/lang/String;
    .end local v9    # "s":Ljava/lang/String;
    :cond_3
    return v11
.end method

.method private setAllEnabled(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 781
    if-eqz p1, :cond_0

    .line 782
    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mAllDisable:Z

    .line 786
    :goto_0
    const-string v2, "UsbSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAllEnabled enabled:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mChargeOnly:Lcom/vivo/settings/preference/RadioPreference;

    invoke-virtual {v2, p1}, Lcom/vivo/settings/preference/RadioPreference;->setEnabled(Z)V

    .line 788
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMassStorage:Lcom/vivo/settings/preference/RadioPreference;

    invoke-virtual {v2, p1}, Lcom/vivo/settings/preference/RadioPreference;->setEnabled(Z)V

    .line 789
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Lcom/vivo/settings/preference/RadioPreference;

    invoke-virtual {v2, p1}, Lcom/vivo/settings/preference/RadioPreference;->setEnabled(Z)V

    .line 790
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Lcom/vivo/settings/preference/RadioPreference;

    invoke-virtual {v2, p1}, Lcom/vivo/settings/preference/RadioPreference;->setEnabled(Z)V

    .line 791
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 792
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mVivoAssistant:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMassStorage:Lcom/vivo/settings/preference/RadioPreference;

    invoke-virtual {v3}, Lcom/vivo/settings/preference/RadioPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 793
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mAlwaysShowUsbSettings:Lcom/vivo/settings/preference/CheckBoxPreferenceFront;

    invoke-virtual {v0, p1}, Lcom/vivo/settings/preference/CheckBoxPreferenceFront;->setEnabled(Z)V

    .line 794
    return-void

    .line 784
    :cond_0
    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mAllDisable:Z

    goto :goto_0

    :cond_1
    move v0, v1

    .line 792
    goto :goto_1
.end method

.method private setCheck(Lcom/vivo/settings/preference/RadioPreference;)V
    .locals 4
    .param p1, "radioPreference"    # Lcom/vivo/settings/preference/RadioPreference;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 764
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Lcom/vivo/settings/preference/RadioPreference;

    invoke-virtual {v2}, Lcom/vivo/settings/preference/RadioPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 765
    const-string v2, "mtp"

    sput-object v2, Lcom/android/settings/deviceinfo/UsbSettings;->mOldFunction:Ljava/lang/String;

    .line 769
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mChargeOnly:Lcom/vivo/settings/preference/RadioPreference;

    invoke-virtual {v2, v1}, Lcom/vivo/settings/preference/RadioPreference;->setChecked(Z)V

    .line 770
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMassStorage:Lcom/vivo/settings/preference/RadioPreference;

    invoke-virtual {v2, v1}, Lcom/vivo/settings/preference/RadioPreference;->setChecked(Z)V

    .line 771
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Lcom/vivo/settings/preference/RadioPreference;

    invoke-virtual {v2, v1}, Lcom/vivo/settings/preference/RadioPreference;->setChecked(Z)V

    .line 772
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Lcom/vivo/settings/preference/RadioPreference;

    invoke-virtual {v2, v1}, Lcom/vivo/settings/preference/RadioPreference;->setChecked(Z)V

    .line 773
    invoke-virtual {p1, v0}, Lcom/vivo/settings/preference/RadioPreference;->setChecked(Z)V

    .line 775
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mVivoAssistant:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMassStorage:Lcom/vivo/settings/preference/RadioPreference;

    invoke-virtual {v3}, Lcom/vivo/settings/preference/RadioPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 776
    return-void

    .line 766
    :cond_1
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Lcom/vivo/settings/preference/RadioPreference;

    invoke-virtual {v2}, Lcom/vivo/settings/preference/RadioPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 767
    const-string v2, "ptp"

    sput-object v2, Lcom/android/settings/deviceinfo/UsbSettings;->mOldFunction:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move v0, v1

    .line 775
    goto :goto_1
.end method

.method private setCurrentFunction(Ljava/lang/String;)V
    .locals 2
    .param p1, "finalNewFunction"    # Ljava/lang/String;

    .prologue
    .line 809
    new-instance v0, Lcom/android/settings/deviceinfo/UsbSettings$13;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/deviceinfo/UsbSettings$13;-><init>(Lcom/android/settings/deviceinfo/UsbSettings;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/UsbSettings$13;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 839
    return-void
.end method

.method private showMountDialog()V
    .locals 3

    .prologue
    .line 505
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 506
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 507
    const-string v1, "UsbSettings"

    const-string v2, "showMountDialog and getActivity() is null ignore"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :goto_0
    return-void

    .line 510
    :cond_0
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 511
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 512
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 513
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 515
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    const v2, 0x7f0b08d3

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/UsbSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 516
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0
.end method

.method private showUsbActivityDialog()V
    .locals 3

    .prologue
    .line 940
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0929

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b08c4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    new-instance v2, Lcom/android/settings/deviceinfo/UsbSettings$16;

    invoke-direct {v2, p0}, Lcom/android/settings/deviceinfo/UsbSettings$16;-><init>(Lcom/android/settings/deviceinfo/UsbSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbActivityDialog:Landroid/app/Dialog;

    .line 950
    return-void
.end method

.method private switchUsbMassStorage(Z)V
    .locals 6
    .param p1, "on"    # Z

    .prologue
    .line 520
    const-string v1, "UsbSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchUsbMassStorage on="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/UsbSettings;->setAllEnabled(Z)V

    .line 522
    if-nez p1, :cond_0

    .line 523
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->showMountDialog()V

    .line 526
    :cond_0
    new-instance v0, Lcom/android/settings/deviceinfo/UsbSettings$4;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/deviceinfo/UsbSettings$4;-><init>(Lcom/android/settings/deviceinfo/UsbSettings;Z)V

    .line 559
    .local v0, "mountTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/settings/deviceinfo/UsbSettings$5;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/deviceinfo/UsbSettings$5;-><init>(Lcom/android/settings/deviceinfo/UsbSettings;Landroid/os/AsyncTask;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 566
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/settings/deviceinfo/UsbSettings$6;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/deviceinfo/UsbSettings$6;-><init>(Lcom/android/settings/deviceinfo/UsbSettings;Landroid/os/AsyncTask;)V

    const-wide/16 v4, 0x2710

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 573
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x1

    .line 745
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 746
    iput-boolean v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mAdbOkClicked:Z

    .line 747
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 749
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 754
    :goto_0
    return-void

    .line 752
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 173
    invoke-super {p0, p1}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 174
    const-string v4, "UsbSettings"

    const-string v7, "onCreate"

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const v4, 0x7f06004b

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/UsbSettings;->addPreferencesFromResource(I)V

    .line 176
    const-string v4, "enable_adb"

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/UsbSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    .line 177
    const-string v4, "usb_charge"

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/UsbSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/vivo/settings/preference/RadioPreference;

    iput-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mChargeOnly:Lcom/vivo/settings/preference/RadioPreference;

    .line 178
    const-string v4, "usb_ums"

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/UsbSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/vivo/settings/preference/RadioPreference;

    iput-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMassStorage:Lcom/vivo/settings/preference/RadioPreference;

    .line 179
    const-string v4, "usb_mtp"

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/UsbSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/vivo/settings/preference/RadioPreference;

    iput-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Lcom/vivo/settings/preference/RadioPreference;

    .line 180
    const-string v4, "usb_ptp"

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/UsbSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/vivo/settings/preference/RadioPreference;

    iput-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Lcom/vivo/settings/preference/RadioPreference;

    .line 181
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Lcom/vivo/settings/preference/RadioPreference;

    invoke-virtual {v4, v6}, Lcom/vivo/settings/preference/RadioPreference;->setDividerVisible(Z)V

    .line 182
    const-string v4, "usb_show"

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/UsbSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/vivo/settings/preference/CheckBoxPreferenceFront;

    iput-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mAlwaysShowUsbSettings:Lcom/vivo/settings/preference/CheckBoxPreferenceFront;

    .line 183
    iget-object v7, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mAlwaysShowUsbSettings:Lcom/vivo/settings/preference/CheckBoxPreferenceFront;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "show_usb_option"

    invoke-static {v4, v8, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_1

    move v4, v5

    :goto_0
    invoke-virtual {v7, v4}, Lcom/vivo/settings/preference/CheckBoxPreferenceFront;->setChecked(Z)V

    .line 185
    const-string v4, "vivo_assistant"

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/UsbSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mVivoAssistant:Landroid/preference/Preference;

    .line 186
    const-string v4, "category_mtp_driver"

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/UsbSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    iput-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtpDriver:Landroid/preference/PreferenceCategory;

    .line 188
    const-string v4, "usb"

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/UsbSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/usb/UsbManager;

    iput-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 189
    const-string v4, "storage"

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/UsbSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/StorageManager;

    iput-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 190
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-static {v4}, Lcom/vivo/settings/StorageManagerWrapper;->getInstance(Ljava/lang/Object;)Lcom/vivo/settings/StorageManagerWrapper;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStorageManagerWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    .line 191
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStorageEventListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v4, v5}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 192
    new-instance v0, Landroid/content/IntentFilter;

    const-string v4, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 193
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v4, "com.vivo.usb.action.USB_STATE_CHANGE"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 196
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStorageManagerWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    invoke-virtual {v4}, Lcom/vivo/settings/StorageManagerWrapper;->getInternalStorageVolume()Landroid/os/storage/StorageVolume;

    move-result-object v1

    .line 197
    .local v1, "internalStorageVolume":Landroid/os/storage/StorageVolume;
    if-nez v1, :cond_2

    move v4, v6

    :goto_1
    iput-boolean v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mIsEmulated:Z

    .line 198
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStorageManagerWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    invoke-virtual {v4}, Lcom/vivo/settings/StorageManagerWrapper;->isSupportTF()Z

    move-result v2

    .line 199
    .local v2, "isSupportTF":Z
    new-instance v4, Lcom/vivo/settings/SimUtils;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/vivo/settings/SimUtils;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mSimUtils:Lcom/vivo/settings/SimUtils;

    .line 201
    const-string v4, "UsbSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCreate mIsEmulated="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v7, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mIsEmulated:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " isSupportTF="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-boolean v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mIsEmulated:Z

    if-eqz v4, :cond_3

    .line 204
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMassStorage:Lcom/vivo/settings/preference/RadioPreference;

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/UsbSettings;->removePreference(Landroid/preference/Preference;)V

    .line 205
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Lcom/vivo/settings/preference/RadioPreference;

    const v5, 0x7f0b092c

    invoke-virtual {v4, v5}, Lcom/vivo/settings/preference/RadioPreference;->setSummary(I)V

    .line 210
    :goto_2
    invoke-static {}, Lcom/android/settings/AppFeature;->isCMCC()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 211
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mVivoAssistant:Landroid/preference/Preference;

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/UsbSettings;->removePreference(Landroid/preference/Preference;)V

    .line 226
    :goto_3
    iget-boolean v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mIsEmulated:Z

    if-nez v4, :cond_0

    .line 229
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "settings_info"

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 230
    .local v3, "prefs":Landroid/content/SharedPreferences;
    const-string v4, "stored_int_u_disk_totalSize"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 231
    new-instance v4, Lcom/android/settings/deviceinfo/UsbSettings$3;

    invoke-direct {v4, p0, v3}, Lcom/android/settings/deviceinfo/UsbSettings$3;-><init>(Lcom/android/settings/deviceinfo/UsbSettings;Landroid/content/SharedPreferences;)V

    invoke-virtual {v4}, Lcom/android/settings/deviceinfo/UsbSettings$3;->start()V

    .line 251
    .end local v3    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    return-void

    .end local v0    # "filter":Landroid/content/IntentFilter;
    .end local v1    # "internalStorageVolume":Landroid/os/storage/StorageVolume;
    .end local v2    # "isSupportTF":Z
    :cond_1
    move v4, v6

    .line 183
    goto/16 :goto_0

    .line 197
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    .restart local v1    # "internalStorageVolume":Landroid/os/storage/StorageVolume;
    :cond_2
    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v4

    goto :goto_1

    .line 207
    .restart local v2    # "isSupportTF":Z
    :cond_3
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtpDriver:Landroid/preference/PreferenceCategory;

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/UsbSettings;->removePreference(Landroid/preference/Preference;)V

    goto :goto_2

    .line 213
    :cond_4
    iget-boolean v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mIsEmulated:Z

    if-eqz v4, :cond_5

    .line 215
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mVivoAssistant:Landroid/preference/Preference;

    const v5, 0x7f0b0816

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(I)V

    .line 216
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mVivoAssistant:Landroid/preference/Preference;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 223
    :goto_4
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/UsbSettings;->removePreference(Landroid/preference/Preference;)V

    goto :goto_3

    .line 217
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "com.vivo.PCTools"

    invoke-static {v4, v5}, Lcom/vivo/settings/VivoUtils;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 218
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mVivoAssistant:Landroid/preference/Preference;

    const v5, 0x7f0b0943

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_4

    .line 220
    :cond_6
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mVivoAssistant:Landroid/preference/Preference;

    const v5, 0x7f0b0945

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_4
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .param p1, "dialogId"    # I

    .prologue
    const v6, 0x104000a

    const/high16 v5, 0x1040000

    .line 667
    packed-switch p1, :pswitch_data_0

    .line 733
    :pswitch_0
    invoke-super {p0, p1}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v2

    :goto_0
    return-object v2

    .line 669
    :pswitch_1
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 670
    .local v2, "dialog":Landroid/app/ProgressDialog;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 671
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 672
    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d3

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 674
    const v4, 0x7f0b08d3

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/UsbSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 679
    .end local v2    # "dialog":Landroid/app/ProgressDialog;
    :pswitch_2
    move v3, p1

    .line 680
    .local v3, "id":I
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 681
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0b07d7

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 682
    new-instance v4, Lcom/android/settings/deviceinfo/UsbSettings$10;

    invoke-direct {v4, p0, v3}, Lcom/android/settings/deviceinfo/UsbSettings$10;-><init>(Lcom/android/settings/deviceinfo/UsbSettings;I)V

    invoke-virtual {v0, v6, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 711
    new-instance v4, Lcom/android/settings/deviceinfo/UsbSettings$11;

    invoke-direct {v4, p0}, Lcom/android/settings/deviceinfo/UsbSettings$11;-><init>(Lcom/android/settings/deviceinfo/UsbSettings;)V

    invoke-virtual {v0, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 718
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_0

    .line 720
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v3    # "id":I
    :pswitch_3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 721
    .local v1, "builder2":Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0b0815

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 722
    const v4, 0x7f0b0814

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 723
    new-instance v4, Lcom/android/settings/deviceinfo/UsbSettings$12;

    invoke-direct {v4, p0}, Lcom/android/settings/deviceinfo/UsbSettings$12;-><init>(Lcom/android/settings/deviceinfo/UsbSettings;)V

    invoke-virtual {v1, v6, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 730
    const/4 v4, 0x0

    invoke-virtual {v1, v5, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 731
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_0

    .line 667
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 336
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 337
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mRestoreRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 338
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mFinishUsbSettings:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 339
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStorageEventListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 340
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->dismissDialog()V

    .line 341
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->dismissUsbActivityDialog()V

    .line 342
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mRemoteServiceConnection:Lcom/vivo/pctools/helper/server/RemoteServiceConnection;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mRemoteServiceConnection:Lcom/vivo/pctools/helper/server/RemoteServiceConnection;

    invoke-virtual {v0, v2}, Lcom/vivo/pctools/helper/server/RemoteServiceConnection;->setOnServiceConnectedListener(Lcom/vivo/pctools/helper/server/RemoteServiceConnection$OnServiceConnectedListener;)V

    .line 344
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mRemoteServiceConnection:Lcom/vivo/pctools/helper/server/RemoteServiceConnection;

    invoke-virtual {v0}, Lcom/vivo/pctools/helper/server/RemoteServiceConnection;->safelyDisconnectTheService()V

    .line 345
    iput-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mRemoteServiceConnection:Lcom/vivo/pctools/helper/server/RemoteServiceConnection;

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mVivoAssistantHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 348
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mVivoAssistantHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 349
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onDestroy()V

    .line 351
    const-string v0, "UsbSettings"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 738
    const-string v0, "UsbSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDismiss mAdbOkClicked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mAdbOkClicked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mAdbOkClicked:Z

    if-nez v0, :cond_0

    .line 740
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 742
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 327
    :cond_0
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/UsbSettings;->removeDialog(I)V

    .line 328
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/UsbSettings;->removeDialog(I)V

    .line 329
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/UsbSettings;->removeDialog(I)V

    .line 330
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 331
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onPause()V

    .line 332
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 357
    const-string v5, "UsbSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "preferece press :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 359
    const-string v3, "UsbSettings"

    const-string v5, "monkey run "

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    :cond_0
    :goto_0
    return v4

    .line 363
    :cond_1
    iget-boolean v5, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mAllDisable:Z

    if-eqz v5, :cond_2

    .line 364
    const-string v3, "UsbSettings"

    const-string v5, "all disabled "

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 369
    :cond_2
    invoke-static {}, Lcom/android/settings/AppFeature;->isCMCC()Z

    move-result v5

    if-eqz v5, :cond_6

    sget-boolean v5, Lcom/android/settings/deviceinfo/UsbSettings;->IS_ENG:Z

    if-nez v5, :cond_6

    const-string v5, "persist.sys.log.ctrl"

    const-string v6, "no"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "no"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    sget-boolean v5, Lcom/android/settings/deviceinfo/UsbSettings;->IS_INGORE_USB_SECURE:Z

    if-nez v5, :cond_6

    .line 371
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "usb_activitied_by_sim"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 373
    .local v2, "usbActivited":I
    const-string v5, "UsbSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPreferenceTreeClick usbActivited:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    if-nez v2, :cond_6

    iget-object v5, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mAlwaysShowUsbSettings:Lcom/vivo/settings/preference/CheckBoxPreferenceFront;

    if-eq p2, v5, :cond_6

    .line 375
    iget-object v5, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mSimUtils:Lcom/vivo/settings/SimUtils;

    invoke-virtual {v5}, Lcom/vivo/settings/SimUtils;->getInertedSimCount()I

    move-result v1

    .line 376
    .local v1, "simCount":I
    const-string v5, "UsbSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPreferenceTreeClick simCount:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    if-gtz v1, :cond_5

    .line 380
    iget-object v5, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbActivityDialog:Landroid/app/Dialog;

    if-eqz v5, :cond_3

    .line 381
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->dismissUsbActivityDialog()V

    .line 383
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->showUsbActivityDialog()V

    .line 385
    iget-object v5, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    if-ne p2, v5, :cond_0

    .line 386
    iget-object v5, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "adb_enabled"

    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_4

    move v3, v4

    :cond_4
    invoke-virtual {v5, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 392
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "usb_activitied_by_sim"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 398
    .end local v1    # "simCount":I
    .end local v2    # "usbActivited":I
    :cond_6
    iget-object v5, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mAlwaysShowUsbSettings:Lcom/vivo/settings/preference/CheckBoxPreferenceFront;

    if-ne p2, v5, :cond_8

    .line 399
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "show_usb_option"

    iget-object v7, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mAlwaysShowUsbSettings:Lcom/vivo/settings/preference/CheckBoxPreferenceFront;

    invoke-virtual {v7}, Lcom/vivo/settings/preference/CheckBoxPreferenceFront;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_7

    :goto_1
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_7
    move v3, v4

    goto :goto_1

    .line 403
    :cond_8
    iget-object v5, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    if-ne p2, v5, :cond_b

    .line 404
    iget-object v5, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 405
    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mAdbDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_9

    .line 406
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->dismissDialog()V

    .line 408
    :cond_9
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0425

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v5, 0x7f0b0424

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v5, 0x1040013

    invoke-virtual {v3, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v5, 0x1040009

    invoke-virtual {v3, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mAdbDialog:Landroid/app/Dialog;

    goto/16 :goto_0

    .line 417
    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "adb_enabled"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 421
    :cond_b
    iget-object v5, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mVivoAssistant:Landroid/preference/Preference;

    if-ne p2, v5, :cond_f

    .line 422
    invoke-static {}, Lcom/android/settings/AppFeature;->isMTK()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 423
    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Lcom/vivo/settings/preference/RadioPreference;

    invoke-virtual {v3}, Lcom/vivo/settings/preference/RadioPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_c

    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Lcom/vivo/settings/preference/RadioPreference;

    invoke-virtual {v3}, Lcom/vivo/settings/preference/RadioPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 424
    :cond_c
    const/4 v3, 0x7

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/UsbSettings;->showDialog(I)V

    goto/16 :goto_0

    .line 426
    :cond_d
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->installPCAssistantTools()V

    .line 427
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->installPCToolsWithRemoteService()V

    goto/16 :goto_0

    .line 430
    :cond_e
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->installPCAssistantTools()V

    .line 431
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->installPCToolsWithRemoteService()V

    goto/16 :goto_0

    .line 436
    :cond_f
    const/4 v0, 0x0

    .line 438
    .local v0, "newFunction":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMassStorage:Lcom/vivo/settings/preference/RadioPreference;

    if-ne p2, v5, :cond_12

    .line 439
    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMassStorage:Lcom/vivo/settings/preference/RadioPreference;

    invoke-direct {p0, v3}, Lcom/android/settings/deviceinfo/UsbSettings;->setCheck(Lcom/vivo/settings/preference/RadioPreference;)V

    .line 440
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->isUsbTether()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 441
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/UsbSettings;->showDialog(I)V

    goto/16 :goto_0

    .line 444
    :cond_10
    const-string v0, "mass_storage"

    .line 481
    :cond_11
    :goto_2
    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/UsbSettings;->setCurrentFunction(Ljava/lang/String;)V

    .line 482
    invoke-super {p0, p1, p2}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    goto/16 :goto_0

    .line 446
    :cond_12
    iget-object v5, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mChargeOnly:Lcom/vivo/settings/preference/RadioPreference;

    if-ne p2, v5, :cond_15

    .line 447
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->isUsbTether()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 448
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 451
    :cond_13
    const-string v0, "charging"

    .line 452
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mChargeOnly:Lcom/vivo/settings/preference/RadioPreference;

    invoke-direct {p0, v4}, Lcom/android/settings/deviceinfo/UsbSettings;->setCheck(Lcom/vivo/settings/preference/RadioPreference;)V

    .line 454
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "adb_enabled"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_11

    .line 456
    sget-boolean v4, Lcom/android/settings/deviceinfo/UsbSettings;->IS_NET_ENTRY:Z

    if-nez v4, :cond_14

    invoke-static {}, Lcom/android/settings/AppFeature;->isCMCC()Z

    move-result v4

    if-eqz v4, :cond_11

    sget-boolean v4, Lcom/android/settings/deviceinfo/UsbSettings;->IS_ENG:Z

    if-nez v4, :cond_11

    const-string v4, "persist.sys.log.ctrl"

    const-string v5, "no"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "no"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    sget-boolean v4, Lcom/android/settings/deviceinfo/UsbSettings;->IS_OVERSEA:Z

    if-nez v4, :cond_11

    .line 458
    :cond_14
    const-string v4, "UsbSettings"

    const-string v5, "onPreferenceTreeClick disable ADB_ENABLED"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "adb_enabled"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    .line 463
    :cond_15
    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Lcom/vivo/settings/preference/RadioPreference;

    if-ne p2, v3, :cond_17

    .line 464
    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Lcom/vivo/settings/preference/RadioPreference;

    invoke-direct {p0, v3}, Lcom/android/settings/deviceinfo/UsbSettings;->setCheck(Lcom/vivo/settings/preference/RadioPreference;)V

    .line 465
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->isUsbTether()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 466
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/UsbSettings;->showDialog(I)V

    goto/16 :goto_0

    .line 469
    :cond_16
    const-string v0, "ptp"

    goto :goto_2

    .line 471
    :cond_17
    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Lcom/vivo/settings/preference/RadioPreference;

    if-ne p2, v3, :cond_11

    .line 472
    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Lcom/vivo/settings/preference/RadioPreference;

    invoke-direct {p0, v3}, Lcom/android/settings/deviceinfo/UsbSettings;->setCheck(Lcom/vivo/settings/preference/RadioPreference;)V

    .line 473
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->isUsbTether()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 474
    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/UsbSettings;->showDialog(I)V

    goto/16 :goto_0

    .line 477
    :cond_18
    const-string v0, "mtp"

    goto/16 :goto_2
.end method

.method public onResume()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 269
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onResume()V

    .line 270
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getCurrentFuction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    .line 271
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mAdbDialog:Landroid/app/Dialog;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mAdbDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 272
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 277
    :goto_0
    sget-wide v4, Lcom/android/settings/deviceinfo/UsbSettings;->UmsSwitchTimeOut:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 278
    .local v0, "delay":J
    const-wide/16 v4, 0x4e20

    cmp-long v2, v0, v4

    if-lez v2, :cond_0

    .line 279
    sput-wide v8, Lcom/android/settings/deviceinfo/UsbSettings;->UmsSwitchTimeOut:J

    .line 280
    const-wide/16 v0, 0x0

    .line 282
    :cond_0
    const-string v2, "UsbSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UmsSwitchTimeOut-System.currentTimeMillis()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    sget-boolean v2, Lcom/android/settings/deviceinfo/UsbSettings;->UmsSwitching:Z

    if-eqz v2, :cond_7

    .line 284
    cmp-long v2, v0, v8

    if-gez v2, :cond_5

    .line 285
    sput-boolean v3, Lcom/android/settings/deviceinfo/UsbSettings;->UmsSwitching:Z

    .line 286
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStorageManagerWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStorageManagerWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    invoke-virtual {v4}, Lcom/vivo/settings/StorageManagerWrapper;->getInternalStoragePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/vivo/settings/StorageManagerWrapper;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "mounted"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getCurrentFuction()Ljava/lang/String;

    move-result-object v2

    const-string v4, "mass_storage"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 291
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v4, "charging"

    invoke-virtual {v2, v4, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 292
    const-string v2, "UsbSettings"

    const-string v3, "UmsSwitching but media not shared,change to charging!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_1
    :goto_1
    return-void

    .line 274
    .end local v0    # "delay":J
    :cond_2
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "adb_enabled"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_3

    :goto_2
    invoke-virtual {v4, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_2

    .line 293
    .restart local v0    # "delay":J
    :cond_4
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStorageManagerWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStorageManagerWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    invoke-virtual {v4}, Lcom/vivo/settings/StorageManagerWrapper;->getInternalStoragePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/vivo/settings/StorageManagerWrapper;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "shared"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getCurrentFuction()Ljava/lang/String;

    move-result-object v2

    const-string v4, "mass_storage"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 298
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v4, "mass_storage"

    invoke-virtual {v2, v4, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 300
    const-string v2, "UsbSettings"

    const-string v3, "UmsSwitching but prop not set,set prop to mass_storage!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 303
    :cond_5
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStorageManagerWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStorageManagerWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    invoke-virtual {v4}, Lcom/vivo/settings/StorageManagerWrapper;->getInternalStoragePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/vivo/settings/StorageManagerWrapper;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "mounted"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getCurrentFuction()Ljava/lang/String;

    move-result-object v2

    const-string v4, "mass_storage"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 304
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mRestoreRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 305
    invoke-direct {p0, v3}, Lcom/android/settings/deviceinfo/UsbSettings;->setAllEnabled(Z)V

    .line 306
    const-string v2, "UsbSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UmsSwitching but media not shared,try to restore in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 307
    :cond_6
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStorageManagerWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStorageManagerWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    invoke-virtual {v4}, Lcom/vivo/settings/StorageManagerWrapper;->getInternalStoragePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/vivo/settings/StorageManagerWrapper;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "shared"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getCurrentFuction()Ljava/lang/String;

    move-result-object v2

    const-string v4, "mass_storage"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 308
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mRestoreRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 309
    invoke-direct {p0, v3}, Lcom/android/settings/deviceinfo/UsbSettings;->setAllEnabled(Z)V

    .line 310
    const-string v2, "UsbSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UmsSwitching but prop not set,try to restore in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 314
    :cond_7
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStorageManagerWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStorageManagerWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    invoke-virtual {v4}, Lcom/vivo/settings/StorageManagerWrapper;->getInternalStoragePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/vivo/settings/StorageManagerWrapper;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "mounted"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getCurrentFuction()Ljava/lang/String;

    move-result-object v2

    const-string v4, "mass_storage"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 315
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v4, "charging"

    invoke-virtual {v2, v4, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 316
    const-string v2, "UsbSettings"

    const-string v3, "UmsSwitching false but media not shared(probably usb disconnected),change to charging!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method protected updateToggles(Ljava/lang/String;)V
    .locals 3
    .param p1, "function"    # Ljava/lang/String;

    .prologue
    .line 254
    const-string v0, "UsbSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateToggles update usb set ui function="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const-string v0, "mtp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Lcom/vivo/settings/preference/RadioPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/UsbSettings;->setCheck(Lcom/vivo/settings/preference/RadioPreference;)V

    .line 264
    :goto_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 265
    return-void

    .line 257
    :cond_0
    const-string v0, "ptp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Lcom/vivo/settings/preference/RadioPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/UsbSettings;->setCheck(Lcom/vivo/settings/preference/RadioPreference;)V

    goto :goto_0

    .line 259
    :cond_1
    const-string v0, "mass_storage"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 260
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMassStorage:Lcom/vivo/settings/preference/RadioPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/UsbSettings;->setCheck(Lcom/vivo/settings/preference/RadioPreference;)V

    goto :goto_0

    .line 262
    :cond_2
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mChargeOnly:Lcom/vivo/settings/preference/RadioPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/UsbSettings;->setCheck(Lcom/vivo/settings/preference/RadioPreference;)V

    goto :goto_0
.end method
