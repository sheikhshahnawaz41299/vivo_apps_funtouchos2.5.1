.class public Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiReceiver.java"


# static fields
.field private static CONNECT_NETWORK_TIMEOUT:J = 0x0L

.field private static final MSG_COLLAPSE_SWITCHERS_FLOOR:I = 0x4

.field private static final MSG_NETWORK_STATE_CHANGED:I = 0x3

.field private static final MSG_REFRESH_DISPLAY:I = 0x0

.field private static final MSG_SCAN_RESULTS_AVAILABLE:I = 0x2

.field private static final MSG_WIFI_STATE_CHANGED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WifiReceiver"

.field private static mIsEntered:Z


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mWifiSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    const-wide/32 v0, 0xea60

    sput-wide v0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->CONNECT_NETWORK_TIMEOUT:J

    .line 36
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->mIsEntered:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;)V
    .locals 1
    .param p1, "switcher"    # Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 38
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver$1;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->mHandler:Landroid/os/Handler;

    .line 61
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->mWifiSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;)Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->mWifiSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->handleWifiStateChanged(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->handleScanResults()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->handleNetworkStateChanged(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->handleCollapseSwitchersFloor()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->shouldEntryWifiSetting()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->startCollapseSwitchersFloorThread()V

    return-void
.end method

.method private handleCollapseSwitchersFloor()V
    .locals 2

    .prologue
    .line 169
    const-string v0, "WifiReceiver"

    const-string v1, "MSG_COLLAPSE_SWITCHERS_FLOOR"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->mWifiSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->collapseUpSlideView()V

    .line 171
    return-void
.end method

.method private handleNetworkStateChanged(Ljava/lang/Object;)V
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 160
    move-object v1, p1

    check-cast v1, Landroid/content/Intent;

    .line 161
    .local v1, "mIntent":Landroid/content/Intent;
    const-string v2, "networkInfo"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 162
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    .line 163
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->mWifiSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->setWifiConnected(Z)V

    .line 164
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->mWifiSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->refreshDisplay(Z)V

    .line 166
    :cond_0
    return-void
.end method

.method private handleScanResults()V
    .locals 6

    .prologue
    .line 124
    const/4 v1, 0x3

    .line 126
    .local v1, "state":I
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->mWifiSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 130
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->mWifiSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->mWifiSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-virtual {v3}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->setScanResultList(Ljava/util/List;)V

    .line 131
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->mWifiSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->setScanResultTimeMillis(J)V

    .line 132
    const-string v2, "WifiReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "receiver scan result state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isUserTurnOn:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->mWifiSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-virtual {v4}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->isUserTurnOn()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :try_start_1
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->mWifiSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->isUserTurnOn()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    sget-boolean v2, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->mIsEntered:Z

    if-nez v2, :cond_0

    .line 135
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->mIsEntered:Z

    .line 136
    const-string v2, "WifiReceiver"

    const-string v3, "(isUserTurnOn && (state == WifiManager.WIFI_STATE_ENABLED))"

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->mWifiSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 138
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver$3;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 157
    :cond_0
    :goto_1
    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "WifiReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get Wifi State error! e: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 153
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 154
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "WifiReceiver"

    const-string v3, "Exception trying to enter WifiSettings"

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private handleWifiStateChanged(Ljava/lang/Object;)V
    .locals 9
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 80
    move-object v1, p1

    check-cast v1, Landroid/content/Intent;

    .line 81
    .local v1, "mIntent":Landroid/content/Intent;
    const-string v3, "wifi_state"

    const/4 v4, 0x4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 82
    .local v2, "state":I
    const-string v3, "WifiReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "receiver wifi state changed state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isUserTurnOn:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->mWifiSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-virtual {v5}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->isUserTurnOn()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    if-ne v2, v8, :cond_0

    .line 84
    const-string v3, "WifiReceiver"

    const-string v4, "request scan 1."

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->mWifiSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-virtual {v3}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 88
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->mWifiSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-virtual {v3}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->isUserTurnOn()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->mWifiSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-virtual {v3}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->getScanResultList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    if-ne v2, v8, :cond_1

    sget-boolean v3, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->mIsEntered:Z

    if-nez v3, :cond_1

    .line 90
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->mIsEntered:Z

    .line 91
    const-string v3, "WifiReceiver"

    const-string v4, "(isUserTurnOn && (mScanResult != null))"

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver$2;

    invoke-direct {v4, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver$2;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    if-ne v2, v7, :cond_3

    .line 112
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->mWifiSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-virtual {v3, v6}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->setUserTurnOn(Z)V

    .line 113
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->mWifiSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->setWifiTurnOnTimeMillis(J)V

    .line 114
    sput-boolean v6, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->mIsEntered:Z

    .line 115
    const-string v3, "WifiReceiver"

    const-string v4, "clear variables."

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->mWifiSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-virtual {v3}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->getWifiStateTracker()Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 118
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->mWifiSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-virtual {v3}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->getWifiStateTracker()Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->mWifiSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-virtual {v4}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    .line 119
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->mWifiSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-virtual {v3}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->refreshDisplay()V

    .line 121
    :cond_4
    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "WifiReceiver"

    const-string v4, "Exception trying to enter WifiSettings"

    invoke-static {v3, v4}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isEntered()Z
    .locals 1

    .prologue
    .line 312
    sget-boolean v0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->mIsEntered:Z

    return v0
.end method

.method private processWifiEvent(Landroid/content/Intent;)V
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 222
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "action":Ljava/lang/String;
    const-string v8, "WifiReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "action = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object v8, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->mWifiSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    if-nez v8, :cond_1

    .line 225
    const-string v8, "WifiReceiver"

    const-string v9, "mWifiSwitcher is null, return."

    invoke-static {v8, v9}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    const-string v8, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 229
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 230
    .local v5, "msg":Landroid/os/Message;
    iput-object p1, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 231
    const/4 v8, 0x1

    iput v8, v5, Landroid/os/Message;->what:I

    .line 232
    iget-object v8, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 234
    const-string v8, "wifi_state"

    const/4 v9, 0x4

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 235
    .local v6, "state":I
    const-string v8, "WifiReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "state = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 238
    :pswitch_0
    iget-object v8, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->mWifiSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-virtual {v8}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->getView()Landroid/widget/TextView;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->mWifiSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-virtual {v9}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->getName()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 241
    .end local v5    # "msg":Landroid/os/Message;
    .end local v6    # "state":I
    :cond_2
    const-string v8, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 242
    iget-object v8, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->mWifiSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-virtual {v8}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->isWifiConnected()Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->mWifiSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-virtual {v8}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_3

    .line 243
    iget-object v8, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->mWifiSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-virtual {v8}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->getView()Landroid/widget/TextView;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->mWifiSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-virtual {v9}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->getName()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 245
    :cond_3
    iget-object v8, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 246
    :cond_4
    const-string v8, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 247
    iget-object v9, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->mWifiSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    const-string v8, "newState"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/SupplicantState;

    invoke-virtual {v9, v8}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->setSupplicantState(Landroid/net/wifi/SupplicantState;)V

    .line 248
    const-string v8, "WifiReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "receiver SUPPLICANT_STATE_CHANGED_ACTION mSupplicantState:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->mWifiSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-virtual {v10}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v8, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->mWifiSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->mWifiSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-virtual {v8}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->isWifiConnected()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->mWifiSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-virtual {v8}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->mWifiSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-virtual {v8}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->getContext()Landroid/content/Context;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->mWifiSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-virtual {v8}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v8

    sget-object v9, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    if-eq v8, v9, :cond_0

    .line 252
    iget-object v8, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->mWifiSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-virtual {v8}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->mWifiSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-virtual {v9}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v9

    invoke-static {v9}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/Summary;->get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v7

    .line 253
    .local v7, "str":Ljava/lang/String;
    const-string v8, "WifiReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "update wifi-button Text, str = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object v8, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->mWifiSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-virtual {v8}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->getView()Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 256
    .end local v7    # "str":Ljava/lang/String;
    :cond_5
    const-string v8, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 257
    const-string v8, "WifiReceiver"

    const-string v9, "receiver NETWORK_STATE_CHANGED_ACTION"

    invoke-static {v8, v9}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 260
    .restart local v5    # "msg":Landroid/os/Message;
    iput-object p1, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 261
    const/4 v8, 0x3

    iput v8, v5, Landroid/os/Message;->what:I

    .line 262
    iget-object v8, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 264
    iget-object v9, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->mWifiSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    const-string v8, "networkInfo"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/NetworkInfo;

    invoke-virtual {v9, v8}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->setNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 265
    iget-object v8, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->mWifiSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-virtual {v8}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 266
    iget-object v8, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->mWifiSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    iget-object v9, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->mWifiSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-virtual {v9}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->setWifiConnected(Z)V

    .line 267
    iget-object v8, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->mWifiSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-virtual {v8}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 268
    iget-object v8, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->mWifiSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-virtual {v8}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    .line 269
    .local v6, "state":Landroid/net/NetworkInfo$DetailedState;
    iget-object v8, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->mWifiSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-virtual {v8}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 270
    .local v4, "mInfo":Landroid/net/wifi/WifiInfo;
    const-string v8, "WifiReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isWifiConnected:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->mWifiSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-virtual {v10}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->isWifiConnected()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", state:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    if-eqz v6, :cond_0

    if-eqz v4, :cond_0

    iget-object v8, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->mWifiSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->mWifiSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-virtual {v8}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->getContext()Landroid/content/Context;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 272
    iget-object v8, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->mWifiSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-virtual {v8}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v6}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/Summary;->get(Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v7

    .line 273
    .restart local v7    # "str":Ljava/lang/String;
    if-eqz v7, :cond_0

    iget-object v8, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->mWifiSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-virtual {v8}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->getWifiStateTracker()Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->mWifiSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-virtual {v9}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;->getTriState(Landroid/content/Context;)I

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->mWifiSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-virtual {v8}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->getWifiStateTracker()Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->mWifiSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-virtual {v9}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiStateTracker;->getTriState(Landroid/content/Context;)I

    move-result v8

    const/4 v9, 0x5

    if-eq v8, v9, :cond_0

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v6, v8, :cond_0

    const-string v8, "<unknown ssid>"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 276
    const-string v8, "WifiReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "update wifi-button Text, str = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object v8, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->mWifiSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-virtual {v8}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->getView()Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 282
    .end local v4    # "mInfo":Landroid/net/wifi/WifiInfo;
    .end local v5    # "msg":Landroid/os/Message;
    .end local v6    # "state":Landroid/net/NetworkInfo$DetailedState;
    .end local v7    # "str":Ljava/lang/String;
    :cond_6
    const-string v8, "android.net.wifi.supplicant.NETWORK_CONNECTION_FAILURE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 283
    const-string v8, "WifiReceiver"

    const-string v9, "receiver NETWORK_CONNECTION_FAILURE"

    invoke-static {v8, v9}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iget-object v8, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->mWifiSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-virtual {v8}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v6

    .line 285
    .local v6, "state":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 286
    .local v2, "currentTimeMillis":J
    const-string v8, "WifiReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "receiver network connection failure state:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mLastTurnOnTimeMillis:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->mWifiSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-virtual {v10}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->getWifiTurnOnTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-object v8, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->mWifiSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-virtual {v8}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->getWifiTurnOnTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_0

    const/4 v8, 0x3

    if-ne v6, v8, :cond_0

    .line 289
    const-string v8, "WifiReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "currentTimeMillis:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-object v8, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->mWifiSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-virtual {v8}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->getWifiTurnOnTimeMillis()J

    move-result-wide v8

    sub-long v8, v2, v8

    sget-wide v10, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->CONNECT_NETWORK_TIMEOUT:J

    cmp-long v8, v8, v10

    if-gez v8, :cond_0

    .line 291
    const-string v8, "WifiReceiver"

    const-string v9, "entry wifi settings activity."

    invoke-static {v8, v9}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->startCollapseSwitchersFloorThread()V

    .line 293
    new-instance v1, Landroid/content/Intent;

    const-string v8, "android.settings.VIVO_WIFI_SETTINGS"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 294
    .local v1, "i":Landroid/content/Intent;
    const/high16 v8, 0x10000000

    invoke-virtual {v1, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 295
    const-string v8, "fromwhere"

    const-string v9, "statusbar"

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    iget-object v8, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->mWifiSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-virtual {v8}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 297
    iget-object v8, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->mWifiSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->setUserTurnOn(Z)V

    .line 298
    iget-object v8, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->mWifiSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    const-wide/16 v10, 0x0

    invoke-virtual {v8, v10, v11}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->setWifiTurnOnTimeMillis(J)V

    goto/16 :goto_0

    .line 236
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 210
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 211
    .local v0, "length":I
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 213
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 215
    .end local p0    # "string":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static setEntered(Z)V
    .locals 0
    .param p0, "entered"    # Z

    .prologue
    .line 316
    sput-boolean p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->mIsEntered:Z

    .line 317
    return-void
.end method

.method private shouldEntryWifiSetting()Z
    .locals 10

    .prologue
    const/4 v7, 0x1

    .line 174
    const-string v8, "WifiReceiver"

    const-string v9, "shouldEntryWifiSetting"

    invoke-static {v8, v9}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v8, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->mWifiSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-virtual {v8}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v8

    if-nez v8, :cond_0

    .line 176
    const-string v8, "WifiReceiver"

    const-string v9, "mWifiManager is Null !!, return true."

    invoke-static {v8, v9}, Lcom/android/systemui/vivo/common/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :goto_0
    return v7

    .line 179
    :cond_0
    iget-object v8, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->mWifiSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-virtual {v8}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->getScanResultList()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->mWifiSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-virtual {v8}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->getScanResultList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_2

    .line 180
    :cond_1
    const-string v8, "WifiReceiver"

    const-string v9, "mScanResult is Null or size is zero !!, return true."

    invoke-static {v8, v9}, Lcom/android/systemui/vivo/common/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 183
    :cond_2
    iget-object v8, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->mWifiSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-virtual {v8}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 184
    .local v2, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_4

    .line 185
    :cond_3
    const-string v8, "WifiReceiver"

    const-string v9, "configs is Null or size is zero  !!, return true."

    invoke-static {v8, v9}, Lcom/android/systemui/vivo/common/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 189
    :cond_4
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_8

    .line 190
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 191
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_6

    .line 189
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 193
    :cond_6
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 194
    .local v1, "configSsid":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 196
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    iget-object v8, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->mWifiSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-virtual {v8}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->getScanResultList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v4, v8, :cond_5

    .line 197
    iget-object v8, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->mWifiSwitcher:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    invoke-virtual {v8}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->getScanResultList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    .line 198
    .local v5, "result":Landroid/net/wifi/ScanResult;
    iget-object v6, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 199
    .local v6, "resultSsid":Ljava/lang/String;
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 200
    const/4 v7, 0x0

    goto :goto_0

    .line 196
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 204
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "configSsid":Ljava/lang/String;
    .end local v4    # "j":I
    .end local v5    # "result":Landroid/net/wifi/ScanResult;
    .end local v6    # "resultSsid":Ljava/lang/String;
    :cond_8
    const-string v8, "WifiReceiver"

    const-string v9, "don\'t find same ssid, return true."

    invoke-static {v8, v9}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private startCollapseSwitchersFloorThread()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 305
    const-string v1, "WifiReceiver"

    const-string v2, "startCollapseSwitchersFloorThread"

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 307
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->mHandler:Landroid/os/Handler;

    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 308
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 309
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 67
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "action":Ljava/lang/String;
    const-string v2, "WifiReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->processWifiEvent(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v1

    .line 74
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 75
    const-string v2, "WifiReceiver"

    const-string v3, "Failed to process wifi event."

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
