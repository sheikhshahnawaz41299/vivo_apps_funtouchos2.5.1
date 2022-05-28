.class public Lcom/vivo/settings/VivoVersionInfo;
.super Lcom/vivo/settings/VivoListFragment;
.source "VivoVersionInfo.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/settings/VivoVersionInfo$1;,
        Lcom/vivo/settings/VivoVersionInfo$ViewHolder;
    }
.end annotation


# static fields
.field private static final BASEBAND_VERSION:Ljava/lang/String; = "baseband_version"

.field private static final BUILD_NUMBER:Ljava/lang/String; = "build_number"

.field private static final BUILD_TIME:Ljava/lang/String; = "build_time"

.field private static final CPU_INFO:Ljava/lang/String; = "cpu_info"

.field private static final CPU_REAL_TIME_DATA:Ljava/lang/String; = "cpu_real_time_data"

.field private static final DEVICE_MODEL:Ljava/lang/String; = "device_model"

.field private static final DEVICE_MODEL_NAME:Ljava/lang/String; = "device_model_name"

.field private static final FIRMWARE_VERSION:Ljava/lang/String; = "firmware_version"

.field private static final FUNTOUCH_LOGO:Ljava/lang/String; = "funtouch_logo"

.field private static final IMEI:Ljava/lang/String; = "imei"

.field private static final IMEI0:Ljava/lang/String; = "imei0"

.field private static final IMEI1:Ljava/lang/String; = "imei1"

.field private static final KERNEL_VERSION:Ljava/lang/String; = "kernel_version"

.field private static final RUNNING_RAM:Ljava/lang/String; = "running_ram"

.field private static final TAG:Ljava/lang/String; = "VivoVersionInfo"

.field private static final TAPS_TO_BE_A_DEVELOPER:I = 0x7

.field private static final UNKNOWN:Ljava/lang/String; = "unknow"

.field private static final VIVO_ROM:Ljava/lang/String; = "vivo_rom"


# instance fields
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
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/vivo/settings/VivoListFragment;-><init>()V

    .line 498
    return-void
.end method

.method private getBuildNumber()Ljava/lang/String;
    .locals 5

    .prologue
    .line 183
    invoke-static {}, Lcom/android/settings/AppFeature;->isFeatureForNetEntry()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 184
    const-string v2, "ro.build.netaccess.version"

    sget-object v3, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 209
    :cond_0
    :goto_0
    return-object v1

    .line 187
    :cond_1
    invoke-static {}, Lcom/android/settings/AppFeature;->isCMCC()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 188
    const-string v2, "VivoVersionInfo"

    const-string v3, "build_number ---ro.cmcc.test"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const-string v2, "ro.vivo.op.entry.version"

    sget-object v3, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 191
    :cond_2
    const-string v2, "ro.build.version.bbk"

    sget-object v3, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 193
    .local v1, "version":Ljava/lang/String;
    const-string v2, "ro.product.customize.bbk"

    const-string v3, "N"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "customize_bbk":Ljava/lang/String;
    const-string v2, "VivoVersionInfo"

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

    .line 196
    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_0

    .line 197
    const-string v2, "CN-YD"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 198
    const-string v2, "PD1421"

    invoke-static {}, Lcom/android/settings/AppFeature;->getProductName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 199
    const-string v2, "PD1421D"

    const-string v3, "PD1421L"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 201
    :cond_3
    const-string v2, "_"

    const-string v3, "-YD_"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 203
    :cond_4
    const-string v2, "CN-DX"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 204
    const-string v2, "_"

    const-string v3, "-DX_"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 205
    :cond_5
    const-string v2, "CN-YD-A"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 206
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

    .line 161
    const-string v3, "ro.build.date.utc"

    invoke-virtual {p0}, Lcom/vivo/settings/VivoVersionInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b000f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "buildDate":Ljava/lang/String;
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Lcom/vivo/settings/VivoVersionInfo;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "date_format"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 169
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    :try_start_0
    const-string v3, "1"

    invoke-virtual {p0}, Lcom/vivo/settings/VivoVersionInfo;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "use_thai_calendar"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 171
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

    .line 178
    .end local v0    # "buildDate":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 174
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

    .line 177
    :catch_0
    move-exception v2

    .line 178
    .local v2, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private getFormattedKernelVersion()Ljava/lang/String;
    .locals 9

    .prologue
    .line 281
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    const-string v7, "/proc/version"

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x100

    invoke-direct {v5, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    .local v5, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 285
    .local v4, "procVersionStr":Ljava/lang/String;
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 288
    const-string v0, "\\w+\\s+\\w+\\s+([^\\s]+)\\s+\\(([^\\s@]+(?:@[^\\s.]+)?)[^)]*\\)\\s+\\((?:[^(]*\\([^)]*\\))?[^)]*\\)\\s+([^\\s]+)\\s+(?:PREEMPT\\s+)?(.+)"

    .line 298
    .local v0, "PROC_VERSION_REGEX":Ljava/lang/String;
    const-string v6, "\\w+\\s+\\w+\\s+([^\\s]+)\\s+\\(([^\\s@]+(?:@[^\\s.]+)?)[^)]*\\)\\s+\\((?:[^(]*\\([^)]*\\))?[^)]*\\)\\s+([^\\s]+)\\s+(?:PREEMPT\\s+)?(.+)"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 299
    .local v3, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 301
    .local v2, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-nez v6, :cond_0

    .line 302
    const-string v6, "VivoVersionInfo"

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

    .line 303
    const-string v6, "Unavailable"

    .line 316
    .end local v0    # "PROC_VERSION_REGEX":Ljava/lang/String;
    .end local v2    # "m":Ljava/util/regex/Matcher;
    .end local v3    # "p":Ljava/util/regex/Pattern;
    .end local v4    # "procVersionStr":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    :goto_0
    return-object v6

    .line 285
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v6

    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    throw v6
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 311
    .end local v5    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v1

    .line 312
    .local v1, "e":Ljava/io/IOException;
    const-string v6, "VivoVersionInfo"

    const-string v7, "IO Exception when getting kernel version for Device Info screen"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 316
    const-string v6, "Unavailable"

    goto :goto_0

    .line 304
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

    .line 305
    const-string v6, "VivoVersionInfo"

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

    .line 307
    const-string v6, "Unavailable"

    goto :goto_0

    .line 309
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
    .line 232
    const/4 v0, 0x0

    .line 233
    .local v0, "AvailableMemoryStringArray":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 235
    .local v4, "memAvaiable":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    const-string v8, "/proc/meminfo"

    invoke-direct {v3, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 236
    .local v3, "fr":Ljava/io/FileReader;
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v8, 0x1000

    invoke-direct {v1, v3, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 237
    .local v1, "br":Ljava/io/BufferedReader;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 238
    const-string v8, "\\s+"

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 239
    const/4 v8, 0x1

    aget-object v8, v0, v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 240
    .local v6, "totalram":J
    const-string v8, "VivoVersionInfo"

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

    .line 241
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 242
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    .line 243
    long-to-double v8, v6

    const-wide/high16 v10, 0x4130000000000000L    # 1048576.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v5, v8

    .line 244
    .local v5, "ram":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "G"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 247
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "fr":Ljava/io/FileReader;
    .end local v5    # "ram":I
    .end local v6    # "totalram":J
    :goto_0
    return-object v8

    .line 245
    :catch_0
    move-exception v2

    .line 246
    .local v2, "e":Ljava/io/IOException;
    const-string v8, "VivoVersionInfo"

    const-string v9, "get total running ram exception"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 247
    const v8, 0x7f0b0959

    invoke-virtual {p0, v8}, Lcom/vivo/settings/VivoVersionInfo;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_0
.end method

.method private getVivoRom()Ljava/lang/String;
    .locals 7

    .prologue
    .line 215
    const-string v0, "unkown"

    .line 216
    .local v0, "UNKNOW":Ljava/lang/String;
    const-string v4, "ro.vivo.os.build.display.id"

    invoke-static {v4, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 217
    .local v1, "rom":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 228
    .end local v1    # "rom":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 220
    .restart local v1    # "rom":Ljava/lang/String;
    :cond_0
    const-string v4, "ro.vivo.os.name"

    invoke-static {v4, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 221
    .local v2, "rom_name":Ljava/lang/String;
    const-string v4, "ro.vivo.os.version"

    invoke-static {v4, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 223
    .local v3, "rom_ver":Ljava/lang/String;
    const-string v4, "VivoVersionInfo"

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

    .line 224
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 225
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

    .line 228
    :cond_1
    const v4, 0x7f0b000f

    invoke-virtual {p0, v4}, Lcom/vivo/settings/VivoVersionInfo;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private initRes()V
    .locals 10

    .prologue
    .line 72
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/vivo/settings/VivoVersionInfo;->mKeys:Ljava/util/ArrayList;

    .line 73
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/vivo/settings/VivoVersionInfo;->mTitles:Ljava/util/Map;

    .line 74
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/vivo/settings/VivoVersionInfo;->mSummaries:Ljava/util/Map;

    .line 77
    iget-object v6, p0, Lcom/vivo/settings/VivoVersionInfo;->mKeys:Ljava/util/ArrayList;

    const-string v7, "funtouch_logo"

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    const-string v6, "ro.vivo.product.release.brand"

    const-string v7, "unknow"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "brand":Ljava/lang/String;
    const-string v6, "ro.vivo.product.release.model"

    const-string v7, "unknow"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, "model":Ljava/lang/String;
    const-string v6, "ro.vivo.product.release.name"

    const-string v7, "unknow"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 82
    .local v4, "name":Ljava/lang/String;
    const-string v6, "ro.product.model"

    const-string v7, "unknow"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 83
    .local v5, "productModel":Ljava/lang/String;
    const-string v6, "VivoVersionInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initRes brand:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " model:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " name:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Build.MODEL:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ro.product.model:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const-string v6, "unknow"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "unknow"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "unknow"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 86
    :cond_0
    iget-object v6, p0, Lcom/vivo/settings/VivoVersionInfo;->mSummaries:Ljava/util/Map;

    const-string v7, "device_model"

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :goto_0
    iget-object v6, p0, Lcom/vivo/settings/VivoVersionInfo;->mKeys:Ljava/util/ArrayList;

    const-string v7, "device_model"

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v6, p0, Lcom/vivo/settings/VivoVersionInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 99
    iget-object v6, p0, Lcom/vivo/settings/VivoVersionInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "imei0":Ljava/lang/String;
    iget-object v6, p0, Lcom/vivo/settings/VivoVersionInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, "imei1":Ljava/lang/String;
    if-eqz v1, :cond_5

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 103
    iget-object v6, p0, Lcom/vivo/settings/VivoVersionInfo;->mKeys:Ljava/util/ArrayList;

    const-string v7, "imei"

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v6, p0, Lcom/vivo/settings/VivoVersionInfo;->mSummaries:Ljava/util/Map;

    const-string v7, "imei"

    invoke-interface {v6, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .end local v1    # "imei0":Ljava/lang/String;
    .end local v2    # "imei1":Ljava/lang/String;
    :goto_1
    iget-object v6, p0, Lcom/vivo/settings/VivoVersionInfo;->mKeys:Ljava/util/ArrayList;

    const-string v7, "firmware_version"

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v6, p0, Lcom/vivo/settings/VivoVersionInfo;->mKeys:Ljava/util/ArrayList;

    const-string v7, "cpu_info"

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    invoke-static {}, Lcom/android/settings/AppFeature;->getROMVersion()D

    move-result-wide v6

    const-wide v8, 0x4003333333333333L    # 2.4

    cmpl-double v6, v6, v8

    if-lez v6, :cond_1

    .line 122
    iget-object v6, p0, Lcom/vivo/settings/VivoVersionInfo;->mKeys:Ljava/util/ArrayList;

    const-string v7, "cpu_real_time_data"

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_1
    invoke-static {}, Lcom/android/settings/AppFeature;->isEmulated()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 125
    iget-object v6, p0, Lcom/vivo/settings/VivoVersionInfo;->mKeys:Ljava/util/ArrayList;

    const-string v7, "running_ram"

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_2
    iget-object v6, p0, Lcom/vivo/settings/VivoVersionInfo;->mKeys:Ljava/util/ArrayList;

    const-string v7, "vivo_rom"

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v6, p0, Lcom/vivo/settings/VivoVersionInfo;->mKeys:Ljava/util/ArrayList;

    const-string v7, "build_number"

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v6, p0, Lcom/vivo/settings/VivoVersionInfo;->mKeys:Ljava/util/ArrayList;

    const-string v7, "baseband_version"

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v6, p0, Lcom/vivo/settings/VivoVersionInfo;->mKeys:Ljava/util/ArrayList;

    const-string v7, "kernel_version"

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v6, p0, Lcom/vivo/settings/VivoVersionInfo;->mKeys:Ljava/util/ArrayList;

    const-string v7, "build_time"

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object v6, p0, Lcom/vivo/settings/VivoVersionInfo;->mTitles:Ljava/util/Map;

    const-string v7, "device_model_name"

    const v8, 0x7f0b0871

    invoke-virtual {p0, v8}, Lcom/vivo/settings/VivoVersionInfo;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v6, p0, Lcom/vivo/settings/VivoVersionInfo;->mTitles:Ljava/util/Map;

    const-string v7, "device_model"

    const v8, 0x7f0b0271

    invoke-virtual {p0, v8}, Lcom/vivo/settings/VivoVersionInfo;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v6, p0, Lcom/vivo/settings/VivoVersionInfo;->mTitles:Ljava/util/Map;

    const-string v7, "firmware_version"

    const v8, 0x7f0b0270

    invoke-virtual {p0, v8}, Lcom/vivo/settings/VivoVersionInfo;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v6, p0, Lcom/vivo/settings/VivoVersionInfo;->mTitles:Ljava/util/Map;

    const-string v7, "cpu_info"

    const v8, 0x7f0b07e3

    invoke-virtual {p0, v8}, Lcom/vivo/settings/VivoVersionInfo;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v6, p0, Lcom/vivo/settings/VivoVersionInfo;->mTitles:Ljava/util/Map;

    const-string v7, "cpu_real_time_data"

    const v8, 0x7f0b07e8

    invoke-virtual {p0, v8}, Lcom/vivo/settings/VivoVersionInfo;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v6, p0, Lcom/vivo/settings/VivoVersionInfo;->mTitles:Ljava/util/Map;

    const-string v7, "running_ram"

    const v8, 0x7f0b096e

    invoke-virtual {p0, v8}, Lcom/vivo/settings/VivoVersionInfo;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v6, p0, Lcom/vivo/settings/VivoVersionInfo;->mTitles:Ljava/util/Map;

    const-string v7, "vivo_rom"

    const v8, 0x7f0b0949

    invoke-virtual {p0, v8}, Lcom/vivo/settings/VivoVersionInfo;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v6, p0, Lcom/vivo/settings/VivoVersionInfo;->mTitles:Ljava/util/Map;

    const-string v7, "build_number"

    const v8, 0x7f0b0275

    invoke-virtual {p0, v8}, Lcom/vivo/settings/VivoVersionInfo;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v6, p0, Lcom/vivo/settings/VivoVersionInfo;->mTitles:Ljava/util/Map;

    const-string v7, "baseband_version"

    const v8, 0x7f0b0273

    invoke-virtual {p0, v8}, Lcom/vivo/settings/VivoVersionInfo;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v6, p0, Lcom/vivo/settings/VivoVersionInfo;->mTitles:Ljava/util/Map;

    const-string v7, "kernel_version"

    const v8, 0x7f0b0274

    invoke-virtual {p0, v8}, Lcom/vivo/settings/VivoVersionInfo;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v6, p0, Lcom/vivo/settings/VivoVersionInfo;->mTitles:Ljava/util/Map;

    const-string v7, "build_time"

    const v8, 0x7f0b08b1

    invoke-virtual {p0, v8}, Lcom/vivo/settings/VivoVersionInfo;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v6, p0, Lcom/vivo/settings/VivoVersionInfo;->mTitles:Ljava/util/Map;

    const-string v7, "imei"

    const v8, 0x7f0b027d

    invoke-virtual {p0, v8}, Lcom/vivo/settings/VivoVersionInfo;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v6, p0, Lcom/vivo/settings/VivoVersionInfo;->mTitles:Ljava/util/Map;

    const-string v7, "imei0"

    const v8, 0x7f0b08f1

    invoke-virtual {p0, v8}, Lcom/vivo/settings/VivoVersionInfo;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v6, p0, Lcom/vivo/settings/VivoVersionInfo;->mTitles:Ljava/util/Map;

    const-string v7, "imei1"

    const v8, 0x7f0b08f2

    invoke-virtual {p0, v8}, Lcom/vivo/settings/VivoVersionInfo;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v6, p0, Lcom/vivo/settings/VivoVersionInfo;->mSummaries:Ljava/util/Map;

    const-string v7, "firmware_version"

    sget-object v8, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v6, p0, Lcom/vivo/settings/VivoVersionInfo;->mSummaries:Ljava/util/Map;

    const-string v7, "cpu_info"

    invoke-virtual {p0}, Lcom/vivo/settings/VivoVersionInfo;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/vivo/settings/VivoUtils;->getCpuInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v6, p0, Lcom/vivo/settings/VivoVersionInfo;->mSummaries:Ljava/util/Map;

    const-string v7, "running_ram"

    invoke-direct {p0}, Lcom/vivo/settings/VivoVersionInfo;->getRunningRam()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v6, p0, Lcom/vivo/settings/VivoVersionInfo;->mSummaries:Ljava/util/Map;

    const-string v7, "vivo_rom"

    invoke-direct {p0}, Lcom/vivo/settings/VivoVersionInfo;->getVivoRom()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v6, p0, Lcom/vivo/settings/VivoVersionInfo;->mSummaries:Ljava/util/Map;

    const-string v7, "build_number"

    invoke-direct {p0}, Lcom/vivo/settings/VivoVersionInfo;->getBuildNumber()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v6, p0, Lcom/vivo/settings/VivoVersionInfo;->mSummaries:Ljava/util/Map;

    const-string v7, "baseband_version"

    const-string v8, "gsm.version.baseband"

    const v9, 0x7f0b000f

    invoke-virtual {p0, v9}, Lcom/vivo/settings/VivoVersionInfo;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v6, p0, Lcom/vivo/settings/VivoVersionInfo;->mSummaries:Ljava/util/Map;

    const-string v7, "kernel_version"

    invoke-direct {p0}, Lcom/vivo/settings/VivoVersionInfo;->getFormattedKernelVersion()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object v6, p0, Lcom/vivo/settings/VivoVersionInfo;->mSummaries:Ljava/util/Map;

    const-string v7, "build_time"

    invoke-direct {p0}, Lcom/vivo/settings/VivoVersionInfo;->getBuildTime()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    return-void

    .line 87
    :cond_3
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 88
    iget-object v6, p0, Lcom/vivo/settings/VivoVersionInfo;->mSummaries:Ljava/util/Map;

    const-string v7, "device_model"

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 90
    :cond_4
    iget-object v6, p0, Lcom/vivo/settings/VivoVersionInfo;->mKeys:Ljava/util/ArrayList;

    const-string v7, "device_model_name"

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v6, p0, Lcom/vivo/settings/VivoVersionInfo;->mSummaries:Ljava/util/Map;

    const-string v7, "device_model_name"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v6, p0, Lcom/vivo/settings/VivoVersionInfo;->mSummaries:Ljava/util/Map;

    const-string v7, "device_model"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 107
    .restart local v1    # "imei0":Ljava/lang/String;
    .restart local v2    # "imei1":Ljava/lang/String;
    :cond_5
    iget-object v6, p0, Lcom/vivo/settings/VivoVersionInfo;->mKeys:Ljava/util/ArrayList;

    const-string v7, "imei0"

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v6, p0, Lcom/vivo/settings/VivoVersionInfo;->mKeys:Ljava/util/ArrayList;

    const-string v7, "imei1"

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v6, p0, Lcom/vivo/settings/VivoVersionInfo;->mSummaries:Ljava/util/Map;

    const-string v7, "imei0"

    invoke-interface {v6, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v6, p0, Lcom/vivo/settings/VivoVersionInfo;->mSummaries:Ljava/util/Map;

    const-string v7, "imei1"

    invoke-interface {v6, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 114
    .end local v1    # "imei0":Ljava/lang/String;
    .end local v2    # "imei1":Ljava/lang/String;
    :cond_6
    iget-object v6, p0, Lcom/vivo/settings/VivoVersionInfo;->mKeys:Ljava/util/ArrayList;

    const-string v7, "imei"

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v6, p0, Lcom/vivo/settings/VivoVersionInfo;->mSummaries:Ljava/util/Map;

    const-string v7, "imei"

    iget-object v8, p0, Lcom/vivo/settings/VivoVersionInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getImei()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1
.end method

.method public static isDevelopmentOptionNeeded(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 321
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

.method private onCpuDetailsInfoClick()V
    .locals 3

    .prologue
    .line 505
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 506
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-class v2, Lcom/vivo/settings/CPURealDataActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 507
    invoke-virtual {p0, v0}, Lcom/vivo/settings/VivoVersionInfo;->startActivity(Landroid/content/Intent;)V

    .line 509
    return-void
.end method

.method private onDevelopmentHideOptionClick()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 325
    iget v0, p0, Lcom/vivo/settings/VivoVersionInfo;->mDevHitCountdown:I

    if-lez v0, :cond_4

    .line 326
    iget v0, p0, Lcom/vivo/settings/VivoVersionInfo;->mDevHitCountdown:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/vivo/settings/VivoVersionInfo;->mDevHitCountdown:I

    .line 327
    iget v0, p0, Lcom/vivo/settings/VivoVersionInfo;->mDevHitCountdown:I

    if-nez v0, :cond_2

    .line 328
    invoke-virtual {p0}, Lcom/vivo/settings/VivoVersionInfo;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "vivo_development_show"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 329
    invoke-virtual {p0}, Lcom/vivo/settings/VivoVersionInfo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "show"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 331
    iget-object v0, p0, Lcom/vivo/settings/VivoVersionInfo;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/vivo/settings/VivoVersionInfo;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 334
    :cond_0
    invoke-virtual {p0}, Lcom/vivo/settings/VivoVersionInfo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b0010

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/VivoVersionInfo;->mDevHitToast:Landroid/widget/Toast;

    .line 336
    iget-object v0, p0, Lcom/vivo/settings/VivoVersionInfo;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 355
    :cond_1
    :goto_0
    return-void

    .line 337
    :cond_2
    iget v0, p0, Lcom/vivo/settings/VivoVersionInfo;->mDevHitCountdown:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/vivo/settings/VivoVersionInfo;->mDevHitCountdown:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 338
    iget-object v0, p0, Lcom/vivo/settings/VivoVersionInfo;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v0, :cond_3

    .line 339
    iget-object v0, p0, Lcom/vivo/settings/VivoVersionInfo;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 341
    :cond_3
    invoke-virtual {p0}, Lcom/vivo/settings/VivoVersionInfo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vivo/settings/VivoVersionInfo;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f0f0000

    iget v3, p0, Lcom/vivo/settings/VivoVersionInfo;->mDevHitCountdown:I

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/vivo/settings/VivoVersionInfo;->mDevHitCountdown:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/VivoVersionInfo;->mDevHitToast:Landroid/widget/Toast;

    .line 345
    iget-object v0, p0, Lcom/vivo/settings/VivoVersionInfo;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 348
    :cond_4
    iget-object v0, p0, Lcom/vivo/settings/VivoVersionInfo;->mDevHitToast:Landroid/widget/Toast;

    if-eqz v0, :cond_5

    .line 349
    iget-object v0, p0, Lcom/vivo/settings/VivoVersionInfo;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 351
    :cond_5
    invoke-virtual {p0}, Lcom/vivo/settings/VivoVersionInfo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b0011

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/VivoVersionInfo;->mDevHitToast:Landroid/widget/Toast;

    .line 353
    iget-object v0, p0, Lcom/vivo/settings/VivoVersionInfo;->mDevHitToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 475
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/vivo/settings/VivoVersionInfo;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 374
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 379
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 459
    if-nez p1, :cond_0

    .line 460
    const/4 v0, 0x0

    .line 464
    :goto_0
    return v0

    .line 461
    :cond_0
    invoke-virtual {p0}, Lcom/vivo/settings/VivoVersionInfo;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    .line 462
    const/4 v0, 0x2

    goto :goto_0

    .line 464
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 394
    invoke-virtual {p0, p1}, Lcom/vivo/settings/VivoVersionInfo;->getItemViewType(I)I

    move-result v4

    if-nez v4, :cond_1

    .line 396
    if-eqz p2, :cond_0

    move-object v2, p2

    .line 397
    check-cast v2, Landroid/widget/ImageView;

    .line 401
    .local v2, "imageView":Landroid/widget/ImageView;
    :goto_0
    const v4, 0x7f020038

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 454
    .end local v2    # "imageView":Landroid/widget/ImageView;
    :goto_1
    return-object v2

    .line 399
    :cond_0
    iget-object v4, p0, Lcom/vivo/settings/VivoVersionInfo;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0400e9

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .restart local v2    # "imageView":Landroid/widget/ImageView;
    goto :goto_0

    .line 403
    .end local v2    # "imageView":Landroid/widget/ImageView;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/vivo/settings/VivoVersionInfo;->getItemViewType(I)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 404
    if-eqz p2, :cond_2

    move-object v2, p2

    .line 405
    goto :goto_1

    .line 412
    :cond_2
    new-instance v3, Landroid/view/View;

    invoke-virtual {p0}, Lcom/vivo/settings/VivoVersionInfo;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 413
    .local v3, "view":Landroid/view/View;
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    invoke-virtual {p0}, Lcom/vivo/settings/VivoVersionInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x30c0001

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 415
    invoke-virtual {v3, v8}, Landroid/view/View;->setEnabled(Z)V

    move-object v2, v3

    .line 416
    goto :goto_1

    .line 419
    .end local v3    # "view":Landroid/view/View;
    :cond_3
    if-nez p2, :cond_7

    .line 420
    iget-object v4, p0, Lcom/vivo/settings/VivoVersionInfo;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0400ea

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 421
    new-instance v1, Lcom/vivo/settings/VivoVersionInfo$ViewHolder;

    invoke-direct {v1, v6}, Lcom/vivo/settings/VivoVersionInfo$ViewHolder;-><init>(Lcom/vivo/settings/VivoVersionInfo$1;)V

    .line 422
    .local v1, "holder":Lcom/vivo/settings/VivoVersionInfo$ViewHolder;
    const v4, 0x1020016

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/vivo/settings/VivoVersionInfo$ViewHolder;->title:Landroid/widget/TextView;

    .line 424
    const v4, 0x1020010

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/vivo/settings/VivoVersionInfo$ViewHolder;->summary:Landroid/widget/TextView;

    .line 425
    const v4, 0x7f0e0009

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v1, Lcom/vivo/settings/VivoVersionInfo$ViewHolder;->divider:Landroid/view/View;

    .line 426
    const v4, 0x1020006

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 427
    .local v0, "btnArrow":Landroid/view/View;
    if-eqz v0, :cond_4

    .line 428
    const-string v4, "cpu_real_time_data"

    iget-object v5, p0, Lcom/vivo/settings/VivoVersionInfo;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 429
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 438
    :cond_4
    :goto_2
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 442
    .end local v0    # "btnArrow":Landroid/view/View;
    :goto_3
    iget-object v5, v1, Lcom/vivo/settings/VivoVersionInfo$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/vivo/settings/VivoVersionInfo;->mTitles:Ljava/util/Map;

    iget-object v6, p0, Lcom/vivo/settings/VivoVersionInfo;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 443
    const-string v4, "cpu_real_time_data"

    iget-object v5, p0, Lcom/vivo/settings/VivoVersionInfo;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 444
    iget-object v4, v1, Lcom/vivo/settings/VivoVersionInfo$ViewHolder;->summary:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 449
    :goto_4
    invoke-virtual {p0}, Lcom/vivo/settings/VivoVersionInfo;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    if-ne p1, v4, :cond_9

    .line 450
    iget-object v4, v1, Lcom/vivo/settings/VivoVersionInfo$ViewHolder;->divider:Landroid/view/View;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    :goto_5
    move-object v2, p2

    .line 454
    goto/16 :goto_1

    .line 435
    .restart local v0    # "btnArrow":Landroid/view/View;
    :cond_6
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 440
    .end local v0    # "btnArrow":Landroid/view/View;
    .end local v1    # "holder":Lcom/vivo/settings/VivoVersionInfo$ViewHolder;
    :cond_7
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vivo/settings/VivoVersionInfo$ViewHolder;

    .restart local v1    # "holder":Lcom/vivo/settings/VivoVersionInfo$ViewHolder;
    goto :goto_3

    .line 446
    :cond_8
    iget-object v5, v1, Lcom/vivo/settings/VivoVersionInfo$ViewHolder;->summary:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/vivo/settings/VivoVersionInfo;->mSummaries:Ljava/util/Map;

    iget-object v6, p0, Lcom/vivo/settings/VivoVersionInfo;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 451
    :cond_9
    const/4 v4, 0x1

    if-le p1, v4, :cond_5

    invoke-virtual {p0}, Lcom/vivo/settings/VivoVersionInfo;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    if-ge p1, v4, :cond_5

    .line 452
    iget-object v4, v1, Lcom/vivo/settings/VivoVersionInfo$ViewHolder;->divider:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 469
    const/4 v0, 0x3

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 384
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 485
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 480
    if-lez p1, :cond_0

    invoke-virtual {p0}, Lcom/vivo/settings/VivoVersionInfo;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected needFixTopBottom()Z
    .locals 1

    .prologue
    .line 389
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 256
    invoke-super {p0, p1}, Lcom/vivo/settings/VivoListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 257
    const-string v0, "VivoVersionInfo"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-virtual {p0}, Lcom/vivo/settings/VivoVersionInfo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/VivoVersionInfo;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 259
    invoke-virtual {p0}, Lcom/vivo/settings/VivoVersionInfo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/VivoVersionInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 260
    invoke-direct {p0}, Lcom/vivo/settings/VivoVersionInfo;->initRes()V

    .line 261
    invoke-virtual {p0, p0}, Lcom/vivo/settings/VivoVersionInfo;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 262
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 359
    const-string v0, "build_number"

    iget-object v1, p0, Lcom/vivo/settings/VivoVersionInfo;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    invoke-direct {p0}, Lcom/vivo/settings/VivoVersionInfo;->onDevelopmentHideOptionClick()V

    .line 362
    :cond_0
    const-string v0, "cpu_real_time_data"

    iget-object v1, p0, Lcom/vivo/settings/VivoVersionInfo;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 363
    invoke-direct {p0}, Lcom/vivo/settings/VivoVersionInfo;->onCpuDetailsInfoClick()V

    .line 365
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 266
    invoke-super {p0}, Lcom/vivo/settings/VivoListFragment;->onResume()V

    .line 267
    invoke-virtual {p0}, Lcom/vivo/settings/VivoVersionInfo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b0939

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 268
    invoke-virtual {p0}, Lcom/vivo/settings/VivoVersionInfo;->showBBKBackButton()V

    .line 269
    invoke-virtual {p0}, Lcom/vivo/settings/VivoVersionInfo;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/settings/VivoVersionInfo;->isDevelopmentOptionNeeded(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lcom/vivo/settings/VivoVersionInfo;->mDevHitCountdown:I

    .line 270
    return-void

    .line 269
    :cond_0
    const/4 v0, 0x7

    goto :goto_0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 496
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 491
    return-void
.end method
