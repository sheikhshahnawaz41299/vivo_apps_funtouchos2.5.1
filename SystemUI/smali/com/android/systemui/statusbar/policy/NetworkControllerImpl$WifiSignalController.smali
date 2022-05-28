.class Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;
.super Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;
.source "NetworkControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WifiSignalController"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;,
        Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController",
        "<",
        "Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;",
        "Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$IconGroup;",
        ">;"
    }
.end annotation


# instance fields
.field private final mHasMobileData:Z

.field private final mWifiChannel:Lcom/android/internal/util/AsyncChannel;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLjava/util/List;Ljava/util/List;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hasMobileData"    # Z
    .param p5, "networkController"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;",
            ">;",
            "Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;",
            ")V"
        }
    .end annotation

    .prologue
    .line 872
    .local p3, "signalCallbacks":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;>;"
    .local p4, "signalClusters":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;>;"
    const-string v2, "WifiSignalController"

    const/4 v4, 0x1

    move-object v1, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;-><init>(Ljava/lang/String;Landroid/content/Context;ILjava/util/List;Ljava/util/List;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    .line 874
    const-string v1, "wifi"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 875
    move/from16 v0, p2

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mHasMobileData:Z

    .line 876
    new-instance v11, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiHandler;

    invoke-direct {v11, p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiHandler;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;)V

    .line 877
    .local v11, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v1}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    .line 878
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiServiceMessenger()Landroid/os/Messenger;

    move-result-object v12

    .line 879
    .local v12, "wifiMessenger":Landroid/os/Messenger;
    if-eqz v12, :cond_0

    .line 880
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v11, v12}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 883
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    move-object v13, v1

    check-cast v13, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mLastState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    move-object v14, v1

    check-cast v14, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;

    new-instance v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$IconGroup;

    const-string v2, "Wi-Fi Icons"

    sget-object v3, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    sget-object v4, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_SIGNAL_STRENGTH:[[I

    sget-object v5, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    const v6, 0x7f020154

    const v7, 0x7f0200ae

    const v8, 0x7f020154

    const v9, 0x7f0200ae

    const v10, 0x7f0e0066

    invoke-direct/range {v1 .. v10}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$IconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIII)V

    iput-object v1, v14, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->iconGroup:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$IconGroup;

    iput-object v1, v13, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->iconGroup:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$IconGroup;

    .line 894
    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;

    .prologue
    .line 863
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method private getSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;
    .locals 7
    .param p1, "info"    # Landroid/net/wifi/WifiInfo;

    .prologue
    const/4 v5, 0x0

    .line 961
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    .line 962
    .local v3, "ssid":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 981
    .end local v3    # "ssid":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 966
    .restart local v3    # "ssid":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 968
    .local v2, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    move-object v3, v5

    .line 969
    goto :goto_0

    .line 971
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 972
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_5

    .line 974
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_4

    .line 972
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 977
    :cond_4
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    iget v4, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v6

    if-ne v4, v6, :cond_3

    .line 978
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0

    :cond_5
    move-object v3, v5

    .line 981
    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic cleanState()Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;
    .locals 1

    .prologue
    .line 863
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->cleanState()Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;

    move-result-object v0

    return-object v0
.end method

.method protected cleanState()Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;
    .locals 1

    .prologue
    .line 898
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;-><init>()V

    return-object v0
.end method

.method public handleBroadcast(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 928
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 929
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 930
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;

    const-string v6, "wifi_state"

    const/4 v7, 0x4

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    :goto_0
    iput-boolean v4, v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->enabled:Z

    .line 957
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->notifyListenersIfNecessary()V

    .line 958
    return-void

    :cond_1
    move v4, v5

    .line 930
    goto :goto_0

    .line 932
    :cond_2
    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 933
    const-string v3, "networkInfo"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 935
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_3

    :goto_2
    iput-boolean v4, v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->connected:Z

    .line 937
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->connected:Z

    if-eqz v3, :cond_6

    .line 939
    const-string v3, "wifiInfo"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    if-eqz v3, :cond_4

    const-string v3, "wifiInfo"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiInfo;

    move-object v1, v3

    .line 942
    .local v1, "info":Landroid/net/wifi/WifiInfo;
    :goto_3
    if-eqz v1, :cond_5

    .line 943
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->getSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->ssid:Ljava/lang/String;

    goto :goto_1

    .end local v1    # "info":Landroid/net/wifi/WifiInfo;
    :cond_3
    move v4, v5

    .line 935
    goto :goto_2

    .line 939
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    goto :goto_3

    .line 945
    .restart local v1    # "info":Landroid/net/wifi/WifiInfo;
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;

    iput-object v7, v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->ssid:Ljava/lang/String;

    goto :goto_1

    .line 947
    .end local v1    # "info":Landroid/net/wifi/WifiInfo;
    :cond_6
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->connected:Z

    if-nez v3, :cond_0

    .line 948
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;

    iput-object v7, v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->ssid:Ljava/lang/String;

    goto :goto_1

    .line 950
    .end local v2    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_7
    const-string v3, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 952
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;

    const-string v4, "newRssi"

    const/16 v5, -0xc8

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->rssi:I

    .line 953
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v4, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;

    iget v4, v4, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->rssi:I

    sget v5, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_LEVEL_COUNT:I

    invoke-static {v4, v5}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v4

    iput v4, v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->level:I

    goto/16 :goto_1
.end method

.method public notifyListeners()V
    .locals 15

    .prologue
    const/4 v13, 0x1

    const/4 v14, 0x0

    .line 904
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->enabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->connected:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mHasMobileData:Z

    if-nez v0, :cond_1

    :cond_0
    move v12, v13

    .line 906
    .local v12, "wifiVisible":Z
    :goto_0
    if-eqz v12, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;

    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->ssid:Ljava/lang/String;

    .line 907
    .local v7, "wifiDesc":Ljava/lang/String;
    :goto_1
    if-eqz v12, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->ssid:Ljava/lang/String;

    if-eqz v0, :cond_3

    move v11, v13

    .line 908
    .local v11, "ssidPresent":Z
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->getContentDescription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->getStringIfExists(I)Ljava/lang/String;

    move-result-object v6

    .line 909
    .local v6, "contentDescription":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mSignalsChangedCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    .line 910
    .local v9, "length":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    if-ge v8, v9, :cond_6

    .line 911
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mSignalsChangedCallbacks:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->enabled:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->connected:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->getQsCurrentIconId()I

    move-result v3

    if-eqz v11, :cond_4

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v4, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->activityIn:Z

    if-eqz v4, :cond_4

    move v4, v13

    :goto_4
    if-eqz v11, :cond_5

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v5, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;

    iget-boolean v5, v5, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->activityOut:Z

    if-eqz v5, :cond_5

    move v5, v13

    :goto_5
    invoke-interface/range {v0 .. v7}, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;->onWifiSignalChanged(ZZIZZLjava/lang/String;Ljava/lang/String;)V

    .line 910
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .end local v6    # "contentDescription":Ljava/lang/String;
    .end local v7    # "wifiDesc":Ljava/lang/String;
    .end local v8    # "i":I
    .end local v9    # "length":I
    .end local v11    # "ssidPresent":Z
    .end local v12    # "wifiVisible":Z
    :cond_1
    move v12, v14

    .line 904
    goto :goto_0

    .line 906
    .restart local v12    # "wifiVisible":Z
    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .restart local v7    # "wifiDesc":Ljava/lang/String;
    :cond_3
    move v11, v14

    .line 907
    goto :goto_2

    .restart local v6    # "contentDescription":Ljava/lang/String;
    .restart local v8    # "i":I
    .restart local v9    # "length":I
    .restart local v11    # "ssidPresent":Z
    :cond_4
    move v4, v14

    .line 911
    goto :goto_4

    :cond_5
    move v5, v14

    goto :goto_5

    .line 917
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mSignalClusters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    .line 918
    .local v10, "signalClustersLength":I
    const/4 v8, 0x0

    :goto_6
    if-ge v8, v10, :cond_7

    .line 919
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mSignalClusters:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->getCurrentIconId()I

    move-result v1

    invoke-interface {v0, v12, v1, v6}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setWifiIndicators(ZILjava/lang/String;)V

    .line 918
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 922
    :cond_7
    return-void
.end method

.method setActivity(I)V
    .locals 5
    .param p1, "wifiActivity"    # I

    .prologue
    const/4 v4, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 986
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;

    if-eq p1, v4, :cond_0

    if-ne p1, v3, :cond_3

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->activityIn:Z

    .line 988
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;

    if-eq p1, v4, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    :cond_1
    move v2, v3

    :cond_2
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->activityOut:Z

    .line 990
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->notifyListenersIfNecessary()V

    .line 991
    return-void

    :cond_3
    move v1, v2

    .line 986
    goto :goto_0
.end method
