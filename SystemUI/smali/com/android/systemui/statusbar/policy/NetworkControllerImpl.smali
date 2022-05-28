.class public Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
.super Landroid/content/BroadcastReceiver;
.source "NetworkControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/DemoMode;
.implements Lcom/android/systemui/statusbar/policy/NetworkController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;,
        Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$CarrierLabelListener;,
        Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$EmergencyListener;,
        Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;,
        Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;,
        Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;,
        Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;
    }
.end annotation


# static fields
.field static final CHATTY:Z

.field static final DEBUG:Z

.field static final HISTORY_SIZE:I = 0x10

.field private static final INET_CONDITION_THRESHOLD:I = 0x32

.field static final RECORD_HISTORY:Z = true

.field static final TAG:Ljava/lang/String; = "NetworkController"


# instance fields
.field private final mAccessPoints:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;

.field private mAirplaneMode:Z

.field private mBluetoothTethered:Z

.field private mCarrierListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$CarrierLabelListener;",
            ">;"
        }
    .end annotation
.end field

.field private mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

.field private mConnected:Z

.field private final mConnectedTransports:Ljava/util/BitSet;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mCurrentSubscriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentUserId:I

.field private mDefaultSignalController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

.field private mDemoInetCondition:I

.field private mDemoMode:Z

.field private mDemoWifiState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;

.field private mEmergencyListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$EmergencyListener;",
            ">;"
        }
    .end annotation
.end field

.field private mEthernetConnected:Z

.field private final mHasMobileDataFeature:Z

.field private mHasNoSims:Z

.field private mInetCondition:Z

.field mListening:Z

.field private mLocale:Ljava/util/Locale;

.field private final mMobileDataController:Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;

.field final mMobileSignalControllers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhone:Landroid/telephony/TelephonyManager;

.field private mSignalClusters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;",
            ">;"
        }
    .end annotation
.end field

.field private mSignalsChangedCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private final mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private final mValidatedTransports:Ljava/util/BitSet;

.field private mVivoNetworkController:Lcom/android/systemui/vivo/common/network/VivoNetworkController;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field final mWifiSignalController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 82
    const-string v0, "NetworkController"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    .line 84
    const-string v0, "NetworkController.Chat"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->CHATTY:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 150
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v5

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->readConfig(Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    move-result-object v6

    new-instance v7, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;

    invoke-direct {v7, p1}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;-><init>(Landroid/content/Context;)V

    new-instance v8, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;

    invoke-direct {v8, p1}, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;-><init>(Landroid/content/Context;Landroid/net/ConnectivityManager;Landroid/telephony/TelephonyManager;Landroid/net/wifi/WifiManager;Landroid/telephony/SubscriptionManager;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;)V

    .line 155
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->registerListeners()V

    .line 156
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/ConnectivityManager;Landroid/telephony/TelephonyManager;Landroid/net/wifi/WifiManager;Landroid/telephony/SubscriptionManager;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "connectivityManager"    # Landroid/net/ConnectivityManager;
    .param p3, "telephonyManager"    # Landroid/telephony/TelephonyManager;
    .param p4, "wifiManager"    # Landroid/net/wifi/WifiManager;
    .param p5, "subManager"    # Landroid/telephony/SubscriptionManager;
    .param p6, "config"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;
    .param p7, "accessPointController"    # Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;
    .param p8, "mobileDataController"    # Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;

    .prologue
    const/4 v1, 0x0

    .line 163
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    .line 113
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTethered:Z

    .line 114
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEthernetConnected:Z

    .line 117
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnected:Z

    .line 122
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    .line 123
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    .line 126
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLocale:Ljava/util/Locale;

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurrentSubscriptions:Ljava/util/List;

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEmergencyListeners:Ljava/util/ArrayList;

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierListeners:Ljava/util/ArrayList;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    .line 854
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$4;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 164
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    .line 165
    iput-object p6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    .line 167
    iput-object p5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 168
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    .line 173
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    .line 176
    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 178
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLocale:Ljava/util/Locale;

    .line 179
    iput-object p7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAccessPoints:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;

    .line 180
    iput-object p8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileDataController:Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;

    .line 181
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileDataController:Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->setNetworkController(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    .line 183
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileDataController:Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;

    new-instance v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->setCallback(Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl$Callback;)V

    .line 189
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;-><init>(Landroid/content/Context;ZLjava/util/List;Ljava/util/List;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;

    .line 193
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateAirplaneMode(Z)V

    .line 194
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAccessPoints:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->setNetworkController(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    .line 195
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->notifyMobileDataEnabled(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateMobileControllers()V

    return-void
.end method

.method private getDataController()Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
    .locals 4

    .prologue
    .line 274
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v0

    .line 275
    .local v0, "dataSubId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 276
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "NetworkController"

    const-string v2, "No data sim selected"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDefaultSignalController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    .line 283
    :goto_0
    return-object v1

    .line 279
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 280
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    goto :goto_0

    .line 282
    :cond_2
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "NetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find controller for data sub: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDefaultSignalController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    goto :goto_0
.end method

.method private isMobileDataConnected()Z
    .locals 2

    .prologue
    .line 701
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getDataController()Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    move-result-object v0

    .line 702
    .local v0, "controller":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->getState()Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->dataConnected:Z

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private notifyAllListeners()V
    .locals 3

    .prologue
    .line 579
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->notifyListeners()V

    .line 580
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    .line 581
    .local v1, "mobileSignalController":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->notifyListeners()V

    goto :goto_0

    .line 583
    .end local v1    # "mobileSignalController":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->notifyListeners()V

    .line 584
    return-void
.end method

.method private notifyListeners()V
    .locals 7

    .prologue
    .line 592
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 593
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 594
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    const v5, 0x7f02012a

    const v6, 0x7f0e008a

    invoke-interface {v3, v4, v5, v6}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setIsAirplaneMode(ZII)V

    .line 596
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasNoSims:Z

    invoke-interface {v3, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setNoSims(Z)V

    .line 593
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 598
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 599
    .local v2, "signalsChangedLength":I
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    .line 600
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    invoke-interface {v3, v4}, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;->onAirplaneModeChanged(Z)V

    .line 601
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasNoSims:Z

    invoke-interface {v3, v4}, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;->onNoSimVisibleChanged(Z)V

    .line 599
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 603
    :cond_1
    return-void
.end method

.method private notifyMobileDataEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 259
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 260
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 261
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;

    invoke-interface {v2, p1}, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;->onMobileDataEnabled(Z)V

    .line 260
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 263
    :cond_0
    return-void
.end method

.method private pushConnectivityToSignals()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 639
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    .line 640
    .local v1, "mobileSignalController":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:Z

    if-eqz v2, :cond_0

    move v2, v3

    :goto_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->getTransportType()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v3

    :goto_2
    invoke-virtual {v1, v2, v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->setInetCondition(II)V

    goto :goto_0

    :cond_0
    move v2, v4

    goto :goto_1

    :cond_1
    move v5, v4

    goto :goto_2

    .line 644
    .end local v1    # "mobileSignalController":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->getTransportType()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_3
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->setInetCondition(I)V

    .line 646
    return-void

    :cond_3
    move v3, v4

    .line 644
    goto :goto_3
.end method

.method private refreshLocale()V
    .locals 2

    .prologue
    .line 567
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 568
    .local v0, "current":Ljava/util/Locale;
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 569
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLocale:Ljava/util/Locale;

    .line 570
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->notifyAllListeners()V

    .line 572
    :cond_0
    return-void
.end method

.method private registerListeners()V
    .locals 5

    .prologue
    .line 198
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    .line 199
    .local v2, "mobileSignalController":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->registerListener()V

    goto :goto_0

    .line 201
    .end local v2    # "mobileSignalController":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v3, v4}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 204
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 205
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 206
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 207
    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 208
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 209
    const-string v3, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 210
    const-string v3, "android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 211
    const-string v3, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 212
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 213
    const-string v3, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 214
    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 215
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 220
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mListening:Z

    .line 222
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateMobileControllers()V

    .line 223
    return-void
.end method

.method private unregisterListeners()V
    .locals 4

    .prologue
    .line 226
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mListening:Z

    .line 227
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    .line 228
    .local v1, "mobileSignalController":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->unregisterListener()V

    goto :goto_0

    .line 230
    .end local v1    # "mobileSignalController":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v2, v3}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 231
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 232
    return-void
.end method

.method private updateAirplaneMode(Z)V
    .locals 6
    .param p1, "force"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 554
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v0, :cond_1

    .line 556
    .local v0, "airplaneMode":Z
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    if-ne v0, v3, :cond_0

    if-eqz p1, :cond_3

    .line 557
    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    .line 558
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    .line 559
    .local v2, "mobileSignalController":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->setAirplaneMode(Z)V

    goto :goto_1

    .end local v0    # "airplaneMode":Z
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "mobileSignalController":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
    :cond_1
    move v0, v3

    .line 554
    goto :goto_0

    .line 561
    .restart local v0    # "airplaneMode":Z
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->notifyListeners()V

    .line 562
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshCarrierLabel()V

    .line 564
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method private updateConnectivity()V
    .locals 13

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 609
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    invoke-virtual {v8}, Ljava/util/BitSet;->clear()V

    .line 610
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    invoke-virtual {v8}, Ljava/util/BitSet;->clear()V

    .line 612
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurrentUserId:I

    invoke-virtual {v8, v11}, Landroid/net/ConnectivityManager;->getDefaultNetworkCapabilitiesForUser(I)[Landroid/net/NetworkCapabilities;

    move-result-object v0

    .local v0, "arr$":[Landroid/net/NetworkCapabilities;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, v2

    .end local v0    # "arr$":[Landroid/net/NetworkCapabilities;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v6, v0, v3

    .line 613
    .local v6, "nc":Landroid/net/NetworkCapabilities;
    invoke-virtual {v6}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v1

    .local v1, "arr$":[I
    array-length v5, v1

    .local v5, "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v5, :cond_1

    aget v7, v1, v2

    .line 614
    .local v7, "transportType":I
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    invoke-virtual {v8, v7}, Ljava/util/BitSet;->set(I)V

    .line 615
    const/16 v8, 0x10

    invoke-virtual {v6, v8}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 616
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    invoke-virtual {v8, v7}, Ljava/util/BitSet;->set(I)V

    .line 613
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 612
    .end local v7    # "transportType":I
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_0

    .line 621
    .end local v1    # "arr$":[I
    .end local v5    # "len$":I
    .end local v6    # "nc":Landroid/net/NetworkCapabilities;
    :cond_2
    sget-boolean v8, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->CHATTY:Z

    if-eqz v8, :cond_3

    .line 622
    const-string v8, "NetworkController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateConnectivity: mConnectedTransports="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    const-string v8, "NetworkController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateConnectivity: mValidatedTransports="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    :cond_3
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    invoke-virtual {v8}, Ljava/util/BitSet;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    move v8, v9

    :goto_2
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnected:Z

    .line 627
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    invoke-virtual {v8}, Ljava/util/BitSet;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    :goto_3
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:Z

    .line 628
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTethered:Z

    .line 629
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEthernetConnected:Z

    .line 631
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->pushConnectivityToSignals()V

    .line 632
    return-void

    :cond_4
    move v8, v10

    .line 626
    goto :goto_2

    :cond_5
    move v9, v10

    .line 627
    goto :goto_3
.end method

.method private updateMobileControllers()V
    .locals 2

    .prologue
    .line 436
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mListening:Z

    if-nez v1, :cond_0

    .line 455
    :goto_0
    return-void

    .line 439
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 440
    .local v0, "subscriptions":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-nez v0, :cond_1

    .line 441
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 453
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->setCurrentSubscriptions(Ljava/util/List;)V

    .line 454
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateNoSims()V

    goto :goto_0
.end method


# virtual methods
.method public addCarrierLabel(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$CarrierLabelListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$CarrierLabelListener;

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshCarrierLabel()V

    .line 256
    return-void
.end method

.method public addEmergencyListener(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$EmergencyListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$EmergencyListener;

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEmergencyListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isEmergencyOnly()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$EmergencyListener;->setEmergencyCallsOnly(Z)V

    .line 251
    return-void
.end method

.method public addNetworkSignalChangedCallback(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V
    .locals 3
    .param p1, "cb"    # Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;

    .prologue
    .line 341
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    invoke-interface {p1, v2}, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;->onAirplaneModeChanged(Z)V

    .line 343
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasNoSims:Z

    invoke-interface {p1, v2}, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;->onNoSimVisibleChanged(Z)V

    .line 344
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->notifyListeners()V

    .line 345
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    .line 346
    .local v1, "mobileSignalController":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->notifyListeners()V

    goto :goto_0

    .line 348
    .end local v1    # "mobileSignalController":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
    :cond_0
    return-void
.end method

.method public addSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;)V
    .locals 5
    .param p1, "cluster"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;

    .prologue
    .line 329
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurrentSubscriptions:Ljava/util/List;

    invoke-interface {p1, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setSubs(Ljava/util/List;)V

    .line 331
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    const v3, 0x7f02012a

    const v4, 0x7f0e008a

    invoke-interface {p1, v2, v3, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setIsAirplaneMode(ZII)V

    .line 333
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasNoSims:Z

    invoke-interface {p1, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setNoSims(Z)V

    .line 334
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->notifyListeners()V

    .line 335
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    .line 336
    .local v1, "mobileSignalController":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->notifyListeners()V

    goto :goto_0

    .line 338
    .end local v1    # "mobileSignalController":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
    :cond_0
    return-void
.end method

.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 34
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 740
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMode:Z

    if-nez v3, :cond_3

    const-string v3, "enter"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 741
    sget-boolean v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "NetworkController"

    const-string v4, "Entering demo mode"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->unregisterListeners()V

    .line 743
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMode:Z

    .line 744
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoInetCondition:I

    .line 745
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->getState()Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoWifiState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;

    .line 852
    :cond_1
    :goto_1
    return-void

    .line 744
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 746
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMode:Z

    if-eqz v3, :cond_6

    const-string v3, "exit"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 747
    sget-boolean v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz v3, :cond_4

    const-string v3, "NetworkController"

    const-string v4, "Exiting demo mode"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    :cond_4
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMode:Z

    .line 751
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateMobileControllers()V

    .line 752
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    .line 753
    .local v16, "controller":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->resetLastState()V

    goto :goto_2

    .line 755
    .end local v16    # "controller":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->resetLastState()V

    .line 756
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->registerListeners()V

    .line 757
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->notifyAllListeners()V

    .line 758
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshCarrierLabel()V

    goto :goto_1

    .line 759
    .end local v19    # "i$":Ljava/util/Iterator;
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMode:Z

    if-eqz v3, :cond_1

    const-string v3, "network"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 760
    const-string v3, "airplane"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 761
    .local v15, "airplane":Ljava/lang/String;
    if-eqz v15, :cond_7

    .line 762
    const-string v3, "show"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    .line 763
    .local v27, "show":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 764
    .local v21, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    move/from16 v0, v21

    if-ge v2, v0, :cond_7

    .line 765
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;

    const v4, 0x7f02012a

    const v5, 0x7f0e008a

    move/from16 v0, v27

    invoke-interface {v3, v0, v4, v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setIsAirplaneMode(ZII)V

    .line 764
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 769
    .end local v2    # "i":I
    .end local v21    # "length":I
    .end local v27    # "show":Z
    :cond_7
    const-string v3, "fully"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 770
    .local v18, "fully":Ljava/lang/String;
    if-eqz v18, :cond_9

    .line 771
    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x1

    :goto_4
    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoInetCondition:I

    .line 772
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoInetCondition:I

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->setInetCondition(I)V

    .line 773
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .restart local v19    # "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    .line 774
    .restart local v16    # "controller":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoInetCondition:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoInetCondition:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->setInetCondition(II)V

    goto :goto_5

    .line 771
    .end local v16    # "controller":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
    .end local v19    # "i$":Ljava/util/Iterator;
    :cond_8
    const/4 v3, 0x0

    goto :goto_4

    .line 777
    :cond_9
    const-string v3, "wifi"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 778
    .local v33, "wifi":Ljava/lang/String;
    if-eqz v33, :cond_b

    .line 779
    const-string v3, "show"

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    .line 780
    .restart local v27    # "show":Z
    const-string v3, "level"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 781
    .local v22, "level":Ljava/lang/String;
    if-eqz v22, :cond_a

    .line 782
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoWifiState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;

    const-string v3, "null"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v3, -0x1

    :goto_6
    iput v3, v4, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->level:I

    .line 784
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoWifiState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoWifiState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;

    iget v3, v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->level:I

    if-ltz v3, :cond_d

    const/4 v3, 0x1

    :goto_7
    iput-boolean v3, v4, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->connected:Z

    .line 786
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoWifiState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;

    move/from16 v0, v27

    iput-boolean v0, v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->enabled:Z

    .line 787
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->notifyListeners()V

    .line 789
    .end local v22    # "level":Ljava/lang/String;
    .end local v27    # "show":Z
    :cond_b
    const-string v3, "sims"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 790
    .local v28, "sims":Ljava/lang/String;
    if-eqz v28, :cond_f

    .line 791
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    .line 792
    .local v26, "num":I
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 793
    .local v32, "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    move/from16 v0, v26

    if-eq v0, v3, :cond_e

    .line 794
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 795
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCountMax()I

    move-result v31

    .line 796
    .local v31, "start":I
    move/from16 v2, v31

    .restart local v2    # "i":I
    :goto_8
    add-int v3, v31, v26

    if-ge v2, v3, :cond_e

    .line 797
    new-instance v1, Landroid/telephony/SubscriptionInfo;

    const-string v3, ""

    const-string v5, ""

    const-string v6, ""

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, ""

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v14, ""

    move v4, v2

    invoke-direct/range {v1 .. v14}, Landroid/telephony/SubscriptionInfo;-><init>(ILjava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;IILjava/lang/String;ILandroid/graphics/Bitmap;IILjava/lang/String;)V

    .line 799
    .local v1, "info":Landroid/telephony/SubscriptionInfo;
    move-object/from16 v0, v32

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 800
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    new-instance v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mVivoNetworkController:Lcom/android/systemui/vivo/common/network/VivoNetworkController;

    move-object/from16 v10, p0

    move-object v11, v1

    invoke-direct/range {v3 .. v12}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;ZLandroid/telephony/TelephonyManager;Ljava/util/List;Ljava/util/List;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Landroid/telephony/SubscriptionInfo;Lcom/android/systemui/vivo/common/network/VivoNetworkController;)V

    invoke-interface {v13, v14, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 782
    .end local v1    # "info":Landroid/telephony/SubscriptionInfo;
    .end local v2    # "i":I
    .end local v26    # "num":I
    .end local v28    # "sims":Ljava/lang/String;
    .end local v31    # "start":I
    .end local v32    # "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .restart local v22    # "level":Ljava/lang/String;
    .restart local v27    # "show":Z
    :cond_c
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sget v5, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_LEVEL_COUNT:I

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto/16 :goto_6

    .line 784
    :cond_d
    const/4 v3, 0x0

    goto/16 :goto_7

    .line 805
    .end local v22    # "level":Ljava/lang/String;
    .end local v27    # "show":Z
    .restart local v26    # "num":I
    .restart local v28    # "sims":Ljava/lang/String;
    .restart local v32    # "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v24

    .line 806
    .local v24, "n":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_9
    move/from16 v0, v24

    if-ge v2, v0, :cond_f

    .line 807
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;

    move-object/from16 v0, v32

    invoke-interface {v3, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setSubs(Ljava/util/List;)V

    .line 806
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 810
    .end local v2    # "i":I
    .end local v24    # "n":I
    .end local v26    # "num":I
    .end local v32    # "subs":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_f
    const-string v3, "nosim"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 811
    .local v25, "nosim":Ljava/lang/String;
    if-eqz v25, :cond_10

    .line 812
    const-string v3, "show"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    .line 813
    .restart local v27    # "show":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v24

    .line 814
    .restart local v24    # "n":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_a
    move/from16 v0, v24

    if-ge v2, v0, :cond_10

    .line 815
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;

    move/from16 v0, v27

    invoke-interface {v3, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setNoSims(Z)V

    .line 814
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 818
    .end local v2    # "i":I
    .end local v24    # "n":I
    .end local v27    # "show":Z
    :cond_10
    const-string v3, "mobile"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 819
    .local v23, "mobile":Ljava/lang/String;
    if-eqz v23, :cond_13

    .line 820
    const-string v3, "show"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    .line 821
    .restart local v27    # "show":Z
    const-string v3, "datatype"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 822
    .local v17, "datatype":Ljava/lang/String;
    const-string v3, "slot"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 823
    .local v30, "slotString":Ljava/lang/String;
    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_14

    const/16 v29, 0x0

    .line 825
    .local v29, "slot":I
    :goto_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    invoke-interface {v3, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    aget-object v16, v3, v29

    .line 827
    .restart local v16    # "controller":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->getState()Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    if-eqz v17, :cond_15

    const/4 v4, 0x1

    :goto_c
    iput-boolean v4, v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->dataSim:Z

    .line 828
    if-eqz v17, :cond_11

    .line 829
    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->getState()Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    const-string v4, "1x"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONE_X:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    :goto_d
    iput-object v4, v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$IconGroup;

    .line 840
    :cond_11
    sget-object v20, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 841
    .local v20, "icons":[[I
    const-string v3, "level"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 842
    .restart local v22    # "level":Ljava/lang/String;
    if-eqz v22, :cond_12

    .line 843
    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->getState()Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    const-string v4, "null"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    const/4 v4, -0x1

    :goto_e
    iput v4, v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->level:I

    .line 845
    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->getState()Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->getState()Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget v4, v4, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->level:I

    if-ltz v4, :cond_1f

    const/4 v4, 0x1

    :goto_f
    iput-boolean v4, v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->connected:Z

    .line 847
    :cond_12
    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->getState()Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    move/from16 v0, v27

    iput-boolean v0, v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->enabled:Z

    .line 848
    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->notifyListeners()V

    .line 850
    .end local v16    # "controller":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
    .end local v17    # "datatype":Ljava/lang/String;
    .end local v20    # "icons":[[I
    .end local v22    # "level":Ljava/lang/String;
    .end local v27    # "show":Z
    .end local v29    # "slot":I
    .end local v30    # "slotString":Ljava/lang/String;
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshCarrierLabel()V

    goto/16 :goto_1

    .line 823
    .restart local v17    # "datatype":Ljava/lang/String;
    .restart local v27    # "show":Z
    .restart local v30    # "slotString":Ljava/lang/String;
    :cond_14
    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    goto :goto_b

    .line 827
    .restart local v16    # "controller":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
    .restart local v29    # "slot":I
    :cond_15
    const/4 v4, 0x0

    goto :goto_c

    .line 829
    :cond_16
    const-string v4, "3g"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    goto :goto_d

    :cond_17
    const-string v4, "4g"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    goto :goto_d

    :cond_18
    const-string v4, "e"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->E:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    goto :goto_d

    :cond_19
    const-string v4, "g"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->G:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    goto :goto_d

    :cond_1a
    const-string v4, "h"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    goto/16 :goto_d

    :cond_1b
    const-string v4, "lte"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    goto/16 :goto_d

    :cond_1c
    const-string v4, "roam"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ROAMING:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    goto/16 :goto_d

    :cond_1d
    sget-object v4, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->UNKNOWN:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    goto/16 :goto_d

    .line 843
    .restart local v20    # "icons":[[I
    .restart local v22    # "level":Ljava/lang/String;
    :cond_1e
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    aget-object v5, v20, v5

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto/16 :goto_e

    .line 845
    :cond_1f
    const/4 v4, 0x0

    goto/16 :goto_f
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 706
    const-string v2, "NetworkController state:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 708
    const-string v2, "  - telephony ------"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 709
    const-string v2, "  hasVoiceCallingFeature()="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 710
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasVoiceCallingFeature()Z

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 712
    const-string v2, "  - Bluetooth ----"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 713
    const-string v2, "  mBtReverseTethered="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 714
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mBluetoothTethered:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 716
    const-string v2, "  - connectivity ------"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 717
    const-string v2, "  mConnectedTransports="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 718
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 719
    const-string v2, "  mValidatedTransports="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 720
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 721
    const-string v2, "  mInetCondition="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 722
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 723
    const-string v2, "  mAirplaneMode="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 724
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 725
    const-string v2, "  mLocale="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 726
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLocale:Ljava/util/Locale;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 728
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    .line 729
    .local v1, "mobileSignalController":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
    invoke-virtual {v1, p2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->dump(Ljava/io/PrintWriter;)V

    goto :goto_0

    .line 731
    .end local v1    # "mobileSignalController":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;

    invoke-virtual {v2, p2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->dump(Ljava/io/PrintWriter;)V

    .line 732
    return-void
.end method

.method public getAccessPointController()Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAccessPoints:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;

    return-object v0
.end method

.method public getConnectedWifiLevel()I
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->getState()Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController$WifiState;->level:I

    return v0
.end method

.method public getMobileDataController()Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileDataController:Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;

    return-object v0
.end method

.method public getMobileNetworkName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 287
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getDataController()Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    move-result-object v0

    .line 288
    .local v0, "controller":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->getState()Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method handleConfigurationChanged()V
    .locals 3

    .prologue
    .line 428
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    .line 429
    .local v1, "mobileSignalController":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->setConfiguration(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;)V

    goto :goto_0

    .line 431
    .end local v1    # "mobileSignalController":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshLocale()V

    .line 432
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshCarrierLabel()V

    .line 433
    return-void
.end method

.method hasCorrectMobileControllers(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "allSubscriptions":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    const/4 v2, 0x0

    .line 542
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 550
    :goto_0
    return v2

    .line 545
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 546
    .local v1, "info":Landroid/telephony/SubscriptionInfo;
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 550
    .end local v1    # "info":Landroid/telephony/SubscriptionInfo;
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public hasMobileDataFeature()Z
    .locals 1

    .prologue
    .line 266
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    return v0
.end method

.method public hasVoiceCallingFeature()Z
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmergencyOnly()Z
    .locals 1

    .prologue
    .line 294
    const/4 v0, 0x0

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 382
    sget-boolean v4, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->CHATTY:Z

    if-eqz v4, :cond_0

    .line 383
    const-string v4, "NetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive: intent="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 386
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 388
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateConnectivity()V

    .line 389
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshCarrierLabel()V

    .line 424
    :cond_2
    :goto_0
    return-void

    .line 390
    :cond_3
    const-string v4, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 391
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->readConfig(Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    .line 392
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->handleConfigurationChanged()V

    goto :goto_0

    .line 393
    :cond_4
    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 394
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshLocale()V

    .line 395
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateAirplaneMode(Z)V

    .line 396
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshCarrierLabel()V

    goto :goto_0

    .line 397
    :cond_5
    const-string v4, "android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 399
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->recalculateEmergency()V

    goto :goto_0

    .line 400
    :cond_6
    const-string v4, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 403
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    .line 404
    .local v1, "controller":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
    invoke-virtual {v1, p2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->handleBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 406
    .end local v1    # "controller":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_7
    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 408
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateMobileControllers()V

    goto :goto_0

    .line 410
    :cond_8
    const-string v4, "subscription"

    const/4 v5, -0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 412
    .local v3, "subId":I
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 413
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 414
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    invoke-virtual {v4, p2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->handleBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 417
    :cond_9
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateMobileControllers()V

    goto/16 :goto_0

    .line 421
    :cond_a
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;

    invoke-virtual {v4, p2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiSignalController;->handleBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onUserSwitched(I)V
    .locals 1
    .param p1, "newUserId"    # I

    .prologue
    .line 374
    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurrentUserId:I

    .line 375
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAccessPoints:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->onUserSwitched(I)V

    .line 376
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateConnectivity()V

    .line 377
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshCarrierLabel()V

    .line 378
    return-void
.end method

.method recalculateEmergency()V
    .locals 4

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isEmergencyOnly()Z

    move-result v0

    .line 319
    .local v0, "emergencyOnly":Z
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEmergencyListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 320
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 321
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEmergencyListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$EmergencyListener;

    invoke-interface {v3, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$EmergencyListener;->setEmergencyCallsOnly(Z)V

    .line 320
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 325
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshCarrierLabel()V

    .line 326
    return-void
.end method

.method refreshCarrierLabel()V
    .locals 0

    .prologue
    .line 654
    return-void
.end method

.method public removeNetworkSignalChangedCallback(Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 352
    return-void
.end method

.method setCurrentSubscriptions(Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 468
    .local p1, "subscriptions":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    new-instance v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 476
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 477
    .local v15, "length":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v15, :cond_0

    .line 478
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;

    move-object/from16 v0, p1

    invoke-interface {v3, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setSubs(Ljava/util/List;)V

    .line 477
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 480
    :cond_0
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurrentSubscriptions:Ljava/util/List;

    .line 513
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    .line 514
    .local v14, "key":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-interface {v3, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->unregisterListener()V

    goto :goto_1

    .line 516
    .end local v14    # "key":Ljava/lang/Integer;
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 518
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v16

    .line 519
    .local v16, "num":I
    const/4 v12, 0x0

    :goto_2
    move/from16 v0, v16

    if-ge v12, v0, :cond_4

    .line 520
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v17

    .line 521
    .local v17, "subId":I
    new-instance v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/SubscriptionInfo;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mVivoNetworkController:Lcom/android/systemui/vivo/common/network/VivoNetworkController;

    move-object/from16 v9, p0

    invoke-direct/range {v2 .. v11}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;ZLandroid/telephony/TelephonyManager;Ljava/util/List;Ljava/util/List;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Landroid/telephony/SubscriptionInfo;Lcom/android/systemui/vivo/common/network/VivoNetworkController;)V

    .line 524
    .local v2, "controller":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v3

    if-nez v3, :cond_2

    .line 526
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDefaultSignalController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    .line 528
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mListening:Z

    if-eqz v3, :cond_3

    .line 529
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->registerListener()V

    .line 519
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 536
    .end local v2    # "controller":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
    .end local v17    # "subId":I
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->pushConnectivityToSignals()V

    .line 537
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateAirplaneMode(Z)V

    .line 538
    return-void
.end method

.method public setVivoNetworkController(Lcom/android/systemui/vivo/common/network/VivoNetworkController;)V
    .locals 0
    .param p1, "controller"    # Lcom/android/systemui/vivo/common/network/VivoNetworkController;

    .prologue
    .line 1926
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mVivoNetworkController:Lcom/android/systemui/vivo/common/network/VivoNetworkController;

    .line 1927
    return-void
.end method

.method public setWifiEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 356
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$2;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$2;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 370
    return-void
.end method

.method protected updateNoSims()V
    .locals 2

    .prologue
    .line 459
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 460
    .local v0, "hasNoSims":Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasNoSims:Z

    if-eq v0, v1, :cond_0

    .line 461
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasNoSims:Z

    .line 462
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->notifyListeners()V

    .line 464
    :cond_0
    return-void

    .line 459
    .end local v0    # "hasNoSims":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
