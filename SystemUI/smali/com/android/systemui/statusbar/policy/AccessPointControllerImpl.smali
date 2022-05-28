.class public Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;
.super Ljava/lang/Object;
.source "AccessPointControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$Receiver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final EXTRA_START_CONNECT_SSID:Ljava/lang/String; = "wifi_start_connect_ssid"

.field private static final ICONS:[I

.field private static final TAG:Ljava/lang/String; = "AccessPointController"


# instance fields
.field private final mByStrength:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPointCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUser:I

.field private mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

.field private final mReceiver:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$Receiver;

.field private mScanning:Z

.field private final mUserManager:Landroid/os/UserManager;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 50
    const-string v0, "AccessPointController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->DEBUG:Z

    .line 56
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->ICONS:[I

    return-void

    :array_0
    .array-data 4
        0x7f0200a2
        0x7f0200aa
        0x7f0200ab
        0x7f0200ac
        0x7f0200ad
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$Receiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$Receiver;-><init>(Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mReceiver:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$Receiver;

    .line 224
    new-instance v0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 236
    new-instance v0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$2;-><init>(Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mByStrength:Ljava/util/Comparator;

    .line 75
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mContext:Landroid/content/Context;

    .line 76
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 77
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mUserManager:Landroid/os/UserManager;

    .line 78
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mCurrentUser:I

    .line 79
    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 48
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->DEBUG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->updateAccessPoints()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mScanning:Z

    return p1
.end method

.method private fireAcccessPointsCallback([Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;)V
    .locals 3
    .param p1, "aps"    # [Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;

    .prologue
    .line 149
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPointCallback;

    .line 150
    .local v0, "callback":Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPointCallback;
    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPointCallback;->onAccessPointsChanged([Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;)V

    goto :goto_0

    .line 152
    .end local v0    # "callback":Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPointCallback;
    :cond_0
    return-void
.end method

.method private fireSettingsIntentCallback(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 143
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPointCallback;

    .line 144
    .local v0, "callback":Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPointCallback;
    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPointCallback;->onSettingsActivityTriggered(Landroid/content/Intent;)V

    goto :goto_0

    .line 146
    .end local v0    # "callback":Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPointCallback;
    :cond_0
    return-void
.end method

.method private getConfiguredNetworksBySsid()Landroid/util/ArrayMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 165
    .local v1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    sget-object v3, Landroid/util/ArrayMap;->EMPTY:Landroid/util/ArrayMap;

    .line 170
    :cond_1
    return-object v3

    .line 166
    :cond_2
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 167
    .local v3, "rt":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 168
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->trimDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private getConnectedNetworkId(Landroid/net/wifi/WifiInfo;)I
    .locals 1
    .param p1, "wifiInfo"    # Landroid/net/wifi/WifiInfo;

    .prologue
    .line 160
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static trimDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "v"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x22

    .line 155
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .end local p0    # "v":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method private updateAccessPoints()V
    .locals 0

    .prologue
    .line 176
    return-void
.end method


# virtual methods
.method public addAccessPointCallback(Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPointCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPointCallback;

    .prologue
    .line 96
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "AccessPointController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addCallback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mReceiver:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$Receiver;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$Receiver;->setListening(Z)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public canConfigWifi()Z
    .locals 4

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mUserManager:Landroid/os/UserManager;

    const-string v1, "no_config_wifi"

    new-instance v2, Landroid/os/UserHandle;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mCurrentUser:I

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public connect(Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;)Z
    .locals 6
    .param p1, "ap"    # Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;

    .prologue
    const/4 v2, 0x0

    .line 120
    if-nez p1, :cond_0

    .line 139
    :goto_0
    return v2

    .line 121
    :cond_0
    sget-boolean v3, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "AccessPointController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connect networkId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;->networkId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_1
    iget v3, p1, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;->networkId:I

    if-gez v3, :cond_3

    .line 124
    iget-boolean v3, p1, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;->hasSecurity:Z

    if-eqz v3, :cond_2

    .line 125
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.WIFI_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 126
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "wifi_start_connect_ssid"

    iget-object v3, p1, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 128
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->fireSettingsIntentCallback(Landroid/content/Intent;)V

    .line 129
    const/4 v2, 0x1

    goto :goto_0

    .line 131
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 132
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 133
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->set(I)V

    .line 134
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v3, v0, v4}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 137
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v4, p1, Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPoint;->networkId:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v3, v4, v5}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0
.end method

.method public onUserSwitched(I)V
    .locals 0
    .param p1, "newUserId"    # I

    .prologue
    .line 91
    iput p1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mCurrentUser:I

    .line 92
    return-void
.end method

.method public removeAccessPointCallback(Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPointCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController$AccessPointCallback;

    .prologue
    .line 104
    if-nez p1, :cond_0

    .line 108
    :goto_0
    return-void

    .line 105
    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "AccessPointController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeCallback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 107
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mReceiver:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$Receiver;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl$Receiver;->setListening(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public scanForAccessPoints()V
    .locals 2

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mScanning:Z

    if-eqz v0, :cond_0

    .line 117
    :goto_0
    return-void

    .line 113
    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "AccessPointController"

    const-string v1, "scan!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mScanning:Z

    .line 116
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->updateAccessPoints()V

    goto :goto_0
.end method

.method setNetworkController(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V
    .locals 0
    .param p1, "networkController"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .line 83
    return-void
.end method
