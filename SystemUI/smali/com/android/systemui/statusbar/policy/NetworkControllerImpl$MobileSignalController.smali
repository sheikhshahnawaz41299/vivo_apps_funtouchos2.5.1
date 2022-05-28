.class public Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
.super Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;
.source "NetworkControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MobileSignalController"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;,
        Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;,
        Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobilePhoneStateListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController",
        "<",
        "Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;",
        "Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;",
        ">;"
    }
.end annotation


# instance fields
.field private mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

.field private mDataNetType:I

.field private mDataState:I

.field private mDefaultIcons:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

.field private final mNetworkNameDefault:Ljava/lang/String;

.field private final mNetworkNameSeparator:Ljava/lang/String;

.field final mNetworkToIconLookup:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhone:Landroid/telephony/TelephonyManager;

.field private final mPhoneCount:I

.field final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mServiceState:Landroid/telephony/ServiceState;

.field private mSignalStrength:Landroid/telephony/SignalStrength;

.field private mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

.field private final mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

.field private final mVivoNetworkController:Lcom/android/systemui/vivo/common/network/VivoNetworkController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;ZLandroid/telephony/TelephonyManager;Ljava/util/List;Ljava/util/List;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Landroid/telephony/SubscriptionInfo;Lcom/android/systemui/vivo/common/network/VivoNetworkController;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;
    .param p3, "hasMobileData"    # Z
    .param p4, "phone"    # Landroid/telephony/TelephonyManager;
    .param p7, "networkController"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
    .param p8, "info"    # Landroid/telephony/SubscriptionInfo;
    .param p9, "vivoNetworkController"    # Lcom/android/systemui/vivo/common/network/VivoNetworkController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;",
            "Z",
            "Landroid/telephony/TelephonyManager;",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;",
            ">;",
            "Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;",
            "Landroid/telephony/SubscriptionInfo;",
            "Lcom/android/systemui/vivo/common/network/VivoNetworkController;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1077
    .local p5, "signalCallbacks":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;>;"
    .local p6, "signalClusters":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MobileSignalController("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p8 .. p8}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;-><init>(Ljava/lang/String;Landroid/content/Context;ILjava/util/List;Ljava/util/List;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    .line 1063
    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 1064
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mDataNetType:I

    .line 1065
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mDataState:I

    .line 1080
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    .line 1081
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mVivoNetworkController:Lcom/android/systemui/vivo/common/network/VivoNetworkController;

    .line 1082
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mPhoneCount:I

    .line 1083
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    .line 1084
    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    .line 1085
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 1086
    new-instance v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobilePhoneStateListener;

    invoke-virtual/range {p8 .. p8}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobilePhoneStateListener;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;I)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 1087
    const v1, 0x7f0e0029

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->getStringIfExists(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mNetworkNameSeparator:Ljava/lang/String;

    .line 1088
    const v1, 0x1040394

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->getStringIfExists(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    .line 1091
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mapIconSets()V

    .line 1093
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mLastState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    iput-object v3, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    .line 1094
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mLastState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iput-boolean p3, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->enabled:Z

    iput-boolean p3, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->enabled:Z

    .line 1095
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mLastState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mDefaultIcons:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    iput-object v3, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$IconGroup;

    iput-object v3, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$IconGroup;

    .line 1097
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->updateDataSim()V

    .line 1098
    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;
    .param p1, "x1"    # I

    .prologue
    .line 1043
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->isValidSlotId(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;)Lcom/android/systemui/vivo/common/network/VivoNetworkController;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mVivoNetworkController:Lcom/android/systemui/vivo/common/network/VivoNetworkController;

    return-object v0
.end method

.method private hasService()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1285
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v2, :cond_0

    .line 1292
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v1, v0

    .line 1302
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    .line 1297
    :pswitch_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 1292
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isCdma()Z
    .locals 1

    .prologue
    .line 1307
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRoaming()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1315
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->isCdma()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1316
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    move-result v0

    .line 1317
    .local v0, "iconMode":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v3

    if-eq v3, v1, :cond_1

    if-eqz v0, :cond_0

    if-ne v0, v1, :cond_1

    .line 1321
    .end local v0    # "iconMode":I
    :cond_0
    :goto_0
    return v1

    .restart local v0    # "iconMode":I
    :cond_1
    move v1, v2

    .line 1317
    goto :goto_0

    .line 1321
    .end local v0    # "iconMode":I
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method private isValidSlotId(I)Z
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 1441
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mPhoneCount:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private mapIconSets()V
    .locals 9

    .prologue
    const/16 v8, 0xd

    const/4 v7, 0x7

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 1193
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 1195
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    const/4 v2, 0x5

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1196
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    const/4 v2, 0x6

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1197
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    const/16 v2, 0xc

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1198
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    const/16 v2, 0xe

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1199
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    const/4 v2, 0x3

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1201
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->showAtLeast3G:Z

    if-nez v1, :cond_1

    .line 1202
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->UNKNOWN:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1204
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->E:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    invoke-virtual {v1, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1205
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONE_X:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    invoke-virtual {v1, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1206
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONE_X:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    invoke-virtual {v1, v7, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1208
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->G:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mDefaultIcons:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    .line 1221
    :goto_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    .line 1222
    .local v0, "hGroup":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->hspaDataDistinguishable:Z

    if-eqz v1, :cond_0

    .line 1223
    sget-object v0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    .line 1225
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1226
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1227
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1228
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    const/16 v2, 0xf

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1230
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->show4gForLte:Z

    if-eqz v1, :cond_2

    .line 1231
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    invoke-virtual {v1, v8, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1235
    :goto_1
    return-void

    .line 1210
    .end local v0    # "hGroup":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1212
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    invoke-virtual {v1, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1214
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    invoke-virtual {v1, v6, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1216
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    invoke-virtual {v1, v7, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1218
    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mDefaultIcons:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    goto :goto_0

    .line 1233
    .restart local v0    # "hGroup":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    invoke-virtual {v1, v8, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method private updateDataSim()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 1339
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v0

    .line 1340
    .local v0, "defaultDataSub":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1341
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    if-ne v0, v3, :cond_0

    :goto_0
    iput-boolean v2, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->dataSim:Z

    .line 1352
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->notifyListenersIfNecessary()V

    .line 1353
    return-void

    .line 1341
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1350
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->dataSim:Z

    goto :goto_1
.end method

.method private final updateTelephony()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1386
    sget-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1387
    const-string v0, "NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateTelephonySignalStrength: hasService="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->hasService()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " ss="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->hasService()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v1, :cond_5

    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->connected:Z

    .line 1391
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->connected:Z

    if-eqz v0, :cond_1

    .line 1392
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->alwaysShowCdmaRssi:Z

    if-eqz v0, :cond_6

    .line 1393
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->level:I

    .line 1398
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mDataNetType:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_7

    .line 1399
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mNetworkToIconLookup:Landroid/util/SparseArray;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mDataNetType:I

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$IconGroup;

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$IconGroup;

    .line 1403
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->connected:Z

    if-eqz v1, :cond_8

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mDataState:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_8

    :goto_3
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->dataConnected:Z

    .line 1406
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->isRoaming()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1407
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    sget-object v1, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ROAMING:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$IconGroup;

    .line 1409
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->isEmergencyOnly()Z

    move-result v1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->isEmergency:Z

    if-eq v1, v0, :cond_3

    .line 1410
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->isEmergencyOnly()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->isEmergency:Z

    .line 1411
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->recalculateEmergency()V

    .line 1414
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1416
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    .line 1418
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->notifyListenersIfNecessary()V

    .line 1419
    return-void

    :cond_5
    move v1, v3

    .line 1390
    goto/16 :goto_0

    .line 1395
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->level:I

    goto/16 :goto_1

    .line 1401
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mDefaultIcons:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$IconGroup;

    goto :goto_2

    :cond_8
    move v2, v3

    .line 1403
    goto :goto_3
.end method


# virtual methods
.method protected cleanState()Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;
    .locals 1

    .prologue
    .line 1281
    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic cleanState()Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;
    .locals 1

    .prologue
    .line 1043
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->cleanState()Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    move-result-object v0

    return-object v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1432
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;->dump(Ljava/io/PrintWriter;)V

    .line 1433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSubscription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mServiceState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSignalStrength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDataState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mDataState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDataNetType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mDataNetType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1438
    return-void
.end method

.method public bridge synthetic getContentDescription()I
    .locals 1

    .prologue
    .line 1043
    invoke-super {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;->getContentDescription()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getCurrentIconId()I
    .locals 1

    .prologue
    .line 1043
    invoke-super {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;->getCurrentIconId()I

    move-result v0

    return v0
.end method

.method public getDataContentDescription()I
    .locals 1

    .prologue
    .line 1151
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->getIcons()Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$IconGroup;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;->mDataContentDescription:I

    return v0
.end method

.method public getLabel(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 3
    .param p1, "currentLabel"    # Ljava/lang/String;
    .param p2, "connected"    # Z
    .param p3, "isMobileLabel"    # Z

    .prologue
    .line 1114
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->enabled:Z

    if-nez v1, :cond_0

    .line 1115
    const-string v1, ""

    .line 1144
    :goto_0
    return-object v1

    .line 1117
    :cond_0
    const-string v0, ""

    .line 1125
    .local v0, "mobileLabel":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->dataConnected:Z

    if-eqz v1, :cond_3

    .line 1126
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    .line 1137
    :cond_1
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 1138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mNetworkNameSeparator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1141
    :cond_2
    if-eqz p3, :cond_7

    .line 1142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1127
    :cond_3
    if-nez p2, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->isEmergency:Z

    if-eqz v1, :cond_6

    .line 1128
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->connected:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->isEmergency:Z

    if-eqz v1, :cond_1

    .line 1130
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    goto :goto_1

    .line 1133
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mContext:Landroid/content/Context;

    const v2, 0x7f0e00c6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1144
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->dataConnected:Z

    if-eqz v1, :cond_8

    .end local v0    # "mobileLabel":Ljava/lang/String;
    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .restart local v0    # "mobileLabel":Ljava/lang/String;
    :cond_8
    move-object v0, p1

    goto :goto_2
.end method

.method public bridge synthetic getQsCurrentIconId()I
    .locals 1

    .prologue
    .line 1043
    invoke-super {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;->getQsCurrentIconId()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getTransportType()I
    .locals 1

    .prologue
    .line 1043
    invoke-super {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;->getTransportType()I

    move-result v0

    return v0
.end method

.method public handleBroadcast(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 1326
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1327
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1328
    const-string v1, "showSpn"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "spn"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "showPlmn"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "plmn"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    .line 1332
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->notifyListenersIfNecessary()V

    .line 1336
    :cond_0
    :goto_0
    return-void

    .line 1333
    :cond_1
    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1334
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->updateDataSim()V

    goto :goto_0
.end method

.method public bridge synthetic isDirty()Z
    .locals 1

    .prologue
    .line 1043
    invoke-super {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;->isDirty()Z

    move-result v0

    return v0
.end method

.method public isEmergencyOnly()Z
    .locals 1

    .prologue
    .line 1311
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyListeners()V
    .locals 23

    .prologue
    .line 1239
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->getIcons()Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$IconGroup;

    move-result-object v19

    check-cast v19, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    .line 1241
    .local v19, "icons":Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->getContentDescription()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->getStringIfExists(I)Ljava/lang/String;

    move-result-object v5

    .line 1242
    .local v5, "contentDescription":Ljava/lang/String;
    move-object/from16 v0, v19

    iget v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;->mDataContentDescription:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->getStringIfExists(I)Ljava/lang/String;

    move-result-object v9

    .line 1244
    .local v9, "dataContentDescription":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->dataConnected:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->inetForNetwork:I

    if-nez v2, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$IconGroup;

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ROAMING:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;

    if-ne v2, v3, :cond_2

    :cond_1
    const/16 v21, 0x1

    .line 1248
    .local v21, "showDataIcon":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->dataSim:Z

    if-eqz v2, :cond_9

    .line 1249
    if-eqz v21, :cond_3

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;->mQsDataType:[I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->inetForNetwork:I

    aget v6, v3, v2

    .line 1250
    .local v6, "qsTypeIcon":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mSignalsChangedCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v20

    .line 1251
    .local v20, "length":I
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_2
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_9

    .line 1252
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mSignalsChangedCallbacks:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->enabled:Z

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->isEmergency:Z

    if-nez v3, :cond_4

    const/4 v3, 0x1

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->getQsCurrentIconId()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v7, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-boolean v7, v7, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->dataConnected:Z

    if-eqz v7, :cond_5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v7, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-boolean v7, v7, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->activityIn:Z

    if-eqz v7, :cond_5

    const/4 v7, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v8, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-boolean v8, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->dataConnected:Z

    if-eqz v8, :cond_6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v8, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-boolean v8, v8, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->activityOut:Z

    if-eqz v8, :cond_6

    const/4 v8, 0x1

    :goto_5
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-boolean v10, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->isEmergency:Z

    if-eqz v10, :cond_7

    const/4 v10, 0x0

    :goto_6
    move-object/from16 v0, v19

    iget-boolean v11, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;->mIsWide:Z

    if-eqz v11, :cond_8

    if-eqz v6, :cond_8

    const/4 v11, 0x1

    :goto_7
    invoke-interface/range {v2 .. v11}, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkSignalChangedCallback;->onMobileDataSignalChanged(ZILjava/lang/String;IZZLjava/lang/String;Ljava/lang/String;Z)V

    .line 1251
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 1244
    .end local v6    # "qsTypeIcon":I
    .end local v18    # "i":I
    .end local v20    # "length":I
    .end local v21    # "showDataIcon":Z
    :cond_2
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 1249
    .restart local v21    # "showDataIcon":Z
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 1252
    .restart local v6    # "qsTypeIcon":I
    .restart local v18    # "i":I
    .restart local v20    # "length":I
    :cond_4
    const/4 v3, 0x0

    goto :goto_3

    :cond_5
    const/4 v7, 0x0

    goto :goto_4

    :cond_6
    const/4 v8, 0x0

    goto :goto_5

    :cond_7
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-object v10, v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    goto :goto_6

    :cond_8
    const/4 v11, 0x0

    goto :goto_7

    .line 1264
    .end local v6    # "qsTypeIcon":I
    .end local v18    # "i":I
    .end local v20    # "length":I
    :cond_9
    if-eqz v21, :cond_a

    move-object/from16 v0, v19

    iget v13, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;->mDataType:I

    .line 1265
    .local v13, "typeIcon":I
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mSignalClusters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v22

    .line 1266
    .local v22, "signalClustersLength":I
    const/16 v18, 0x0

    .restart local v18    # "i":I
    :goto_9
    move/from16 v0, v18

    move/from16 v1, v22

    if-ge v0, v1, :cond_d

    .line 1267
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mSignalClusters:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->enabled:Z

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->airplaneMode:Z

    if-nez v2, :cond_b

    const/4 v11, 0x1

    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->getCurrentIconId()I

    move-result v12

    move-object/from16 v0, v19

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileIconGroup;->mIsWide:Z

    if-eqz v2, :cond_c

    if-eqz v13, :cond_c

    const/16 v16, 0x1

    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v17

    move-object v14, v5

    move-object v15, v9

    invoke-interface/range {v10 .. v17}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalCluster;->setMobileDataIndicators(ZIILjava/lang/String;Ljava/lang/String;ZI)V

    .line 1266
    add-int/lit8 v18, v18, 0x1

    goto :goto_9

    .line 1264
    .end local v13    # "typeIcon":I
    .end local v18    # "i":I
    .end local v22    # "signalClustersLength":I
    :cond_a
    const/4 v13, 0x0

    goto :goto_8

    .line 1267
    .restart local v13    # "typeIcon":I
    .restart local v18    # "i":I
    .restart local v22    # "signalClustersLength":I
    :cond_b
    const/4 v11, 0x0

    goto :goto_a

    :cond_c
    const/16 v16, 0x0

    goto :goto_b

    .line 1277
    :cond_d
    return-void
.end method

.method public bridge synthetic notifyListenersIfNecessary()V
    .locals 0

    .prologue
    .line 1043
    invoke-super {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;->notifyListenersIfNecessary()V

    return-void
.end method

.method public registerListener()V
    .locals 3

    .prologue
    .line 1172
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x11e1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1179
    return-void
.end method

.method public bridge synthetic saveLastState()V
    .locals 0

    .prologue
    .line 1043
    invoke-super {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;->saveLastState()V

    return-void
.end method

.method setActivity(I)V
    .locals 5
    .param p1, "activity"    # I

    .prologue
    const/4 v4, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1423
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    if-eq p1, v4, :cond_0

    if-ne p1, v3, :cond_3

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->activityIn:Z

    .line 1425
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    if-eq p1, v4, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    :cond_1
    move v2, v3

    :cond_2
    iput-boolean v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->activityOut:Z

    .line 1427
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->notifyListenersIfNecessary()V

    .line 1428
    return-void

    :cond_3
    move v1, v2

    .line 1423
    goto :goto_0
.end method

.method public setAirplaneMode(Z)V
    .locals 1
    .param p1, "airplaneMode"    # Z

    .prologue
    .line 1155
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->airplaneMode:Z

    .line 1156
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->notifyListenersIfNecessary()V

    .line 1157
    return-void
.end method

.method public setConfiguration(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;)V
    .locals 0
    .param p1, "config"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    .prologue
    .line 1101
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    .line 1102
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mapIconSets()V

    .line 1103
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->updateTelephony()V

    .line 1104
    return-void
.end method

.method public bridge synthetic setInetCondition(I)V
    .locals 0
    .param p1, "x0"    # I

    .prologue
    .line 1043
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController;->setInetCondition(I)V

    return-void
.end method

.method public setInetCondition(II)V
    .locals 1
    .param p1, "inetCondition"    # I
    .param p2, "inetConditionForNetwork"    # I

    .prologue
    .line 1164
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iput p2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->inetForNetwork:I

    .line 1165
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->setInetCondition(I)V

    .line 1166
    return-void
.end method

.method public unregisterListener()V
    .locals 3

    .prologue
    .line 1185
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1186
    return-void
.end method

.method updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 4
    .param p1, "showSpn"    # Z
    .param p2, "spn"    # Ljava/lang/String;
    .param p3, "showPlmn"    # Z
    .param p4, "plmn"    # Ljava/lang/String;

    .prologue
    .line 1359
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->CHATTY:Z

    if-eqz v1, :cond_0

    .line 1360
    const-string v1, "CarrierLabel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateNetworkName showSpn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " spn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " showPlmn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " plmn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1364
    .local v0, "str":Ljava/lang/StringBuilder;
    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    .line 1365
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1367
    :cond_1
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 1368
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 1369
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mNetworkNameSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1371
    :cond_2
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1373
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_4

    .line 1374
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    .line 1378
    :goto_0
    return-void

    .line 1376
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SignalController$State;

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController;->mNetworkNameDefault:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MobileSignalController$MobileState;->networkName:Ljava/lang/String;

    goto :goto_0
.end method
