.class public Lcom/android/settings/TetherSettings;
.super Lcom/vivo/settings/VivoSettingsPreferenceFragment;
.source "TetherSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/TetherSettings$11;,
        Lcom/android/settings/TetherSettings$TetherChangeReceiver;
    }
.end annotation


# static fields
.field public static final BLUETOOTH_TETHERING:I = 0x2

.field private static final DIALOG_AP_WIFI_FIRST_TIME:I = 0x1

.field private static final DIALOG_DISABLE_WIFI:I = 0x2

.field private static final DIALOG_ENABLE_WIFIAP_NO_DATA_CONNECT:I = 0x4

.field private static final DIALOG_UPDATE_PROGRESS:I = 0x3

.field public static final INVALID:I = -0x1

.field private static final KEY_CATEGORY_SHARE_PC_NETWORK:Ljava/lang/String; = "category_share_pc_network"

.field private static final KEY_ENABLE_BLUETOOTH_TETHERING:Ljava/lang/String; = "enable_bluetooth_tethering"

.field private static final KEY_ENABLE_WIFI_AP:Ljava/lang/String; = "enable_wifi_ap"

.field private static final KEY_PC_OS:Ljava/lang/String; = "usb_internet_pc_os"

.field private static final KEY_TETHERING_HELP:Ljava/lang/String; = "tethering_help"

.field private static final KEY_TETHERING_IPV4_IPV6:Ljava/lang/String; = "tethering_ipv4_ipv6"

.field private static final KEY_USB_INTERNET:Ljava/lang/String; = "usb_internet"

.field private static final KEY_USB_INTERNET_OS_VER:Ljava/lang/String; = "usb_internet_os_ver"

.field private static final KEY_USB_TETHER_SETTINGS:Ljava/lang/String; = "usb_tether_settings"

.field private static final KEY_WIFI_AP_FIRST_START:Ljava/lang/String; = "wifi_ap_first_start"

.field private static final KEY_WIFI_AP_SSID_AND_SECURITY:Ljava/lang/String; = "wifi_ap_ssid_and_security"

.field private static final PROVISION_REQUEST:I = 0x0

.field public static final SETTINGS_RESOUCE:Lcom/vivo/settings/xml/SettingsResouce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vivo/settings/xml/SettingsResouce",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "TetherSettings"

.field private static final TETHER_CHOICE:Ljava/lang/String; = "TETHER_TYPE"

.field private static final USB_DATA_STATE:Ljava/lang/String; = "mediatek.intent.action.USB_DATA_STATE"

.field public static final USB_TETHERING:I = 0x1

.field public static final WIFI_AP_CONFIGUARE_DONE:I = 0x1

.field public static final WIFI_TETHERING:I = 0x0

.field private static final WIN_7:I = 0x1

.field private static final WIN_8:I = 0x0

.field private static final WIN_VISTA:I = 0x2

.field private static final WIN_XP:I = 0x3


# instance fields
.field private mBluetoothEnableForTether:Z

.field private mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Landroid/bluetooth/BluetoothPan;",
            ">;"
        }
    .end annotation
.end field

.field private mBluetoothRegexs:[Ljava/lang/String;

.field private mBluetoothTether:Landroid/preference/CheckBoxPreference;

.field private mCm:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDisableWifiOkClicked:Z

.field private mDisplayWifiDialog:Z

.field private mEnableWifiAp:Landroid/preference/CheckBoxPreference;

.field private mHandler:Landroid/os/Handler;

.field private mInitPan:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIsSupportTetherUsbInternet:Z

.field private mLastPreferenceClickTime:J

.field private mMassStorageActive:Z

.field private mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mProvisionApp:[Ljava/lang/String;

.field private mRestartUsbInternet:Ljava/lang/Runnable;

.field private mRestartWifiAP:Ljava/lang/Runnable;

.field private mRestoreUsbTether:Ljava/lang/Runnable;

.field private mSimUtils:Lcom/vivo/settings/SimUtils;

.field private mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mTetherChoice:I

.field private mTetherHelp:Landroid/preference/Preference;

.field private mTetherIpv4Ipv6:Landroid/preference/CheckBoxPreference;

.field private mUm:Landroid/os/UserManager;

.field private mUnavailable:Z

.field private mUsbConnected:Z

.field private mUsbInternet:Landroid/preference/CheckBoxPreference;

.field private mUsbInternetOsVer:Landroid/preference/ListPreference;

.field private mUsbInternetSwitching:Z

.field private mUsbRegexs:[Ljava/lang/String;

.field private mUsbTether:Landroid/preference/CheckBoxPreference;

.field private mUsbTetherSwitching:Z

.field private mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

.field private mWifiApSettings:Landroid/preference/Preference;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiConfigApp:Landroid/net/wifi/WifiConfiguration;

.field private mWifiConfigSys:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiRegexs:[Ljava/lang/String;

.field private prefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1220
    new-instance v0, Lcom/android/settings/TetherSettings$10;

    invoke-direct {v0}, Lcom/android/settings/TetherSettings$10;-><init>()V

    sput-object v0, Lcom/android/settings/TetherSettings;->SETTINGS_RESOUCE:Lcom/vivo/settings/xml/SettingsResouce;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 80
    invoke-direct {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;-><init>()V

    .line 133
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mHandler:Landroid/os/Handler;

    .line 141
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    .line 145
    iput-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 146
    iput-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiConfigSys:Landroid/net/wifi/WifiConfiguration;

    .line 147
    iput-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiConfigApp:Landroid/net/wifi/WifiConfiguration;

    .line 157
    iput-boolean v2, p0, Lcom/android/settings/TetherSettings;->mUsbTetherSwitching:Z

    .line 158
    iput-boolean v2, p0, Lcom/android/settings/TetherSettings;->mUsbInternetSwitching:Z

    .line 159
    iput-boolean v2, p0, Lcom/android/settings/TetherSettings;->mIsSupportTetherUsbInternet:Z

    .line 161
    iput-boolean v2, p0, Lcom/android/settings/TetherSettings;->mUnavailable:Z

    .line 162
    iput-boolean v2, p0, Lcom/android/settings/TetherSettings;->mDisplayWifiDialog:Z

    .line 163
    iput-boolean v2, p0, Lcom/android/settings/TetherSettings;->mDisableWifiOkClicked:Z

    .line 166
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    .line 168
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/TetherSettings;->mLastPreferenceClickTime:J

    .line 270
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mInitPan:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 339
    new-instance v0, Lcom/android/settings/TetherSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/TetherSettings$1;-><init>(Lcom/android/settings/TetherSettings;)V

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 765
    new-instance v0, Lcom/android/settings/TetherSettings$7;

    invoke-direct {v0, p0}, Lcom/android/settings/TetherSettings$7;-><init>(Lcom/android/settings/TetherSettings;)V

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mRestartUsbInternet:Ljava/lang/Runnable;

    .line 773
    new-instance v0, Lcom/android/settings/TetherSettings$8;

    invoke-direct {v0, p0}, Lcom/android/settings/TetherSettings$8;-><init>(Lcom/android/settings/TetherSettings;)V

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mRestoreUsbTether:Ljava/lang/Runnable;

    .line 782
    new-instance v0, Lcom/android/settings/TetherSettings$9;

    invoke-direct {v0, p0}, Lcom/android/settings/TetherSettings$9;-><init>(Lcom/android/settings/TetherSettings;)V

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mRestartWifiAP:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/TetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/TetherSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothEnableForTether:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/settings/TetherSettings;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mRestartUsbInternet:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/TetherSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->mBluetoothEnableForTether:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings/TetherSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/TetherSettings;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;
    .param p1, "x1"    # [Ljava/lang/String;
    .param p2, "x2"    # [Ljava/lang/String;
    .param p3, "x3"    # [Ljava/lang/String;

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/TetherSettings;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/TetherSettings;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/settings/TetherSettings;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;
    .param p1, "x1"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/settings/TetherSettings;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->chooseApConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/TetherSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->updateWlanApConfigureSummary()V

    return-void
.end method

.method static synthetic access$1602(Lcom/android/settings/TetherSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->mMassStorageActive:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/settings/TetherSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->updateState()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/settings/TetherSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->mUsbConnected:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/settings/TetherSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->mUsbConnected:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/settings/TetherSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mUsbInternet:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/TetherSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/settings/TetherSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/settings/TetherSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->isMtpPtpMasstorage()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2202(Lcom/android/settings/TetherSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->mUsbInternetSwitching:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/settings/TetherSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->updateBluetoothPan()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/settings/TetherSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->getPcOsVersion()I

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/android/settings/TetherSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;
    .param p1, "x1"    # I

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/settings/TetherSettings;->setUsbInternetOn(I)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/settings/TetherSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;
    .param p1, "x1"    # I

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Lcom/android/settings/TetherSettings;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$2802(Lcom/android/settings/TetherSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->mUsbTetherSwitching:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/android/settings/TetherSettings;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/TetherSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->isWifiOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/TetherSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->mDisplayWifiDialog:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings/TetherSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;
    .param p1, "x1"    # I

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Lcom/android/settings/TetherSettings;->showDialog(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/TetherSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->mDisableWifiOkClicked:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/settings/TetherSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->mDisableWifiOkClicked:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/settings/TetherSettings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/TetherSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/TetherSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/TetherSettings;
    .param p1, "x1"    # I

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/settings/TetherSettings;->startProvisioningIfNecessary(I)V

    return-void
.end method

.method private chooseApConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 2

    .prologue
    .line 1103
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->isOtherAppRun()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1104
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiConfigApp:Landroid/net/wifi/WifiConfiguration;

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 1110
    :goto_0
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0

    .line 1107
    :cond_0
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiConfigSys:Landroid/net/wifi/WifiConfiguration;

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 1108
    const-string v0, "TetherSettings"

    const-string v1, "chooseApConfig using the system ap Config"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "ifaces"    # [Ljava/lang/String;
    .param p1, "regexes"    # [Ljava/lang/String;

    .prologue
    .line 1157
    move-object v0, p0

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

    .line 1158
    .local v4, "iface":Ljava/lang/String;
    move-object v1, p1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v6, :cond_1

    aget-object v7, v1, v2

    .line 1159
    .local v7, "regex":Ljava/lang/String;
    invoke-virtual {v4, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1164
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v4    # "iface":Ljava/lang/String;
    .end local v6    # "len$":I
    .end local v7    # "regex":Ljava/lang/String;
    :goto_2
    return-object v4

    .line 1158
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v4    # "iface":Ljava/lang/String;
    .restart local v6    # "len$":I
    .restart local v7    # "regex":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1157
    .end local v7    # "regex":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_0

    .line 1164
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v4    # "iface":Ljava/lang/String;
    .end local v6    # "len$":I
    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private getPcOsVersion()I
    .locals 3

    .prologue
    .line 1093
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1094
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "usb_internet_pc_os"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private getUsbTetherDelayTime()I
    .locals 7

    .prologue
    .line 720
    const/16 v1, 0x1194

    .line 721
    .local v1, "delayTime":I
    const-string v4, "sys.usb.config"

    const-string v5, "none"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 722
    .local v2, "functions":Ljava/lang/String;
    const/4 v3, 0x0

    .line 723
    .local v3, "nowFuction":Ljava/lang/String;
    const/16 v4, 0x2c

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 724
    .local v0, "commandIndex":I
    if-lez v0, :cond_2

    .line 725
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 730
    :goto_0
    const-string v4, "mtp"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "ptp"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "mass_storage"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 731
    :cond_0
    const/16 v1, 0x4e20

    .line 734
    :cond_1
    const-string v4, "TetherSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getUsbTetherDelayTime delayTime:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " nowFuction:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    return v1

    .line 727
    :cond_2
    move-object v3, v2

    goto :goto_0
.end method

.method private getWifiApConfig()V
    .locals 5

    .prologue
    .line 1131
    const-string v2, "net.wifi.vivosoftap"

    const-string v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1132
    .local v1, "softAp":Ljava/lang/String;
    const-string v2, "net.wifi.appApRun"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1133
    .local v0, "appAp":Ljava/lang/String;
    const-string v2, "TetherSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWifiApConfig softAp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " appAp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    const-string v2, "net.wifi.vivosoftap"

    const-string v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1137
    const-string v2, "net.wifi.appApRun"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/TetherSettings;->mWifiConfigSys:Landroid/net/wifi/WifiConfiguration;

    .line 1139
    const-string v2, "TetherSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWifiApConfig mWifiConfigSys:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mWifiConfigSys:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    const-string v2, "net.wifi.vivosoftap"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1143
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/TetherSettings;->mWifiConfigApp:Landroid/net/wifi/WifiConfiguration;

    .line 1144
    const-string v2, "TetherSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWifiApConfig mWifiConfigApp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mWifiConfigApp:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1147
    const-string v2, "net.wifi.vivosoftap"

    const-string v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    :cond_0
    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1151
    const-string v2, "net.wifi.appApRun"

    const-string v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1154
    :cond_1
    return-void
.end method

.method private initWifiTethering()V
    .locals 1

    .prologue
    .line 332
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 334
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->getWifiApConfig()V

    .line 337
    return-void
.end method

.method public static isFirstTime(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1196
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1198
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v3, "wifi_ap_first_start"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1199
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "wifi_ap_first_start"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1203
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private static isIntentAvailable(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "provisionApp"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 811
    array-length v4, p1

    const/4 v5, 0x2

    if-ge v4, v5, :cond_0

    .line 812
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "provisionApp length should at least be 2"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 814
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 815
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 816
    .local v0, "intent":Landroid/content/Intent;
    aget-object v4, p1, v3

    aget-object v5, p1, v2

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 818
    const/high16 v4, 0x10000

    invoke-virtual {v1, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method private isMtpPtpMasstorage()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 697
    invoke-static {}, Lcom/android/settings/AppFeature;->isCMCC()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/android/settings/AppFeature;->isBbkEmMode()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 715
    :cond_0
    :goto_0
    return v3

    .line 700
    :cond_1
    const-string v4, "1"

    const-string v5, "persist.sys.primary.emulate"

    const-string v6, "0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 704
    const-string v4, "sys.usb.config"

    const-string v5, "none"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 705
    .local v1, "functions":Ljava/lang/String;
    const/4 v2, 0x0

    .line 706
    .local v2, "nowFuction":Ljava/lang/String;
    const/16 v4, 0x2c

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 707
    .local v0, "commandIndex":I
    if-lez v0, :cond_3

    .line 708
    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 712
    :goto_1
    const-string v4, "mtp"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "ptp"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "mass_storage"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 713
    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    .line 710
    :cond_3
    move-object v2, v1

    goto :goto_1
.end method

.method private isOtherAppRun()Z
    .locals 2

    .prologue
    .line 1114
    const-string v0, "true"

    const-string v1, "net.wifi.appApRun"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1115
    const-string v0, "TetherSettings"

    const-string v1, "isOtherAppRun is true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    const/4 v0, 0x1

    .line 1119
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isProvisioningNeeded([Ljava/lang/String;)Z
    .locals 3
    .param p0, "provisionApp"    # [Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 823
    const-string v1, "net.tethering.noprovisioning"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p0, :cond_1

    .line 827
    :cond_0
    :goto_0
    return v0

    :cond_1
    array-length v1, p0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isProvisioningNeededButUnavailable(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 804
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1070016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 806
    .local v0, "provisionApp":[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/TetherSettings;->isProvisioningNeeded([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0, v0}, Lcom/android/settings/TetherSettings;->isIntentAvailable(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isWifiOn()Z
    .locals 4

    .prologue
    .line 791
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 792
    .local v0, "state":I
    const-string v1, "TetherSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "is wifi on .. wifi state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setPcOsVersion(I)V
    .locals 3
    .param p1, "ver"    # I

    .prologue
    .line 1098
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1099
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "usb_internet_pc_os"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1100
    return-void
.end method

.method private setUsbInternetOn(I)V
    .locals 3
    .param p1, "osVer"    # I

    .prologue
    .line 1080
    const-string v0, "TetherSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUsbInternetOn osVer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1090
    :cond_0
    :goto_0
    return-void

    .line 1085
    :cond_1
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-nez p1, :cond_0

    goto :goto_0
.end method

.method private setUsbTethering(Z)V
    .locals 6
    .param p1, "enabled"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 930
    iput-boolean v2, p0, Lcom/android/settings/TetherSettings;->mUsbTetherSwitching:Z

    .line 931
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mUsbInternet:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 932
    if-eqz p1, :cond_0

    .line 933
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 936
    :cond_0
    const-string v1, "TetherSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setUsbTethering enabled:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    move-result v1

    if-eqz v1, :cond_2

    .line 940
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 941
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 942
    iput-boolean v3, p0, Lcom/android/settings/TetherSettings;->mUsbTetherSwitching:Z

    .line 943
    const-string v1, "TetherSettings"

    const-string v2, "setUsbTethering error"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    :cond_1
    :goto_0
    return-void

    .line 947
    :cond_2
    invoke-static {}, Lcom/android/settings/AppFeature;->isNeedRndisAndDiag()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 949
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 950
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "usb_tether_state"

    if-eqz p1, :cond_3

    move v1, v2

    :goto_1
    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 951
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 953
    const-string v1, "TetherSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setUsbTethering usb_tether_state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p1, :cond_4

    :goto_2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move v1, v3

    .line 950
    goto :goto_1

    :cond_4
    move v2, v3

    .line 953
    goto :goto_2
.end method

.method public static showInShortcuts(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1214
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1216
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-eqz v4, :cond_0

    move v1, v2

    .line 1217
    .local v1, "isSecondaryUser":Z
    :goto_0
    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    return v2

    .end local v1    # "isSecondaryUser":Z
    :cond_0
    move v1, v3

    .line 1216
    goto :goto_0

    .restart local v1    # "isSecondaryUser":Z
    :cond_1
    move v2, v3

    .line 1217
    goto :goto_1
.end method

.method private startProvisioningIfNecessary(I)V
    .locals 5
    .param p1, "choice"    # I

    .prologue
    const/4 v4, 0x0

    .line 831
    iput p1, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    .line 832
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/TetherSettings;->isProvisioningNeeded([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 833
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 834
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    aget-object v1, v1, v4

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 835
    const-string v1, "TETHER_TYPE"

    iget v2, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 836
    invoke-virtual {p0, v0, v4}, Lcom/android/settings/TetherSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 840
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 838
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->startTethering()V

    goto :goto_0
.end method

.method private startTethering()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 895
    iget v2, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    packed-switch v2, :pswitch_data_0

    .line 927
    :cond_0
    :goto_0
    return-void

    .line 897
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v2, v4}, Lcom/android/settings/wifi/WifiApEnabler;->setSoftapEnabled(Z)V

    .line 899
    invoke-static {}, Lcom/android/settings/AppFeature;->isCMCC()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 900
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mSimUtils:Lcom/vivo/settings/SimUtils;

    invoke-virtual {v2}, Lcom/vivo/settings/SimUtils;->getInertedSimCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 902
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/settings/TetherSettings;->showDialog(I)V

    goto :goto_0

    .line 908
    :pswitch_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 909
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    .line 910
    iput-boolean v4, p0, Lcom/android/settings/TetherSettings;->mBluetoothEnableForTether:Z

    .line 911
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 913
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 915
    :cond_1
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothPan;

    .line 916
    .local v1, "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v4}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    goto :goto_0

    .line 921
    .end local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    .end local v1    # "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    :pswitch_2
    invoke-direct {p0, v4}, Lcom/android/settings/TetherSettings;->setUsbTethering(Z)V

    goto :goto_0

    .line 895
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private updateBluetoothPan()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 272
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mInitPan:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 273
    const-string v1, "TetherSettings"

    const-string v2, "updateBluetoothPan"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 275
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    .line 276
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 282
    .end local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    :cond_0
    :goto_0
    return-void

    .line 279
    .restart local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    :cond_1
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mInitPan:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0
.end method

.method private updateBluetoothState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8
    .param p1, "available"    # [Ljava/lang/String;
    .param p2, "tethered"    # [Ljava/lang/String;
    .param p3, "errored"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 742
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 743
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-nez v0, :cond_0

    .line 763
    :goto_0
    return-void

    .line 746
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    .line 747
    .local v2, "btState":I
    const-string v3, "TetherSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bluetooth tether state :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    const/16 v3, 0xd

    if-ne v2, v3, :cond_1

    .line 749
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 750
    :cond_1
    const/16 v3, 0xb

    if-ne v2, v3, :cond_2

    .line 751
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 753
    :cond_2
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothPan;

    .line 754
    .local v1, "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    const/16 v3, 0xc

    if-ne v2, v3, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 756
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 757
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 759
    :cond_3
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 760
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private updatePcOsVersion()V
    .locals 4

    .prologue
    .line 304
    iget-boolean v1, p0, Lcom/android/settings/TetherSettings;->mIsSupportTetherUsbInternet:Z

    if-eqz v1, :cond_0

    .line 305
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->getPcOsVersion()I

    move-result v0

    .line 306
    .local v0, "value":I
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mUsbInternetOsVer:Landroid/preference/ListPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 307
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mUsbInternetOsVer:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mUsbInternetOsVer:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->getPcOsVersion()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 309
    .end local v0    # "value":I
    :cond_0
    return-void
.end method

.method private updateState()V
    .locals 5

    .prologue
    .line 606
    const-string v3, "TetherSettings"

    const-string v4, "updateState"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v0

    .line 609
    .local v0, "available":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v2

    .line 610
    .local v2, "tethered":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v1

    .line 611
    .local v1, "errored":[Ljava/lang/String;
    invoke-direct {p0, v0, v2, v1}, Lcom/android/settings/TetherSettings;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 612
    return-void
.end method

.method private updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "available"    # [Ljava/lang/String;
    .param p2, "tethered"    # [Ljava/lang/String;
    .param p3, "errored"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 616
    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->mIsSupportTetherUsbInternet:Z

    if-eqz v0, :cond_2

    .line 618
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mUsbInternet:Landroid/preference/CheckBoxPreference;

    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->mUsbConnected:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->isMtpPtpMasstorage()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 620
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mUsbInternet:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->mUsbInternetSwitching:Z

    if-eqz v0, :cond_2

    .line 622
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/TetherSettings;->updateBluetoothState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 623
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 624
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 625
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 626
    const-string v0, "TetherSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "usb internet is connected or mUsbInternetSwitching is true, return"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/TetherSettings;->mUsbInternetSwitching:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 618
    goto :goto_0

    .line 630
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/TetherSettings;->updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 631
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/TetherSettings;->updateBluetoothState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 18
    .param p1, "available"    # [Ljava/lang/String;
    .param p2, "tethered"    # [Ljava/lang/String;
    .param p3, "errored"    # [Ljava/lang/String;

    .prologue
    .line 638
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings/TetherSettings;->mUsbConnected:Z

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings/TetherSettings;->mMassStorageActive:Z

    if-nez v14, :cond_1

    const/4 v10, 0x1

    .line 639
    .local v10, "usbAvailable":Z
    :goto_0
    const/4 v11, 0x0

    .line 640
    .local v11, "usbError":I
    move-object/from16 v2, p1

    .local v2, "arr$":[Ljava/lang/String;
    array-length v6, v2

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    move v5, v4

    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_3

    aget-object v9, v2, v5

    .line 641
    .local v9, "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .local v3, "arr$":[Ljava/lang/String;
    array-length v7, v3

    .local v7, "len$":I
    const/4 v4, 0x0

    .end local v5    # "i$":I
    .restart local v4    # "i$":I
    :goto_2
    if-ge v4, v7, :cond_2

    aget-object v8, v3, v4

    .line 642
    .local v8, "regex":Ljava/lang/String;
    invoke-virtual {v9, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 643
    if-nez v11, :cond_0

    .line 644
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v14, v9}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v11

    .line 641
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 638
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "regex":Ljava/lang/String;
    .end local v9    # "s":Ljava/lang/String;
    .end local v10    # "usbAvailable":Z
    .end local v11    # "usbError":I
    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 640
    .restart local v3    # "arr$":[Ljava/lang/String;
    .restart local v4    # "i$":I
    .restart local v7    # "len$":I
    .restart local v9    # "s":Ljava/lang/String;
    .restart local v10    # "usbAvailable":Z
    .restart local v11    # "usbError":I
    :cond_2
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    .end local v4    # "i$":I
    .restart local v5    # "i$":I
    goto :goto_1

    .line 649
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v7    # "len$":I
    .end local v9    # "s":Ljava/lang/String;
    :cond_3
    const/4 v13, 0x0

    .line 650
    .local v13, "usbTethered":Z
    move-object/from16 v2, p2

    .restart local v2    # "arr$":[Ljava/lang/String;
    array-length v6, v2

    .restart local v6    # "len$":I
    const/4 v4, 0x0

    .end local v5    # "i$":I
    .restart local v4    # "i$":I
    move v5, v4

    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    .restart local v5    # "i$":I
    :goto_3
    if-ge v5, v6, :cond_6

    aget-object v9, v2, v5

    .line 651
    .restart local v9    # "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .restart local v3    # "arr$":[Ljava/lang/String;
    array-length v7, v3

    .restart local v7    # "len$":I
    const/4 v4, 0x0

    .end local v5    # "i$":I
    .restart local v4    # "i$":I
    :goto_4
    if-ge v4, v7, :cond_5

    aget-object v8, v3, v4

    .line 652
    .restart local v8    # "regex":Ljava/lang/String;
    invoke-virtual {v9, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    const/4 v13, 0x1

    .line 651
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 650
    .end local v8    # "regex":Ljava/lang/String;
    :cond_5
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    .end local v4    # "i$":I
    .restart local v5    # "i$":I
    goto :goto_3

    .line 655
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v7    # "len$":I
    .end local v9    # "s":Ljava/lang/String;
    :cond_6
    const/4 v12, 0x0

    .line 656
    .local v12, "usbErrored":Z
    move-object/from16 v2, p3

    .restart local v2    # "arr$":[Ljava/lang/String;
    array-length v6, v2

    .restart local v6    # "len$":I
    const/4 v4, 0x0

    .end local v5    # "i$":I
    .restart local v4    # "i$":I
    move v5, v4

    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    .restart local v5    # "i$":I
    :goto_5
    if-ge v5, v6, :cond_9

    aget-object v9, v2, v5

    .line 657
    .restart local v9    # "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .restart local v3    # "arr$":[Ljava/lang/String;
    array-length v7, v3

    .restart local v7    # "len$":I
    const/4 v4, 0x0

    .end local v5    # "i$":I
    .restart local v4    # "i$":I
    :goto_6
    if-ge v4, v7, :cond_8

    aget-object v8, v3, v4

    .line 658
    .restart local v8    # "regex":Ljava/lang/String;
    invoke-virtual {v9, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    const/4 v12, 0x1

    .line 657
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 656
    .end local v8    # "regex":Ljava/lang/String;
    :cond_8
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    .end local v4    # "i$":I
    .restart local v5    # "i$":I
    goto :goto_5

    .line 662
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v7    # "len$":I
    .end local v9    # "s":Ljava/lang/String;
    :cond_9
    if-nez v12, :cond_a

    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v14}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v14

    if-eqz v14, :cond_b

    .line 663
    :cond_a
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/settings/TetherSettings;->mUsbTetherSwitching:Z

    .line 664
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/TetherSettings;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mRestoreUsbTether:Ljava/lang/Runnable;

    invoke-virtual {v14, v15}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 667
    :cond_b
    const-string v14, "TetherSettings"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "updateUsbState usbTethered:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " usbAvailable:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " usbErrored:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings/TetherSettings;->mUsbTetherSwitching:Z

    if-eqz v14, :cond_d

    .line 670
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/TetherSettings;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mRestoreUsbTether:Ljava/lang/Runnable;

    invoke-virtual {v14, v15}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 671
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/TetherSettings;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mRestoreUsbTether:Ljava/lang/Runnable;

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getUsbTetherDelayTime()I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    invoke-virtual/range {v14 .. v17}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 688
    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->isMtpPtpMasstorage()Z

    move-result v14

    if-eqz v14, :cond_c

    .line 689
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 692
    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/TetherSettings;->mUsbInternet:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings/TetherSettings;->mUsbConnected:Z

    if-eqz v14, :cond_12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v14}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v14

    if-nez v14, :cond_12

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->isMtpPtpMasstorage()Z

    move-result v14

    if-nez v14, :cond_12

    const/4 v14, 0x1

    :goto_8
    invoke-virtual {v15, v14}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 693
    return-void

    .line 672
    :cond_d
    if-eqz v13, :cond_e

    .line 673
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 674
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_7

    .line 675
    :cond_e
    if-eqz v10, :cond_f

    .line 676
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 677
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_7

    .line 678
    :cond_f
    if-eqz v12, :cond_10

    .line 679
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 680
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_7

    .line 681
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings/TetherSettings;->mMassStorageActive:Z

    if-eqz v14, :cond_11

    .line 682
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 683
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_7

    .line 685
    :cond_11
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 686
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_7

    .line 692
    :cond_12
    const/4 v14, 0x0

    goto :goto_8
.end method

.method private updateWlanApConfigureSummary()V
    .locals 4

    .prologue
    .line 1168
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    .line 1169
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Landroid/preference/Preference;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1193
    :goto_0
    return-void

    .line 1173
    :cond_0
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 1174
    .local v0, "apState":I
    const-string v1, "TetherSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateWlanApConfigureSummary wifiApState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v1, :cond_1

    .line 1176
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Landroid/preference/Preference;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1180
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->isOtherAppRun()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1181
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Landroid/preference/Preference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1182
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Landroid/preference/Preference;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1185
    :cond_2
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Landroid/preference/Preference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1188
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1189
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1191
    :cond_3
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Landroid/preference/Preference;

    const v2, 0x7f0b01d9

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method


# virtual methods
.method isProvisioningNeeded()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 797
    const-string v1, "net.tethering.noprovisioning"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 800
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 845
    const-string v2, "TetherSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onActivityResult  ----   requestCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    if-nez p1, :cond_2

    .line 847
    if-ne p2, v5, :cond_1

    .line 848
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    invoke-static {v2, v3}, Lcom/android/settings/TetherService;->scheduleRecheckAlarm(Landroid/content/Context;I)V

    .line 849
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->startTethering()V

    .line 892
    :cond_0
    :goto_0
    return-void

    .line 853
    :cond_1
    iget v2, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    packed-switch v2, :pswitch_data_0

    .line 861
    :goto_1
    iput v5, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    goto :goto_0

    .line 855
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    .line 858
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    .line 863
    :cond_2
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 864
    if-eqz p3, :cond_0

    .line 865
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 867
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 868
    const-string v2, "wifi_config"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 869
    .local v1, "configuare":Landroid/net/wifi/WifiConfiguration;
    const-string v2, "TetherSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onActivityResult configuare:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    if-eqz v1, :cond_0

    .line 871
    iput-object v1, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 873
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->isOtherAppRun()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 874
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iput-object v2, p0, Lcom/android/settings/TetherSettings;->mWifiConfigApp:Landroid/net/wifi/WifiConfiguration;

    .line 875
    const-string v2, "TetherSettings"

    const-string v3, "onClick using the third party ap config file "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    :cond_3
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iput-object v2, p0, Lcom/android/settings/TetherSettings;->mWifiConfigSys:Landroid/net/wifi/WifiConfiguration;

    .line 880
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->updateWlanApConfigureSummary()V

    .line 882
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_4

    .line 883
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mRestartWifiAP:Ljava/lang/Runnable;

    const-wide/16 v4, 0x32

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 885
    :cond_4
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_0

    .line 853
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 172
    invoke-super {p0, p1}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 174
    if-eqz p1, :cond_0

    .line 175
    const-string v4, "TETHER_TYPE"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    .line 178
    :cond_0
    sget-object v4, Lcom/android/settings/TetherSettings;->SETTINGS_RESOUCE:Lcom/vivo/settings/xml/SettingsResouce;

    invoke-virtual {v4}, Lcom/vivo/settings/xml/SettingsResouce;->getXmlResouce()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/settings/TetherSettings;->addPreferencesFromResource(I)V

    .line 179
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;

    .line 181
    const-string v4, "TetherSettings"

    const-string v7, "onCreate"

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const-string v4, "user"

    invoke-virtual {p0, v4}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    iput-object v4, p0, Lcom/android/settings/TetherSettings;->mUm:Landroid/os/UserManager;

    .line 185
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mUm:Landroid/os/UserManager;

    const-string v7, "no_config_tethering"

    invoke-virtual {v4, v7}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 186
    iput-boolean v5, p0, Lcom/android/settings/TetherSettings;->mUnavailable:Z

    .line 187
    new-instance v4, Landroid/preference/PreferenceScreen;

    iget-object v5, p0, Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v9}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v4}, Lcom/android/settings/TetherSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 262
    :goto_0
    return-void

    .line 191
    :cond_1
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/TetherSettings;->prefs:Landroid/content/SharedPreferences;

    .line 194
    iput-boolean v6, p0, Lcom/android/settings/TetherSettings;->mIsSupportTetherUsbInternet:Z

    .line 196
    const-string v4, "enable_wifi_ap"

    invoke-virtual {p0, v4}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    .line 198
    const-string v4, "wifi_ap_ssid_and_security"

    invoke-virtual {p0, v4}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Landroid/preference/Preference;

    .line 199
    const-string v4, "usb_tether_settings"

    invoke-virtual {p0, v4}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    .line 200
    const-string v4, "enable_bluetooth_tethering"

    invoke-virtual {p0, v4}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    .line 201
    const-string v4, "tethering_help"

    invoke-virtual {p0, v4}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/TetherSettings;->mTetherHelp:Landroid/preference/Preference;

    .line 202
    const-string v4, "tethering_ipv4_ipv6"

    invoke-virtual {p0, v4}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/TetherSettings;->mTetherIpv4Ipv6:Landroid/preference/CheckBoxPreference;

    .line 204
    const-string v4, "usb_internet"

    invoke-virtual {p0, v4}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/TetherSettings;->mUsbInternet:Landroid/preference/CheckBoxPreference;

    .line 205
    const-string v4, "usb_internet_os_ver"

    invoke-virtual {p0, v4}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/settings/TetherSettings;->mUsbInternetOsVer:Landroid/preference/ListPreference;

    .line 207
    iget-boolean v4, p0, Lcom/android/settings/TetherSettings;->mIsSupportTetherUsbInternet:Z

    if-nez v4, :cond_6

    .line 208
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mUsbInternet:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v4}, Lcom/android/settings/TetherSettings;->removePreference(Landroid/preference/Preference;)V

    .line 209
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mUsbInternetOsVer:Landroid/preference/ListPreference;

    invoke-virtual {p0, v4}, Lcom/android/settings/TetherSettings;->removePreference(Landroid/preference/Preference;)V

    .line 210
    const-string v4, "category_share_pc_network"

    invoke-virtual {p0, v4}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0, v4}, Lcom/android/settings/TetherSettings;->removePreference(Landroid/preference/Preference;)V

    .line 214
    :goto_1
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    iput-object v4, p0, Lcom/android/settings/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    .line 216
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .line 217
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    .line 218
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    .line 220
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    array-length v4, v4

    if-eqz v4, :cond_7

    move v2, v5

    .line 221
    .local v2, "usbAvailable":Z
    :goto_2
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    array-length v4, v4

    if-eqz v4, :cond_8

    move v3, v5

    .line 222
    .local v3, "wifiAvailable":Z
    :goto_3
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    array-length v4, v4

    if-eqz v4, :cond_9

    move v0, v5

    .line 224
    .local v0, "bluetoothAvailable":Z
    :goto_4
    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 225
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 228
    :cond_3
    if-eqz v3, :cond_4

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 229
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 230
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Landroid/preference/Preference;

    invoke-virtual {v4, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 240
    :goto_5
    if-nez v0, :cond_b

    .line 241
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 251
    :goto_6
    sget-object v4, Lcom/android/settings/TetherSettings;->SETTINGS_RESOUCE:Lcom/vivo/settings/xml/SettingsResouce;

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "tethering_ipv4_ipv6"

    invoke-virtual {v4, v5, v6}, Lcom/vivo/settings/xml/SettingsResouce;->isItemEnabled(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 252
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mTetherIpv4Ipv6:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v4}, Lcom/android/settings/TetherSettings;->removePreference(Landroid/preference/Preference;)V

    .line 253
    iput-object v9, p0, Lcom/android/settings/TetherSettings;->mTetherIpv4Ipv6:Landroid/preference/CheckBoxPreference;

    .line 256
    :cond_5
    new-instance v4, Lcom/vivo/settings/SimUtils;

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/vivo/settings/SimUtils;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/TetherSettings;->mSimUtils:Lcom/vivo/settings/SimUtils;

    .line 258
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070016

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    .line 261
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vivo/settings/PreferenceHelper;->addDividers(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V

    goto/16 :goto_0

    .line 212
    .end local v0    # "bluetoothAvailable":Z
    .end local v2    # "usbAvailable":Z
    .end local v3    # "wifiAvailable":Z
    :cond_6
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mUsbInternetOsVer:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_1

    :cond_7
    move v2, v6

    .line 220
    goto/16 :goto_2

    .restart local v2    # "usbAvailable":Z
    :cond_8
    move v3, v6

    .line 221
    goto :goto_3

    .restart local v3    # "wifiAvailable":Z
    :cond_9
    move v0, v6

    .line 222
    goto :goto_4

    .line 232
    .restart local v0    # "bluetoothAvailable":Z
    :cond_a
    new-instance v4, Lcom/android/settings/wifi/WifiApEnabler;

    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/settings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-direct {v4, v7, v8}, Lcom/android/settings/wifi/WifiApEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    iput-object v4, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    .line 233
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->initWifiTethering()V

    .line 234
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->chooseApConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 236
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->updateWlanApConfigureSummary()V

    goto :goto_5

    .line 243
    :cond_b
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothPan;

    .line 244
    .local v1, "pan":Landroid/bluetooth/BluetoothPan;
    if-eqz v1, :cond_c

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 245
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_6

    .line 247
    :cond_c
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_6
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .param p1, "id"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 361
    if-ne p1, v5, :cond_1

    .line 362
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b0958

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0957

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0956

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 368
    .local v0, "dialog":Landroid/app/AlertDialog;
    new-instance v2, Lcom/android/settings/TetherSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/TetherSettings$2;-><init>(Lcom/android/settings/TetherSettings;)V

    invoke-virtual {p0, v2}, Lcom/android/settings/TetherSettings;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 433
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    :cond_0
    :goto_0
    return-object v0

    .line 377
    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 378
    iput-boolean v4, p0, Lcom/android/settings/TetherSettings;->mDisableWifiOkClicked:Z

    .line 379
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b0955

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/android/settings/TetherSettings$3;

    invoke-direct {v4, p0}, Lcom/android/settings/TetherSettings$3;-><init>(Lcom/android/settings/TetherSettings;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040009

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 396
    .restart local v0    # "dialog":Landroid/app/AlertDialog;
    new-instance v2, Lcom/android/settings/TetherSettings$4;

    invoke-direct {v2, p0}, Lcom/android/settings/TetherSettings$4;-><init>(Lcom/android/settings/TetherSettings;)V

    invoke-virtual {p0, v2}, Lcom/android/settings/TetherSettings;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 406
    .end local v0    # "dialog":Landroid/app/AlertDialog;
    :cond_2
    const/4 v2, 0x3

    if-ne p1, v2, :cond_3

    .line 407
    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 408
    .local v1, "pd":Landroid/app/ProgressDialog;
    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 409
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 411
    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 412
    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 413
    const v2, 0x7f0b0927

    invoke-virtual {p0, v2}, Lcom/android/settings/TetherSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 414
    new-instance v2, Lcom/android/settings/TetherSettings$5;

    invoke-direct {v2, p0}, Lcom/android/settings/TetherSettings$5;-><init>(Lcom/android/settings/TetherSettings;)V

    invoke-virtual {p0, v2}, Lcom/android/settings/TetherSettings;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    move-object v0, v1

    .line 420
    goto :goto_0

    .line 421
    .end local v1    # "pd":Landroid/app/ProgressDialog;
    :cond_3
    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    .line 422
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b0819

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0843

    new-instance v4, Lcom/android/settings/TetherSettings$6;

    invoke-direct {v4, p0}, Lcom/android/settings/TetherSettings$6;-><init>(Lcom/android/settings/TetherSettings;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 431
    .restart local v0    # "dialog":Landroid/app/AlertDialog;
    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 322
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    const/4 v2, 0x5

    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothProfile;

    invoke-virtual {v1, v2, v0}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 324
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mRestartUsbInternet:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 325
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mRestoreUsbTether:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 327
    const-string v0, "TetherSettings"

    const-string v1, "onDestroy "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onDestroy()V

    .line 329
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 313
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/TetherSettings;->mDisplayWifiDialog:Z

    .line 314
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mRestartUsbInternet:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 315
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mRestoreUsbTether:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 316
    const-string v0, "TetherSettings"

    const-string v1, "onPause "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onPause()V

    .line 318
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x2

    const/4 v0, 0x0

    const/4 v5, 0x3

    const/4 v3, 0x1

    .line 1060
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mUsbInternetOsVer:Landroid/preference/ListPreference;

    if-ne p1, v4, :cond_6

    .line 1061
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->getPcOsVersion()I

    move-result v2

    .line 1062
    .local v2, "oldValue":I
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1063
    .local v1, "intValue":I
    invoke-direct {p0, v1}, Lcom/android/settings/TetherSettings;->setPcOsVersion(I)V

    .line 1064
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->updatePcOsVersion()V

    .line 1065
    if-eq v2, v3, :cond_0

    if-nez v2, :cond_1

    :cond_0
    if-eq v1, v3, :cond_3

    if-eqz v1, :cond_3

    :cond_1
    if-eq v2, v5, :cond_2

    if-ne v2, v6, :cond_4

    :cond_2
    if-eq v1, v5, :cond_3

    if-ne v1, v6, :cond_4

    :cond_3
    move v0, v3

    .line 1068
    .local v0, "ignoreChange":Z
    :cond_4
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mUsbInternet:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_5

    if-nez v0, :cond_5

    .line 1069
    invoke-virtual {p0, v5}, Lcom/android/settings/TetherSettings;->showDialog(I)V

    .line 1072
    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/settings/TetherSettings;->mRestartUsbInternet:Ljava/lang/Runnable;

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1076
    .end local v0    # "ignoreChange":Z
    .end local v1    # "intValue":I
    .end local v2    # "oldValue":I
    :cond_5
    :goto_0
    return v3

    .restart local p2    # "value":Ljava/lang/Object;
    :cond_6
    move v3, v0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 18
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 960
    const-string v2, "TetherSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreferenceTreeClick pref = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 963
    .local v12, "currentTime":J
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/settings/TetherSettings;->mLastPreferenceClickTime:J

    sub-long v2, v12, v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 964
    invoke-super/range {p0 .. p2}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    .line 1056
    :goto_0
    return v2

    .line 966
    :cond_0
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/settings/TetherSettings;->mLastPreferenceClickTime:J

    .line 969
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p2

    if-ne v0, v2, :cond_5

    .line 970
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v11

    .line 971
    .local v11, "enable":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;

    const-string v3, "wifi_ap_first_start"

    invoke-static {v2, v3}, Lcom/android/settings/TetherSettings;->isFirstTime(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v15

    .line 972
    .local v15, "isFirstStart":Z
    const-string v2, "TetherSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "is first start = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " enable:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    if-eqz v11, :cond_3

    .line 974
    if-eqz v15, :cond_1

    .line 976
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_hotspot_auto_disable"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 980
    :cond_1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/TetherSettings;->startProvisioningIfNecessary(I)V

    .line 1056
    .end local v11    # "enable":Z
    .end local v15    # "isFirstStart":Z
    :cond_2
    :goto_1
    invoke-super/range {p0 .. p2}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_0

    .line 991
    .restart local v11    # "enable":Z
    .restart local v15    # "isFirstStart":Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    invoke-static {v2}, Lcom/android/settings/TetherSettings;->isProvisioningNeeded([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 992
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/settings/TetherService;->cancelRecheckAlarmIfNecessary(Landroid/content/Context;I)V

    .line 994
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/settings/wifi/WifiApEnabler;->setSoftapEnabled(Z)V

    goto :goto_1

    .line 996
    .end local v11    # "enable":Z
    .end local v15    # "isFirstStart":Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/TetherSettings;->mWifiApSettings:Landroid/preference/Preference;

    move-object/from16 v0, p2

    if-ne v0, v2, :cond_6

    .line 997
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->chooseApConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 999
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 1000
    .local v7, "bundle":Landroid/os/Bundle;
    const-string v2, "wifi_config"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v7, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1001
    const-class v2, Lcom/vivo/settings/tetherSettings/TetherWlanApConfiguare;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0b0213

    const/4 v6, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/settings/TetherSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_1

    .line 1003
    .end local v7    # "bundle":Landroid/os/Bundle;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p2

    if-ne v0, v2, :cond_9

    .line 1004
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v16

    .line 1006
    .local v16, "newState":Z
    if-eqz v16, :cond_7

    .line 1007
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/TetherSettings;->startProvisioningIfNecessary(I)V

    goto :goto_1

    .line 1009
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    invoke-static {v2}, Lcom/android/settings/TetherSettings;->isProvisioningNeeded([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1010
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/settings/TetherService;->cancelRecheckAlarmIfNecessary(Landroid/content/Context;I)V

    .line 1012
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/settings/TetherSettings;->setUsbTethering(Z)V

    goto/16 :goto_1

    .line 1014
    .end local v16    # "newState":Z
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p2

    if-ne v0, v2, :cond_e

    .line 1015
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v10

    .line 1017
    .local v10, "bluetoothTetherState":Z
    if-eqz v10, :cond_a

    .line 1018
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/TetherSettings;->startProvisioningIfNecessary(I)V

    goto/16 :goto_1

    .line 1020
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    invoke-static {v2}, Lcom/android/settings/TetherSettings;->isProvisioningNeeded([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1021
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/android/settings/TetherService;->cancelRecheckAlarmIfNecessary(Landroid/content/Context;I)V

    .line 1024
    :cond_b
    const/4 v14, 0x0

    .line 1026
    .local v14, "errored":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v17

    .line 1027
    .local v17, "tethered":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Lcom/android/settings/TetherSettings;->findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1028
    .local v8, "bluetoothIface":Ljava/lang/String;
    if-eqz v8, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v8}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_c

    .line 1030
    const/4 v14, 0x1

    .line 1032
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/bluetooth/BluetoothPan;

    .line 1033
    .local v9, "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    if-eqz v9, :cond_d

    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 1035
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/TetherSettings;->mInitPan:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_1

    .line 1037
    .end local v8    # "bluetoothIface":Ljava/lang/String;
    .end local v9    # "bluetoothPan":Landroid/bluetooth/BluetoothPan;
    .end local v10    # "bluetoothTetherState":Z
    .end local v14    # "errored":Z
    .end local v17    # "tethered":[Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/TetherSettings;->mUsbInternet:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p2

    if-ne v0, v2, :cond_f

    .line 1038
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/TetherSettings;->mUsbInternetSwitching:Z

    .line 1039
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/TetherSettings;->mUsbInternet:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1040
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 1041
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/TetherSettings;->getPcOsVersion()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/TetherSettings;->setUsbInternetOn(I)V

    goto/16 :goto_1

    .line 1046
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/TetherSettings;->mTetherHelp:Landroid/preference/Preference;

    move-object/from16 v0, p2

    if-ne v0, v2, :cond_10

    .line 1047
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 1048
    .restart local v7    # "bundle":Landroid/os/Bundle;
    const-string v2, "wifi_config"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v7, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1049
    const-class v2, Lcom/vivo/settings/tetherSettings/TetherHelp;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0b02f9

    const/4 v6, 0x3

    move-object/from16 v2, p0

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/settings/TetherSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto/16 :goto_1

    .line 1051
    .end local v7    # "bundle":Landroid/os/Bundle;
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/TetherSettings;->mTetherIpv4Ipv6:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p2

    if-ne v0, v2, :cond_2

    .line 1052
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/TetherSettings;->mTetherIpv4Ipv6:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v16

    .line 1053
    .restart local v16    # "newState":Z
    const-string v2, "TetherSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mTetherIpv4Ipv6 newState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 286
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onResume()V

    .line 287
    const-string v1, "TetherSettings"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->showBBKBackButton()V

    .line 290
    const v1, 0x7f0b02f6

    invoke-virtual {p0, v1}, Lcom/android/settings/TetherSettings;->setTitle(I)V

    .line 291
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/TetherSettings;->mDisplayWifiDialog:Z

    .line 292
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->updatePcOsVersion()V

    .line 294
    invoke-static {}, Lcom/android/settings/AppFeature;->isMTK()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 295
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mTetherIpv4Ipv6:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    .line 296
    const/4 v0, 0x0

    .line 297
    .local v0, "ipv4Ipv6":Z
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mTetherIpv4Ipv6:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 301
    .end local v0    # "ipv4Ipv6":Z
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 266
    const-string v0, "TETHER_TYPE"

    iget v1, p0, Lcom/android/settings/TetherSettings;->mTetherChoice:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 267
    invoke-super {p0, p1}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 268
    return-void
.end method

.method public onStart()V
    .locals 6

    .prologue
    .line 538
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onStart()V

    .line 540
    const-string v3, "TetherSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onStart mUnavailable:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings/TetherSettings;->mUnavailable:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    iget-boolean v3, p0, Lcom/android/settings/TetherSettings;->mUnavailable:Z

    if-eqz v3, :cond_1

    .line 543
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x1020004

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 544
    .local v0, "emptyView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 545
    if-eqz v0, :cond_0

    .line 546
    const v3, 0x7f0b040c

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 585
    .end local v0    # "emptyView":Landroid/widget/TextView;
    :cond_0
    :goto_0
    return-void

    .line 551
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->updateBluetoothPan()V

    .line 552
    const-string v3, "shared"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/TetherSettings;->mMassStorageActive:Z

    .line 553
    new-instance v3, Lcom/android/settings/TetherSettings$TetherChangeReceiver;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/settings/TetherSettings$TetherChangeReceiver;-><init>(Lcom/android/settings/TetherSettings;Lcom/android/settings/TetherSettings$1;)V

    iput-object v3, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 554
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 555
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 556
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    .line 558
    .local v2, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 559
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    const-string v3, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 560
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 562
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 563
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 564
    const-string v3, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 565
    const-string v3, "file"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 566
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 568
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 569
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 570
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 572
    iget-boolean v3, p0, Lcom/android/settings/TetherSettings;->mIsSupportTetherUsbInternet:Z

    if-eqz v3, :cond_2

    .line 573
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 574
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    const-string v3, "mediatek.intent.action.USB_DATA_STATE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 575
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 578
    :cond_2
    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 579
    :cond_3
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    if-eqz v3, :cond_4

    .line 581
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v3}, Lcom/android/settings/wifi/WifiApEnabler;->resume()V

    .line 584
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->updateState()V

    goto/16 :goto_0
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 589
    const-string v0, "TetherSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStop mUnavailable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/TetherSettings;->mUnavailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->mUnavailable:Z

    if-eqz v0, :cond_0

    .line 603
    :goto_0
    return-void

    .line 595
    :cond_0
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 596
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 597
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    if-eqz v0, :cond_1

    .line 599
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApEnabler;->pause()V

    .line 602
    :cond_1
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onStop()V

    goto :goto_0
.end method
