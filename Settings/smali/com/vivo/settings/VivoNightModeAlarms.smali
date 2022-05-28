.class public Lcom/vivo/settings/VivoNightModeAlarms;
.super Ljava/lang/Object;
.source "VivoNightModeAlarms.java"


# static fields
.field public static final ALARM_ALERT_ACTION:Ljava/lang/String; = "com.vivo.night.eyes.intent"

.field public static final ALARM_RAW_DATA:Ljava/lang/String; = "com.vivo.night.eyes.intent.extra.alarm_raw"

.field public static final TAG:Ljava/lang/String; = "VivoNightModeAlarms"

.field public static mNightModeExchangeTime:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vivo/settings/VivoNightModeAlarms;->mNightModeExchangeTime:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateAlarm(II)Ljava/util/Calendar;
    .locals 9
    .param p0, "hour"    # I
    .param p1, "minute"    # I

    .prologue
    const/16 v8, 0xc

    const/16 v7, 0xb

    const/4 v6, 0x0

    .line 77
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 78
    .local v0, "c":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 80
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 81
    .local v1, "nowHour":I
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 84
    .local v2, "nowMinute":I
    if-lt p0, v1, :cond_0

    if-ne p0, v1, :cond_1

    if-gt p1, v2, :cond_1

    .line 86
    :cond_0
    const/4 v3, 0x6

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 88
    :cond_1
    invoke-virtual {v0, v7, p0}, Ljava/util/Calendar;->set(II)V

    .line 89
    invoke-virtual {v0, v8, p1}, Ljava/util/Calendar;->set(II)V

    .line 90
    const/16 v3, 0xd

    invoke-virtual {v0, v3, v6}, Ljava/util/Calendar;->set(II)V

    .line 91
    const/16 v3, 0xe

    invoke-virtual {v0, v3, v6}, Ljava/util/Calendar;->set(II)V

    .line 93
    return-object v0
.end method

.method public static disableAlert(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    const-string v2, "VivoNightModeAlarms"

    const-string v3, "nightmode disableAlert"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 37
    .local v0, "am":Landroid/app/AlarmManager;
    const/4 v2, 0x0

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.vivo.night.eyes.intent"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x10000000

    invoke-static {p0, v2, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 40
    .local v1, "sender":Landroid/app/PendingIntent;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 41
    return-void
.end method

.method public static enableAlert(Landroid/content/Context;J)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "atTimeInMillis"    # J

    .prologue
    const/4 v6, 0x0

    .line 51
    const-string v4, "alarm"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 53
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.vivo.night.eyes.intent"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 54
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 55
    .local v2, "out":Landroid/os/Parcel;
    invoke-virtual {v2, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 56
    const-string v4, "com.vivo.night.eyes.intent.extra.alarm_raw"

    invoke-virtual {v2}, Landroid/os/Parcel;->marshall()[B

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 58
    const-string v4, "exectime"

    sget-boolean v5, Lcom/vivo/settings/VivoNightModeAlarms;->mNightModeExchangeTime:Z

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 60
    const/high16 v4, 0x10000000

    invoke-static {p0, v6, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 63
    .local v3, "sender":Landroid/app/PendingIntent;
    invoke-virtual {v0, v6, p1, p2, v3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 64
    const-string v4, "VivoNightModeAlarms"

    const-string v5, "enableAlert"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void
.end method

.method public static isEqualsCurrent(II)Z
    .locals 7
    .param p0, "hour"    # I
    .param p1, "minute"    # I

    .prologue
    .line 140
    const/4 v3, 0x0

    .line 141
    .local v3, "ret":Z
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 142
    .local v0, "c":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 144
    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 145
    .local v1, "nowHour":I
    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 146
    .local v2, "nowMinute":I
    if-ne p0, v1, :cond_0

    if-ne p1, v2, :cond_0

    .line 147
    const/4 v3, 0x1

    .line 149
    :cond_0
    const-string v4, "VivoNightModeAlarms"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isEqualsCurrent result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mCurrent hour = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " minute = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " nowHour = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " nowMinute = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return v3
.end method

.method public static isLargerCurrent(II)Z
    .locals 7
    .param p0, "hour"    # I
    .param p1, "minute"    # I

    .prologue
    .line 112
    const/4 v3, 0x0

    .line 113
    .local v3, "ret":Z
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 114
    .local v0, "c":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 116
    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 117
    .local v1, "nowHour":I
    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 118
    .local v2, "nowMinute":I
    if-gt p0, v1, :cond_0

    if-ne p0, v1, :cond_1

    if-le p1, v2, :cond_1

    .line 119
    :cond_0
    const/4 v3, 0x1

    .line 121
    :cond_1
    const-string v4, "VivoNightModeAlarms"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCurrent time = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " hour = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " minute = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return v3
.end method

.method public static isSmallerCurrent(II)Z
    .locals 6
    .param p0, "hour"    # I
    .param p1, "minute"    # I

    .prologue
    .line 126
    const/4 v3, 0x0

    .line 127
    .local v3, "ret":Z
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 128
    .local v0, "c":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 130
    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 131
    .local v1, "nowHour":I
    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 132
    .local v2, "nowMinute":I
    if-lt p0, v1, :cond_0

    if-ne p0, v1, :cond_1

    if-ge p1, v2, :cond_1

    .line 133
    :cond_0
    const/4 v3, 0x1

    .line 136
    :cond_1
    return v3
.end method

.method public static isStartTimeLargerEnd(IIII)Z
    .locals 1
    .param p0, "startHour"    # I
    .param p1, "startMinute"    # I
    .param p2, "endHour"    # I
    .param p3, "endMinute"    # I

    .prologue
    .line 100
    const/4 v0, 0x0

    .line 102
    .local v0, "ret":Z
    if-gt p0, p2, :cond_0

    if-ne p0, p2, :cond_1

    if-le p1, p3, :cond_1

    .line 105
    :cond_0
    const/4 v0, 0x1

    .line 108
    :cond_1
    return v0
.end method
