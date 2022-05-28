.class public Lcom/vivo/settings/VivoNightMode;
.super Lcom/vivo/settings/VivoSettingsPreferenceFragment;
.source "VivoNightMode.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lcom/vivo/settings/notification/settime/TimePreference$OnTimeChangedListener;


# static fields
.field private static final ALARM_ALERT_ACTION:Ljava/lang/String; = "com.vivo.night.eyes.intent"

.field private static final END_TIME_FLAG:I = 0x1

.field private static final KEY_AUTO_CHECKBOX:Ljava/lang/String; = "auto_open_night_mode"

.field private static final KEY_NIGHT_SEEKBAR:Ljava/lang/String; = "seekbar_night_mode"

.field private static final KEY_SHECDUL_CATEGORY:Ljava/lang/String; = "shecdul_category"

.field private static final KEY_SHECDUL_CHECKBOX:Ljava/lang/String; = "shecdul_open_night_mode"

.field private static final KEY_TIME1:Ljava/lang/String; = "time1"

.field private static final KEY_TIME2:Ljava/lang/String; = "time2"

.field private static final NIGHT_MODE_ALERT_FLAG:Ljava/lang/String; = "night_mode_alert_flag"

.field private static final NIGHT_MODE_CHANGE_ACTION:Ljava/lang/String; = "com.vivo.night.mode.change.intent"

.field private static final NIGHT_MODE_END_HOUR:Ljava/lang/String; = "night_mode_end_hour"

.field private static final NIGHT_MODE_END_MINUTE:Ljava/lang/String; = "night_mode_end_minute"

.field private static final NIGHT_MODE_FIRST_FLAG:Ljava/lang/String; = "eye_protection_opened"

.field private static final NIGHT_MODE_SHECDUL:Ljava/lang/String; = "night_mode_shecdul"

.field private static final NIGHT_MODE_START_HOUR:Ljava/lang/String; = "night_mode_start_hour"

.field private static final NIGHT_MODE_START_MINUTE:Ljava/lang/String; = "night_mode_start_minute"

.field private static final START_TIME_FLAG:I = 0x0

.field private static final TAG:Ljava/lang/String; = "VivoNightMode"


# instance fields
.field private mAutoNightMode:Landroid/preference/VivoCheckBoxPreference;

.field private mContext:Landroid/content/Context;

.field private mEndTime:[I

.field private mEndTimePreference:Lcom/vivo/settings/notification/settime/TimePreference;

.field private mFtColorManager:Lvivo/common/FtColorManager;

.field private mIsFirstOPAuto:Z

.field private mIsNightModeOn:Z

.field private mNightModeSeekbar:Lcom/vivo/settings/preference/SeekBarPreference;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mShecdulCategory:Landroid/preference/PreferenceCategory;

.field private mShecdulNightMode:Landroid/preference/VivoCheckBoxPreference;

.field private mStartTime:[I

.field private mStartTimePreference:Lcom/vivo/settings/notification/settime/TimePreference;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;-><init>()V

    .line 63
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/vivo/settings/VivoNightMode;->mStartTime:[I

    .line 64
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/vivo/settings/VivoNightMode;->mEndTime:[I

    .line 66
    iput-boolean v1, p0, Lcom/vivo/settings/VivoNightMode;->mIsNightModeOn:Z

    .line 67
    iput-boolean v1, p0, Lcom/vivo/settings/VivoNightMode;->mIsFirstOPAuto:Z

    .line 69
    new-instance v0, Lcom/vivo/settings/VivoNightMode$1;

    invoke-direct {v0, p0}, Lcom/vivo/settings/VivoNightMode$1;-><init>(Lcom/vivo/settings/VivoNightMode;)V

    iput-object v0, p0, Lcom/vivo/settings/VivoNightMode;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void

    .line 63
    nop

    :array_0
    .array-data 4
        0x14
        0x0
    .end array-data

    .line 64
    :array_1
    .array-data 4
        0x7
        0x0
    .end array-data
.end method

.method static synthetic access$000(Lcom/vivo/settings/VivoNightMode;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/VivoNightMode;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/vivo/settings/VivoNightMode;->updateControls()V

    return-void
.end method

.method static synthetic access$100(Lcom/vivo/settings/VivoNightMode;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/VivoNightMode;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/vivo/settings/VivoNightMode;->updateAutoControls()V

    return-void
.end method

.method static synthetic access$202(Lcom/vivo/settings/VivoNightMode;Lvivo/common/FtColorManager;)Lvivo/common/FtColorManager;
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/VivoNightMode;
    .param p1, "x1"    # Lvivo/common/FtColorManager;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/vivo/settings/VivoNightMode;->mFtColorManager:Lvivo/common/FtColorManager;

    return-object p1
.end method

.method private enableAlert(I)V
    .locals 4
    .param p1, "flag"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 307
    if-nez p1, :cond_0

    .line 308
    iget-object v0, p0, Lcom/vivo/settings/VivoNightMode;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/vivo/settings/VivoNightMode;->mStartTime:[I

    aget v1, v1, v2

    iget-object v2, p0, Lcom/vivo/settings/VivoNightMode;->mStartTime:[I

    aget v2, v2, v3

    invoke-static {v1, v2}, Lcom/vivo/settings/VivoNightModeAlarms;->calculateAlarm(II)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/vivo/settings/VivoNightModeAlarms;->enableAlert(Landroid/content/Context;J)V

    .line 309
    const-string v0, "VivoNightMode"

    const-string v1, "enableAlert start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :goto_0
    return-void

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/vivo/settings/VivoNightMode;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/vivo/settings/VivoNightMode;->mEndTime:[I

    aget v1, v1, v2

    iget-object v2, p0, Lcom/vivo/settings/VivoNightMode;->mEndTime:[I

    aget v2, v2, v3

    invoke-static {v1, v2}, Lcom/vivo/settings/VivoNightModeAlarms;->calculateAlarm(II)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/vivo/settings/VivoNightModeAlarms;->enableAlert(Landroid/content/Context;J)V

    .line 312
    const-string v0, "VivoNightMode"

    const-string v1, "enableAlert end"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getActiveFactor()I
    .locals 4

    .prologue
    .line 389
    iget-object v1, p0, Lcom/vivo/settings/VivoNightMode;->mFtColorManager:Lvivo/common/FtColorManager;

    invoke-virtual {v1}, Lvivo/common/FtColorManager;->getModeFactor()I

    move-result v0

    .line 390
    .local v0, "factor":I
    const-string v1, "VivoNightMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getActiveFactor factor = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    if-ltz v0, :cond_0

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    .line 392
    :cond_0
    const-string v1, "VivoNightMode"

    const-string v2, "getActiveFactor not vaild!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const/4 v0, 0x0

    .line 395
    .end local v0    # "factor":I
    :cond_1
    return v0
.end method

.method private getFixedMode(Z)I
    .locals 5
    .param p1, "isNightModeOn"    # Z

    .prologue
    const/16 v4, 0x15

    .line 221
    const-string v2, "VivoNightMode"

    const-string v3, "=====getFixedMode====="

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const/4 v1, 0x0

    .line 223
    .local v1, "mode":I
    invoke-direct {p0}, Lcom/vivo/settings/VivoNightMode;->readScreenBrightness()I

    move-result v0

    .line 224
    .local v0, "brightness":I
    if-eqz p1, :cond_1

    .line 225
    const/4 v1, 0x1

    .line 233
    :cond_0
    :goto_0
    const-string v2, "VivoNightMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFixedMode mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " brightness = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    return v1

    .line 227
    :cond_1
    if-lez v0, :cond_2

    if-gt v0, v4, :cond_2

    iget-object v2, p0, Lcom/vivo/settings/VivoNightMode;->mFtColorManager:Lvivo/common/FtColorManager;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lvivo/common/FtColorManager;->isModeExist(I)I

    move-result v2

    if-nez v2, :cond_2

    .line 228
    const/4 v1, 0x2

    goto :goto_0

    .line 229
    :cond_2
    if-le v0, v4, :cond_0

    const/16 v2, 0x17

    if-gt v0, v2, :cond_0

    iget-object v2, p0, Lcom/vivo/settings/VivoNightMode;->mFtColorManager:Lvivo/common/FtColorManager;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lvivo/common/FtColorManager;->isModeExist(I)I

    move-result v2

    if-nez v2, :cond_0

    .line 230
    const/4 v1, 0x3

    goto :goto_0
.end method

.method private readFileByline(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 247
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 248
    .local v2, "file":Ljava/io/File;
    const/4 v3, 0x0

    .line 249
    .local v3, "reader":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 251
    .local v5, "tempString":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 254
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 261
    :goto_0
    if-eqz v4, :cond_2

    .line 263
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v3, v4

    .line 269
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :cond_0
    :goto_1
    return-object v5

    .line 255
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    .line 256
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v6, "VivoNightMode"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "reader.readLine():"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 258
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    move-object v3, v4

    .line 259
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :goto_2
    :try_start_4
    const-string v6, "VivoNightMode"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "the readFileByline is:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 261
    if-eqz v3, :cond_0

    .line 263
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 264
    :catch_2
    move-exception v1

    .line 265
    .local v1, "e1":Ljava/io/IOException;
    const-string v6, "VivoNightMode"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "the readFileByline is:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 264
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v1    # "e1":Ljava/io/IOException;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v1

    .line 265
    .restart local v1    # "e1":Ljava/io/IOException;
    const-string v6, "VivoNightMode"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "the readFileByline is:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 266
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_1

    .line 261
    .end local v1    # "e1":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v3, :cond_1

    .line 263
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 266
    :cond_1
    :goto_4
    throw v6

    .line 264
    :catch_4
    move-exception v1

    .line 265
    .restart local v1    # "e1":Ljava/io/IOException;
    const-string v7, "VivoNightMode"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "the readFileByline is:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 261
    .end local v1    # "e1":Ljava/io/IOException;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 258
    :catch_5
    move-exception v0

    goto/16 :goto_2

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :cond_2
    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_1
.end method

.method private readScreenBrightness()I
    .locals 5

    .prologue
    .line 239
    const-string v2, "/sys/class/leds/lcd-backlight/brightness"

    invoke-direct {p0, v2}, Lcom/vivo/settings/VivoNightMode;->readFileByline(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, "brightnessString":Ljava/lang/String;
    const-string v2, "VivoNightMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readScreenBrightness = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 242
    .local v1, "resetbrightness":I
    :goto_0
    return v1

    .line 241
    .end local v1    # "resetbrightness":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setActiveFactor(I)V
    .locals 1
    .param p1, "factor"    # I

    .prologue
    .line 385
    iget-object v0, p0, Lcom/vivo/settings/VivoNightMode;->mFtColorManager:Lvivo/common/FtColorManager;

    invoke-virtual {v0, p1}, Lvivo/common/FtColorManager;->setModeFactor(I)I

    .line 386
    return-void
.end method

.method private updateAutoControls()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 147
    iget-object v1, p0, Lcom/vivo/settings/VivoNightMode;->mFtColorManager:Lvivo/common/FtColorManager;

    if-nez v1, :cond_0

    .line 148
    const-string v0, "VivoNightMode"

    const-string v1, "mFtColorManager == null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/vivo/settings/VivoNightMode;->mAutoNightMode:Landroid/preference/VivoCheckBoxPreference;

    iget-object v2, p0, Lcom/vivo/settings/VivoNightMode;->mFtColorManager:Lvivo/common/FtColorManager;

    invoke-virtual {v2}, Lvivo/common/FtColorManager;->getActiveMode()I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateControls()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 125
    const-string v1, "VivoNightMode"

    const-string v4, "updateControls"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v1, p0, Lcom/vivo/settings/VivoNightMode;->mFtColorManager:Lvivo/common/FtColorManager;

    if-nez v1, :cond_0

    .line 127
    const-string v1, "VivoNightMode"

    const-string v2, "mFtColorManager == null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v4, p0, Lcom/vivo/settings/VivoNightMode;->mAutoNightMode:Landroid/preference/VivoCheckBoxPreference;

    iget-object v1, p0, Lcom/vivo/settings/VivoNightMode;->mFtColorManager:Lvivo/common/FtColorManager;

    invoke-virtual {v1}, Lvivo/common/FtColorManager;->getActiveMode()I

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    .line 131
    iget-object v1, p0, Lcom/vivo/settings/VivoNightMode;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "night_mode_shecdul"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_2

    move v0, v2

    .line 132
    .local v0, "isShecdulBoxOn":Z
    :goto_2
    iget-object v1, p0, Lcom/vivo/settings/VivoNightMode;->mShecdulNightMode:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    .line 133
    iget-object v1, p0, Lcom/vivo/settings/VivoNightMode;->mStartTime:[I

    iget-object v4, p0, Lcom/vivo/settings/VivoNightMode;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "night_mode_start_hour"

    const/16 v6, 0x14

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    aput v4, v1, v3

    .line 134
    iget-object v1, p0, Lcom/vivo/settings/VivoNightMode;->mStartTime:[I

    iget-object v4, p0, Lcom/vivo/settings/VivoNightMode;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "night_mode_start_minute"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    aput v4, v1, v2

    .line 135
    iget-object v1, p0, Lcom/vivo/settings/VivoNightMode;->mEndTime:[I

    iget-object v4, p0, Lcom/vivo/settings/VivoNightMode;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "night_mode_end_hour"

    const/4 v6, 0x7

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    aput v4, v1, v3

    .line 136
    iget-object v1, p0, Lcom/vivo/settings/VivoNightMode;->mEndTime:[I

    iget-object v4, p0, Lcom/vivo/settings/VivoNightMode;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "night_mode_end_minute"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    aput v3, v1, v2

    .line 137
    invoke-direct {p0, v0}, Lcom/vivo/settings/VivoNightMode;->updateShecdulRule(Z)V

    goto :goto_0

    .end local v0    # "isShecdulBoxOn":Z
    :cond_1
    move v1, v3

    .line 130
    goto :goto_1

    :cond_2
    move v0, v3

    .line 131
    goto :goto_2
.end method

.method private updateNightMode()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 273
    iget-object v0, p0, Lcom/vivo/settings/VivoNightMode;->mStartTime:[I

    aget v0, v0, v4

    iget-object v1, p0, Lcom/vivo/settings/VivoNightMode;->mStartTime:[I

    aget v1, v1, v5

    iget-object v2, p0, Lcom/vivo/settings/VivoNightMode;->mEndTime:[I

    aget v2, v2, v4

    iget-object v3, p0, Lcom/vivo/settings/VivoNightMode;->mEndTime:[I

    aget v3, v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/vivo/settings/VivoNightModeAlarms;->isStartTimeLargerEnd(IIII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/vivo/settings/VivoNightMode;->mStartTime:[I

    aget v0, v0, v4

    iget-object v1, p0, Lcom/vivo/settings/VivoNightMode;->mStartTime:[I

    aget v1, v1, v5

    invoke-static {v0, v1}, Lcom/vivo/settings/VivoNightModeAlarms;->isLargerCurrent(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/settings/VivoNightMode;->mEndTime:[I

    aget v0, v0, v4

    iget-object v1, p0, Lcom/vivo/settings/VivoNightMode;->mEndTime:[I

    aget v1, v1, v5

    invoke-static {v0, v1}, Lcom/vivo/settings/VivoNightModeAlarms;->isLargerCurrent(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    invoke-direct {p0, v4}, Lcom/vivo/settings/VivoNightMode;->enableAlert(I)V

    .line 276
    invoke-direct {p0, v4}, Lcom/vivo/settings/VivoNightMode;->updateNightModeState(Z)V

    .line 277
    iget-object v0, p0, Lcom/vivo/settings/VivoNightMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "night_mode_alert_flag"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 294
    :goto_0
    return-void

    .line 279
    :cond_0
    invoke-direct {p0, v5}, Lcom/vivo/settings/VivoNightMode;->enableAlert(I)V

    .line 280
    invoke-direct {p0, v5}, Lcom/vivo/settings/VivoNightMode;->updateNightModeState(Z)V

    .line 281
    iget-object v0, p0, Lcom/vivo/settings/VivoNightMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "night_mode_alert_flag"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 284
    :cond_1
    iget-object v0, p0, Lcom/vivo/settings/VivoNightMode;->mStartTime:[I

    aget v0, v0, v4

    iget-object v1, p0, Lcom/vivo/settings/VivoNightMode;->mStartTime:[I

    aget v1, v1, v5

    invoke-static {v0, v1}, Lcom/vivo/settings/VivoNightModeAlarms;->isLargerCurrent(II)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/vivo/settings/VivoNightMode;->mEndTime:[I

    aget v0, v0, v4

    iget-object v1, p0, Lcom/vivo/settings/VivoNightMode;->mEndTime:[I

    aget v1, v1, v5

    invoke-static {v0, v1}, Lcom/vivo/settings/VivoNightModeAlarms;->isLargerCurrent(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 285
    invoke-direct {p0, v5}, Lcom/vivo/settings/VivoNightMode;->enableAlert(I)V

    .line 286
    invoke-direct {p0, v5}, Lcom/vivo/settings/VivoNightMode;->updateNightModeState(Z)V

    .line 287
    iget-object v0, p0, Lcom/vivo/settings/VivoNightMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "night_mode_alert_flag"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 289
    :cond_2
    invoke-direct {p0, v4}, Lcom/vivo/settings/VivoNightMode;->enableAlert(I)V

    .line 290
    invoke-direct {p0, v4}, Lcom/vivo/settings/VivoNightMode;->updateNightModeState(Z)V

    .line 291
    iget-object v0, p0, Lcom/vivo/settings/VivoNightMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "night_mode_alert_flag"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private updateNightModeState(Z)V
    .locals 4
    .param p1, "isNightModeOn"    # Z

    .prologue
    .line 203
    const-string v1, "VivoNightMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateNightModeState isNightModeOn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v1, p0, Lcom/vivo/settings/VivoNightMode;->mAutoNightMode:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v1, p1}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    .line 205
    iget-object v1, p0, Lcom/vivo/settings/VivoNightMode;->mFtColorManager:Lvivo/common/FtColorManager;

    if-nez v1, :cond_0

    .line 206
    const-string v1, "VivoNightMode"

    const-string v2, "mFtColorManager == null, updateNightModeState failed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :goto_0
    return-void

    .line 209
    :cond_0
    iget-object v1, p0, Lcom/vivo/settings/VivoNightMode;->mFtColorManager:Lvivo/common/FtColorManager;

    invoke-direct {p0, p1}, Lcom/vivo/settings/VivoNightMode;->getFixedMode(Z)I

    move-result v2

    invoke-virtual {v1, v2}, Lvivo/common/FtColorManager;->setActiveMode(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 210
    const-string v1, "VivoNightMode"

    const-string v2, "setActiveMode failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 213
    :cond_1
    const-string v1, "VivoNightMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getActiveMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/settings/VivoNightMode;->mFtColorManager:Lvivo/common/FtColorManager;

    invoke-virtual {v3}, Lvivo/common/FtColorManager;->getActiveMode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v1, p0, Lcom/vivo/settings/VivoNightMode;->mFtColorManager:Lvivo/common/FtColorManager;

    invoke-direct {p0, p1}, Lcom/vivo/settings/VivoNightMode;->getFixedMode(Z)I

    move-result v2

    invoke-virtual {v1, v2}, Lvivo/common/FtColorManager;->setDefaultMode(I)I

    .line 216
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.vivo.night.mode.change.intent"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 217
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/vivo/settings/VivoNightMode;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private updateShecdulRule(Z)V
    .locals 2
    .param p1, "isShecdulBoxOn"    # Z

    .prologue
    .line 297
    if-eqz p1, :cond_0

    .line 298
    iget-object v0, p0, Lcom/vivo/settings/VivoNightMode;->mShecdulCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/vivo/settings/VivoNightMode;->mStartTimePreference:Lcom/vivo/settings/notification/settime/TimePreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 299
    iget-object v0, p0, Lcom/vivo/settings/VivoNightMode;->mShecdulCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/vivo/settings/VivoNightMode;->mEndTimePreference:Lcom/vivo/settings/notification/settime/TimePreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 304
    :goto_0
    return-void

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/vivo/settings/VivoNightMode;->mShecdulCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/vivo/settings/VivoNightMode;->mStartTimePreference:Lcom/vivo/settings/notification/settime/TimePreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 302
    iget-object v0, p0, Lcom/vivo/settings/VivoNightMode;->mShecdulCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/vivo/settings/VivoNightMode;->mEndTimePreference:Lcom/vivo/settings/notification/settime/TimePreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 81
    invoke-super {p0, p1}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 82
    const v0, 0x7f06005e

    invoke-virtual {p0, v0}, Lcom/vivo/settings/VivoNightMode;->addPreferencesFromResource(I)V

    .line 83
    const-string v0, "VivoNightMode"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {p0}, Lcom/vivo/settings/VivoNightMode;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/VivoNightMode;->mContext:Landroid/content/Context;

    .line 85
    const-string v0, "auto_open_night_mode"

    invoke-virtual {p0, v0}, Lcom/vivo/settings/VivoNightMode;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/VivoCheckBoxPreference;

    iput-object v0, p0, Lcom/vivo/settings/VivoNightMode;->mAutoNightMode:Landroid/preference/VivoCheckBoxPreference;

    .line 86
    const-string v0, "shecdul_category"

    invoke-virtual {p0, v0}, Lcom/vivo/settings/VivoNightMode;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/vivo/settings/VivoNightMode;->mShecdulCategory:Landroid/preference/PreferenceCategory;

    .line 87
    const-string v0, "shecdul_open_night_mode"

    invoke-virtual {p0, v0}, Lcom/vivo/settings/VivoNightMode;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/VivoCheckBoxPreference;

    iput-object v0, p0, Lcom/vivo/settings/VivoNightMode;->mShecdulNightMode:Landroid/preference/VivoCheckBoxPreference;

    .line 89
    new-instance v0, Lcom/vivo/settings/notification/settime/TimePreference;

    iget-object v1, p0, Lcom/vivo/settings/VivoNightMode;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/vivo/settings/notification/settime/TimePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/vivo/settings/VivoNightMode;->mStartTimePreference:Lcom/vivo/settings/notification/settime/TimePreference;

    .line 90
    iget-object v0, p0, Lcom/vivo/settings/VivoNightMode;->mStartTimePreference:Lcom/vivo/settings/notification/settime/TimePreference;

    const-string v1, "time1"

    invoke-virtual {v0, v1}, Lcom/vivo/settings/notification/settime/TimePreference;->setKey(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/vivo/settings/VivoNightMode;->mStartTimePreference:Lcom/vivo/settings/notification/settime/TimePreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vivo/settings/notification/settime/TimePreference;->setFlag(I)V

    .line 92
    new-instance v0, Lcom/vivo/settings/notification/settime/TimePreference;

    iget-object v1, p0, Lcom/vivo/settings/VivoNightMode;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/vivo/settings/notification/settime/TimePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/vivo/settings/VivoNightMode;->mEndTimePreference:Lcom/vivo/settings/notification/settime/TimePreference;

    .line 93
    iget-object v0, p0, Lcom/vivo/settings/VivoNightMode;->mEndTimePreference:Lcom/vivo/settings/notification/settime/TimePreference;

    const-string v1, "time2"

    invoke-virtual {v0, v1}, Lcom/vivo/settings/notification/settime/TimePreference;->setKey(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/vivo/settings/VivoNightMode;->mEndTimePreference:Lcom/vivo/settings/notification/settime/TimePreference;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/vivo/settings/notification/settime/TimePreference;->setFlag(I)V

    .line 95
    iget-object v0, p0, Lcom/vivo/settings/VivoNightMode;->mStartTimePreference:Lcom/vivo/settings/notification/settime/TimePreference;

    invoke-virtual {v0, p0}, Lcom/vivo/settings/notification/settime/TimePreference;->setOnTimeChangedListener(Lcom/vivo/settings/notification/settime/TimePreference$OnTimeChangedListener;)V

    .line 96
    iget-object v0, p0, Lcom/vivo/settings/VivoNightMode;->mEndTimePreference:Lcom/vivo/settings/notification/settime/TimePreference;

    invoke-virtual {v0, p0}, Lcom/vivo/settings/notification/settime/TimePreference;->setOnTimeChangedListener(Lcom/vivo/settings/notification/settime/TimePreference$OnTimeChangedListener;)V

    .line 98
    const-string v0, "seekbar_night_mode"

    invoke-virtual {p0, v0}, Lcom/vivo/settings/VivoNightMode;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/vivo/settings/preference/SeekBarPreference;

    iput-object v0, p0, Lcom/vivo/settings/VivoNightMode;->mNightModeSeekbar:Lcom/vivo/settings/preference/SeekBarPreference;

    .line 99
    iget-object v0, p0, Lcom/vivo/settings/VivoNightMode;->mNightModeSeekbar:Lcom/vivo/settings/preference/SeekBarPreference;

    invoke-virtual {p0, v0}, Lcom/vivo/settings/VivoNightMode;->removePreference(Landroid/preference/Preference;)V

    .line 100
    const-string v0, "night_mode_category"

    invoke-virtual {p0, v0}, Lcom/vivo/settings/VivoNightMode;->removePreference(Ljava/lang/String;)V

    .line 101
    const-string v0, "night_mode_explain_bottom"

    invoke-virtual {p0, v0}, Lcom/vivo/settings/VivoNightMode;->removePreference(Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 165
    const-string v0, "VivoNightMode"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onDestroy()V

    .line 167
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 156
    const-string v0, "VivoNightMode"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual {p0}, Lcom/vivo/settings/VivoNightMode;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/settings/VivoNightMode;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 158
    iget-object v0, p0, Lcom/vivo/settings/VivoNightMode;->mFtColorManager:Lvivo/common/FtColorManager;

    invoke-static {v0}, Lvivo/common/FtColorManager;->releaseInstance(Lvivo/common/FtColorManager;)V

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/settings/VivoNightMode;->mFtColorManager:Lvivo/common/FtColorManager;

    .line 160
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onPause()V

    .line 161
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 172
    const-string v2, "VivoNightMode"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPreferenceTreeClick preference = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v2, p0, Lcom/vivo/settings/VivoNightMode;->mAutoNightMode:Landroid/preference/VivoCheckBoxPreference;

    if-ne p2, v2, :cond_3

    .line 174
    iget-object v2, p0, Lcom/vivo/settings/VivoNightMode;->mAutoNightMode:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/VivoCheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/vivo/settings/VivoNightMode;->updateNightModeState(Z)V

    .line 175
    iget-boolean v2, p0, Lcom/vivo/settings/VivoNightMode;->mIsFirstOPAuto:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/vivo/settings/VivoNightMode;->mAutoNightMode:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/VivoCheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    iget-object v2, p0, Lcom/vivo/settings/VivoNightMode;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "eye_protection_opened"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 177
    const-string v2, "VivoNightMode"

    const-string v4, "first opreater auto checkbox"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_0
    iput-boolean v3, p0, Lcom/vivo/settings/VivoNightMode;->mIsFirstOPAuto:Z

    .line 180
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 181
    .local v1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "sw"

    iget-object v2, p0, Lcom/vivo/settings/VivoNightMode;->mAutoNightMode:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/VivoCheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "1"

    :goto_0
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const-string v2, "102311"

    invoke-static {v2, v1}, Lcom/android/settings/AppFeature;->writeLogSystem(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 199
    .end local v1    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    .line 181
    .restart local v1    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    const-string v2, "0"

    goto :goto_0

    .line 183
    .end local v1    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    iget-object v2, p0, Lcom/vivo/settings/VivoNightMode;->mShecdulNightMode:Landroid/preference/VivoCheckBoxPreference;

    if-ne p2, v2, :cond_1

    .line 184
    iget-object v2, p0, Lcom/vivo/settings/VivoNightMode;->mShecdulNightMode:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/VivoCheckBoxPreference;->isChecked()Z

    move-result v0

    .line 185
    .local v0, "isShecdulBoxOn":Z
    iget-object v2, p0, Lcom/vivo/settings/VivoNightMode;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "night_mode_shecdul"

    if-eqz v0, :cond_5

    move v2, v3

    :goto_2
    invoke-static {v6, v7, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 186
    invoke-direct {p0, v0}, Lcom/vivo/settings/VivoNightMode;->updateShecdulRule(Z)V

    .line 187
    if-eqz v0, :cond_6

    .line 188
    invoke-direct {p0}, Lcom/vivo/settings/VivoNightMode;->updateNightMode()V

    .line 193
    :goto_3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 194
    .restart local v1    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "sw"

    if-eqz v0, :cond_7

    const-string v2, "1"

    :goto_4
    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    const-string v6, "s_t"

    if-eqz v0, :cond_8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/vivo/settings/VivoNightMode;->mStartTime:[I

    aget v7, v7, v4

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ":"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v7, p0, Lcom/vivo/settings/VivoNightMode;->mStartTime:[I

    aget v7, v7, v3

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_5
    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const-string v2, "e_t"

    if-eqz v0, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/vivo/settings/VivoNightMode;->mEndTime:[I

    aget v4, v6, v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/vivo/settings/VivoNightMode;->mEndTime:[I

    aget v3, v5, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_4
    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    const-string v2, "102313"

    invoke-static {v2, v1}, Lcom/android/settings/AppFeature;->writeLogSystem(Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_1

    .end local v1    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    move v2, v4

    .line 185
    goto :goto_2

    .line 190
    :cond_6
    iget-object v2, p0, Lcom/vivo/settings/VivoNightMode;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/vivo/settings/VivoNightModeAlarms;->disableAlert(Landroid/content/Context;)V

    .line 191
    invoke-direct {p0, v4}, Lcom/vivo/settings/VivoNightMode;->updateNightModeState(Z)V

    goto :goto_3

    .line 194
    .restart local v1    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_7
    const-string v2, "0"

    goto :goto_4

    :cond_8
    move-object v2, v5

    .line 195
    goto :goto_5
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 365
    if-eqz p3, :cond_0

    .line 366
    invoke-direct {p0, p2}, Lcom/vivo/settings/VivoNightMode;->setActiveFactor(I)V

    .line 367
    const-string v0, "VivoNightMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProgressChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 107
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onResume()V

    .line 108
    const-string v1, "VivoNightMode"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-virtual {p0}, Lcom/vivo/settings/VivoNightMode;->showBBKBackButton()V

    .line 110
    const v1, 0x7f0b09a6

    invoke-virtual {p0, v1}, Lcom/vivo/settings/VivoNightMode;->setTitle(I)V

    .line 111
    iget-object v1, p0, Lcom/vivo/settings/VivoNightMode;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/settings/AppFeature;->getApplication()Landroid/app/Application;

    move-result-object v2

    new-instance v3, Lcom/vivo/settings/VivoNightMode$2;

    invoke-direct {v3, p0}, Lcom/vivo/settings/VivoNightMode$2;-><init>(Lcom/vivo/settings/VivoNightMode;)V

    invoke-static {v1, v2, v3}, Lvivo/common/FtColorManager;->getInstanceWithCallBack(Landroid/content/Context;Landroid/app/Application;Lvivo/common/FtColorManager$CallBack;)I

    .line 119
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.vivo.night.mode.change.intent"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 120
    .local v0, "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/vivo/settings/VivoNightMode;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/settings/VivoNightMode;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 121
    invoke-direct {p0}, Lcom/vivo/settings/VivoNightMode;->updateControls()V

    .line 122
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 373
    const-string v0, "VivoNightMode"

    const-string v1, "onStartTrackingTouch"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v0, p0, Lcom/vivo/settings/VivoNightMode;->mAutoNightMode:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/VivoCheckBoxPreference;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/vivo/settings/VivoNightMode;->mIsNightModeOn:Z

    .line 375
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 379
    const-string v0, "VivoNightMode"

    const-string v1, "onStopTrackingTouch"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-boolean v0, p0, Lcom/vivo/settings/VivoNightMode;->mIsNightModeOn:Z

    invoke-direct {p0, v0}, Lcom/vivo/settings/VivoNightMode;->updateNightModeState(Z)V

    .line 382
    return-void
.end method

.method public onTimeSetted(I[I)V
    .locals 8
    .param p1, "mTimeFlag"    # I
    .param p2, "time"    # [I

    .prologue
    const v7, 0x7f0b0963

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 326
    iget-object v2, p0, Lcom/vivo/settings/VivoNightMode;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "night_mode_alert_flag"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 327
    .local v0, "flag":I
    if-ne p1, v6, :cond_3

    .line 328
    aget v2, p2, v5

    iget-object v3, p0, Lcom/vivo/settings/VivoNightMode;->mStartTime:[I

    aget v3, v3, v5

    if-ne v2, v3, :cond_1

    aget v2, p2, v6

    iget-object v3, p0, Lcom/vivo/settings/VivoNightMode;->mStartTime:[I

    aget v3, v3, v6

    if-ne v2, v3, :cond_1

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 331
    :cond_1
    aget v2, p2, v5

    iget-object v3, p0, Lcom/vivo/settings/VivoNightMode;->mEndTime:[I

    aget v3, v3, v5

    if-ne v2, v3, :cond_2

    aget v2, p2, v6

    iget-object v3, p0, Lcom/vivo/settings/VivoNightMode;->mEndTime:[I

    aget v3, v3, v6

    if-ne v2, v3, :cond_2

    .line 332
    iget-object v2, p0, Lcom/vivo/settings/VivoNightMode;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v7}, Lcom/vivo/settings/VivoNightMode;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 333
    iget-object v2, p0, Lcom/vivo/settings/VivoNightMode;->mStartTimePreference:Lcom/vivo/settings/notification/settime/TimePreference;

    iget-object v3, p0, Lcom/vivo/settings/VivoNightMode;->mStartTime:[I

    invoke-virtual {v2, v3}, Lcom/vivo/settings/notification/settime/TimePreference;->putStartTime([I)V

    goto :goto_0

    .line 336
    :cond_2
    const-string v2, "VivoNightMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrefChange Start h="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, p2, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " m="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, p2, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v2, p0, Lcom/vivo/settings/VivoNightMode;->mStartTime:[I

    aget v3, p2, v5

    aput v3, v2, v5

    .line 338
    iget-object v2, p0, Lcom/vivo/settings/VivoNightMode;->mStartTime:[I

    aget v3, p2, v6

    aput v3, v2, v6

    .line 339
    iget-object v2, p0, Lcom/vivo/settings/VivoNightMode;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "night_mode_start_hour"

    aget v4, p2, v5

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 340
    iget-object v2, p0, Lcom/vivo/settings/VivoNightMode;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "night_mode_start_minute"

    aget v4, p2, v6

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 341
    :cond_3
    const/4 v2, 0x2

    if-ne p1, v2, :cond_6

    .line 342
    aget v2, p2, v5

    iget-object v3, p0, Lcom/vivo/settings/VivoNightMode;->mEndTime:[I

    aget v3, v3, v5

    if-ne v2, v3, :cond_4

    aget v2, p2, v6

    iget-object v3, p0, Lcom/vivo/settings/VivoNightMode;->mEndTime:[I

    aget v3, v3, v6

    if-eq v2, v3, :cond_0

    .line 345
    :cond_4
    aget v2, p2, v5

    iget-object v3, p0, Lcom/vivo/settings/VivoNightMode;->mStartTime:[I

    aget v3, v3, v5

    if-ne v2, v3, :cond_5

    aget v2, p2, v6

    iget-object v3, p0, Lcom/vivo/settings/VivoNightMode;->mStartTime:[I

    aget v3, v3, v6

    if-ne v2, v3, :cond_5

    .line 346
    iget-object v2, p0, Lcom/vivo/settings/VivoNightMode;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v7}, Lcom/vivo/settings/VivoNightMode;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 347
    iget-object v2, p0, Lcom/vivo/settings/VivoNightMode;->mEndTimePreference:Lcom/vivo/settings/notification/settime/TimePreference;

    iget-object v3, p0, Lcom/vivo/settings/VivoNightMode;->mEndTime:[I

    invoke-virtual {v2, v3}, Lcom/vivo/settings/notification/settime/TimePreference;->putEndTime([I)V

    goto/16 :goto_0

    .line 350
    :cond_5
    const-string v2, "VivoNightMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrefChange sleepEnd h="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, p2, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " m="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, p2, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v2, p0, Lcom/vivo/settings/VivoNightMode;->mEndTime:[I

    aget v3, p2, v5

    aput v3, v2, v5

    .line 352
    iget-object v2, p0, Lcom/vivo/settings/VivoNightMode;->mEndTime:[I

    aget v3, p2, v6

    aput v3, v2, v6

    .line 353
    iget-object v2, p0, Lcom/vivo/settings/VivoNightMode;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "night_mode_end_hour"

    aget v4, p2, v5

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 354
    iget-object v2, p0, Lcom/vivo/settings/VivoNightMode;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "night_mode_end_minute"

    aget v4, p2, v6

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 356
    :cond_6
    invoke-direct {p0}, Lcom/vivo/settings/VivoNightMode;->updateNightMode()V

    .line 357
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 358
    .local v1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "s_t"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/vivo/settings/VivoNightMode;->mStartTime:[I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/vivo/settings/VivoNightMode;->mStartTime:[I

    aget v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    const-string v2, "e_t"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/vivo/settings/VivoNightMode;->mEndTime:[I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/vivo/settings/VivoNightMode;->mEndTime:[I

    aget v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    const-string v2, "102313"

    invoke-static {v2, v1}, Lcom/android/settings/AppFeature;->writeLogSystem(Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_0
.end method

.method public onViewBinded(ILcom/vivo/settings/notification/settime/TimePreference;)V
    .locals 2
    .param p1, "flag"    # I
    .param p2, "preference"    # Lcom/vivo/settings/notification/settime/TimePreference;

    .prologue
    .line 317
    const-string v0, "VivoNightMode"

    const-string v1, "onViewBinded"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 319
    iget-object v0, p0, Lcom/vivo/settings/VivoNightMode;->mStartTime:[I

    invoke-virtual {p2, v0}, Lcom/vivo/settings/notification/settime/TimePreference;->putStartTime([I)V

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 320
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/vivo/settings/VivoNightMode;->mEndTime:[I

    invoke-virtual {p2, v0}, Lcom/vivo/settings/notification/settime/TimePreference;->putEndTime([I)V

    goto :goto_0
.end method
