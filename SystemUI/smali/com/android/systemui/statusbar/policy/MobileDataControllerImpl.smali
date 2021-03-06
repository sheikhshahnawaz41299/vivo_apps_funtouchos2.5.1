.class public Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;
.super Ljava/lang/Object;
.source "MobileDataControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl$Callback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final DEFAULT_WARNING_LEVEL:J = 0x80000000L

.field private static final FIELDS:I = 0xa

.field private static final PERIOD_BUILDER:Ljava/lang/StringBuilder;

.field private static final PERIOD_FORMATTER:Ljava/util/Formatter;

.field private static final TAG:Ljava/lang/String; = "MobileDataController"


# instance fields
.field private mCallback:Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl$Callback;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

.field private final mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mSession:Landroid/net/INetworkStatsSession;

.field private final mStatsService:Landroid/net/INetworkStatsService;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 47
    const-string v0, "MobileDataController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->DEBUG:Z

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->PERIOD_BUILDER:Ljava/lang/StringBuilder;

    .line 52
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->PERIOD_BUILDER:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->PERIOD_FORMATTER:Ljava/util/Formatter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mContext:Landroid/content/Context;

    .line 67
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 68
    invoke-static {p1}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 69
    const-string v0, "netstats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mStatsService:Landroid/net/INetworkStatsService;

    .line 71
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 72
    return-void
.end method

.method private static addMonth(Landroid/text/format/Time;I)Landroid/text/format/Time;
    .locals 4
    .param p0, "t"    # Landroid/text/format/Time;
    .param p1, "months"    # I

    .prologue
    .line 101
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0, p0}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 102
    .local v0, "rt":Landroid/text/format/Time;
    iget v1, p0, Landroid/text/format/Time;->monthDay:I

    iget v2, p0, Landroid/text/format/Time;->month:I

    add-int/2addr v2, p1

    iget v3, p0, Landroid/text/format/Time;->year:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/format/Time;->set(III)V

    .line 103
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 104
    return-object v0
.end method

.method private findNetworkPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;
    .locals 6
    .param p1, "template"    # Landroid/net/NetworkTemplate;

    .prologue
    const/4 v4, 0x0

    .line 175
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    if-eqz v5, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move-object v3, v4

    .line 185
    :cond_1
    :goto_0
    return-object v3

    .line 176
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v5}, Landroid/net/NetworkPolicyManager;->getNetworkPolicies()[Landroid/net/NetworkPolicy;

    move-result-object v2

    .line 177
    .local v2, "policies":[Landroid/net/NetworkPolicy;
    if-nez v2, :cond_3

    move-object v3, v4

    goto :goto_0

    .line 178
    :cond_3
    array-length v0, v2

    .line 179
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_5

    .line 180
    aget-object v3, v2, v1

    .line 181
    .local v3, "policy":Landroid/net/NetworkPolicy;
    if-eqz v3, :cond_4

    iget-object v5, v3, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    invoke-virtual {p1, v5}, Landroid/net/NetworkTemplate;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 179
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v3    # "policy":Landroid/net/NetworkPolicy;
    :cond_5
    move-object v3, v4

    .line 185
    goto :goto_0
.end method

.method private formatDateRange(JJ)Ljava/lang/String;
    .locals 11
    .param p1, "start"    # J
    .param p3, "end"    # J

    .prologue
    .line 227
    const v8, 0x10010

    .line 228
    .local v8, "flags":I
    sget-object v9, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->PERIOD_BUILDER:Ljava/lang/StringBuilder;

    monitor-enter v9

    .line 229
    :try_start_0
    sget-object v0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->PERIOD_BUILDER:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 230
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->PERIOD_FORMATTER:Ljava/util/Formatter;

    const v6, 0x10010

    const/4 v7, 0x0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v9

    return-object v0

    .line 232
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 220
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 221
    .local v1, "tele":Landroid/telephony/TelephonyManager;
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "actualSubscriberId":Ljava/lang/String;
    return-object v0
.end method

.method private getSession()Landroid/net/INetworkStatsSession;
    .locals 3

    .prologue
    .line 79
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mSession:Landroid/net/INetworkStatsSession;

    if-nez v1, :cond_0

    .line 81
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v1}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mSession:Landroid/net/INetworkStatsSession;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 88
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mSession:Landroid/net/INetworkStatsSession;

    return-object v1

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MobileDataController"

    const-string v2, "Failed to open stats session"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 84
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "MobileDataController"

    const-string v2, "Failed to open stats session"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static historyEntryToString(Landroid/net/NetworkStatsHistory$Entry;)Ljava/lang/String;
    .locals 4
    .param p0, "entry"    # Landroid/net/NetworkStatsHistory$Entry;

    .prologue
    .line 189
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Entry["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "bucketDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/net/NetworkStatsHistory$Entry;->bucketDuration:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",bucketStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",activeTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/net/NetworkStatsHistory$Entry;->activeTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",rxBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",rxPackets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",txBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",txPackets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",operations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private warn(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController$DataUsageInfo;
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 96
    const-string v0, "MobileDataController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get data usage, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getDataUsageInfo()Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController$DataUsageInfo;
    .locals 32

    .prologue
    .line 108
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v22

    .line 109
    .local v22, "subscriberId":Ljava/lang/String;
    if-nez v22, :cond_1

    .line 110
    const-string v12, "no subscriber id"

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->warn(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController$DataUsageInfo;

    move-result-object v26

    .line 170
    :cond_0
    :goto_0
    return-object v26

    .line 112
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->getSession()Landroid/net/INetworkStatsSession;

    move-result-object v21

    .line 113
    .local v21, "session":Landroid/net/INetworkStatsSession;
    if-nez v21, :cond_2

    .line 114
    const-string v12, "no stats session"

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->warn(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController$DataUsageInfo;

    move-result-object v26

    goto :goto_0

    .line 116
    :cond_2
    invoke-static/range {v22 .. v22}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v23

    .line 120
    .local v23, "template":Landroid/net/NetworkTemplate;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->findNetworkPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v19

    .line 122
    .local v19, "policy":Landroid/net/NetworkPolicy;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mSession:Landroid/net/INetworkStatsSession;

    const/16 v27, 0xa

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-interface {v12, v0, v1}, Landroid/net/INetworkStatsSession;->getHistoryForNetwork(Landroid/net/NetworkTemplate;I)Landroid/net/NetworkStatsHistory;

    move-result-object v5

    .line 123
    .local v5, "history":Landroid/net/NetworkStatsHistory;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 125
    .local v10, "now":J
    if-eqz v19, :cond_6

    move-object/from16 v0, v19

    iget v12, v0, Landroid/net/NetworkPolicy;->cycleDay:I

    if-lez v12, :cond_6

    .line 127
    sget-boolean v12, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->DEBUG:Z

    if-eqz v12, :cond_3

    const-string v12, "MobileDataController"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Cycle day="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v19

    iget v0, v0, Landroid/net/NetworkPolicy;->cycleDay:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " tz="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/NetworkPolicy;->cycleTimezone:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_3
    new-instance v18, Landroid/text/format/Time;

    move-object/from16 v0, v19

    iget-object v12, v0, Landroid/net/NetworkPolicy;->cycleTimezone:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-direct {v0, v12}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 130
    .local v18, "nowTime":Landroid/text/format/Time;
    invoke-virtual/range {v18 .. v18}, Landroid/text/format/Time;->setToNow()V

    .line 131
    new-instance v20, Landroid/text/format/Time;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 132
    .local v20, "policyTime":Landroid/text/format/Time;
    move-object/from16 v0, v19

    iget v12, v0, Landroid/net/NetworkPolicy;->cycleDay:I

    move-object/from16 v0, v20

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v27, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v28, v0

    move-object/from16 v0, v20

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v12, v1, v2}, Landroid/text/format/Time;->set(III)V

    .line 133
    const/4 v12, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/text/format/Time;->normalize(Z)J

    .line 134
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->after(Landroid/text/format/Time;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 135
    const/4 v12, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    .line 136
    .local v6, "start":J
    const/4 v12, 0x1

    move-object/from16 v0, v20

    invoke-static {v0, v12}, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->addMonth(Landroid/text/format/Time;I)Landroid/text/format/Time;

    move-result-object v12

    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v12, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    .line 146
    .end local v18    # "nowTime":Landroid/text/format/Time;
    .end local v20    # "policyTime":Landroid/text/format/Time;
    .local v8, "end":J
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 147
    .local v16, "callStart":J
    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v13

    .line 148
    .local v13, "entry":Landroid/net/NetworkStatsHistory$Entry;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 149
    .local v14, "callEnd":J
    sget-boolean v12, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->DEBUG:Z

    if-eqz v12, :cond_4

    const-string v12, "MobileDataController"

    const-string v27, "history call from %s to %s now=%s took %sms: %s"

    const/16 v28, 0x5

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    new-instance v30, Ljava/util/Date;

    move-object/from16 v0, v30

    invoke-direct {v0, v6, v7}, Ljava/util/Date;-><init>(J)V

    aput-object v30, v28, v29

    const/16 v29, 0x1

    new-instance v30, Ljava/util/Date;

    move-object/from16 v0, v30

    invoke-direct {v0, v8, v9}, Ljava/util/Date;-><init>(J)V

    aput-object v30, v28, v29

    const/16 v29, 0x2

    new-instance v30, Ljava/util/Date;

    move-object/from16 v0, v30

    invoke-direct {v0, v10, v11}, Ljava/util/Date;-><init>(J)V

    aput-object v30, v28, v29

    const/16 v29, 0x3

    sub-long v30, v14, v16

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v30

    aput-object v30, v28, v29

    const/16 v29, 0x4

    invoke-static {v13}, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->historyEntryToString(Landroid/net/NetworkStatsHistory$Entry;)Ljava/lang/String;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-static/range {v27 .. v28}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_4
    if-nez v13, :cond_7

    .line 153
    const-string v12, "no entry data"

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->warn(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController$DataUsageInfo;

    move-result-object v26

    goto/16 :goto_0

    .line 138
    .end local v6    # "start":J
    .end local v8    # "end":J
    .end local v13    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    .end local v14    # "callEnd":J
    .end local v16    # "callStart":J
    .restart local v18    # "nowTime":Landroid/text/format/Time;
    .restart local v20    # "policyTime":Landroid/text/format/Time;
    :cond_5
    const/4 v12, -0x1

    move-object/from16 v0, v20

    invoke-static {v0, v12}, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->addMonth(Landroid/text/format/Time;I)Landroid/text/format/Time;

    move-result-object v12

    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v12, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    .line 139
    .restart local v6    # "start":J
    const/4 v12, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    .restart local v8    # "end":J
    goto :goto_1

    .line 143
    .end local v6    # "start":J
    .end local v8    # "end":J
    .end local v18    # "nowTime":Landroid/text/format/Time;
    .end local v20    # "policyTime":Landroid/text/format/Time;
    :cond_6
    move-wide v8, v10

    .line 144
    .restart local v8    # "end":J
    const-wide v28, 0x90321000L

    sub-long v6, v10, v28

    .restart local v6    # "start":J
    goto/16 :goto_1

    .line 155
    .restart local v13    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    .restart local v14    # "callEnd":J
    .restart local v16    # "callStart":J
    :cond_7
    iget-wide v0, v13, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    move-wide/from16 v28, v0

    iget-wide v0, v13, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    move-wide/from16 v30, v0

    add-long v24, v28, v30

    .line 156
    .local v24, "totalBytes":J
    new-instance v26, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController$DataUsageInfo;

    invoke-direct/range {v26 .. v26}, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController$DataUsageInfo;-><init>()V

    .line 157
    .local v26, "usage":Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController$DataUsageInfo;
    move-wide/from16 v0, v24

    move-object/from16 v2, v26

    iput-wide v0, v2, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController$DataUsageInfo;->usageLevel:J

    .line 158
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v8, v9}, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->formatDateRange(JJ)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, v26

    iput-object v12, v0, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController$DataUsageInfo;->period:Ljava/lang/String;

    .line 159
    if-eqz v19, :cond_a

    .line 160
    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x0

    cmp-long v12, v28, v30

    if-lez v12, :cond_8

    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    move-wide/from16 v28, v0

    :goto_2
    move-wide/from16 v0, v28

    move-object/from16 v2, v26

    iput-wide v0, v2, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController$DataUsageInfo;->limitLevel:J

    .line 161
    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x0

    cmp-long v12, v28, v30

    if-lez v12, :cond_9

    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    move-wide/from16 v28, v0

    :goto_3
    move-wide/from16 v0, v28

    move-object/from16 v2, v26

    iput-wide v0, v2, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController$DataUsageInfo;->warningLevel:J

    .line 165
    :goto_4
    if-eqz v26, :cond_0

    .line 166
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getMobileNetworkName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, v26

    iput-object v12, v0, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController$DataUsageInfo;->carrier:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 169
    .end local v5    # "history":Landroid/net/NetworkStatsHistory;
    .end local v6    # "start":J
    .end local v8    # "end":J
    .end local v10    # "now":J
    .end local v13    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    .end local v14    # "callEnd":J
    .end local v16    # "callStart":J
    .end local v24    # "totalBytes":J
    .end local v26    # "usage":Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController$DataUsageInfo;
    :catch_0
    move-exception v4

    .line 170
    .local v4, "e":Landroid/os/RemoteException;
    const-string v12, "remote call failed"

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->warn(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController$DataUsageInfo;

    move-result-object v26

    goto/16 :goto_0

    .line 160
    .end local v4    # "e":Landroid/os/RemoteException;
    .restart local v5    # "history":Landroid/net/NetworkStatsHistory;
    .restart local v6    # "start":J
    .restart local v8    # "end":J
    .restart local v10    # "now":J
    .restart local v13    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    .restart local v14    # "callEnd":J
    .restart local v16    # "callStart":J
    .restart local v24    # "totalBytes":J
    .restart local v26    # "usage":Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController$DataUsageInfo;
    :cond_8
    const-wide/16 v28, 0x0

    goto :goto_2

    .line 161
    :cond_9
    const-wide/16 v28, 0x0

    goto :goto_3

    .line 163
    :cond_a
    const-wide v28, 0x80000000L

    :try_start_1
    move-wide/from16 v0, v28

    move-object/from16 v2, v26

    iput-wide v0, v2, Lcom/android/systemui/statusbar/policy/NetworkController$MobileDataController$DataUsageInfo;->warningLevel:J
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method public isMobileDataEnabled()Z
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v0

    return v0
.end method

.method public isMobileDataSupported()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 211
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public setCallback(Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl$Callback;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mCallback:Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl$Callback;

    .line 93
    return-void
.end method

.method public setMobileDataEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 202
    const-string v0, "MobileDataController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMobileDataEnabled: enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 204
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mCallback:Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl$Callback;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mCallback:Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl$Callback;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl$Callback;->onMobileDataEnabled(Z)V

    .line 207
    :cond_0
    return-void
.end method

.method public setNetworkController(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V
    .locals 0
    .param p1, "networkController"    # Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileDataControllerImpl;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    .line 76
    return-void
.end method
