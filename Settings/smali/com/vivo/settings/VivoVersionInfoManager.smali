.class public Lcom/vivo/settings/VivoVersionInfoManager;
.super Ljava/lang/Object;
.source "VivoVersionInfoManager.java"


# static fields
.field private static final BASEBAND_VERSION:Ljava/lang/String; = "baseband_version"

.field public static final BUILD_NUMBER:Ljava/lang/String; = "build_number"

.field private static final BUILD_TIME:Ljava/lang/String; = "build_time"

.field private static final CPU_INFO:Ljava/lang/String; = "cpu_info"

.field private static final CPU_REAL_TIME_DATA:Ljava/lang/String; = "cpu_real_time_data"

.field private static final DEVICE_MODEL:Ljava/lang/String; = "device_model"

.field private static final DEVICE_MODEL_NAME:Ljava/lang/String; = "device_model_name"

.field public static final FIRMWARE_VERSION:Ljava/lang/String; = "firmware_version"

.field private static final FUNTOUCH_LOGO:Ljava/lang/String; = "funtouch_logo"

.field private static final IMEI:Ljava/lang/String; = "imei"

.field private static final IMEI0:Ljava/lang/String; = "imei0"

.field private static final IMEI1:Ljava/lang/String; = "imei1"

.field private static final KERNEL_VERSION:Ljava/lang/String; = "kernel_version"

.field private static final KEY_SECURITY_PATCH:Ljava/lang/String; = "security_patch"

.field private static final RUNNING_RAM:Ljava/lang/String; = "running_ram"

.field private static final TAG:Ljava/lang/String; = "VivoVersionInfoManager"

.field private static final TAPS_TO_BE_A_DEVELOPER:I = 0x7

.field private static final UNKNOWN:Ljava/lang/String; = "unknow"

.field private static final VIVO_ROM:Ljava/lang/String; = "vivo_rom"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDevHitCountdown:I

.field private mDevHitToast:Landroid/widget/Toast;

.field private mKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mSummaries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTitles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/vivo/settings/VivoVersionInfoManager;->mContext:Landroid/content/Context;

    .line 83
    iget-object v0, p0, Lcom/vivo/settings/VivoVersionInfoManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/VivoVersionInfoManager;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 84
    iget-object v0, p0, Lcom/vivo/settings/VivoVersionInfoManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/VivoVersionInfoManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 85
    invoke-direct {p0}, Lcom/vivo/settings/VivoVersionInfoManager;->initRes()V

    .line 86
    return-void
.end method

.method private getBuildNumber()Ljava/lang/String;
    .locals 5

    .prologue
    .line 222
    invoke-static {}, Lcom/android/settings/AppFeature;->isFeatureForNetEntry()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 223
    const-string v2, "ro.build.netaccess.version"

    sget-object v3, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 246
    :cond_0
    :goto_0
    return-object v1

    .line 225
    :cond_1
    invoke-static {}, Lcom/android/settings/AppFeature;->isCMCC()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 226
    const-string v2, "VivoVersionInfoManager"

    const-string v3, "build_number ---ro.cmcc.test"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const-string v2, "ro.vivo.op.entry.version"

    sget-object v3, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 229
    :cond_2
    const-string v2, "ro.build.version.bbk"

    sget-object v3, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 230
    .local v1, "version":Ljava/lang/String;
    const-string v2, "ro.product.customize.bbk"

    const-string v3, "N"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "customize_bbk":Ljava/lang/String;
    const-string v2, "VivoVersionInfoManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBuildNumber version:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " customize_bbk:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_0

    .line 234
    const-string v2, "CN-YD"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 235
    const-string v2, "PD1421"

    invoke-static {}, Lcom/android/settings/AppFeature;->getProductName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 236
    const-string v2, "PD1421D"

    const-string v3, "PD1421L"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 238
    :cond_3
    const-string v2, "_"

    const-string v3, "-YD_"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 240
    :cond_4
    const-string v2, "CN-DX"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 241
    const-string v2, "_"

    const-string v3, "-DX_"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 242
    :cond_5
    const-string v2, "CN-YD-A"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 243
    const-string v2, "_"

    const-string v3, "-YD-A_"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method private getBuildTime()Ljava/lang/String;
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 201
    const-string v3, "ro.build.date.utc"

    iget-object v4, p0, Lcom/vivo/settings/VivoVersionInfoManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b000f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "buildDate":Ljava/lang/String;
    new-instance v1, Ljava/text/SimpleDateFormat;

    iget-object v3, p0, Lcom/vivo/settings/VivoVersionInfoManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "date_format"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 208
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    :try_start_0
    const-string v3, "1"

    iget-object v4, p0, Lcom/vivo/settings/VivoVersionInfoManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "use_thai_calendar"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 210
    new-instance v3, Ljava/util/Date;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    mul-long/2addr v4, v6

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/lit16 v5, v5, 0x21f

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    .end local v0    # "buildDate":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 213
    .restart local v0    # "buildDate":Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/util/Date;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    mul-long/2addr v4, v6

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 216
    :catch_0
    move-exception v2

    .line 217
    .local v2, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private getFormattedKernelVersion()Ljava/lang/String;
    .locals 9

    .prologue
    .line 272
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    const-string v7, "/proc/version"

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x100

    invoke-direct {v5, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    .local v5, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 276
    .local v4, "procVersionStr":Ljava/lang/String;
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 279
    const-string v0, "\\w+\\s+\\w+\\s+([^\\s]+)\\s+\\(([^\\s@]+(?:@[^\\s.]+)?)[^)]*\\)\\s+\\((?:[^(]*\\([^)]*\\))?[^)]*\\)\\s+([^\\s]+)\\s+(?:PREEMPT\\s+)?(.+)"

    .line 292
    .local v0, "PROC_VERSION_REGEX":Ljava/lang/String;
    const-string v6, "\\w+\\s+\\w+\\s+([^\\s]+)\\s+\\(([^\\s@]+(?:@[^\\s.]+)?)[^)]*\\)\\s+\\((?:[^(]*\\([^)]*\\))?[^)]*\\)\\s+([^\\s]+)\\s+(?:PREEMPT\\s+)?(.+)"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 293
    .local v3, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 295
    .local v2, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-nez v6, :cond_0

    .line 296
    const-string v6, "VivoVersionInfoManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Regex did not match on /proc/version: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const-string v6, "Unavailable"

    .line 307
    .end local v0    # "PROC_VERSION_REGEX":Ljava/lang/String;
    .end local v2    # "m":Ljava/util/regex/Matcher;
    .end local v3    # "p":Ljava/util/regex/Pattern;
    .end local v4    # "procVersionStr":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    :goto_0
    return-object v6

    .line 276
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v6

    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    throw v6
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 304
    .end local v5    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v1

    .line 305
    .local v1, "e":Ljava/io/IOException;
    const-string v6, "VivoVersionInfoManager"

    const-string v7, "IO Exception when getting kernel version for Device Info screen"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 307
    const-string v6, "Unavailable"

    goto :goto_0

    .line 298
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "PROC_VERSION_REGEX":Ljava/lang/String;
    .restart local v2    # "m":Ljava/util/regex/Matcher;
    .restart local v3    # "p":Ljava/util/regex/Pattern;
    .restart local v4    # "procVersionStr":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :cond_0
    :try_start_3
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v6

    const/4 v7, 0x4

    if-ge v6, v7, :cond_1

    .line 299
    const-string v6, "VivoVersionInfoManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Regex match on /proc/version only returned "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " groups"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const-string v6, "Unavailable"

    goto :goto_0

    .line 302
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v6

    goto :goto_0
.end method

.method private getRunningRam()Ljava/lang/String;
    .locals 12

    .prologue
    .line 312
    const/4 v0, 0x0

    .line 313
    .local v0, "AvailableMemoryStringArray":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 315
    .local v4, "memAvaiable":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    const-string v8, "/proc/meminfo"

    invoke-direct {v3, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 316
    .local v3, "fr":Ljava/io/FileReader;
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v8, 0x1000

    invoke-direct {v1, v3, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 317
    .local v1, "br":Ljava/io/BufferedReader;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 318
    const-string v8, "\\s+"

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 319
    const/4 v8, 0x1

    aget-object v8, v0, v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 320
    .local v6, "totalram":J
    const-string v8, "VivoVersionInfoManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "totalram = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " KB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 322
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    .line 323
    long-to-double v8, v6

    const-wide/high16 v10, 0x4130000000000000L    # 1048576.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v5, v8

    .line 324
    .local v5, "ram":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "GB"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 327
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "fr":Ljava/io/FileReader;
    .end local v5    # "ram":I
    .end local v6    # "totalram":J
    :goto_0
    return-object v8

    .line 325
    :catch_0
    move-exception v2

    .line 326
    .local v2, "e":Ljava/io/IOException;
    const-string v8, "VivoVersionInfoManager"

    const-string v9, "get total running ram exception"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 327
    iget-object v8, p0, Lcom/vivo/settings/VivoVersionInfoManager;->mContext:Landroid/content/Context;

    const v9, 0x7f0b0959

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_0
.end method

.method private getVivoRom()Ljava/lang/String;
    .locals 7

    .prologue
    .line 252
    const-string v0, "unkown"

    .line 253
    .local v0, "UNKNOW":Ljava/lang/String;
    const-string v4, "ro.vivo.os.build.display.id"

    invoke-static {v4, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 254
    .local v1, "rom":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 265
    .end local v1    # "rom":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 257
    .restart local v1    # "rom":Ljava/lang/String;
    :cond_0
    const-string v4, "ro.vivo.os.name"

    invoke-static {v4, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 258
    .local v2, "rom_name":Ljava/lang/String;
    const-string v4, "ro.vivo.os.version"

    invoke-static {v4, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 260
    .local v3, "rom_ver":Ljava/lang/String;
    const-string v4, "VivoVersionInfoManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getVivoRom rom_name:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " rom_ver:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 262
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 265
    :cond_1
    iget-object v4, p0, Lcom/vivo/settings/VivoVersionInfoManager;->mContext:Landroid/content/Context;

    const v5, 0x7f0b000f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private initRes()V
    .locals 18

    .prologue
    .line 93
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/vivo/settings/VivoVersionInfoManager;->mKeys:Ljava/util/ArrayList;

    .line 94
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/vivo/settings/VivoVersionInfoManager;->mTitles:Ljava/util/Map;

    .line 95
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/vivo/settings/VivoVersionInfoManager;->mSummaries:Ljava/util/Map;

    .line 100
    const-string v12, "ro.vivo.product.release.brand"

    const-string v13, "unknow"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, "brand":Ljava/lang/String;
    const-string v12, "ro.vivo.product.release.model"

    const-string v13, "unknow"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 102
    .local v6, "model":Ljava/lang/String;
    const-string v12, "ro.vivo.product.release.name"

    const-string v13, "unknow"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 103
    .local v7, "name":Ljava/lang/String;
    const-string v12, "ro.product.model"

    const-string v13, "unknow"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 104
    .local v10, "productModel":Ljava/lang/String;
    const-string v12, "VivoVersionInfoManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "initRes brand:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " model:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " name:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " Build.MODEL:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " ro.product.model:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const-string v12, "unknow"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    const-string v12, "unknow"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    const-string v12, "unknow"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 109
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vivo/settings/VivoVersionInfoManager;->mSummaries:Ljava/util/Map;

    const-string v13, "device_model"

    invoke-interface {v12, v13, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vivo/settings/VivoVersionInfoManager;->mKeys:Ljava/util/ArrayList;

    const-string v13, "device_model"

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vivo/settings/VivoVersionInfoManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 124
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vivo/settings/VivoVersionInfoManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v4

    .line 125
    .local v4, "imei0":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vivo/settings/VivoVersionInfoManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v5

    .line 127
    .local v5, "imei1":Ljava/lang/String;
    if-eqz v4, :cond_6

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 128
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vivo/settings/VivoVersionInfoManager;->mKeys:Ljava/util/ArrayList;

    const-string v13, "imei"

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vivo/settings/VivoVersionInfoManager;->mSummaries:Ljava/util/Map;

    const-string v13, "imei"

    invoke-interface {v12, v13, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .end local v4    # "imei0":Ljava/lang/String;
    .end local v5    # "imei1":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vivo/settings/VivoVersionInfoManager;->mKeys:Ljava/util/ArrayList;

    const-string v13, "firmware_version"

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    const-string v12, "ro.build.version.security_patch"

    const-string v13, ""

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 146
    .local v8, "patch":Ljava/lang/String;
    const-string v12, ""

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 147
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vivo/settings/VivoVersionInfoManager;->mKeys:Ljava/util/ArrayList;

    const-string v13, "security_patch"

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vivo/settings/VivoVersionInfoManager;->mKeys:Ljava/util/ArrayList;

    const-string v13, "cpu_info"

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    invoke-static {}, Lcom/android/settings/AppFeature;->getROMVersion()D

    move-result-wide v12

    const-wide v14, 0x4003333333333333L    # 2.4

    cmpl-double v12, v12, v14

    if-lez v12, :cond_2

    .line 151
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vivo/settings/VivoVersionInfoManager;->mKeys:Ljava/util/ArrayList;

    const-string v13, "cpu_real_time_data"

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vivo/settings/VivoVersionInfoManager;->mKeys:Ljava/util/ArrayList;

    const-string v13, "running_ram"

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vivo/settings/VivoVersionInfoManager;->mKeys:Ljava/util/ArrayList;

    const-string v13, "vivo_rom"

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vivo/settings/VivoVersionInfoManager;->mKeys:Ljava/util/ArrayList;

    const-string v13, "build_number"

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vivo/settings/VivoVersionInfoManager;->mKeys:Ljava/util/ArrayList;

    const-string v13, "baseband_version"

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vivo/settings/VivoVersionInfoManager;->mKeys:Ljava/util/ArrayList;

    const-string v13, "kernel_version"

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vivo/settings/VivoVersionInfoManager;->mKeys:Ljava/util/ArrayList;

    const-string v13, "build_time"

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vivo/settings/VivoVersionInfoManager;->mTitles:Ljava/util/Map;

    const-string v13, "device_model_name"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vivo/settings/VivoVersionInfoManager;->mContext:Landroid/content/Context;

    const v15, 0x7f0b0871

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vivo/settings/VivoVersionInfoManager;->mTitles:Ljava/util/Map;

    const-string v13, "device_model"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vivo/settings/VivoVersionInfoManager;->mContext:Landroid/content/Context;

    const v15, 0x7f0b0271

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vivo/settings/VivoVersionInfoManager;->mTitles:Ljava/util/Map;

    const-string v13, "firmware_version"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vivo/settings/VivoVersionInfoManager;->mContext:Landroid/content/Context;

    const v15, 0x7f0b0270

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vivo/settings/VivoVersionInfoManager;->mTitles:Ljava/util/Map;

    const-string v13, "security_patch"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vivo/settings/VivoVersionInfoManager;->mContext:Landroid/content/Context;

    const v15, 0x7f0b07a3

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vivo/settings/VivoVersionInfoManager;->mTitles:Ljava/util/Map;

    const-string v13, "cpu_info"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vivo/settings/VivoVersionInfoManager;->mContext:Landroid/content/Context;

    const v15, 0x7f0b07e3

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vivo/settings/VivoVersionInfoManager;->mTitles:Ljava/util/Map;

    const-string v13, "cpu_real_time_data"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vivo/settings/VivoVersionInfoManager;->mContext:Landroid/content/Context;

    const v15, 0x7f0b07e8

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vivo/settings/VivoVersionInfoManager;->mTitles:Ljava/util/Map;

    const-string v13, "running_ram"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vivo/settings/VivoVersionInfoManager;->mContext:Landroid/content/Context;

    const v15, 0x7f0b096e

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vivo/settings/VivoVersionInfoManager;->mTitles:Ljava/util/Map;

    const-string v13, "vivo_rom"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vivo/settings/VivoVersionInfoManager;->mContext:Landroid/content/Context;

    const v15, 0x7f0b0949

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vivo/settings/VivoVersionInfoManager;->mTitles:Ljava/util/Map;

    const-string v13, "build_number"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vivo/settings/VivoVersionInfoManager;->mContext:Landroid/content/Context;

    const v15, 0x7f0b0275

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vivo/settings/VivoVersionInfoManager;->mTitles:Ljava/util/Map;

    const-string v13, "baseband_version"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vivo/settings/VivoVersionInfoManager;->mContext:Landroid/content/Context;

    const v15, 0x7f0b0273

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vivo/settings/VivoVersionInfoManager;->mTitles:Ljava/util/Map;

    const-string v13, "kernel_version"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vivo/settings/VivoVersionInfoManager;->mContext:Landroid/content/Context;

    const v15, 0x7f0b0274

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vivo/settings/VivoVersionInfoManager;->mTitles:Ljava/util/Map;

    const-string v13, "build_time"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vivo/settings/VivoVersionInfoManager;->mContext:Landroid/content/Context;

    const v15, 0x7f0b08b1

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vivo/settings/VivoVersionInfoManager;->mTitles:Ljava/util/Map;

    const-string v13, "imei"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vivo/settings/VivoVersionInfoManager;->mContext:Landroid/content/Context;

    const v15, 0x7f0b027d

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vivo/settings/VivoVersionInfoManager;->mTitles:Ljava/util/Map;

    const-string v13, "imei0"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vivo/settings/VivoVersionInfoManager;->mContext:Landroid/content/Context;

    const v15, 0x7f0b08f1

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vivo/settings/VivoVersionInfoManager;->mTitles:Ljava/util/Map;

    const-string v13, "imei1"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vivo/settings/VivoVersionInfoManager;->mContext:Landroid/content/Context;

    const v15, 0x7f0b08f2

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vivo/settings/VivoVersionInfoManager;->mSummaries:Ljava/util/Map;

    const-string v13, "firmware_version"

    sget-object v14, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    :try_start_0
    new-instance v11, Ljava/text/SimpleDateFormat;

    const-string v12, "yyyy-MM-dd"

    invoke-direct {v11, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 179
    .local v11, "template":Ljava/text/SimpleDateFormat;
    invoke-virtual {v11, v8}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    .line 180
    .local v9, "patchDate":Ljava/util/Date;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    const-string v13, "dMMMMyyyy"

    invoke-static {v12, v13}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 181
    .local v3, "format":Ljava/lang/String;
    invoke-static {v3, v9}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 182
    const-string v12, "1"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/vivo/settings/VivoVersionInfoManager;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "use_thai_calendar"

    invoke-static {v13, v14}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    const-string v12, "ar_EG"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 183
    invoke-virtual {v9}, Ljava/util/Date;->getYear()I

    move-result v12

    add-int/lit16 v12, v12, 0x76c

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9}, Ljava/util/Date;->getYear()I

    move-result v13

    add-int/lit16 v13, v13, 0x76c

    add-int/lit16 v13, v13, 0x21f

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v12, v13}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 185
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vivo/settings/VivoVersionInfoManager;->mSummaries:Ljava/util/Map;

    const-string v13, "security_patch"

    invoke-interface {v12, v13, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .end local v3    # "format":Ljava/lang/String;
    .end local v9    # "patchDate":Ljava/util/Date;
    .end local v11    # "template":Ljava/text/SimpleDateFormat;
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vivo/settings/VivoVersionInfoManager;->mSummaries:Ljava/util/Map;

    const-string v13, "cpu_info"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vivo/settings/VivoVersionInfoManager;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/vivo/settings/VivoUtils;->getCpuInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vivo/settings/VivoVersionInfoManager;->mSummaries:Ljava/util/Map;

    const-string v13, "running_ram"

    invoke-direct/range {p0 .. p0}, Lcom/vivo/settings/VivoVersionInfoManager;->getRunningRam()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vivo/settings/VivoVersionInfoManager;->mSummaries:Ljava/util/Map;

    const-string v13, "vivo_rom"

    invoke-direct/range {p0 .. p0}, Lcom/vivo/settings/VivoVersionInfoManager;->getVivoRom()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vivo/settings/VivoVersionInfoManager;->mSummaries:Ljava/util/Map;

    const-string v13, "build_number"

    invoke-direct/range {p0 .. p0}, Lcom/vivo/settings/VivoVersionInfoManager;->getBuildNumber()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vivo/settings/VivoVersionInfoManager;->mSummaries:Ljava/util/Map;

    const-string v13, "baseband_version"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "\u202d"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "gsm.version.baseband"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/settings/VivoVersionInfoManager;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const v17, 0x7f0b000f

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\u202c"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vivo/settings/VivoVersionInfoManager;->mSummaries:Ljava/util/Map;

    const-string v13, "kernel_version"

    invoke-direct/range {p0 .. p0}, Lcom/vivo/settings/VivoVersionInfoManager;->getFormattedKernelVersion()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vivo/settings/VivoVersionInfoManager;->mSummaries:Ljava/util/Map;

    const-string v13, "build_time"

    invoke-direct/range {p0 .. p0}, Lcom/vivo/settings/VivoVersionInfoManager;->getBuildTime()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    return-void

    .line 110
    .end local v8    # "patch":Ljava/lang/String;
    :cond_4
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 112
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vivo/settings/VivoVersionInfoManager;->mSummaries:Ljava/util/Map;

    const-string v13, "device_model"

    invoke-interface {v12, v13, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 115
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vivo/settings/VivoVersionInfoManager;->mKeys:Ljava/util/ArrayList;

    const-string v13, "device_model_name"

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vivo/settings/VivoVersionInfoManager;->mSummaries:Ljava/util/Map;

    const-string v13, "device_model_name"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vivo/settings/VivoVersionInfoManager;->mSummaries:Ljava/util/Map;

    const-string v13, "device_model"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 132
    .restart local v4    # "imei0":Ljava/lang/String;
    .restart local v5    # "imei1":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vivo/settings/VivoVersionInfoManager;->mKeys:Ljava/util/ArrayList;

    const-string v13, "imei0"

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vivo/settings/VivoVersionInfoManager;->mKeys:Ljava/util/ArrayList;

    const-string v13, "imei1"

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vivo/settings/VivoVersionInfoManager;->mSummaries:Ljava/util/Map;

    const-string v13, "imei0"

    invoke-interface {v12, v13, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vivo/settings/VivoVersionInfoManager;->mSummaries:Ljava/util/Map;

    const-string v13, "imei1"

    invoke-interface {v12, v13, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 139
    .end local v4    # "imei0":Ljava/lang/String;
    .end local v5    # "imei1":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vivo/settings/VivoVersionInfoManager;->mKeys:Ljava/util/ArrayList;

    const-string v13, "imei"

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vivo/settings/VivoVersionInfoManager;->mSummaries:Ljava/util/Map;

    const-string v13, "imei"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vivo/settings/VivoVersionInfoManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v14}, Landroid/telephony/TelephonyManager;->getImei()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 186
    .restart local v8    # "patch":Ljava/lang/String;
    :catch_0
    move-exception v12

    goto/16 :goto_2
.end method

.method public static isDevelopmentOptionNeeded(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 332
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vivo_development_show"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public addVersionInfoPrefs(Landroid/preference/PreferenceCategory;)V
    .locals 9
    .param p1, "preferencecategory"    # Landroid/preference/PreferenceCategory;

    .prologue
    const/4 v8, 0x0

    const v7, 0x7f0400e9

    .line 375
    if-nez p1, :cond_1

    .line 407
    :cond_0
    return-void

    .line 378
    :cond_1
    iget-object v5, p0, Lcom/vivo/settings/VivoVersionInfoManager;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-lt v5, v6, :cond_0

    .line 381
    invoke-virtual {p1}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 382
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/vivo/settings/VivoVersionInfoManager;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 383
    iget-object v5, p0, Lcom/vivo/settings/VivoVersionInfoManager;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 384
    .local v3, "key":Ljava/lang/String;
    const/4 v4, 0x0

    .line 385
    .local v4, "pref":Landroid/preference/Preference;
    const-string v5, "funtouch_logo"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 386
    new-instance v4, Landroid/preference/Preference;

    .end local v4    # "pref":Landroid/preference/Preference;
    iget-object v5, p0, Lcom/vivo/settings/VivoVersionInfoManager;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 387
    .restart local v4    # "pref":Landroid/preference/Preference;
    iget-object v5, p0, Lcom/vivo/settings/VivoVersionInfoManager;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v5, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 388
    .local v0, "funtouchLogo":Landroid/widget/ImageView;
    const v5, 0x7f020038

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 389
    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 405
    .end local v0    # "funtouchLogo":Landroid/widget/ImageView;
    :goto_1
    invoke-virtual {p1, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 382
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 390
    :cond_2
    const-string v5, "cpu_real_time_data"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 391
    new-instance v4, Landroid/preference/PreferenceScreen;

    .end local v4    # "pref":Landroid/preference/Preference;
    iget-object v5, p0, Lcom/vivo/settings/VivoVersionInfoManager;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v8}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 394
    .restart local v4    # "pref":Landroid/preference/Preference;
    iget-object v5, p0, Lcom/vivo/settings/VivoVersionInfoManager;->mTitles:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 395
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 396
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "com.android.settings"

    const-class v6, Lcom/vivo/settings/CPURealDataActivity;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 397
    invoke-virtual {v4, v2}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto :goto_1

    .line 400
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    new-instance v4, Landroid/preference/Preference;

    .end local v4    # "pref":Landroid/preference/Preference;
    iget-object v5, p0, Lcom/vivo/settings/VivoVersionInfoManager;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 401
    .restart local v4    # "pref":Landroid/preference/Preference;
    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 402
    iget-object v5, p0, Lcom/vivo/settings/VivoVersionInfoManager;->mTitles:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 403
    iget-object v5, p0, Lcom/vivo/settings/VivoVersionInfoManager;->mSummaries:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onCpuDetailsInfoClick()V
    .locals 3

    .prologue
    .line 369
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 370
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-class v2, Lcom/vivo/settings/CPURealDataActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 371
    iget-object v1, p0, Lcom/vivo/settings/VivoVersionInfoManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 372
    return-void
.end method

.method public onDevelopmentHideOptionClick()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 336
    iget v0, p0, Lcom/vivo/settings/VivoVersionInfoManager;->mDevHitCountdown:I

    if-lez v0, :cond_4

    .line 337
    iget v0, p0, Lcom/vivo/settings/VivoVersionInfoManager;->mDevHitCountdown:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/vivo/settings/VivoVersionInfoManager;->mDevHitCountdown:I

    .line 338
    iget v0, p0, Lcom/vivo/settings/VivoVersionInfoManager;->mDevHitCountdown:I

    if-nez v0, :cond_2

    .line 339
    iget-object v0, p0, Lcom/vivo/settings/VivoVersionInfoManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "vivo_development_show"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 340
    iget-object v0, p0, Lcom/vivo/settings/VivoVersionInfoManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "show"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 342
    iget-object v0, p0, Lcom/vivo/settings/VivoVersionInfoManager;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/vivo/settings/VivoVersionInfoManager;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/vivo/settings/VivoVersionInfoManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0010

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/VivoVersionInfoManager;->mDevHitToast:Landroid/widget/Toast;

    .line 347
    iget-object v0, p0, Lcom/vivo/settings/VivoVersionInfoManager;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 366
    :cond_1
    :goto_0
    return-void

    .line 348
    :cond_2
    iget v0, p0, Lcom/vivo/settings/VivoVersionInfoManager;->mDevHitCountdown:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/vivo/settings/VivoVersionInfoManager;->mDevHitCountdown:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 349
    iget-object v0, p0, Lcom/vivo/settings/VivoVersionInfoManager;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v0, :cond_3

    .line 350
    iget-object v0, p0, Lcom/vivo/settings/VivoVersionInfoManager;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 352
    :cond_3
    iget-object v0, p0, Lcom/vivo/settings/VivoVersionInfoManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/vivo/settings/VivoVersionInfoManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f0f0000

    iget v3, p0, Lcom/vivo/settings/VivoVersionInfoManager;->mDevHitCountdown:I

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/vivo/settings/VivoVersionInfoManager;->mDevHitCountdown:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/VivoVersionInfoManager;->mDevHitToast:Landroid/widget/Toast;

    .line 356
    iget-object v0, p0, Lcom/vivo/settings/VivoVersionInfoManager;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 359
    :cond_4
    iget-object v0, p0, Lcom/vivo/settings/VivoVersionInfoManager;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v0, :cond_5

    .line 360
    iget-object v0, p0, Lcom/vivo/settings/VivoVersionInfoManager;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 362
    :cond_5
    iget-object v0, p0, Lcom/vivo/settings/VivoVersionInfoManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0011

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/VivoVersionInfoManager;->mDevHitToast:Landroid/widget/Toast;

    .line 364
    iget-object v0, p0, Lcom/vivo/settings/VivoVersionInfoManager;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/vivo/settings/VivoVersionInfoManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/vivo/settings/VivoVersionInfoManager;->isDevelopmentOptionNeeded(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lcom/vivo/settings/VivoVersionInfoManager;->mDevHitCountdown:I

    .line 90
    return-void

    .line 89
    :cond_0
    const/4 v0, 0x7

    goto :goto_0
.end method
