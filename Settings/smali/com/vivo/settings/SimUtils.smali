.class public Lcom/vivo/settings/SimUtils;
.super Ljava/lang/Object;
.source "SimUtils.java"


# static fields
.field private static final CACHE_TIME:J = 0x1388L

.field private static final TAG:Ljava/lang/String; = "SimUtils"

.field private static sInfoRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/FtSubInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sLastUpdateTime:J


# instance fields
.field private mFtTelephony:Landroid/telephony/FtTelephony;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/vivo/settings/SimUtils;->sLastUpdateTime:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/FtTelephonyAdapter;->getFtTelephony(Landroid/content/Context;)Landroid/telephony/FtTelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/SimUtils;->mFtTelephony:Landroid/telephony/FtTelephony;

    .line 26
    invoke-direct {p0}, Lcom/vivo/settings/SimUtils;->update()V

    .line 27
    return-void
.end method

.method private update()V
    .locals 6

    .prologue
    .line 31
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 32
    .local v0, "now":J
    sget-object v2, Lcom/vivo/settings/SimUtils;->sInfoRecords:Ljava/util/List;

    if-eqz v2, :cond_0

    sget-wide v2, Lcom/vivo/settings/SimUtils;->sLastUpdateTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 33
    :cond_0
    iget-object v2, p0, Lcom/vivo/settings/SimUtils;->mFtTelephony:Landroid/telephony/FtTelephony;

    invoke-virtual {v2}, Landroid/telephony/FtTelephony;->getActiveSubInfoList()Ljava/util/List;

    move-result-object v2

    sput-object v2, Lcom/vivo/settings/SimUtils;->sInfoRecords:Ljava/util/List;

    .line 34
    sput-wide v0, Lcom/vivo/settings/SimUtils;->sLastUpdateTime:J

    .line 35
    const-string v2, "SimUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update sLastUpdateTime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Lcom/vivo/settings/SimUtils;->sLastUpdateTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_1
    return-void
.end method


# virtual methods
.method public forceFlush()V
    .locals 6

    .prologue
    .line 57
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 58
    .local v0, "now":J
    iget-object v2, p0, Lcom/vivo/settings/SimUtils;->mFtTelephony:Landroid/telephony/FtTelephony;

    invoke-virtual {v2}, Landroid/telephony/FtTelephony;->getActiveSubInfoList()Ljava/util/List;

    move-result-object v2

    sput-object v2, Lcom/vivo/settings/SimUtils;->sInfoRecords:Ljava/util/List;

    .line 72
    sput-wide v0, Lcom/vivo/settings/SimUtils;->sLastUpdateTime:J

    .line 73
    const-string v2, "SimUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "forceFlush sLastUpdateTime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Lcom/vivo/settings/SimUtils;->sLastUpdateTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public getAllActiveSimCount()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, "simCount":I
    invoke-virtual {p0, v2}, Lcom/vivo/settings/SimUtils;->isSimInsert(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/vivo/settings/SimUtils;->isSimRadioOn(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    add-int/lit8 v0, v0, 0x1

    .line 107
    :cond_0
    invoke-virtual {p0, v3}, Lcom/vivo/settings/SimUtils;->isSimInsert(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v3}, Lcom/vivo/settings/SimUtils;->isSimRadioOn(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    add-int/lit8 v0, v0, 0x1

    .line 110
    :cond_1
    return v0
.end method

.method public getApnOperator(I)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 114
    iget-object v0, p0, Lcom/vivo/settings/SimUtils;->mFtTelephony:Landroid/telephony/FtTelephony;

    invoke-virtual {v0, p1}, Landroid/telephony/FtTelephony;->getApnOperator(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInertedSimCount()I
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/vivo/settings/SimUtils;->mFtTelephony:Landroid/telephony/FtTelephony;

    invoke-virtual {v0}, Landroid/telephony/FtTelephony;->getInsertedSimCount()I

    move-result v0

    return v0
.end method

.method public getSimName(I)Ljava/lang/String;
    .locals 3
    .param p1, "slot"    # I

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/vivo/settings/SimUtils;->update()V

    .line 82
    sget-object v2, Lcom/vivo/settings/SimUtils;->sInfoRecords:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/FtSubInfo;

    .line 83
    .local v1, "record":Landroid/telephony/FtSubInfo;
    iget v2, v1, Landroid/telephony/FtSubInfo;->mSlotId:I

    if-ne v2, p1, :cond_0

    .line 84
    iget-object v2, v1, Landroid/telephony/FtSubInfo;->mDisplayName:Ljava/lang/String;

    .line 87
    .end local v1    # "record":Landroid/telephony/FtSubInfo;
    :goto_0
    return-object v2

    :cond_1
    const-string v2, ""

    goto :goto_0
.end method

.method public isDeviceSupportMultiSim()Z
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/vivo/settings/SimUtils;->mFtTelephony:Landroid/telephony/FtTelephony;

    invoke-virtual {v0}, Landroid/telephony/FtTelephony;->isMultiSimCard()Z

    move-result v0

    return v0
.end method

.method public isSimInsert(I)Z
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 77
    iget-object v0, p0, Lcom/vivo/settings/SimUtils;->mFtTelephony:Landroid/telephony/FtTelephony;

    invoke-virtual {v0, p1}, Landroid/telephony/FtTelephony;->isSimInserted(I)Z

    move-result v0

    return v0
.end method

.method public isSimRadioOn(I)Z
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 99
    iget-object v0, p0, Lcom/vivo/settings/SimUtils;->mFtTelephony:Landroid/telephony/FtTelephony;

    invoke-virtual {v0, p1}, Landroid/telephony/FtTelephony;->isRadioOn(I)Z

    move-result v0

    return v0
.end method
