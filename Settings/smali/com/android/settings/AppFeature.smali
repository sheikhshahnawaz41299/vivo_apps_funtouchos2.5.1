.class public Lcom/android/settings/AppFeature;
.super Landroid/app/Application;
.source "AppFeature.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/AppFeature$SyncStatusCallBack;
    }
.end annotation


# static fields
.field public static final ACTION_FINGER_PRINT:Ljava/lang/String; = "android.intent.vivo.fingerprint"

.field private static CPU_INFO_ID:I = 0x0

.field private static FEATURE_BBKEM:Z = false

.field private static FEATURE_BLACK_UI:Z = false

.field private static FEATURE_CMCC:Z = false

.field private static FEATURE_CTCC:Z = false

.field private static FEATURE_CTS:Z = false

.field private static FEATURE_DEFAULT_TIME:Ljava/lang/String; = null

.field private static FEATURE_EMULATED:Z = false

.field private static FEATURE_FAST_CHARGE:Z = false

.field private static FEATURE_FOR_NET:Z = false

.field private static FEATURE_GLOVE:Z = false

.field private static FEATURE_HIFI_GLOBAL:Z = false

.field private static FEATURE_HOLSTER:Z = false

.field private static FEATURE_IS_SUPPORT_ROAMING:Z = false

.field private static FEATURE_KEY_LIGHT:Z = false

.field private static FEATURE_KTV:Z = false

.field private static FEATURE_NEED_RNIDS_DIAG:Z = false

.field private static FEATURE_NETWORK_FULL:Z = false

.field private static FEATURE_NIGHT_MODE:Z = false

.field private static FEATURE_NOTIFICATION_LIGHT:I = 0x0

.field private static FEATURE_NUMERIC_BATTERY:Z = false

.field private static FEATURE_ONE_HAND:Z = false

.field private static FEATURE_OTG:Z = false

.field private static FEATURE_PANEL_TYPE:I = 0x0

.field private static FEATURE_ROM_VERSION:D = 0.0

.field private static FEATURE_SCREEN_SIZE:F = 0.0f

.field private static FEATURE_SPEAKER_BOOST:Z = false

.field private static FEATURE_UI_STYLE:I = 0x0

.field private static FEATURE_UNICOM:Z = false

.field private static FEATURE_WFD:Z = false

.field private static FINGER_PROJECT:Z = false

.field private static IS_MTK:Z = false

.field private static IS_QCOM:Z = false

.field private static PIXEL_PER_DIP:F = 0.0f

.field private static PLATFORM_NAME:Ljava/lang/String; = null

.field public static SECURE_CONFIG_SUPPORT:Z = false

.field private static final TAG:Ljava/lang/String; = "Sttings.AppFeature"

.field private static mApplication:Landroid/app/Application;

.field private static mNeedCollectData:Z

.field private static mOpEntry:Ljava/lang/String;

.field private static mProductName:Ljava/lang/String;

.field private static mStorageManagerWrapper:Lcom/vivo/settings/StorageManagerWrapper;

.field private static mVivoCollectData:Lcom/vivo/analysis/VivoCollectData;


# instance fields
.field private mCallback:Lcom/android/settings/AppFeature$SyncStatusCallBack;

.field private final mHandler:Landroid/os/Handler;

.field private mSyncObserver:Landroid/content/SyncStatusObserver;

.field private refWatcher:Lcom/squareup/leakcanary/RefWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 43
    sput-boolean v2, Lcom/android/settings/AppFeature;->FEATURE_CMCC:Z

    .line 44
    sput-boolean v2, Lcom/android/settings/AppFeature;->FEATURE_UNICOM:Z

    .line 45
    sput-boolean v2, Lcom/android/settings/AppFeature;->FEATURE_CTCC:Z

    .line 46
    sput-boolean v2, Lcom/android/settings/AppFeature;->FEATURE_FOR_NET:Z

    .line 47
    const-string v0, "1325433600"

    sput-object v0, Lcom/android/settings/AppFeature;->FEATURE_DEFAULT_TIME:Ljava/lang/String;

    .line 48
    sput-boolean v2, Lcom/android/settings/AppFeature;->FEATURE_KEY_LIGHT:Z

    .line 49
    sput v2, Lcom/android/settings/AppFeature;->FEATURE_NOTIFICATION_LIGHT:I

    .line 50
    sput-boolean v2, Lcom/android/settings/AppFeature;->FEATURE_NUMERIC_BATTERY:Z

    .line 51
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/AppFeature;->FEATURE_WFD:Z

    .line 52
    sput-boolean v2, Lcom/android/settings/AppFeature;->FEATURE_OTG:Z

    .line 53
    sput-boolean v2, Lcom/android/settings/AppFeature;->FEATURE_HIFI_GLOBAL:Z

    .line 54
    const/4 v0, 0x2

    sput v0, Lcom/android/settings/AppFeature;->FEATURE_UI_STYLE:I

    .line 55
    const/4 v0, -0x1

    sput v0, Lcom/android/settings/AppFeature;->CPU_INFO_ID:I

    .line 56
    const-string v0, "unknown"

    sput-object v0, Lcom/android/settings/AppFeature;->PLATFORM_NAME:Ljava/lang/String;

    .line 57
    sput-boolean v2, Lcom/android/settings/AppFeature;->FINGER_PROJECT:Z

    .line 58
    sput-boolean v2, Lcom/android/settings/AppFeature;->FEATURE_BLACK_UI:Z

    .line 59
    sput v2, Lcom/android/settings/AppFeature;->FEATURE_PANEL_TYPE:I

    .line 60
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    sput-wide v0, Lcom/android/settings/AppFeature;->FEATURE_ROM_VERSION:D

    .line 61
    sput-boolean v2, Lcom/android/settings/AppFeature;->FEATURE_CTS:Z

    .line 62
    sput-boolean v2, Lcom/android/settings/AppFeature;->FEATURE_SPEAKER_BOOST:Z

    .line 63
    sput-boolean v2, Lcom/android/settings/AppFeature;->FEATURE_KTV:Z

    .line 64
    sput-boolean v2, Lcom/android/settings/AppFeature;->FEATURE_EMULATED:Z

    .line 65
    sput-boolean v2, Lcom/android/settings/AppFeature;->FEATURE_IS_SUPPORT_ROAMING:Z

    .line 66
    sput-boolean v2, Lcom/android/settings/AppFeature;->FEATURE_GLOVE:Z

    .line 67
    sput-boolean v2, Lcom/android/settings/AppFeature;->FEATURE_ONE_HAND:Z

    .line 68
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/android/settings/AppFeature;->PIXEL_PER_DIP:F

    .line 69
    const/4 v0, 0x0

    sput v0, Lcom/android/settings/AppFeature;->FEATURE_SCREEN_SIZE:F

    .line 70
    sput-boolean v2, Lcom/android/settings/AppFeature;->FEATURE_BBKEM:Z

    .line 71
    sput-boolean v2, Lcom/android/settings/AppFeature;->FEATURE_HOLSTER:Z

    .line 72
    sput-boolean v2, Lcom/android/settings/AppFeature;->FEATURE_FAST_CHARGE:Z

    .line 73
    sput-boolean v2, Lcom/android/settings/AppFeature;->FEATURE_NETWORK_FULL:Z

    .line 74
    sput-boolean v2, Lcom/android/settings/AppFeature;->IS_MTK:Z

    .line 75
    sput-boolean v2, Lcom/android/settings/AppFeature;->IS_QCOM:Z

    .line 76
    sput-boolean v2, Lcom/android/settings/AppFeature;->FEATURE_NEED_RNIDS_DIAG:Z

    .line 77
    sput-boolean v2, Lcom/android/settings/AppFeature;->FEATURE_NIGHT_MODE:Z

    .line 78
    sput-boolean v2, Lcom/android/settings/AppFeature;->SECURE_CONFIG_SUPPORT:Z

    .line 80
    sput-object v3, Lcom/android/settings/AppFeature;->mStorageManagerWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    .line 84
    sput-object v3, Lcom/android/settings/AppFeature;->mVivoCollectData:Lcom/vivo/analysis/VivoCollectData;

    .line 85
    sput-boolean v2, Lcom/android/settings/AppFeature;->mNeedCollectData:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 87
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/AppFeature;->mHandler:Landroid/os/Handler;

    .line 88
    sget-object v0, Lcom/squareup/leakcanary/RefWatcher;->DISABLED:Lcom/squareup/leakcanary/RefWatcher;

    iput-object v0, p0, Lcom/android/settings/AppFeature;->refWatcher:Lcom/squareup/leakcanary/RefWatcher;

    .line 91
    new-instance v0, Lcom/android/settings/AppFeature$1;

    invoke-direct {v0, p0}, Lcom/android/settings/AppFeature$1;-><init>(Lcom/android/settings/AppFeature;)V

    iput-object v0, p0, Lcom/android/settings/AppFeature;->mSyncObserver:Landroid/content/SyncStatusObserver;

    .line 115
    return-void
.end method

.method public static IsExport()Z
    .locals 2

    .prologue
    .line 584
    const-string v0, "ro.vivo.product.overseas"

    const-string v1, "no"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "no"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 585
    const/4 v0, 0x0

    .line 587
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/AppFeature;)Lcom/android/settings/AppFeature$SyncStatusCallBack;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/AppFeature;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/AppFeature;->mCallback:Lcom/android/settings/AppFeature$SyncStatusCallBack;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/AppFeature;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/AppFeature;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/AppFeature;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static countVSimEnable()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 599
    const-string v2, "gsm.radio.vivo.vsimenable0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 600
    .local v0, "vsimenablea":I
    const-string v2, "gsm.radio.vivo.vsimenable1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 601
    .local v1, "vsimenableb":I
    const-string v2, "Sttings.AppFeature"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isVSimEnable vsimenablea == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " vsimenableb == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    add-int v2, v0, v1

    return v2
.end method

.method public static fs_read(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 323
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 324
    .local v3, "file":Ljava/io/File;
    const/4 v4, 0x0

    .line 325
    .local v4, "fr":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 328
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 329
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .end local v4    # "fr":Ljava/io/FileReader;
    .local v5, "fr":Ljava/io/FileReader;
    move-object v4, v5

    .line 331
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    :cond_0
    if-nez v4, :cond_1

    move-object v6, v7

    .line 348
    :goto_0
    return-object v6

    .line 334
    :cond_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, "line":Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 337
    const-string v8, "0"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 338
    const-string v8, "Sttings.AppFeature"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "fs_read line content: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    move-object v0, v1

    .line 340
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_0

    .line 343
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :cond_3
    const-string v8, "Sttings.AppFeature"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "fs_read line  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v6, v7

    .line 345
    goto :goto_0

    .line 346
    .end local v6    # "line":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 347
    .local v2, "e":Ljava/io/IOException;
    :goto_1
    const-string v8, "Sttings.AppFeature"

    const-string v9, "IO Exception when getting kernel version for Device Info screen"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v6, v7

    .line 348
    goto :goto_0

    .line 346
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method public static getApplication()Landroid/app/Application;
    .locals 1

    .prologue
    .line 595
    sget-object v0, Lcom/android/settings/AppFeature;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method public static getIntTotalSpaceSize()F
    .locals 8

    .prologue
    .line 293
    const/4 v4, 0x0

    .line 294
    .local v4, "totalSize":F
    const-string v0, "sys/class/block/mmcblk0/size"

    .line 295
    .local v0, "mRomPath":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/AppFeature;->fs_read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 296
    .local v1, "mRomStringsize":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 297
    .local v2, "mRomlongsize":J
    long-to-float v4, v2

    .line 298
    const/high16 v5, 0x4a000000    # 2097152.0f

    div-float/2addr v4, v5

    .line 299
    const-string v5, "Sttings.AppFeature"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getIntTotalSpaceSize block/mmcblk0/size:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " totalSize:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const-string v5, "1"

    const-string v6, "persist.sys.primary.emulate"

    const-string v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 301
    const/high16 v5, 0x42800000    # 64.0f

    cmpl-float v5, v4, v5

    if-lez v5, :cond_1

    .line 302
    const/high16 v4, 0x43000000    # 128.0f

    .line 318
    :cond_0
    :goto_0
    return v4

    .line 303
    :cond_1
    const/high16 v5, 0x42000000    # 32.0f

    cmpl-float v5, v4, v5

    if-lez v5, :cond_2

    .line 304
    const/high16 v4, 0x42800000    # 64.0f

    goto :goto_0

    .line 305
    :cond_2
    const/high16 v5, 0x41800000    # 16.0f

    cmpl-float v5, v4, v5

    if-lez v5, :cond_3

    .line 306
    const/high16 v4, 0x42000000    # 32.0f

    goto :goto_0

    .line 307
    :cond_3
    const/high16 v5, 0x41000000    # 8.0f

    cmpl-float v5, v4, v5

    if-lez v5, :cond_4

    .line 308
    const/high16 v4, 0x41800000    # 16.0f

    goto :goto_0

    .line 309
    :cond_4
    const/high16 v5, 0x40800000    # 4.0f

    cmpl-float v5, v4, v5

    if-lez v5, :cond_5

    .line 310
    const/high16 v4, 0x41000000    # 8.0f

    goto :goto_0

    .line 311
    :cond_5
    const/high16 v5, 0x40000000    # 2.0f

    cmpl-float v5, v4, v5

    if-lez v5, :cond_0

    .line 312
    const/high16 v4, 0x40800000    # 4.0f

    goto :goto_0
.end method

.method public static getNotificationLightStyle()I
    .locals 1

    .prologue
    .line 461
    sget v0, Lcom/android/settings/AppFeature;->FEATURE_NOTIFICATION_LIGHT:I

    return v0
.end method

.method public static getPixelPerDip()F
    .locals 1

    .prologue
    .line 405
    sget v0, Lcom/android/settings/AppFeature;->PIXEL_PER_DIP:F

    return v0
.end method

.method public static getProductName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    sget-object v0, Lcom/android/settings/AppFeature;->mProductName:Ljava/lang/String;

    return-object v0
.end method

.method public static getROMVersion()D
    .locals 2

    .prologue
    .line 492
    sget-wide v0, Lcom/android/settings/AppFeature;->FEATURE_ROM_VERSION:D

    return-wide v0
.end method

.method public static getRefWatcher(Landroid/content/Context;)Lcom/squareup/leakcanary/RefWatcher;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 575
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/settings/AppFeature;

    .line 576
    .local v0, "application":Lcom/android/settings/AppFeature;
    iget-object v1, v0, Lcom/android/settings/AppFeature;->refWatcher:Lcom/squareup/leakcanary/RefWatcher;

    return-object v1
.end method

.method public static getStorageManagerWrapper()Lcom/vivo/settings/StorageManagerWrapper;
    .locals 1

    .prologue
    .line 285
    sget-object v0, Lcom/android/settings/AppFeature;->mStorageManagerWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    return-object v0
.end method

.method public static isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 470
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isAmoLed()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 489
    sget v1, Lcom/android/settings/AppFeature;->FEATURE_PANEL_TYPE:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isBbkEmMode()Z
    .locals 1

    .prologue
    .line 417
    sget-boolean v0, Lcom/android/settings/AppFeature;->FEATURE_BBKEM:Z

    return v0
.end method

.method public static isBlackStyle()Z
    .locals 1

    .prologue
    .line 413
    sget-boolean v0, Lcom/android/settings/AppFeature;->FEATURE_BLACK_UI:Z

    return v0
.end method

.method public static isCMCC()Z
    .locals 1

    .prologue
    .line 244
    sget-boolean v0, Lcom/android/settings/AppFeature;->FEATURE_CMCC:Z

    return v0
.end method

.method public static isCTCC()Z
    .locals 1

    .prologue
    .line 260
    sget-boolean v0, Lcom/android/settings/AppFeature;->FEATURE_CTCC:Z

    return v0
.end method

.method public static isCtsTest()Z
    .locals 1

    .prologue
    .line 496
    sget-boolean v0, Lcom/android/settings/AppFeature;->FEATURE_CTS:Z

    return v0
.end method

.method public static isDashboardTileRippleEnabled()Z
    .locals 1

    .prologue
    .line 476
    const/4 v0, 0x0

    return v0
.end method

.method public static isDeviceSupportTF()Z
    .locals 1

    .prologue
    .line 277
    sget-object v0, Lcom/android/settings/AppFeature;->mStorageManagerWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    invoke-virtual {v0}, Lcom/vivo/settings/StorageManagerWrapper;->isSupportTF()Z

    move-result v0

    return v0
.end method

.method public static isEmulated()Z
    .locals 1

    .prologue
    .line 541
    sget-boolean v0, Lcom/android/settings/AppFeature;->FEATURE_EMULATED:Z

    return v0
.end method

.method public static isFeatureForNetEntry()Z
    .locals 1

    .prologue
    .line 269
    sget-boolean v0, Lcom/android/settings/AppFeature;->FEATURE_FOR_NET:Z

    return v0
.end method

.method public static isFrontFingerProject()Z
    .locals 1

    .prologue
    .line 615
    sget-boolean v0, Lcom/android/settings/AppFeature;->FINGER_PROJECT:Z

    return v0
.end method

.method public static isHifiGlobleEnabled()Z
    .locals 1

    .prologue
    .line 393
    sget-boolean v0, Lcom/android/settings/AppFeature;->FEATURE_HIFI_GLOBAL:Z

    return v0
.end method

.method public static isHighConfiguration(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 561
    const/4 v0, 0x0

    .line 562
    .local v0, "isHigh":Z
    invoke-static {p0}, Lcom/vivo/settings/RamUtils;->updateRamVolume(Landroid/content/Context;)V

    .line 563
    invoke-static {}, Lcom/vivo/settings/RamUtils;->getTotalRunRamValue()I

    move-result v1

    .line 564
    .local v1, "totalRamSize":I
    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 565
    const/4 v0, 0x1

    .line 566
    :cond_0
    return v0
.end method

.method public static isInVisitMode(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 553
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "visit_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isMTK()Z
    .locals 1

    .prologue
    .line 397
    sget-boolean v0, Lcom/android/settings/AppFeature;->IS_MTK:Z

    return v0
.end method

.method public static isNeedRndisAndDiag()Z
    .locals 1

    .prologue
    .line 421
    sget-boolean v0, Lcom/android/settings/AppFeature;->FEATURE_BBKEM:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/settings/AppFeature;->FEATURE_NEED_RNIDS_DIAG:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isQCOM()Z
    .locals 1

    .prologue
    .line 401
    sget-boolean v0, Lcom/android/settings/AppFeature;->IS_QCOM:Z

    return v0
.end method

.method public static isSupportDualSpkr()Z
    .locals 2

    .prologue
    .line 485
    invoke-static {}, Lcom/android/settings/AppFeature;->getProductName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PD1303"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupportFastCharge()Z
    .locals 1

    .prologue
    .line 549
    sget-boolean v0, Lcom/android/settings/AppFeature;->FEATURE_FAST_CHARGE:Z

    return v0
.end method

.method public static isSupportFinger(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 557
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.vivo.fingerprint"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/vivo/settings/VivoUtils;->isIntentExist(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public static isSupportGloveMode()Z
    .locals 1

    .prologue
    .line 357
    sget-boolean v0, Lcom/android/settings/AppFeature;->FEATURE_GLOVE:Z

    return v0
.end method

.method public static isSupportHolster()Z
    .locals 1

    .prologue
    .line 545
    sget-boolean v0, Lcom/android/settings/AppFeature;->FEATURE_HOLSTER:Z

    return v0
.end method

.method public static isSupportHolsterToAnswerCall()Z
    .locals 1

    .prologue
    .line 409
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportKTV()Z
    .locals 1

    .prologue
    .line 570
    sget-boolean v0, Lcom/android/settings/AppFeature;->FEATURE_KTV:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/AppFeature;->IsExport()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportNetworkFull()Z
    .locals 1

    .prologue
    .line 518
    sget-boolean v0, Lcom/android/settings/AppFeature;->FEATURE_NETWORK_FULL:Z

    return v0
.end method

.method public static isSupportNightMode()Z
    .locals 1

    .prologue
    .line 591
    sget-boolean v0, Lcom/android/settings/AppFeature;->FEATURE_NIGHT_MODE:Z

    return v0
.end method

.method public static isSupportOTG()Z
    .locals 1

    .prologue
    .line 381
    sget-boolean v0, Lcom/android/settings/AppFeature;->FEATURE_OTG:Z

    return v0
.end method

.method public static isSupportOneHandMode()Z
    .locals 1

    .prologue
    .line 365
    sget-boolean v0, Lcom/android/settings/AppFeature;->FEATURE_ONE_HAND:Z

    return v0
.end method

.method public static isSupportRoaming()Z
    .locals 1

    .prologue
    .line 606
    sget-boolean v0, Lcom/android/settings/AppFeature;->FEATURE_IS_SUPPORT_ROAMING:Z

    return v0
.end method

.method public static isSupportSRSMaxV()Z
    .locals 1

    .prologue
    .line 481
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportSecureConfig()Z
    .locals 1

    .prologue
    .line 622
    sget-boolean v0, Lcom/android/settings/AppFeature;->SECURE_CONFIG_SUPPORT:Z

    return v0
.end method

.method public static isSupportSpeakerBoost()Z
    .locals 1

    .prologue
    .line 537
    sget-boolean v0, Lcom/android/settings/AppFeature;->FEATURE_SPEAKER_BOOST:Z

    return v0
.end method

.method public static isSupportSuperAudio()Z
    .locals 2

    .prologue
    .line 522
    const-string v0, "PD1503"

    invoke-static {}, Lcom/android/settings/AppFeature;->getProductName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isSupportTouchKeyLight()Z
    .locals 1

    .prologue
    .line 373
    sget-boolean v0, Lcom/android/settings/AppFeature;->FEATURE_KEY_LIGHT:Z

    return v0
.end method

.method public static isSupportWFD()Z
    .locals 1

    .prologue
    .line 389
    sget-boolean v0, Lcom/android/settings/AppFeature;->FEATURE_WFD:Z

    return v0
.end method

.method public static isUnicom()Z
    .locals 1

    .prologue
    .line 252
    sget-boolean v0, Lcom/android/settings/AppFeature;->FEATURE_UNICOM:Z

    return v0
.end method

.method public static needClearNetworkLock()Z
    .locals 3

    .prologue
    .line 526
    const/4 v0, 0x0

    .line 527
    .local v0, "isNeed":Z
    const-string v1, "PD1421V"

    invoke-static {}, Lcom/android/settings/AppFeature;->getProductName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "PD1503"

    invoke-static {}, Lcom/android/settings/AppFeature;->getProductName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/settings/AppFeature;->mOpEntry:Ljava/lang/String;

    const-string v2, "CTCC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 530
    :cond_0
    const/4 v0, 0x1

    .line 533
    :cond_1
    return v0
.end method

.method public static refreshNetlock()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 500
    const-string v1, "persist.vivo.netlock"

    const-string v2, "no"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 501
    .local v0, "netlock":Ljava/lang/String;
    const-string v1, "Sttings.AppFeature"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshNetlock entry:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/settings/AppFeature;->mOpEntry:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " netlock:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    sput-boolean v4, Lcom/android/settings/AppFeature;->FEATURE_CMCC:Z

    .line 504
    sput-boolean v4, Lcom/android/settings/AppFeature;->FEATURE_UNICOM:Z

    .line 505
    sput-boolean v4, Lcom/android/settings/AppFeature;->FEATURE_CTCC:Z

    .line 507
    const-string v1, "CTCC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CTCC_UNICOM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CTCC_CMCC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/settings/AppFeature;->mOpEntry:Ljava/lang/String;

    const-string v2, "CTCC_RW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/settings/AppFeature;->mOpEntry:Ljava/lang/String;

    const-string v2, "CTCC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 509
    :cond_0
    sput-boolean v5, Lcom/android/settings/AppFeature;->FEATURE_CTCC:Z

    .line 515
    :cond_1
    :goto_0
    return-void

    .line 510
    :cond_2
    sget-object v1, Lcom/android/settings/AppFeature;->mOpEntry:Ljava/lang/String;

    const-string v2, "UNICOM_RW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/android/settings/AppFeature;->mOpEntry:Ljava/lang/String;

    const-string v2, "UNICOM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 511
    :cond_3
    sput-boolean v5, Lcom/android/settings/AppFeature;->FEATURE_UNICOM:Z

    goto :goto_0

    .line 512
    :cond_4
    sget-object v1, Lcom/android/settings/AppFeature;->mOpEntry:Ljava/lang/String;

    const-string v2, "CMCC_RW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lcom/android/settings/AppFeature;->mOpEntry:Ljava/lang/String;

    const-string v2, "CMCC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 513
    :cond_5
    sput-boolean v5, Lcom/android/settings/AppFeature;->FEATURE_CMCC:Z

    goto :goto_0
.end method

.method public static writeLogSystem(Ljava/lang/String;)V
    .locals 12
    .param p0, "label"    # Ljava/lang/String;

    .prologue
    .line 425
    sget-boolean v0, Lcom/android/settings/AppFeature;->mNeedCollectData:Z

    if-eqz v0, :cond_0

    .line 426
    sget-object v1, Lcom/android/settings/AppFeature;->mVivoCollectData:Lcom/vivo/analysis/VivoCollectData;

    const-string v2, "1023"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v3, p0

    invoke-virtual/range {v1 .. v11}, Lcom/vivo/analysis/VivoCollectData;->writeData(Ljava/lang/String;Ljava/lang/String;JJJILjava/util/HashMap;)V

    .line 431
    :cond_0
    return-void
.end method

.method public static writeLogSystem(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 12
    .param p0, "eventId"    # Ljava/lang/String;
    .param p1, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 443
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-boolean v0, Lcom/android/settings/AppFeature;->mNeedCollectData:Z

    if-eqz v0, :cond_0

    .line 444
    sget-object v1, Lcom/android/settings/AppFeature;->mVivoCollectData:Lcom/vivo/analysis/VivoCollectData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v11, p2

    invoke-virtual/range {v1 .. v11}, Lcom/vivo/analysis/VivoCollectData;->writeData(Ljava/lang/String;Ljava/lang/String;JJJILjava/util/HashMap;)V

    .line 449
    :cond_0
    return-void
.end method

.method public static writeLogSystem(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 12
    .param p0, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 434
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-boolean v0, Lcom/android/settings/AppFeature;->mNeedCollectData:Z

    if-eqz v0, :cond_0

    .line 435
    sget-object v1, Lcom/android/settings/AppFeature;->mVivoCollectData:Lcom/vivo/analysis/VivoCollectData;

    const-string v2, "1023"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    move-object v3, p0

    move-object v11, p1

    invoke-virtual/range {v1 .. v11}, Lcom/vivo/analysis/VivoCollectData;->writeData(Ljava/lang/String;Ljava/lang/String;JJJILjava/util/HashMap;)V

    .line 440
    :cond_0
    return-void
.end method


# virtual methods
.method public getObserver(Lcom/android/settings/AppFeature$SyncStatusCallBack;)Landroid/content/SyncStatusObserver;
    .locals 1
    .param p1, "callback"    # Lcom/android/settings/AppFeature$SyncStatusCallBack;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/settings/AppFeature;->mCallback:Lcom/android/settings/AppFeature$SyncStatusCallBack;

    .line 110
    iget-object v0, p0, Lcom/android/settings/AppFeature;->mSyncObserver:Landroid/content/SyncStatusObserver;

    return-object v0
.end method

.method public onCreate()V
    .locals 14

    .prologue
    .line 120
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 121
    sput-object p0, Lcom/android/settings/AppFeature;->mApplication:Landroid/app/Application;

    .line 122
    const-string v10, "yes"

    const-string v11, "vivo.leakcanary.test"

    const-string v12, "no"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 123
    invoke-static {p0}, Lcom/squareup/leakcanary/LeakCanary;->install(Landroid/app/Application;)Lcom/squareup/leakcanary/RefWatcher;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/AppFeature;->refWatcher:Lcom/squareup/leakcanary/RefWatcher;

    .line 125
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    const-string v11, "log_open_key"

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    invoke-static {v10}, Lcom/vivo/settings/Vlog;->setLogEnable(Z)V

    .line 126
    const-string v10, "Sttings.AppFeature"

    const-string v11, "settings Application onCreate"

    invoke-static {v10, v11}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-static {}, Landroid/os/FtBuild;->isMTKPlatform()Z

    move-result v10

    sput-boolean v10, Lcom/android/settings/AppFeature;->IS_MTK:Z

    .line 129
    invoke-static {}, Landroid/os/FtBuild;->isQCOMPlatform()Z

    move-result v10

    sput-boolean v10, Lcom/android/settings/AppFeature;->IS_QCOM:Z

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/AppFeature;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "storage"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/storage/StorageManager;

    invoke-static {v10}, Lcom/vivo/settings/StorageManagerWrapper;->getInstance(Ljava/lang/Object;)Lcom/vivo/settings/StorageManagerWrapper;

    move-result-object v10

    sput-object v10, Lcom/android/settings/AppFeature;->mStorageManagerWrapper:Lcom/vivo/settings/StorageManagerWrapper;

    .line 133
    const-string v10, "ro.vivo.product.model"

    const-string v11, "unknown"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/android/settings/AppFeature;->mProductName:Ljava/lang/String;

    .line 134
    const-string v10, "ro.vivo.product.platform"

    const-string v11, "unknown"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/android/settings/AppFeature;->PLATFORM_NAME:Ljava/lang/String;

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/AppFeature;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    if-eqz v10, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/AppFeature;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->density:F

    :goto_0
    sput v10, Lcom/android/settings/AppFeature;->PIXEL_PER_DIP:F

    .line 137
    new-instance v10, Lcom/vivo/analysis/VivoCollectData;

    invoke-direct {v10, p0}, Lcom/vivo/analysis/VivoCollectData;-><init>(Landroid/content/Context;)V

    sput-object v10, Lcom/android/settings/AppFeature;->mVivoCollectData:Lcom/vivo/analysis/VivoCollectData;

    .line 138
    sget-object v10, Lcom/android/settings/AppFeature;->mVivoCollectData:Lcom/vivo/analysis/VivoCollectData;

    const-string v11, "1023"

    invoke-virtual {v10, v11}, Lcom/vivo/analysis/VivoCollectData;->getControlInfo(Ljava/lang/String;)Z

    move-result v10

    sput-boolean v10, Lcom/android/settings/AppFeature;->mNeedCollectData:Z

    .line 139
    const-string v10, "ro.vivo.op.entry"

    const-string v11, "no"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/android/settings/AppFeature;->mOpEntry:Ljava/lang/String;

    .line 140
    sget-object v10, Lcom/android/settings/AppFeature;->mOpEntry:Ljava/lang/String;

    const-string v11, "FULL"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    sput-boolean v10, Lcom/android/settings/AppFeature;->FEATURE_NETWORK_FULL:Z

    .line 142
    invoke-static {}, Lcom/android/settings/AppFeature;->refreshNetlock()V

    .line 144
    const-string v10, "yes"

    const-string v11, "ro.vivo.net.entry"

    const-string v12, "no"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    sput-boolean v10, Lcom/android/settings/AppFeature;->FEATURE_FOR_NET:Z

    .line 146
    const-string v10, "Have_key_light"

    const-string v11, "persist.vivo.phone.key_light"

    const-string v12, "No_key_light"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    sput-boolean v10, Lcom/android/settings/AppFeature;->FEATURE_KEY_LIGHT:Z

    .line 147
    const-string v10, "persist.vivo.phone.indicator"

    const-string v11, "No_indicator"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 148
    .local v5, "notiProp":Ljava/lang/String;
    const-string v10, "Have_indicator_red_green"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 149
    const/4 v10, 0x2

    sput v10, Lcom/android/settings/AppFeature;->FEATURE_NOTIFICATION_LIGHT:I

    .line 155
    :goto_1
    const-string v10, "Have_usb_otg"

    const-string v11, "persist.vivo.phone.usb_otg"

    const-string v12, "No_usb_otg"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    sput-boolean v10, Lcom/android/settings/AppFeature;->FEATURE_OTG:Z

    .line 156
    const-string v10, "Have_glove_mode"

    const-string v11, "persist.vivo.phone.glove_mode"

    const-string v12, "No_glove_mode"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    sput-boolean v10, Lcom/android/settings/AppFeature;->FEATURE_GLOVE:Z

    .line 157
    const-string v10, "persist.vivo.phone.screen_size"

    const-string v11, "0"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 159
    .local v7, "screenSizeStr":Ljava/lang/String;
    :try_start_0
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    const/high16 v11, 0x41200000    # 10.0f

    div-float/2addr v10, v11

    sput v10, Lcom/android/settings/AppFeature;->FEATURE_SCREEN_SIZE:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :goto_2
    const-string v10, "Have_battery_percentage"

    const-string v11, "persist.vivo.phone.num_battery"

    const-string v12, "No_battery_percentage"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    sput-boolean v10, Lcom/android/settings/AppFeature;->FEATURE_NUMERIC_BATTERY:Z

    .line 164
    const-string v10, "Have_wfd"

    const-string v11, "persist.vivo.phone.wfd"

    const-string v12, "No_wfd"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    sput-boolean v10, Lcom/android/settings/AppFeature;->FEATURE_WFD:Z

    .line 165
    const-string v10, "persist.vivo.phone.hifi"

    const-string v11, "No_hifi"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 166
    .local v2, "hifiType":Ljava/lang/String;
    const-string v10, "ro.config.hifi_config_state"

    const-string v11, "0"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, "hifiState":Ljava/lang/String;
    const-string v10, "Have_hifi"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "0"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    :cond_1
    const-string v10, "2"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 168
    :cond_2
    const/4 v10, 0x1

    sput-boolean v10, Lcom/android/settings/AppFeature;->FEATURE_HIFI_GLOBAL:Z

    .line 170
    :cond_3
    sget v10, Lcom/android/settings/AppFeature;->FEATURE_SCREEN_SIZE:F

    const/high16 v11, 0x40a00000    # 5.0f

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_8

    const/4 v10, 0x1

    :goto_3
    sput-boolean v10, Lcom/android/settings/AppFeature;->FEATURE_ONE_HAND:Z

    .line 171
    const-string v10, "black"

    const-string v11, "ro.vivo.rom.style"

    const-string v12, "white"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    sput-boolean v10, Lcom/android/settings/AppFeature;->FEATURE_BLACK_UI:Z

    .line 172
    const-string v10, "persist.sys.bbkem"

    const-string v11, "0"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    sput-boolean v10, Lcom/android/settings/AppFeature;->FEATURE_BBKEM:Z

    .line 173
    const-string v10, "Amoled"

    const-string v11, "persist.vivo.phone.panel_type"

    const-string v12, "unknown"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    const/4 v10, 0x1

    :goto_4
    sput v10, Lcom/android/settings/AppFeature;->FEATURE_PANEL_TYPE:I

    .line 174
    const-string v10, "1"

    const-string v11, "persist.debug.ctstest"

    const-string v12, "0"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    sput-boolean v10, Lcom/android/settings/AppFeature;->FEATURE_CTS:Z

    .line 175
    const-string v10, "yes"

    const-string v11, "ro.config.audio.speaker_boost"

    const-string v12, "no"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    sput-boolean v10, Lcom/android/settings/AppFeature;->FEATURE_SPEAKER_BOOST:Z

    .line 176
    const-string v10, "true"

    const-string v11, "persist.vivo.karaoke.enable"

    const-string v12, "false"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    sput-boolean v10, Lcom/android/settings/AppFeature;->FEATURE_KTV:Z

    .line 177
    const-string v10, "1"

    const-string v11, "persist.sys.primary.emulate"

    const-string v12, "0"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    sput-boolean v10, Lcom/android/settings/AppFeature;->FEATURE_EMULATED:Z

    .line 178
    const-string v10, "Have_switch"

    const-string v11, "persist.vivo.phone.hall_switch"

    const-string v12, "no"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    sput-boolean v10, Lcom/android/settings/AppFeature;->FEATURE_HOLSTER:Z

    .line 179
    const-string v10, "1"

    const-string v11, "persist.vivo.check_fast_charge"

    const-string v12, "0"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    sput-boolean v10, Lcom/android/settings/AppFeature;->FEATURE_FAST_CHARGE:Z

    .line 180
    const-string v10, "persist.sys.usb.ctcc.test"

    const-string v11, "0"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    sput-boolean v10, Lcom/android/settings/AppFeature;->FEATURE_NEED_RNIDS_DIAG:Z

    .line 183
    const-string v10, "yes"

    const-string v11, "ro.build.feature.softsim"

    const-string v12, "yes"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    sput-boolean v10, Lcom/android/settings/AppFeature;->FEATURE_IS_SUPPORT_ROAMING:Z

    .line 184
    invoke-static {}, Landroid/util/FtFeature;->isColorManagerSupport()Z

    move-result v10

    sput-boolean v10, Lcom/android/settings/AppFeature;->FEATURE_NIGHT_MODE:Z

    .line 185
    const-string v10, "yes"

    const-string v11, "persist.vivo.unifiedconfig.sec"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    sput-boolean v10, Lcom/android/settings/AppFeature;->SECURE_CONFIG_SUPPORT:Z

    .line 188
    const-string v10, "ro.vivo.rom.version"

    const-string v11, "rom_2.0"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 189
    .local v9, "strRomVer":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 190
    const-string v10, "[0-9]+[.][0-9]+"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 191
    .local v6, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v6, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 192
    .local v4, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 193
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v8

    .line 195
    .local v8, "strNum":Ljava/lang/String;
    :try_start_1
    invoke-static {v8}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    sput-wide v10, Lcom/android/settings/AppFeature;->FEATURE_ROM_VERSION:D
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 202
    .end local v4    # "m":Ljava/util/regex/Matcher;
    .end local v6    # "p":Ljava/util/regex/Pattern;
    .end local v8    # "strNum":Ljava/lang/String;
    :cond_4
    :goto_5
    const-string v10, "persist.settings.hprof.dump"

    const-string v11, "0"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    invoke-static {v10}, Lcom/vivo/settings/VivoUtils;->setHprofDumpEnable(Z)V

    .line 203
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    .local v3, "log":Ljava/lang/StringBuilder;
    const/16 v10, 0x28

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "Model Info: Name:"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Lcom/android/settings/AppFeature;->mProductName:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, " notiLight:"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    sget v12, Lcom/android/settings/AppFeature;->FEATURE_NOTIFICATION_LIGHT:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const-string v12, " keyLight:"

    aput-object v12, v10, v11

    const/4 v11, 0x5

    sget-boolean v12, Lcom/android/settings/AppFeature;->FEATURE_KEY_LIGHT:Z

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x6

    const-string v12, " cpuInfo:"

    aput-object v12, v10, v11

    const/4 v11, 0x7

    sget v12, Lcom/android/settings/AppFeature;->CPU_INFO_ID:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/16 v11, 0x8

    const-string v12, " glove:"

    aput-object v12, v10, v11

    const/16 v11, 0x9

    sget-boolean v12, Lcom/android/settings/AppFeature;->FEATURE_GLOVE:Z

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    const/16 v11, 0xa

    const-string v12, " oneHand:"

    aput-object v12, v10, v11

    const/16 v11, 0xb

    sget-boolean v12, Lcom/android/settings/AppFeature;->FEATURE_ONE_HAND:Z

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    const/16 v11, 0xc

    const-string v12, " numericBattery:"

    aput-object v12, v10, v11

    const/16 v11, 0xd

    sget-boolean v12, Lcom/android/settings/AppFeature;->FEATURE_NUMERIC_BATTERY:Z

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    const/16 v11, 0xe

    const-string v12, " otg:"

    aput-object v12, v10, v11

    const/16 v11, 0xf

    sget-boolean v12, Lcom/android/settings/AppFeature;->FEATURE_OTG:Z

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    const/16 v11, 0x10

    const-string v12, " wfd:"

    aput-object v12, v10, v11

    const/16 v11, 0x11

    sget-boolean v12, Lcom/android/settings/AppFeature;->FEATURE_WFD:Z

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    const/16 v11, 0x12

    const-string v12, " ui:"

    aput-object v12, v10, v11

    const/16 v11, 0x13

    sget v12, Lcom/android/settings/AppFeature;->FEATURE_UI_STYLE:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/16 v11, 0x14

    const-string v12, " hifiGlobal:"

    aput-object v12, v10, v11

    const/16 v11, 0x15

    sget-boolean v12, Lcom/android/settings/AppFeature;->FEATURE_HIFI_GLOBAL:Z

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    const/16 v11, 0x16

    const-string v12, " pixel/dip:"

    aput-object v12, v10, v11

    const/16 v11, 0x17

    sget v12, Lcom/android/settings/AppFeature;->PIXEL_PER_DIP:F

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v10, v11

    const/16 v11, 0x18

    const-string v12, " panel type:"

    aput-object v12, v10, v11

    const/16 v11, 0x19

    sget v12, Lcom/android/settings/AppFeature;->FEATURE_PANEL_TYPE:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/16 v11, 0x1a

    const-string v12, " rom version:"

    aput-object v12, v10, v11

    const/16 v11, 0x1b

    sget-wide v12, Lcom/android/settings/AppFeature;->FEATURE_ROM_VERSION:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    aput-object v12, v10, v11

    const/16 v11, 0x1c

    const-string v12, " ccc test:"

    aput-object v12, v10, v11

    const/16 v11, 0x1d

    sget-boolean v12, Lcom/android/settings/AppFeature;->FEATURE_CTS:Z

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    const/16 v11, 0x1e

    const-string v12, " cmcc:"

    aput-object v12, v10, v11

    const/16 v11, 0x1f

    sget-boolean v12, Lcom/android/settings/AppFeature;->FEATURE_CMCC:Z

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    const/16 v11, 0x20

    const-string v12, " unicom:"

    aput-object v12, v10, v11

    const/16 v11, 0x21

    sget-boolean v12, Lcom/android/settings/AppFeature;->FEATURE_UNICOM:Z

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    const/16 v11, 0x22

    const-string v12, " ctcc:"

    aput-object v12, v10, v11

    const/16 v11, 0x23

    sget-boolean v12, Lcom/android/settings/AppFeature;->FEATURE_CTCC:Z

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    const/16 v11, 0x24

    const-string v12, " bbkem:"

    aput-object v12, v10, v11

    const/16 v11, 0x25

    sget-boolean v12, Lcom/android/settings/AppFeature;->FEATURE_BBKEM:Z

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    const/16 v11, 0x26

    const-string v12, " needRndisDiag:"

    aput-object v12, v10, v11

    const/16 v11, 0x27

    sget-boolean v12, Lcom/android/settings/AppFeature;->FEATURE_NEED_RNIDS_DIAG:Z

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v3, v10}, Lcom/vivo/settings/VivoUtils;->stringBuilderAppend(Ljava/lang/StringBuilder;[Ljava/lang/Object;)V

    .line 224
    const-string v10, "Sttings.AppFeature"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v10, "persist.vivo.fingerprint.front"

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    sput-boolean v10, Lcom/android/settings/AppFeature;->FINGER_PROJECT:Z

    .line 227
    return-void

    .line 135
    .end local v1    # "hifiState":Ljava/lang/String;
    .end local v2    # "hifiType":Ljava/lang/String;
    .end local v3    # "log":Ljava/lang/StringBuilder;
    .end local v5    # "notiProp":Ljava/lang/String;
    .end local v7    # "screenSizeStr":Ljava/lang/String;
    .end local v9    # "strRomVer":Ljava/lang/String;
    :cond_5
    const/high16 v10, 0x3f800000    # 1.0f

    goto/16 :goto_0

    .line 150
    .restart local v5    # "notiProp":Ljava/lang/String;
    :cond_6
    const-string v10, "Have_indicator_green"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 151
    const/4 v10, 0x1

    sput v10, Lcom/android/settings/AppFeature;->FEATURE_NOTIFICATION_LIGHT:I

    goto/16 :goto_1

    .line 153
    :cond_7
    const/4 v10, 0x0

    sput v10, Lcom/android/settings/AppFeature;->FEATURE_NOTIFICATION_LIGHT:I

    goto/16 :goto_1

    .line 160
    .restart local v7    # "screenSizeStr":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v10, "Sttings.AppFeature"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "NumberFormatException when get screen size"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/vivo/settings/Vlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 170
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "hifiState":Ljava/lang/String;
    .restart local v2    # "hifiType":Ljava/lang/String;
    :cond_8
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 173
    :cond_9
    const/4 v10, 0x0

    goto/16 :goto_4

    .line 196
    .restart local v4    # "m":Ljava/util/regex/Matcher;
    .restart local v6    # "p":Ljava/util/regex/Pattern;
    .restart local v8    # "strNum":Ljava/lang/String;
    .restart local v9    # "strRomVer":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 197
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    const-string v10, "Sttings.AppFeature"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "fail to parse "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/vivo/settings/Vlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5
.end method

.method public realeaseObserver()V
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/AppFeature;->mCallback:Lcom/android/settings/AppFeature$SyncStatusCallBack;

    .line 114
    return-void
.end method
