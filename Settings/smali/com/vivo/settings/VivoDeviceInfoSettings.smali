.class public Lcom/vivo/settings/VivoDeviceInfoSettings;
.super Lcom/vivo/settings/VivoSettingsPreferenceFragment;
.source "VivoDeviceInfoSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/settings/VivoDeviceInfoSettings$MyHandler;
    }
.end annotation


# static fields
.field private static final EVENT_UPDATE_STATS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DeviceInfoSettings"


# instance fields
.field private mBatteryStatus:Landroid/preference/Preference;

.field private mBuildNumber:Landroid/preference/Preference;

.field private mDualSimMode:Z

.field private mHandler:Landroid/os/Handler;

.field mHits:[J

.field mIntentFilter:Landroid/content/IntentFilter;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSim2Status:Landroid/preference/PreferenceScreen;

.field private mSimStatus:Landroid/preference/PreferenceScreen;

.field private mSimUtils:Lcom/vivo/settings/SimUtils;

.field private mUpTime:Landroid/preference/Preference;

.field private mVersion:Landroid/preference/Preference;

.field private mVersionInfo:Landroid/preference/PreferenceCategory;

.field private mVivoVersionInfoManager:Lcom/vivo/settings/VivoVersionInfoManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/settings/VivoDeviceInfoSettings;->mDualSimMode:Z

    .line 58
    iput-object v1, p0, Lcom/vivo/settings/VivoDeviceInfoSettings;->mVivoVersionInfoManager:Lcom/vivo/settings/VivoVersionInfoManager;

    .line 63
    const/4 v0, 0x3

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/vivo/settings/VivoDeviceInfoSettings;->mHits:[J

    .line 184
    iput-object v1, p0, Lcom/vivo/settings/VivoDeviceInfoSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 409
    new-instance v0, Lcom/vivo/settings/VivoDeviceInfoSettings$1;

    invoke-direct {v0, p0}, Lcom/vivo/settings/VivoDeviceInfoSettings$1;-><init>(Lcom/vivo/settings/VivoDeviceInfoSettings;)V

    iput-object v0, p0, Lcom/vivo/settings/VivoDeviceInfoSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/vivo/settings/VivoDeviceInfoSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/VivoDeviceInfoSettings;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/vivo/settings/VivoDeviceInfoSettings;->mBatteryStatus:Landroid/preference/Preference;

    return-object v0
.end method

.method private convert(J)Ljava/lang/String;
    .locals 9
    .param p1, "t"    # J

    .prologue
    const-wide/16 v6, 0x3c

    .line 232
    rem-long v4, p1, v6

    long-to-int v2, v4

    .line 233
    .local v2, "s":I
    div-long v4, p1, v6

    rem-long/2addr v4, v6

    long-to-int v1, v4

    .line 234
    .local v1, "m":I
    const-wide/16 v4, 0xe10

    div-long v4, p1, v4

    long-to-int v0, v4

    .line 236
    .local v0, "h":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/vivo/settings/VivoDeviceInfoSettings;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/vivo/settings/VivoDeviceInfoSettings;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private init()V
    .locals 2

    .prologue
    .line 265
    const-string v0, "DeviceInfoSettings"

    const-string v1, "single sim init"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const v0, 0x7f060054

    invoke-virtual {p0, v0}, Lcom/vivo/settings/VivoDeviceInfoSettings;->addPreferencesFromResource(I)V

    .line 267
    return-void
.end method

.method private initBTMac()V
    .locals 4

    .prologue
    .line 155
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 156
    .local v1, "bluetooth":Landroid/bluetooth/BluetoothAdapter;
    const-string v3, "bt_address"

    invoke-virtual {p0, v3}, Lcom/vivo/settings/VivoDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 158
    .local v2, "btAddressPref":Landroid/preference/Preference;
    if-nez v1, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 167
    :goto_0
    return-void

    .line 162
    :cond_0
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "address":Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .end local v0    # "address":Ljava/lang/String;
    :goto_2
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 162
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 164
    .restart local v0    # "address":Ljava/lang/String;
    :cond_2
    const v3, 0x7f0b028f

    invoke-virtual {p0, v3}, Lcom/vivo/settings/VivoDeviceInfoSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private initDualSim()V
    .locals 2

    .prologue
    .line 256
    const-string v0, "DeviceInfoSettings"

    const-string v1, "dual sim init"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const v0, 0x7f060055

    invoke-virtual {p0, v0}, Lcom/vivo/settings/VivoDeviceInfoSettings;->addPreferencesFromResource(I)V

    .line 258
    return-void
.end method

.method private initIPaddress()V
    .locals 8

    .prologue
    .line 287
    const/4 v1, 0x0

    .line 288
    .local v1, "ip_address":Ljava/lang/String;
    const-string v5, "wifi"

    invoke-virtual {p0, v5}, Lcom/vivo/settings/VivoDeviceInfoSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 289
    .local v4, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 290
    .local v3, "wifiInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    .line 292
    .local v0, "ipAddress":I
    const-string v5, "DeviceInfoSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "wifiint  ipAddress   = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    if-eqz v0, :cond_0

    .line 294
    invoke-direct {p0, v0}, Lcom/vivo/settings/VivoDeviceInfoSettings;->intToIp(I)Ljava/lang/String;

    move-result-object v1

    .line 295
    const-string v5, "ipv6_address"

    invoke-virtual {p0, v5}, Lcom/vivo/settings/VivoDeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    .line 296
    const-string v5, "DeviceInfoSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "wifi string  ip_address   = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :goto_0
    const-string v5, "ip_address"

    invoke-virtual {p0, v5, v1}, Lcom/vivo/settings/VivoDeviceInfoSettings;->setPrefSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    return-void

    .line 298
    :cond_0
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/vivo/settings/VivoDeviceInfoSettings;->getLocalIpAddress(Z)Ljava/lang/String;

    move-result-object v1

    .line 299
    const-string v5, "DeviceInfoSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mobile ip_address  = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    if-nez v1, :cond_1

    .line 301
    const v5, 0x7f0b0277

    invoke-virtual {p0, v5}, Lcom/vivo/settings/VivoDeviceInfoSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 304
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/vivo/settings/VivoDeviceInfoSettings;->getLocalIpAddress(Z)Ljava/lang/String;

    move-result-object v2

    .line 305
    .local v2, "ipv6":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 306
    const-string v5, "ipv6_address"

    invoke-virtual {p0, v5}, Lcom/vivo/settings/VivoDeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_0

    .line 308
    :cond_2
    const-string v5, "ipv6_address"

    invoke-virtual {p0, v5, v2}, Lcom/vivo/settings/VivoDeviceInfoSettings;->setPrefSummary(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initWifiMac()V
    .locals 6

    .prologue
    .line 173
    const-string v4, "DeviceInfoSettings"

    const-string v5, "init wifi mac"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 175
    .local v3, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 177
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    const-string v4, "wifi_mac_address"

    invoke-virtual {p0, v4}, Lcom/vivo/settings/VivoDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 178
    .local v2, "wifiMacAddressPref":Landroid/preference/Preference;
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 179
    .local v0, "macAddress":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .end local v0    # "macAddress":Ljava/lang/String;
    :goto_1
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 182
    return-void

    .line 178
    :cond_0
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 179
    .restart local v0    # "macAddress":Ljava/lang/String;
    :cond_1
    const v4, 0x7f0b028f

    invoke-virtual {p0, v4}, Lcom/vivo/settings/VivoDeviceInfoSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private intToIp(I)Ljava/lang/String;
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private pad(I)Ljava/lang/String;
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 240
    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    .line 241
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 243
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getLocalIpAddress(Z)Ljava/lang/String;
    .locals 17
    .param p1, "isIpv4"    # Z

    .prologue
    .line 326
    const/4 v9, 0x0

    .line 329
    .local v9, "ipStr":Ljava/lang/String;
    const-string v3, "---"

    .line 330
    .local v3, "iface":Ljava/lang/String;
    const/4 v4, -0x1

    .line 331
    .local v4, "index":I
    const-string v12, "%"

    .line 335
    .local v12, "split":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    .line 337
    .local v1, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 339
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/NetworkInterface;

    .line 340
    .local v6, "intf":Ljava/net/NetworkInterface;
    const-string v14, "DeviceInfoSettings"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getLocalIpAddress intf:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    if-nez p1, :cond_1

    .line 343
    invoke-virtual {v6}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v3

    .line 344
    invoke-virtual {v6}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v4

    .line 346
    const-string v14, "DeviceInfoSettings"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getLocalIpAddress iface:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " index:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_1
    invoke-virtual {v6}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v8

    .local v8, "ipAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_2
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 351
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/InetAddress;

    .line 352
    .local v5, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 353
    .local v2, "hostAddress":Ljava/lang/String;
    const-string v15, "DeviceInfoSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getLocalIpAddress hostAddress:"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " !inetAddress.isLoopbackAddress():"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v5}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v14

    if-nez v14, :cond_3

    const/4 v14, 0x1

    :goto_0
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v15, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    if-nez v9, :cond_2

    invoke-virtual {v5}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v14

    if-nez v14, :cond_2

    .line 357
    if-eqz p1, :cond_4

    .line 358
    invoke-static {v2}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 359
    move-object v9, v2

    .line 360
    const-string v14, "DeviceInfoSettings"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getLocalIpAddress isIpv4 found, ipStr:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v10, v9

    .line 400
    .end local v1    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v2    # "hostAddress":Ljava/lang/String;
    .end local v5    # "inetAddress":Ljava/net/InetAddress;
    .end local v6    # "intf":Ljava/net/NetworkInterface;
    .end local v8    # "ipAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v9    # "ipStr":Ljava/lang/String;
    .local v10, "ipStr":Ljava/lang/String;
    :goto_1
    return-object v10

    .line 353
    .end local v10    # "ipStr":Ljava/lang/String;
    .restart local v1    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .restart local v2    # "hostAddress":Ljava/lang/String;
    .restart local v5    # "inetAddress":Ljava/net/InetAddress;
    .restart local v6    # "intf":Ljava/net/NetworkInterface;
    .restart local v8    # "ipAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .restart local v9    # "ipStr":Ljava/lang/String;
    :cond_3
    const/4 v14, 0x0

    goto :goto_0

    .line 369
    :cond_4
    invoke-static {v2}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 373
    instance-of v14, v5, Ljava/net/Inet6Address;

    if-eqz v14, :cond_2

    .line 374
    move-object v0, v5

    check-cast v0, Ljava/net/Inet6Address;

    move-object v7, v0

    .line 376
    .local v7, "ip6":Ljava/net/Inet6Address;
    if-eqz v7, :cond_2

    .line 377
    invoke-virtual {v7}, Ljava/net/Inet6Address;->isLinkLocalAddress()Z

    move-result v11

    .line 378
    .local v11, "isLinkLocal":Z
    const-string v14, "DeviceInfoSettings"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getLocalIpAddress isLinkLocal:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    if-nez v11, :cond_2

    .line 381
    const/4 v14, 0x0

    invoke-virtual {v2, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v2, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 382
    .local v13, "tempAddr":Ljava/lang/String;
    invoke-static {v13}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv6Address(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 383
    move-object v9, v13

    .line 385
    const-string v14, "DeviceInfoSettings"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getLocalIpAddress isIpv6 found, ipStr:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v10, v9

    .line 386
    .end local v9    # "ipStr":Ljava/lang/String;
    .restart local v10    # "ipStr":Ljava/lang/String;
    goto :goto_1

    .line 395
    .end local v1    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v2    # "hostAddress":Ljava/lang/String;
    .end local v5    # "inetAddress":Ljava/net/InetAddress;
    .end local v6    # "intf":Ljava/net/NetworkInterface;
    .end local v7    # "ip6":Ljava/net/Inet6Address;
    .end local v8    # "ipAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v10    # "ipStr":Ljava/lang/String;
    .end local v11    # "isLinkLocal":Z
    .end local v13    # "tempAddr":Ljava/lang/String;
    .restart local v9    # "ipStr":Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 399
    :cond_5
    const-string v14, "DeviceInfoSettings"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getLocalIpAddress isIpv4:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ipStr:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v10, v9

    .line 400
    .end local v9    # "ipStr":Ljava/lang/String;
    .restart local v10    # "ipStr":Ljava/lang/String;
    goto/16 :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const-string v0, "DeviceInfoSettings"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    new-instance v0, Lcom/vivo/settings/VivoVersionInfoManager;

    invoke-virtual {p0}, Lcom/vivo/settings/VivoDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vivo/settings/VivoVersionInfoManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/settings/VivoDeviceInfoSettings;->mVivoVersionInfoManager:Lcom/vivo/settings/VivoVersionInfoManager;

    .line 70
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/vivo/settings/VivoDeviceInfoSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/settings/VivoDeviceInfoSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/vivo/settings/VivoDeviceInfoSettings;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 192
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onPause()V

    .line 193
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v6, 0x0

    .line 133
    iget-object v2, p0, Lcom/vivo/settings/VivoDeviceInfoSettings;->mBuildNumber:Landroid/preference/Preference;

    if-ne p2, v2, :cond_1

    .line 134
    iget-object v2, p0, Lcom/vivo/settings/VivoDeviceInfoSettings;->mVivoVersionInfoManager:Lcom/vivo/settings/VivoVersionInfoManager;

    invoke-virtual {v2}, Lcom/vivo/settings/VivoVersionInfoManager;->onDevelopmentHideOptionClick()V

    .line 149
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    .line 135
    :cond_1
    iget-object v2, p0, Lcom/vivo/settings/VivoDeviceInfoSettings;->mVersion:Landroid/preference/Preference;

    if-ne p2, v2, :cond_0

    .line 136
    iget-object v2, p0, Lcom/vivo/settings/VivoDeviceInfoSettings;->mHits:[J

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/vivo/settings/VivoDeviceInfoSettings;->mHits:[J

    iget-object v5, p0, Lcom/vivo/settings/VivoDeviceInfoSettings;->mHits:[J

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v2, v3, v4, v6, v5}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 137
    iget-object v2, p0, Lcom/vivo/settings/VivoDeviceInfoSettings;->mHits:[J

    iget-object v3, p0, Lcom/vivo/settings/VivoDeviceInfoSettings;->mHits:[J

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 138
    iget-object v2, p0, Lcom/vivo/settings/VivoDeviceInfoSettings;->mHits:[J

    aget-wide v2, v2, v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x1f4

    sub-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 139
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 140
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android"

    const-class v3, Lcom/android/internal/app/PlatLogoActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/vivo/settings/VivoDeviceInfoSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "DeviceInfoSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to start activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const v5, 0x7f0b0279

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 74
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onResume()V

    .line 75
    const v0, 0x7f0b0317

    invoke-virtual {p0, v0}, Lcom/vivo/settings/VivoDeviceInfoSettings;->setTitle(I)V

    .line 76
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDeviceInfoSettings;->showBBKBackButton()V

    .line 77
    new-instance v0, Lcom/vivo/settings/SimUtils;

    invoke-virtual {p0}, Lcom/vivo/settings/VivoDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vivo/settings/SimUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/settings/VivoDeviceInfoSettings;->mSimUtils:Lcom/vivo/settings/SimUtils;

    .line 78
    iget-object v0, p0, Lcom/vivo/settings/VivoDeviceInfoSettings;->mSimUtils:Lcom/vivo/settings/SimUtils;

    invoke-virtual {v0}, Lcom/vivo/settings/SimUtils;->getInertedSimCount()I

    move-result v0

    if-le v0, v3, :cond_4

    .line 79
    iput-boolean v3, p0, Lcom/vivo/settings/VivoDeviceInfoSettings;->mDualSimMode:Z

    .line 83
    :goto_0
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 86
    :cond_0
    iget-boolean v0, p0, Lcom/vivo/settings/VivoDeviceInfoSettings;->mDualSimMode:Z

    if-eqz v0, :cond_5

    .line 87
    invoke-direct {p0}, Lcom/vivo/settings/VivoDeviceInfoSettings;->initDualSim()V

    .line 88
    const-string v0, "sim1_status_info"

    invoke-virtual {p0, v0}, Lcom/vivo/settings/VivoDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/vivo/settings/VivoDeviceInfoSettings;->mSimStatus:Landroid/preference/PreferenceScreen;

    .line 89
    const-string v0, "sim2_status_info"

    invoke-virtual {p0, v0}, Lcom/vivo/settings/VivoDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/vivo/settings/VivoDeviceInfoSettings;->mSim2Status:Landroid/preference/PreferenceScreen;

    .line 90
    const-string v0, ""

    iget-object v1, p0, Lcom/vivo/settings/VivoDeviceInfoSettings;->mSimUtils:Lcom/vivo/settings/SimUtils;

    invoke-virtual {v1, v4}, Lcom/vivo/settings/SimUtils;->getSimName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/vivo/settings/VivoDeviceInfoSettings;->mSimStatus:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/vivo/settings/VivoDeviceInfoSettings;->mSimStatus:Landroid/preference/PreferenceScreen;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/vivo/settings/VivoDeviceInfoSettings;->mSimUtils:Lcom/vivo/settings/SimUtils;

    invoke-virtual {v2, v4}, Lcom/vivo/settings/SimUtils;->getSimName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v5}, Lcom/vivo/settings/VivoDeviceInfoSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 93
    :cond_1
    const-string v0, ""

    iget-object v1, p0, Lcom/vivo/settings/VivoDeviceInfoSettings;->mSimUtils:Lcom/vivo/settings/SimUtils;

    invoke-virtual {v1, v3}, Lcom/vivo/settings/SimUtils;->getSimName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/vivo/settings/VivoDeviceInfoSettings;->mSim2Status:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_2

    .line 94
    iget-object v0, p0, Lcom/vivo/settings/VivoDeviceInfoSettings;->mSim2Status:Landroid/preference/PreferenceScreen;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/vivo/settings/VivoDeviceInfoSettings;->mSimUtils:Lcom/vivo/settings/SimUtils;

    invoke-virtual {v2, v3}, Lcom/vivo/settings/SimUtils;->getSimName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v5}, Lcom/vivo/settings/VivoDeviceInfoSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 101
    :cond_2
    :goto_1
    invoke-static {}, Lcom/android/settings/AppFeature;->isCTCC()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 102
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vivo/settings/VivoDeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "ctcc_cte_push"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 108
    :goto_2
    const-string v0, "version_info"

    invoke-virtual {p0, v0}, Lcom/vivo/settings/VivoDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/vivo/settings/VivoDeviceInfoSettings;->mVersionInfo:Landroid/preference/PreferenceCategory;

    .line 109
    iget-object v0, p0, Lcom/vivo/settings/VivoDeviceInfoSettings;->mVivoVersionInfoManager:Lcom/vivo/settings/VivoVersionInfoManager;

    invoke-virtual {v0}, Lcom/vivo/settings/VivoVersionInfoManager;->onResume()V

    .line 110
    iget-object v0, p0, Lcom/vivo/settings/VivoDeviceInfoSettings;->mVivoVersionInfoManager:Lcom/vivo/settings/VivoVersionInfoManager;

    iget-object v1, p0, Lcom/vivo/settings/VivoDeviceInfoSettings;->mVersionInfo:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Lcom/vivo/settings/VivoVersionInfoManager;->addVersionInfoPrefs(Landroid/preference/PreferenceCategory;)V

    .line 111
    iget-object v0, p0, Lcom/vivo/settings/VivoDeviceInfoSettings;->mVivoVersionInfoManager:Lcom/vivo/settings/VivoVersionInfoManager;

    const-string v0, "build_number"

    invoke-virtual {p0, v0}, Lcom/vivo/settings/VivoDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/VivoDeviceInfoSettings;->mBuildNumber:Landroid/preference/Preference;

    .line 112
    iget-object v0, p0, Lcom/vivo/settings/VivoDeviceInfoSettings;->mVivoVersionInfoManager:Lcom/vivo/settings/VivoVersionInfoManager;

    const-string v0, "firmware_version"

    invoke-virtual {p0, v0}, Lcom/vivo/settings/VivoDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/VivoDeviceInfoSettings;->mVersion:Landroid/preference/Preference;

    .line 114
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vivo/settings/VivoDeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/settings/PreferenceHelper;->addDividers(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V

    .line 116
    const-string v0, "battery_status"

    invoke-virtual {p0, v0}, Lcom/vivo/settings/VivoDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/VivoDeviceInfoSettings;->mBatteryStatus:Landroid/preference/Preference;

    .line 117
    const-string v0, "up_time"

    invoke-virtual {p0, v0}, Lcom/vivo/settings/VivoDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/VivoDeviceInfoSettings;->mUpTime:Landroid/preference/Preference;

    .line 118
    invoke-direct {p0}, Lcom/vivo/settings/VivoDeviceInfoSettings;->initWifiMac()V

    .line 119
    invoke-direct {p0}, Lcom/vivo/settings/VivoDeviceInfoSettings;->initBTMac()V

    .line 120
    invoke-direct {p0}, Lcom/vivo/settings/VivoDeviceInfoSettings;->initIPaddress()V

    .line 121
    iget-object v0, p0, Lcom/vivo/settings/VivoDeviceInfoSettings;->mIntentFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_3

    .line 122
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vivo/settings/VivoDeviceInfoSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 125
    :cond_3
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/settings/VivoDeviceInfoSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/vivo/settings/VivoDeviceInfoSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 126
    new-instance v0, Lcom/vivo/settings/VivoDeviceInfoSettings$MyHandler;

    invoke-direct {v0, p0}, Lcom/vivo/settings/VivoDeviceInfoSettings$MyHandler;-><init>(Lcom/vivo/settings/VivoDeviceInfoSettings;)V

    iput-object v0, p0, Lcom/vivo/settings/VivoDeviceInfoSettings;->mHandler:Landroid/os/Handler;

    .line 127
    iget-object v0, p0, Lcom/vivo/settings/VivoDeviceInfoSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 128
    return-void

    .line 81
    :cond_4
    iput-boolean v4, p0, Lcom/vivo/settings/VivoDeviceInfoSettings;->mDualSimMode:Z

    goto/16 :goto_0

    .line 97
    :cond_5
    invoke-direct {p0}, Lcom/vivo/settings/VivoDeviceInfoSettings;->init()V

    .line 98
    const-string v0, "sim_status_info"

    invoke-virtual {p0, v0}, Lcom/vivo/settings/VivoDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/vivo/settings/VivoDeviceInfoSettings;->mSimStatus:Landroid/preference/PreferenceScreen;

    goto/16 :goto_1

    .line 106
    :cond_6
    const-string v0, "ctcc_cte_push"

    invoke-virtual {p0, v0}, Lcom/vivo/settings/VivoDeviceInfoSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method updateTimes()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 223
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    div-long v0, v4, v6

    .line 224
    .local v0, "at":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    div-long v2, v4, v6

    .line 225
    .local v2, "ut":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 226
    const-wide/16 v2, 0x1

    .line 228
    :cond_0
    iget-object v4, p0, Lcom/vivo/settings/VivoDeviceInfoSettings;->mUpTime:Landroid/preference/Preference;

    invoke-direct {p0, v2, v3}, Lcom/vivo/settings/VivoDeviceInfoSettings;->convert(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 229
    return-void
.end method
