.class public Lcom/vivo/settings/BootCombineReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootCombineReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/settings/BootCombineReceiver$BootReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_BOOT_IP:Ljava/lang/String; = "android.intent.action.ACTION_BOOT_IPO"

.field private static final ACTION_SETTING_TIME:Ljava/lang/String; = "com.android.settings.SETTING_TIME"

.field private static final ALARM_ALERT_ACTION:Ljava/lang/String; = "com.vivo.night.eyes.intent"

.field private static final END_TIME_FLAG:I = 0x1

.field private static final MSG_UPDATE_STATE_CLOSE:I = 0x1

.field private static final MSG_UPDATE_STATE_OPEN:I = 0x0

.field private static final NIGHT_MODE_ALERT_FLAG:Ljava/lang/String; = "night_mode_alert_flag"

.field private static final NIGHT_MODE_CHANGE_ACTION:Ljava/lang/String; = "com.vivo.night.mode.change.intent"

.field private static final NIGHT_MODE_END_HOUR:Ljava/lang/String; = "night_mode_end_hour"

.field private static final NIGHT_MODE_END_MINUTE:Ljava/lang/String; = "night_mode_end_minute"

.field private static final NIGHT_MODE_SHECDUL:Ljava/lang/String; = "night_mode_shecdul"

.field private static final NIGHT_MODE_START_HOUR:Ljava/lang/String; = "night_mode_start_hour"

.field private static final NIGHT_MODE_START_MINUTE:Ljava/lang/String; = "night_mode_start_minute"

.field private static final PATH_ALARM:Ljava/lang/String; = "/system/media/audio/alarms/"

.field private static final PATH_NOTI:Ljava/lang/String; = "/system/media/audio/notifications/"

.field private static final PATH_RING:Ljava/lang/String; = "/system/media/audio/ringtones/"

.field private static final PROCESS_SETTINGS_KILLED:Ljava/lang/String; = "android.intent.action.FORCE_STOP_PACKAGE.com.android.settings"

.field private static final PROP_MTBF:Ljava/lang/String; = "persist.sys.mtbf.test"

.field private static final PROP_SOUND_ALARM:Ljava/lang/String; = "ro.config.alarm_alert"

.field private static final PROP_SOUND_MESSAGE:Ljava/lang/String; = "ro.config.message_sound"

.field private static final PROP_SOUND_NOTI:Ljava/lang/String; = "ro.config.notification_sound"

.field private static final PROP_SOUND_RING:Ljava/lang/String; = "ro.config.ringtone"

.field private static final SETTINGS_ACCELEROMETER_ROTATION_RESTORE:Ljava/lang/String; = "accelerometer_rotation_restore"

.field private static final START_TIME_FLAG:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BootCombineReceiver"

.field private static final URI_INTERNAL_AUDIO_PRE:Ljava/lang/String; = "content://media/internal/audio/media/"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFtColorManager:Lvivo/common/FtColorManager;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 77
    new-instance v0, Lcom/vivo/settings/BootCombineReceiver$1;

    invoke-direct {v0, p0}, Lcom/vivo/settings/BootCombineReceiver$1;-><init>(Lcom/vivo/settings/BootCombineReceiver;)V

    iput-object v0, p0, Lcom/vivo/settings/BootCombineReceiver;->mHandler:Landroid/os/Handler;

    .line 169
    return-void
.end method

.method static synthetic access$000(Lcom/vivo/settings/BootCombineReceiver;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/BootCombineReceiver;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/vivo/settings/BootCombineReceiver;->updateNightModeState(Z)V

    return-void
.end method

.method static synthetic access$102(Lcom/vivo/settings/BootCombineReceiver;Lvivo/common/FtColorManager;)Lvivo/common/FtColorManager;
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/BootCombineReceiver;
    .param p1, "x1"    # Lvivo/common/FtColorManager;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/vivo/settings/BootCombineReceiver;->mFtColorManager:Lvivo/common/FtColorManager;

    return-object p1
.end method

.method private checkAndResetDefaultRingtone(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 174
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 175
    .local v8, "resolver":Landroid/content/ContentResolver;
    const-string v9, "bbk_alarm_alert"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 177
    .local v4, "defUriAlarm":Ljava/lang/String;
    const-string v9, "bbk_message_sound"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 179
    .local v5, "defUriMsg":Ljava/lang/String;
    const-string v9, "notification_sound"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 181
    .local v6, "defUriNoti":Ljava/lang/String;
    const-string v9, "bbk_ringtonge"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 183
    .local v7, "defUriRing":Ljava/lang/String;
    const-string v9, "ro.config.alarm_alert"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "defFileAlarm":Ljava/lang/String;
    const-string v9, "ro.config.message_sound"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, "defFileMsg":Ljava/lang/String;
    const-string v9, "ro.config.notification_sound"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 187
    .local v2, "defFileNoti":Ljava/lang/String;
    const-string v9, "ro.config.ringtone"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 188
    .local v3, "defFileRing":Ljava/lang/String;
    const-string v9, "BootCombineReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "defUriAlarm="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " defUriMsg="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " defUriNoti="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " defUriRing="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const-string v9, "BootCombineReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "defFileAlarm="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " defFileMsg="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " defFileNoti="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " defFileRing="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-direct {p0, v8, v4, v0}, Lcom/vivo/settings/BootCombineReceiver;->isUriReasonable(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 195
    const-string v9, "bbk_alarm_alert"

    const-string v10, "/system/media/audio/alarms/"

    invoke-direct {p0, v8, v9, v0, v10}, Lcom/vivo/settings/BootCombineReceiver;->updateSoundSet(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :cond_0
    invoke-direct {p0, v8, v5, v1}, Lcom/vivo/settings/BootCombineReceiver;->isUriReasonable(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 199
    const-string v9, "bbk_message_sound"

    const-string v10, "/system/media/audio/notifications/"

    invoke-direct {p0, v8, v9, v1, v10}, Lcom/vivo/settings/BootCombineReceiver;->updateSoundSet(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :cond_1
    invoke-direct {p0, v8, v7, v3}, Lcom/vivo/settings/BootCombineReceiver;->isUriReasonable(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 203
    const-string v9, "bbk_ringtonge"

    const-string v10, "/system/media/audio/ringtones/"

    invoke-direct {p0, v8, v9, v3, v10}, Lcom/vivo/settings/BootCombineReceiver;->updateSoundSet(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :cond_2
    const-string v9, "message_sound"

    const-string v10, "bbk_message_sound"

    invoke-static {v8, v9, v10}, Lcom/vivo/settings/BootCombineReceiver;->setDefValueIfNoValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v9, "message_sound_sim2"

    const-string v10, "bbk_message_sound"

    invoke-static {v8, v9, v10}, Lcom/vivo/settings/BootCombineReceiver;->setDefValueIfNoValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string v9, "notification_sound"

    invoke-static {v8, v9}, Lcom/vivo/settings/BootCombineReceiver;->isNoValue(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 210
    const-string v9, "notification_sound"

    const-string v10, "/system/media/audio/notifications/"

    invoke-direct {p0, v8, v9, v2, v10}, Lcom/vivo/settings/BootCombineReceiver;->updateSoundSet(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :cond_3
    :goto_0
    return-void

    .line 213
    :cond_4
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 214
    invoke-direct {p0, v8, v6, v2}, Lcom/vivo/settings/BootCombineReceiver;->isUriReasonable(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 215
    const-string v9, "notification_sound"

    const-string v10, "/system/media/audio/notifications/"

    invoke-direct {p0, v8, v9, v2, v10}, Lcom/vivo/settings/BootCombineReceiver;->updateSoundSet(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private enableAlert(I)V
    .locals 8
    .param p1, "flag"    # I

    .prologue
    const/4 v7, 0x0

    .line 399
    if-nez p1, :cond_0

    .line 400
    iget-object v4, p0, Lcom/vivo/settings/BootCombineReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "night_mode_start_hour"

    const/16 v6, 0x14

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 401
    .local v2, "startHour":I
    iget-object v4, p0, Lcom/vivo/settings/BootCombineReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "night_mode_start_minute"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 402
    .local v3, "startMinute":I
    iget-object v4, p0, Lcom/vivo/settings/BootCombineReceiver;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/vivo/settings/VivoNightModeAlarms;->calculateAlarm(II)Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-static {v4, v6, v7}, Lcom/vivo/settings/VivoNightModeAlarms;->enableAlert(Landroid/content/Context;J)V

    .line 403
    const-string v4, "BootCombineReceiver"

    const-string v5, "enable start"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    .end local v2    # "startHour":I
    .end local v3    # "startMinute":I
    :goto_0
    return-void

    .line 405
    :cond_0
    iget-object v4, p0, Lcom/vivo/settings/BootCombineReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "night_mode_end_hour"

    const/4 v6, 0x7

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 406
    .local v0, "endHour":I
    iget-object v4, p0, Lcom/vivo/settings/BootCombineReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "night_mode_end_minute"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 407
    .local v1, "endMinute":I
    iget-object v4, p0, Lcom/vivo/settings/BootCombineReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/vivo/settings/VivoNightModeAlarms;->calculateAlarm(II)Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-static {v4, v6, v7}, Lcom/vivo/settings/VivoNightModeAlarms;->enableAlert(Landroid/content/Context;J)V

    .line 408
    const-string v4, "BootCombineReceiver"

    const-string v5, "enable end"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static isNoValue(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 8
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "setting"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 222
    const/4 v7, 0x0

    .line 223
    .local v7, "result":Z
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 224
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 225
    const/4 v7, 0x1

    .line 227
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 228
    const-string v0, "BootCombineReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "database setting ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is no value ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    return v7
.end method

.method private isUriReasonable(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "defUriRing"    # Ljava/lang/String;
    .param p3, "defFileRing"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 246
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v7

    .line 259
    :goto_0
    return v0

    .line 249
    :cond_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, "uri":Landroid/net/Uri;
    move-object v0, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 250
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 251
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lt v0, v8, :cond_1

    .line 252
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v8

    .line 253
    goto :goto_0

    .line 254
    :cond_1
    if-eqz v6, :cond_2

    .line 255
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :goto_1
    move v0, v7

    .line 259
    goto :goto_0

    .line 257
    :cond_2
    const-string v0, "BootCombineReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error Uri the string is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private restoreAlarm()V
    .locals 4

    .prologue
    .line 475
    iget-object v1, p0, Lcom/vivo/settings/BootCombineReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "night_mode_alert_flag"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 476
    .local v0, "flag":I
    invoke-direct {p0, v0}, Lcom/vivo/settings/BootCombineReceiver;->enableAlert(I)V

    .line 477
    return-void
.end method

.method private restoreRotation(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 362
    invoke-static {}, Lcom/android/settings/AppFeature;->isMTK()Z

    move-result v3

    if-nez v3, :cond_1

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accelerometer_rotation_restore"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 368
    .local v0, "restoreRetore":Z
    :goto_1
    if-eqz v0, :cond_0

    .line 369
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accelerometer_rotation"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 371
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "accelerometer_rotation_restore"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .end local v0    # "restoreRetore":Z
    :cond_2
    move v0, v2

    .line 365
    goto :goto_1
.end method

.method private static setDefValueIfNoValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "setting"    # Ljava/lang/String;
    .param p2, "defSetting"    # Ljava/lang/String;

    .prologue
    .line 233
    invoke-static {p0, p1}, Lcom/vivo/settings/BootCombineReceiver;->isNoValue(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    invoke-static {p0, p2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, "defUri":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 236
    const-string v1, "BootCombineReceiver"

    const-string v2, "defUri is empty now wait a moment"

    invoke-static {v1, v2}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .end local v0    # "defUri":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 238
    .restart local v0    # "defUri":Ljava/lang/String;
    :cond_1
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 239
    const-string v1, "BootCombineReceiver"

    const-string v2, "set %s to %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private storeApnNum(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 378
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 379
    .local v10, "prefs":Landroid/content/SharedPreferences;
    const-string v0, "default_apn_count"

    invoke-interface {v10, v0, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 380
    .local v8, "defaultApnCount":I
    const-string v0, "BootCombineReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "storeApnNum defaultApnCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    if-gtz v8, :cond_0

    .line 384
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 386
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 388
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 389
    .local v7, "cursorCount":I
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 390
    .local v9, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v0, "default_apn_count"

    invoke-interface {v9, v0, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 391
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 393
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 396
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v7    # "cursorCount":I
    .end local v9    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method private static toMTBFSettings(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 306
    const-string v3, "BootCombineReceiver"

    const-string v4, "toMTBFSettings start.."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 310
    .local v2, "contentResolver":Landroid/content/ContentResolver;
    const-string v3, "adb_enabled"

    invoke-static {v2, v3, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 311
    const-string v3, "BootCombineReceiver"

    const-string v4, "enable adb debug"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const-string v3, "stay_on_while_plugged_in"

    const/4 v4, 0x3

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 316
    const-string v3, "BootCombineReceiver"

    const-string v4, "enable stay awake"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const-string v3, "show_usb_option"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 320
    const-string v3, "BootCombineReceiver"

    const-string v4, "disable auto show usb option"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const-string v3, "time_12_24"

    const-string v4, "24"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 324
    const-string v3, "BootCombineReceiver"

    const-string v4, "set 24 hours format"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const-string v3, "auto_time"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 328
    const-string v3, "auto_time_zone"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 331
    const-string v3, "screen_off_timeout"

    const v4, 0x66ff3000

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 332
    const-string v3, "BootCombineReceiver"

    const-string v4, "set screen off timeout to 20 days"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 336
    .local v1, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v1, v5}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 337
    const-string v3, "vibrate_in_silent"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 338
    invoke-virtual {v1, v5, v5}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 339
    invoke-virtual {v1, v7, v5}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 340
    const-string v3, "BootCombineReceiver"

    const-string v4, "set silent mode"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const-string v3, "haptic_feedback_enabled"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 344
    const-string v3, "BootCombineReceiver"

    const-string v4, "disable hptic feedback"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    new-instance v0, Landroid/media/AudioFeatures;

    invoke-direct {v0, p0, v6, v6}, Landroid/media/AudioFeatures;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 348
    .local v0, "audioFeatures":Landroid/media/AudioFeatures;
    const-string v3, "MAXV:state=false"

    invoke-virtual {v0, v3, v6}, Landroid/media/AudioFeatures;->setAudioFeature(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 349
    const-string v3, "BootCombineReceiver"

    const-string v4, "disable rsr-maxv"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const-string v3, "screen_brightness_mode"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 353
    const-string v3, "BootCombineReceiver"

    const-string v4, "disable auto brightness"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    const-string v3, "screen_brightness"

    const/16 v4, 0x3c

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 357
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.BRIGHTNESS_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 358
    const-string v3, "BootCombineReceiver"

    const-string v4, "set brightness to 60"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    return-void
.end method

.method private updateGloveModeSettings()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 283
    iget-object v5, p0, Lcom/vivo/settings/BootCombineReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "last_glove_mode"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 285
    .local v2, "setting":I
    const-string v5, "BootCombineReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateGloveModeSettings"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const-string v5, "bbk_touch_screen_service"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/vivo/services/touchscreen/IBBKTouchScreenService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/vivo/services/touchscreen/IBBKTouchScreenService;

    move-result-object v1

    .line 289
    .local v1, "mBBKTouchScreenService":Lcom/vivo/services/touchscreen/IBBKTouchScreenService;
    if-eqz v1, :cond_0

    .line 290
    if-ne v2, v3, :cond_1

    :goto_0
    :try_start_0
    invoke-interface {v1, v3}, Lcom/vivo/services/touchscreen/IBBKTouchScreenService;->TouchScreenGlovesModeSwitch(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v3, v4

    .line 290
    goto :goto_0

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method private updateHolsterModeSettings(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 297
    const-string v2, "hall_state_manager"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/services/hallstate/HallManager;

    .line 298
    .local v0, "hallManager":Lcom/vivo/services/hallstate/HallManager;
    invoke-static {p1}, Lcom/vivo/settings/HolsterFragment;->isEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v2}, Lcom/vivo/services/hallstate/HallManager;->hallSwitchEnable(I)I

    move-result v1

    .line 299
    .local v1, "ret":I
    if-gez v1, :cond_0

    .line 302
    :cond_0
    return-void

    .line 298
    .end local v1    # "ret":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateNightMode(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 437
    const-string v7, "BootCombineReceiver"

    const-string v8, "updateNightMode"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object v7, p0, Lcom/vivo/settings/BootCombineReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "night_mode_shecdul"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_1

    move v2, v5

    .line 441
    .local v2, "isShecdulBoxOn":Z
    :goto_0
    if-eqz v2, :cond_0

    .line 442
    iget-object v7, p0, Lcom/vivo/settings/BootCombineReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "night_mode_start_hour"

    const/16 v9, 0x14

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 443
    .local v3, "startHour":I
    iget-object v7, p0, Lcom/vivo/settings/BootCombineReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "night_mode_start_minute"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 444
    .local v4, "startMinute":I
    iget-object v7, p0, Lcom/vivo/settings/BootCombineReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "night_mode_end_hour"

    const/4 v9, 0x7

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 445
    .local v0, "endHour":I
    iget-object v7, p0, Lcom/vivo/settings/BootCombineReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "night_mode_end_minute"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 447
    .local v1, "endMinute":I
    invoke-static {v3, v4, v0, v1}, Lcom/vivo/settings/VivoNightModeAlarms;->isStartTimeLargerEnd(IIII)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 448
    invoke-static {v3, v4}, Lcom/vivo/settings/VivoNightModeAlarms;->isLargerCurrent(II)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {v0, v1}, Lcom/vivo/settings/VivoNightModeAlarms;->isLargerCurrent(II)Z

    move-result v7

    if-nez v7, :cond_2

    .line 449
    invoke-direct {p0, v6}, Lcom/vivo/settings/BootCombineReceiver;->enableAlert(I)V

    .line 450
    invoke-direct {p0, v6}, Lcom/vivo/settings/BootCombineReceiver;->updateNightModeState(Z)V

    .line 451
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "night_mode_alert_flag"

    invoke-static {v5, v7, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 472
    .end local v0    # "endHour":I
    .end local v1    # "endMinute":I
    .end local v3    # "startHour":I
    .end local v4    # "startMinute":I
    :cond_0
    :goto_1
    return-void

    .end local v2    # "isShecdulBoxOn":Z
    :cond_1
    move v2, v6

    .line 440
    goto :goto_0

    .line 453
    .restart local v0    # "endHour":I
    .restart local v1    # "endMinute":I
    .restart local v2    # "isShecdulBoxOn":Z
    .restart local v3    # "startHour":I
    .restart local v4    # "startMinute":I
    :cond_2
    invoke-direct {p0, v5}, Lcom/vivo/settings/BootCombineReceiver;->enableAlert(I)V

    .line 454
    invoke-direct {p0, v5}, Lcom/vivo/settings/BootCombineReceiver;->updateNightModeState(Z)V

    .line 455
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "night_mode_alert_flag"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 458
    :cond_3
    invoke-static {v3, v4}, Lcom/vivo/settings/VivoNightModeAlarms;->isLargerCurrent(II)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {v0, v1}, Lcom/vivo/settings/VivoNightModeAlarms;->isLargerCurrent(II)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 459
    invoke-direct {p0, v5}, Lcom/vivo/settings/BootCombineReceiver;->enableAlert(I)V

    .line 460
    invoke-direct {p0, v5}, Lcom/vivo/settings/BootCombineReceiver;->updateNightModeState(Z)V

    .line 461
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "night_mode_alert_flag"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 463
    :cond_4
    invoke-direct {p0, v6}, Lcom/vivo/settings/BootCombineReceiver;->enableAlert(I)V

    .line 464
    invoke-direct {p0, v6}, Lcom/vivo/settings/BootCombineReceiver;->updateNightModeState(Z)V

    .line 465
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "night_mode_alert_flag"

    invoke-static {v5, v7, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method private updateNightModeState(Z)V
    .locals 6
    .param p1, "isNightModeOn"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 413
    const-string v3, "BootCombineReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateNightModeState isNightModeOn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v3, p0, Lcom/vivo/settings/BootCombineReceiver;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/settings/AppFeature;->getApplication()Landroid/app/Application;

    move-result-object v4

    new-instance v5, Lcom/vivo/settings/BootCombineReceiver$2;

    invoke-direct {v5, p0}, Lcom/vivo/settings/BootCombineReceiver$2;-><init>(Lcom/vivo/settings/BootCombineReceiver;)V

    invoke-static {v3, v4, v5}, Lvivo/common/FtColorManager;->getInstanceWithCallBack(Landroid/content/Context;Landroid/app/Application;Lvivo/common/FtColorManager$CallBack;)I

    .line 420
    iget-object v3, p0, Lcom/vivo/settings/BootCombineReceiver;->mFtColorManager:Lvivo/common/FtColorManager;

    if-nez v3, :cond_1

    .line 421
    const-string v3, "BootCombineReceiver"

    const-string v4, "mFtColorManager == null, updateNightModeState failed"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget-object v3, p0, Lcom/vivo/settings/BootCombineReceiver;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    :goto_0
    const-wide/16 v4, 0xa

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 434
    :goto_1
    return-void

    :cond_0
    move v1, v2

    .line 422
    goto :goto_0

    .line 425
    :cond_1
    iget-object v4, p0, Lcom/vivo/settings/BootCombineReceiver;->mFtColorManager:Lvivo/common/FtColorManager;

    if-eqz p1, :cond_2

    move v3, v2

    :goto_2
    invoke-virtual {v4, v3}, Lvivo/common/FtColorManager;->setActiveMode(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 426
    const-string v1, "BootCombineReceiver"

    const-string v2, "setActiveMode failed!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    move v3, v1

    .line 425
    goto :goto_2

    .line 430
    :cond_3
    iget-object v3, p0, Lcom/vivo/settings/BootCombineReceiver;->mFtColorManager:Lvivo/common/FtColorManager;

    if-eqz p1, :cond_4

    :goto_3
    invoke-virtual {v3, v2}, Lvivo/common/FtColorManager;->setDefaultMode(I)I

    .line 431
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.vivo.night.mode.change.intent"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 432
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/vivo/settings/BootCombineReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 433
    iget-object v1, p0, Lcom/vivo/settings/BootCombineReceiver;->mFtColorManager:Lvivo/common/FtColorManager;

    invoke-static {v1}, Lvivo/common/FtColorManager;->releaseInstance(Lvivo/common/FtColorManager;)V

    goto :goto_1

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_4
    move v2, v1

    .line 430
    goto :goto_3
.end method

.method private updateSoundSet(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "setting"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "filePre"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 263
    const-string v0, "BootCombineReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fileName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " filePre="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const-string v8, "content://media/internal/audio/media/"

    .line 265
    .local v8, "uriPre":Ljava/lang/String;
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v9, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v10

    const-string v3, "_data = ?"

    new-array v4, v9, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 267
    .local v7, "cursor":Landroid/database/Cursor;
    const-string v1, "BootCombineReceiver"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cursor, null ? "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v7, :cond_0

    move v0, v9

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    if-nez v7, :cond_1

    .line 280
    :goto_1
    return-void

    :cond_0
    move v0, v10

    .line 267
    goto :goto_0

    .line 270
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_2

    .line 271
    const-string v0, "BootCombineReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cursor count ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 275
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 276
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 277
    .local v6, "_id":I
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 278
    const-string v0, "BootCombineReceiver"

    const-string v1, "success"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    .line 92
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "action":Ljava/lang/String;
    const-string v6, "BootCombineReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "action is:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    iput-object p1, p0, Lcom/vivo/settings/BootCombineReceiver;->mContext:Landroid/content/Context;

    .line 105
    const-string v6, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 106
    invoke-static {}, Lcom/android/settings/AppFeature;->isSupportNightMode()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 107
    invoke-direct {p0, p1}, Lcom/vivo/settings/BootCombineReceiver;->updateNightMode(Landroid/content/Context;)V

    .line 109
    :cond_2
    invoke-direct {p0, p1}, Lcom/vivo/settings/BootCombineReceiver;->restoreRotation(Landroid/content/Context;)V

    .line 110
    invoke-static {}, Lcom/android/settings/AppFeature;->isCMCC()Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "persist.sys.mtbf.test"

    const-string v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 111
    invoke-static {p1}, Lcom/vivo/settings/BootCombineReceiver;->toMTBFSettings(Landroid/content/Context;)V

    .line 113
    :cond_3
    invoke-static {p1, v9}, Lcom/vivo/settings/xml/SettingsItemGenerateService;->startServiceIfNeeded(Landroid/content/Context;Z)V

    .line 115
    invoke-static {}, Lcom/android/settings/AppFeature;->isSupportGloveMode()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 116
    invoke-direct {p0}, Lcom/vivo/settings/BootCombineReceiver;->updateGloveModeSettings()V

    .line 118
    :cond_4
    invoke-static {}, Lcom/android/settings/AppFeature;->isSupportHolster()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 119
    invoke-direct {p0, p1}, Lcom/vivo/settings/BootCombineReceiver;->updateHolsterModeSettings(Landroid/content/Context;)V

    .line 122
    :cond_5
    :try_start_0
    invoke-direct {p0, p1}, Lcom/vivo/settings/BootCombineReceiver;->checkAndResetDefaultRingtone(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_1
    invoke-direct {p0, p1}, Lcom/vivo/settings/BootCombineReceiver;->storeApnNum(Landroid/content/Context;)V

    .line 130
    :cond_6
    const-string v6, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 132
    :try_start_1
    invoke-direct {p0, p1}, Lcom/vivo/settings/BootCombineReceiver;->checkAndResetDefaultRingtone(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 137
    :cond_7
    :goto_2
    const-string v6, "vivo.intent.search.service"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "android.settings.VisitMode.action.TURN_ON"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 138
    :cond_8
    const/4 v6, 0x1

    invoke-static {p1, v6}, Lcom/vivo/settings/xml/SettingsItemGenerateService;->startServiceIfNeeded(Landroid/content/Context;Z)V

    .line 141
    :cond_9
    const-string v6, "com.vivo.night.eyes.intent"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 152
    iget-object v6, p0, Lcom/vivo/settings/BootCombineReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "night_mode_start_hour"

    const/16 v8, 0x14

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 153
    .local v4, "startHour":I
    iget-object v6, p0, Lcom/vivo/settings/BootCombineReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "night_mode_start_minute"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 154
    .local v5, "startMinute":I
    iget-object v6, p0, Lcom/vivo/settings/BootCombineReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "night_mode_end_hour"

    const/4 v8, 0x7

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 155
    .local v2, "endHour":I
    iget-object v6, p0, Lcom/vivo/settings/BootCombineReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "night_mode_end_minute"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 156
    .local v3, "endMinute":I
    invoke-static {v4, v5}, Lcom/vivo/settings/VivoNightModeAlarms;->isEqualsCurrent(II)Z

    move-result v6

    if-nez v6, :cond_a

    invoke-static {v2, v3}, Lcom/vivo/settings/VivoNightModeAlarms;->isEqualsCurrent(II)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 157
    :cond_a
    invoke-direct {p0, p1}, Lcom/vivo/settings/BootCombineReceiver;->updateNightMode(Landroid/content/Context;)V

    .line 161
    .end local v2    # "endHour":I
    .end local v3    # "endMinute":I
    .end local v4    # "startHour":I
    .end local v5    # "startMinute":I
    :cond_b
    const-string v6, "com.android.settings.SETTING_TIME"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    const-string v6, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 162
    :cond_c
    invoke-direct {p0, p1}, Lcom/vivo/settings/BootCombineReceiver;->updateNightMode(Landroid/content/Context;)V

    .line 164
    :cond_d
    const-string v6, "android.intent.action.FORCE_STOP_PACKAGE.com.android.settings"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 165
    invoke-direct {p0}, Lcom/vivo/settings/BootCombineReceiver;->restoreAlarm()V

    goto/16 :goto_0

    .line 123
    :catch_0
    move-exception v1

    .line 124
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "BootCombineReceiver"

    const-string v7, "error with checkAndResetDefaultRingtone "

    invoke-static {v6, v7, v1}, Lcom/vivo/settings/Vlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 133
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 134
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v6, "BootCombineReceiver"

    const-string v7, "error with checkAndResetDefaultRingtone "

    invoke-static {v6, v7, v1}, Lcom/vivo/settings/Vlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2
.end method
