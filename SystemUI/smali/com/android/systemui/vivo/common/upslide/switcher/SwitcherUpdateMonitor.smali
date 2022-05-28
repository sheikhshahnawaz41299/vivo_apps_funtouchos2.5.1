.class public Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;
.super Ljava/lang/Object;
.source "SwitcherUpdateMonitor.java"


# static fields
.field private static final FLASH_LIGHT_PACKAGE_NAME:Ljava/lang/String; = "com.vivo.flashlightservice"

.field private static final MSG_ACTION_AIRPLANE_MODE_CHANGED:I = 0x3f5

.field private static final MSG_AT_SWITCH_OFFLINE_MODE:I = 0x3eb

.field private static final MSG_BATTERY_CHANGED:I = 0x3f0

.field private static final MSG_BLUETOOTH_ADAPTER_STATE_CHANGED:I = 0x3f2

.field private static final MSG_CANCEL_APN_INTERMEDIATE_STATE:I = 0x3f4

.field private static final MSG_FINISH_ORDER:I = 0x3ee

.field private static final MSG_FINISH_SPEED_UP:I = 0x3e9

.field private static final MSG_FLASHLIGHT_STATE_CHANGD:I = 0x3f1

.field private static final MSG_NFC_ADAPTER_STATE_CHANGED:I = 0x3ec

.field private static final MSG_START_SPEED_UP:I = 0x3e8

.field private static final MSG_SUPER_POWER_SAVING_SETTINGS_CHANGED:I = 0x3ed

.field private static final MSG_UPDATE_APN_BUTTON_RIGHTNOW:I = 0x3f3

.field private static final MSG_VIBRATE_CHANGED:I = 0x3ea

.field private static final MSG_WECHAT_PACKAGE_ADDED:I = 0x3ef

.field private static final TAG:Ljava/lang/String; = "SwitcherUpdateMonitor"


# instance fields
.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mHandler:Landroid/os/Handler;

.field private mSharePrefs:Landroid/content/SharedPreferences;

.field private mSwitcherHelper:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "helper"    # Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;

    .prologue
    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor$1;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 198
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor$2;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->mHandler:Landroid/os/Handler;

    .line 246
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->mContext:Landroid/content/Context;

    .line 247
    iput-object p2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->mSwitcherHelper:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;

    .line 248
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->mSharePrefs:Landroid/content/SharedPreferences;

    .line 249
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->mSharePrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 250
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;)Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->mSwitcherHelper:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->handleWechatPackageAdded(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->handleBluetoothAdapterChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->mEditor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->handleStartSpeedUp(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->handleFinishSpeedUp(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->handleVibrateChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->handleSwitchOfflineMode(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->handleNfcAdapterChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->handleSuperPowerSaveChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->handleFinishOrder()V

    return-void
.end method

.method private getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 190
    const-string v1, "state"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 192
    const-class v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-static {v1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 194
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_0
.end method

.method private handleBluetoothAdapterChanged(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->mSwitcherHelper:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->bluetoothAdapterChanged(Landroid/content/Intent;)V

    .line 314
    return-void
.end method

.method private handleFinishOrder()V
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->mSwitcherHelper:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->finishOrder()V

    .line 326
    return-void
.end method

.method private handleFinishSpeedUp(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->mSwitcherHelper:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->onSpeedUpFinished(Landroid/content/Intent;)V

    .line 298
    return-void
.end method

.method private handleNfcAdapterChanged(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->mSwitcherHelper:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->nfcAdapterChanged(Landroid/content/Intent;)V

    .line 318
    return-void
.end method

.method private handleStartSpeedUp(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->mSwitcherHelper:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->onSpeedUpStarted(Landroid/content/Intent;)V

    .line 302
    return-void
.end method

.method private handleSuperPowerSaveChanged(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->mSwitcherHelper:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->superPowerSaveChanged(Landroid/content/Intent;)V

    .line 322
    return-void
.end method

.method private handleSwitchOfflineMode(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->mSwitcherHelper:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->switchOfflineMode(Landroid/content/Intent;)V

    .line 310
    return-void
.end method

.method private handleVibrateChanged(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->mSwitcherHelper:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->vibrateChanged(Landroid/content/Intent;)V

    .line 306
    return-void
.end method

.method private handleWechatPackageAdded(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->mSwitcherHelper:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->wechatPackageAdded(Landroid/content/Intent;)V

    .line 330
    return-void
.end method


# virtual methods
.method public handleApnStateChanged()V
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->mSwitcherHelper:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->onApnStateChanged()V

    .line 342
    return-void
.end method

.method public handleBatteryChanged(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->mSwitcherHelper:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->onBatteryChanged(Landroid/content/Intent;)V

    .line 334
    return-void
.end method

.method public handleFlashlightStateChanged(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->mSwitcherHelper:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->onFlashlightStateChanged(Landroid/content/Intent;)V

    .line 338
    return-void
.end method

.method public handleRefreshDisplayOffline()V
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->mSwitcherHelper:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->refreshDisplayOffline()V

    .line 346
    return-void
.end method

.method public init()V
    .locals 4

    .prologue
    .line 253
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 254
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "bbk.intent.action.KILL_ALL_APPS_START"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 255
    const-string v2, "bbk.intent.action.KILL_ALL_APPS_DONE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 256
    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 257
    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 258
    const-string v2, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 259
    const-string v2, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 260
    const-string v2, "android.net.wifi.supplicant.NETWORK_CONNECTION_FAILURE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 261
    const-string v2, "com.android.wcnsettings.action.WIFI_IS_FIRST_TIME_ENABLE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 262
    const-string v2, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 263
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 264
    const-string v2, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 265
    const-string v2, "android.media.VIBRATE_SETTING_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 266
    const-string v2, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 267
    const-string v2, "android.intent.action.AT_AIRPLANE_MODE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 268
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 269
    const-string v2, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 270
    const-string v2, "statusbar.finish.order"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 271
    const-string v2, "android.intent.action.AT_DATA_ENABLE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 272
    const-string v2, "android.settings.VisitMode.action.TURN_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 273
    const-string v2, "intent.action.super_power_save_send"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 274
    const-string v2, "action.powerkey.down"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 275
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 276
    const-string v2, "com.vivo.flashlight.ACTION_FLASHLIGHT_STATE_CHANGD"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 277
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 278
    const-string v2, "com.android.telephony.mobile_data_tip"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 279
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 280
    const-string v2, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 281
    const-string v2, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 282
    const-string v2, "com.vivo.night.mode.change.intent"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 283
    const-string v2, "com.vivo.night.eyes.intent"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 284
    const-string v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 285
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 286
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 288
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/VersionUtils;->isExport()Z

    move-result v2

    if-nez v2, :cond_0

    .line 289
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 290
    .local v1, "mediaFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 291
    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 292
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 294
    .end local v1    # "mediaFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method
