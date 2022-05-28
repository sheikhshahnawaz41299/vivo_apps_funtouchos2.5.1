.class public Lcom/vivo/settings/RamUtils;
.super Ljava/lang/Object;
.source "RamUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RamUtils"

.field private static mAvaiableRam:Ljava/lang/String;

.field private static mTotalRam:Ljava/lang/String;

.field private static mTotalRamValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "0.00"

    sput-object v0, Lcom/vivo/settings/RamUtils;->mTotalRam:Ljava/lang/String;

    .line 20
    const-string v0, "0.00"

    sput-object v0, Lcom/vivo/settings/RamUtils;->mAvaiableRam:Ljava/lang/String;

    .line 21
    const/4 v0, 0x0

    sput v0, Lcom/vivo/settings/RamUtils;->mTotalRamValue:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatSize(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "size"    # J

    .prologue
    .line 80
    invoke-static {p0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAvaiableRam()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/vivo/settings/RamUtils;->mAvaiableRam:Ljava/lang/String;

    return-object v0
.end method

.method public static getTotalRunRam()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/vivo/settings/RamUtils;->mTotalRam:Ljava/lang/String;

    return-object v0
.end method

.method public static getTotalRunRamValue()I
    .locals 3

    .prologue
    .line 92
    const-string v0, "RamUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTotalRamValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/vivo/settings/RamUtils;->mTotalRamValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    sget v0, Lcom/vivo/settings/RamUtils;->mTotalRamValue:I

    return v0
.end method

.method public static updateRamVolume(Landroid/content/Context;)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    const/4 v5, 0x0

    .line 49
    .local v5, "memAvaiable":Ljava/lang/String;
    const/4 v0, 0x0

    .line 50
    .local v0, "AvailableMemoryStringArray":[Ljava/lang/String;
    const-wide/16 v6, 0x0

    .line 53
    .local v6, "totalFree":J
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    const-string v8, "/proc/meminfo"

    invoke-direct {v3, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 54
    .local v3, "fr":Ljava/io/FileReader;
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v8, 0x1000

    invoke-direct {v1, v3, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 57
    .local v1, "br":Ljava/io/BufferedReader;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 58
    const-string v8, "\\s+"

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 59
    const/4 v8, 0x1

    aget-object v8, v0, v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    long-to-double v8, v8

    const-wide/high16 v10, 0x4130000000000000L    # 1048576.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    sput v8, Lcom/vivo/settings/RamUtils;->mTotalRamValue:I

    .line 60
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x1

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    long-to-double v10, v10

    const-wide/high16 v12, 0x4130000000000000L    # 1048576.0

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".00 GB"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/vivo/settings/RamUtils;->mTotalRam:Ljava/lang/String;

    .line 61
    const/4 v8, 0x1

    aget-object v8, v0, v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    long-to-double v8, v8

    const-wide/high16 v10, 0x4130000000000000L    # 1048576.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-long v8, v8

    const-wide/16 v10, 0x400

    mul-long/2addr v8, v10

    const-wide/16 v10, 0x400

    mul-long/2addr v8, v10

    const-wide/16 v10, 0x400

    mul-long/2addr v8, v10

    invoke-static {p0, v8, v9}, Lcom/vivo/settings/RamUtils;->formatSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/vivo/settings/RamUtils;->mTotalRam:Ljava/lang/String;

    .line 62
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/4 v8, 0x3

    if-ge v4, v8, :cond_0

    .line 63
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 64
    const-string v8, "\\s+"

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 65
    const/4 v8, 0x1

    aget-object v8, v0, v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    add-long/2addr v6, v8

    .line 66
    const-string v8, "memBuffer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " memBuffer is : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v10, v0, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const-string v8, "memBuffer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " totalFree is : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 71
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    .line 73
    const-wide/16 v8, 0x400

    mul-long/2addr v8, v6

    invoke-static {p0, v8, v9}, Lcom/vivo/settings/RamUtils;->formatSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/vivo/settings/RamUtils;->mAvaiableRam:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "fr":Ljava/io/FileReader;
    .end local v4    # "i":I
    :goto_1
    return-void

    .line 74
    :catch_0
    move-exception v2

    .line 75
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
