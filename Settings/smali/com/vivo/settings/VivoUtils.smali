.class public Lcom/vivo/settings/VivoUtils;
.super Ljava/lang/Object;
.source "VivoUtils.java"


# static fields
.field public static final CONNECTION_TYPE_MOBILE:I = 0x3ea

.field public static final CONNECTION_TYPE_NULL:I = 0x3e9

.field public static final CONNECTION_TYPE_WIFI:I = 0x3eb

.field private static HPROF_TIMES:J = 0x0L

.field private static final TAG:Ljava/lang/String; = "VivoUtils"

.field private static final UNITS:[Ljava/lang/String;

.field private static isHprofDump:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 33
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "B"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "KB"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "MB"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "GB"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "TB"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "PB"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "EB"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ZB"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "YB"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "BB"

    aput-object v2, v0, v1

    sput-object v0, Lcom/vivo/settings/VivoUtils;->UNITS:[Ljava/lang/String;

    .line 128
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/vivo/settings/VivoUtils;->HPROF_TIMES:J

    .line 129
    sput-boolean v3, Lcom/vivo/settings/VivoUtils;->isHprofDump:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildHprof(Ljava/lang/String;)V
    .locals 6
    .param p0, "hprofPath"    # Ljava/lang/String;

    .prologue
    .line 145
    sget-wide v2, Lcom/vivo/settings/VivoUtils;->HPROF_TIMES:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    sput-wide v2, Lcom/vivo/settings/VivoUtils;->HPROF_TIMES:J

    .line 147
    const-string v1, "VivoUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GENERATE_HPROF_FILE hprof:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " times:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v4, Lcom/vivo/settings/VivoUtils;->HPROF_TIMES:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :try_start_0
    invoke-static {p0}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :goto_0
    const-string v1, "VivoUtils"

    const-string v2, "GENERATE_HPROF_FILE hprof ---- end "

    invoke-static {v1, v2}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    return-void

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "VivoUtils"

    const-string v2, "dumpHprofData IOException:"

    invoke-static {v1, v2, v0}, Lcom/vivo/settings/Vlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getCPUCoreNumber()I
    .locals 1

    .prologue
    .line 180
    invoke-static {}, Landroid/util/FtCpuInfo;->getCPUCoreNumber()I

    move-result v0

    return v0
.end method

.method public static getConnectionType(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v3, 0x3e9

    .line 101
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 103
    .local v0, "conMan":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 104
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-nez v1, :cond_1

    .line 116
    :cond_0
    :goto_0
    return v3

    .line 107
    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_0

    .line 110
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 111
    .local v2, "type":I
    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    .line 112
    const/16 v3, 0x3eb

    goto :goto_0

    .line 113
    :cond_2
    if-nez v2, :cond_0

    .line 114
    const/16 v3, 0x3ea

    goto :goto_0
.end method

.method public static getCpuInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 184
    invoke-static {p0}, Lcom/vivo/settings/VivoUtils;->getCpuModel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 185
    .local v6, "model":Ljava/lang/String;
    invoke-static {}, Lcom/vivo/settings/VivoUtils;->getMaxCpuRate()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 186
    .local v7, "rate":Ljava/lang/Long;
    invoke-static {}, Lcom/vivo/settings/VivoUtils;->getCPUCoreNumber()I

    move-result v0

    .line 187
    .local v0, "coreNum":I
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    long-to-double v8, v8

    const-wide v10, 0x412e848000000000L    # 1000000.0

    div-double v4, v8, v10

    .line 188
    .local v4, "dRate":D
    const v2, 0x7f0b07e4

    .line 191
    .local v2, "cpuInfoRes":I
    const/4 v8, 0x7

    if-lt v0, v8, :cond_0

    .line 192
    const v2, 0x7f0b07e5

    .line 201
    :goto_0
    new-instance v3, Ljava/text/DecimalFormat;

    const-string v8, "##0.0"

    invoke-direct {v3, v8}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 202
    .local v3, "decimalFormat":Ljava/text/DecimalFormat;
    invoke-static {}, Lcom/android/settings/AppFeature;->isMTK()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 203
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "GHz "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 208
    .local v1, "cpuInfo":Ljava/lang/String;
    :goto_1
    const-string v8, "VivoUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getCpuInfo model:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " dRate:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " coreNum:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " cpuInfo:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    return-object v1

    .line 193
    .end local v1    # "cpuInfo":Ljava/lang/String;
    .end local v3    # "decimalFormat":Ljava/text/DecimalFormat;
    :cond_0
    const/4 v8, 0x3

    if-lt v0, v8, :cond_1

    .line 194
    const v2, 0x7f0b07e6

    goto :goto_0

    .line 195
    :cond_1
    const/4 v8, 0x1

    if-lt v0, v8, :cond_2

    .line 196
    const v2, 0x7f0b07e4

    goto :goto_0

    .line 198
    :cond_2
    const v2, 0x7f0b07e7

    goto :goto_0

    .line 205
    .restart local v3    # "decimalFormat":Ljava/text/DecimalFormat;
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "GHz "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "cpuInfo":Ljava/lang/String;
    goto :goto_1
.end method

.method public static getCpuModel(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 172
    invoke-static {p0}, Landroid/util/FtCpuInfo;->getCpuModel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFuntouchOsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    invoke-static {}, Landroid/os/FtBuild;->getFuntouchOsVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstalledServiceCount(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v0

    .line 67
    .local v0, "installedServiceInfos":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    if-nez v0, :cond_0

    .line 68
    const/4 v1, 0x0

    .line 70
    :goto_0
    return v1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0
.end method

.method public static getMaxCpuRate()J
    .locals 2

    .prologue
    .line 176
    invoke-static {}, Landroid/util/FtCpuInfo;->getMaxCpuRate()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getOpName(Ljava/lang/String;)I
    .locals 2
    .param p0, "code"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 48
    if-nez p0, :cond_1

    .line 60
    :cond_0
    :goto_0
    return v0

    .line 51
    :cond_1
    const-string v1, "46001"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "46006"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 52
    :cond_2
    const v0, 0x7f0b07cf

    goto :goto_0

    .line 53
    :cond_3
    const-string v1, "46000"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "46002"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "46007"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 55
    :cond_4
    const v0, 0x7f0b07cd

    goto :goto_0

    .line 56
    :cond_5
    const-string v1, "46003"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "46005"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "46011"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    :cond_6
    const v0, 0x7f0b07ce

    goto :goto_0
.end method

.method public static getProductName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    invoke-static {}, Landroid/os/FtBuild;->getProductName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProductReleaseModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    invoke-static {}, Landroid/os/FtBuild;->getProductReleaseModel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProductReleaseName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    invoke-static {}, Landroid/os/FtBuild;->getProductReleaseName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProductVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    invoke-static {}, Landroid/os/FtBuild;->getProductVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRomVersion()F
    .locals 1

    .prologue
    .line 221
    invoke-static {}, Landroid/os/FtBuild;->getRomVersion()F

    move-result v0

    return v0
.end method

.method public static getStorageSizeStr(J)Ljava/lang/String;
    .locals 6
    .param p0, "size"    # J

    .prologue
    .line 37
    long-to-double v0, p0

    .line 38
    .local v0, "dSize":D
    const/4 v3, 0x0

    .line 39
    .local v3, "loc":I
    :goto_0
    const-wide v4, 0x408c200000000000L    # 900.0

    cmpl-double v4, v0, v4

    if-lez v4, :cond_0

    .line 40
    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    div-double/2addr v0, v4

    .line 41
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 43
    :cond_0
    new-instance v2, Ljava/text/DecimalFormat;

    const-string v4, "##0.00"

    invoke-direct {v2, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 44
    .local v2, "decimalFormat":Ljava/text/DecimalFormat;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/vivo/settings/VivoUtils;->UNITS:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static isHprofDumpEnabled()Z
    .locals 1

    .prologue
    .line 132
    sget-boolean v0, Lcom/vivo/settings/VivoUtils;->isHprofDump:Z

    return v0
.end method

.method public static isIntentExist(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 92
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 97
    :cond_0
    :goto_0
    return v2

    .line 95
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 96
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 97
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isOtgEnable()Z
    .locals 1

    .prologue
    .line 161
    invoke-static {}, Landroid/util/FtFeature;->isOtgEnable()Z

    move-result v0

    return v0
.end method

.method public static isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 80
    const/4 v1, 0x0

    .line 81
    .local v1, "isExist":Z
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 83
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/16 v3, 0x2000

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    const/4 v1, 0x1

    .line 88
    :goto_0
    return v1

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setHprofDumpEnable(Z)V
    .locals 3
    .param p0, "isDump"    # Z

    .prologue
    .line 136
    sput-boolean p0, Lcom/vivo/settings/VivoUtils;->isHprofDump:Z

    .line 137
    const-string v0, "VivoUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHprofDumpState isHprofDump:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/vivo/settings/VivoUtils;->isHprofDump:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public static setOtgEnable(Z)V
    .locals 0
    .param p0, "enabled"    # Z

    .prologue
    .line 165
    invoke-static {p0}, Landroid/util/FtFeature;->setOtgEnable(Z)V

    .line 166
    return-void
.end method

.method public static varargs stringBuilderAppend(Ljava/lang/StringBuilder;[Ljava/lang/Object;)V
    .locals 4
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p1, "strings"    # [Ljava/lang/Object;

    .prologue
    .line 74
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 75
    .local v3, "s":Ljava/lang/Object;
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    .end local v3    # "s":Ljava/lang/Object;
    :cond_0
    return-void
.end method
