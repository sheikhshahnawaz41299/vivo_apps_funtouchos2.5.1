.class public Lcom/vivo/settings/notification/VivoZenModeDowntime;
.super Lcom/vivo/settings/VivoSettingsPreferenceFragment;
.source "VivoZenModeDowntime.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/vivo/settings/notification/settime/TimePreference$OnTimeChangedListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "VivoZenModeDowntime"

.field private static final ZEN_MODE_REPEAT_CYCLE:Ljava/lang/String; = "zen_mode_repeat_cycle"


# instance fields
.field private final KEY_REPEAT1:Ljava/lang/String;

.field private final KEY_REPEAT2:Ljava/lang/String;

.field private final KEY_TIME1:Ljava/lang/String;

.field private final KEY_TIME2:Ljava/lang/String;

.field private mConfig:Landroid/service/notification/ZenModeConfig;

.field private mContext:Landroid/content/Context;

.field private mCurConfig:Landroid/service/notification/ZenModeConfig;

.field private mDowntimeInfo:Landroid/service/notification/ZenModeConfig$DowntimeInfo;

.field private mDowntimeKey:Ljava/lang/String;

.field private mEndTimePreference:Lcom/vivo/settings/notification/settime/TimePreference;

.field private mFinalButton:Landroid/widget/Button;

.field private mMarkupView:Lcom/vivo/common/MarkupView;

.field private mRepeatPref:Lcom/vivo/settings/notification/settime/RepeatPreference;

.field private mRepeatPrefEx:Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;

.field private mStartTimePreference:Lcom/vivo/settings/notification/settime/TimePreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;-><init>()V

    .line 48
    const-string v0, "time1"

    iput-object v0, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime;->KEY_TIME1:Ljava/lang/String;

    .line 49
    const-string v0, "time2"

    iput-object v0, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime;->KEY_TIME2:Ljava/lang/String;

    .line 50
    const-string v0, "setRepeat1"

    iput-object v0, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime;->KEY_REPEAT1:Ljava/lang/String;

    .line 51
    const-string v0, "setRepeat2"

    iput-object v0, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime;->KEY_REPEAT2:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/vivo/settings/notification/VivoZenModeDowntime;)Landroid/service/notification/ZenModeConfig$DowntimeInfo;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/notification/VivoZenModeDowntime;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime;->mDowntimeInfo:Landroid/service/notification/ZenModeConfig$DowntimeInfo;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vivo/settings/notification/VivoZenModeDowntime;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/notification/VivoZenModeDowntime;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime;->mDowntimeKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vivo/settings/notification/VivoZenModeDowntime;)Landroid/service/notification/ZenModeConfig;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/notification/VivoZenModeDowntime;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime;->mCurConfig:Landroid/service/notification/ZenModeConfig;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vivo/settings/notification/VivoZenModeDowntime;Landroid/service/notification/ZenModeConfig$DowntimeInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/notification/VivoZenModeDowntime;
    .param p1, "x1"    # Landroid/service/notification/ZenModeConfig$DowntimeInfo;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/vivo/settings/notification/VivoZenModeDowntime;->getKey(Landroid/service/notification/ZenModeConfig$DowntimeInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/vivo/settings/notification/VivoZenModeDowntime;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/notification/VivoZenModeDowntime;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/vivo/settings/notification/VivoZenModeDowntime;->setConfig()V

    return-void
.end method

.method static synthetic access$500(Lcom/vivo/settings/notification/VivoZenModeDowntime;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/notification/VivoZenModeDowntime;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getKey(Landroid/service/notification/ZenModeConfig$DowntimeInfo;)Ljava/lang/String;
    .locals 3
    .param p1, "downtimeInfo"    # Landroid/service/notification/ZenModeConfig$DowntimeInfo;

    .prologue
    .line 295
    const-string v0, ""

    .line 296
    .local v0, "key":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 297
    const/4 v1, 0x0

    .line 300
    :goto_0
    return-object v1

    .line 298
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->startHour:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->startMinute:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&end="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->endHour:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->endMinute:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->mode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 300
    goto :goto_0
.end method

.method private getMode(Lcom/vivo/settings/notification/settime/DaysOfWeek;)Ljava/lang/String;
    .locals 8
    .param p1, "daysOfWeek"    # Lcom/vivo/settings/notification/settime/DaysOfWeek;

    .prologue
    .line 169
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "days:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    .line 171
    .local v2, "empty":Z
    invoke-virtual {p1}, Lcom/vivo/settings/notification/settime/DaysOfWeek;->getBooleanArray()[Z

    move-result-object v1

    .line 172
    .local v1, "days":[Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, v1

    if-ge v3, v5, :cond_3

    .line 173
    add-int/lit8 v5, v3, 0x2

    rem-int/lit8 v5, v5, 0x7

    if-nez v5, :cond_0

    const/4 v0, 0x7

    .line 174
    .local v0, "day":I
    :goto_1
    aget-boolean v5, v1, v3

    if-nez v5, :cond_1

    .line 172
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 173
    .end local v0    # "day":I
    :cond_0
    add-int/lit8 v5, v3, 0x2

    rem-int/lit8 v0, v5, 0x7

    goto :goto_1

    .line 175
    .restart local v0    # "day":I
    :cond_1
    if-eqz v2, :cond_2

    .line 176
    const/4 v2, 0x0

    .line 180
    :goto_3
    const-string v5, "VivoZenModeDowntime"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getMode "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-boolean v7, v1, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 178
    :cond_2
    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 183
    .end local v0    # "day":I
    :cond_3
    if-eqz v2, :cond_4

    const/4 v5, 0x0

    :goto_4
    return-object v5

    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_4
.end method

.method private getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    .locals 4

    .prologue
    .line 263
    const-string v2, "notification"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    .line 266
    .local v1, "nm":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v1}, Landroid/app/INotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 269
    :goto_0
    return-object v2

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "VivoZenModeDowntime"

    const-string v3, "Error calling NoMan"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 269
    new-instance v2, Landroid/service/notification/ZenModeConfig;

    invoke-direct {v2}, Landroid/service/notification/ZenModeConfig;-><init>()V

    goto :goto_0
.end method

.method private initMarkupView(Landroid/view/View;)V
    .locals 2
    .param p1, "conentView"    # Landroid/view/View;

    .prologue
    .line 317
    const v0, 0x7f0e0147

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vivo/common/MarkupView;

    iput-object v0, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime;->mMarkupView:Lcom/vivo/common/MarkupView;

    .line 319
    iget-object v0, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime;->mMarkupView:Lcom/vivo/common/MarkupView;

    invoke-virtual {v0}, Lcom/vivo/common/MarkupView;->initDeleteLayout()V

    .line 320
    iget-object v0, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime;->mMarkupView:Lcom/vivo/common/MarkupView;

    invoke-virtual {v0}, Lcom/vivo/common/MarkupView;->getLeftButton()Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime;->mFinalButton:Landroid/widget/Button;

    .line 321
    iget-object v0, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime;->mFinalButton:Landroid/widget/Button;

    const v1, 0x7f0b02d1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 322
    iget-object v0, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime;->mFinalButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    return-void
.end method

.method private initViews(Landroid/service/notification/ZenModeConfig;)V
    .locals 11
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    const/4 v10, 0x0

    .line 217
    iget-object v7, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime;->mDowntimeInfo:Landroid/service/notification/ZenModeConfig$DowntimeInfo;

    iget-object v7, v7, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->mode:Ljava/lang/String;

    invoke-static {v7}, Landroid/service/notification/ZenModeConfig;->tryParseDays(Ljava/lang/String;)[I

    move-result-object v1

    .line 218
    .local v1, "days":[I
    new-instance v2, Lcom/vivo/settings/notification/settime/DaysOfWeek;

    invoke-direct {v2, v10}, Lcom/vivo/settings/notification/settime/DaysOfWeek;-><init>(I)V

    .line 219
    .local v2, "dow":Lcom/vivo/settings/notification/settime/DaysOfWeek;
    if-eqz v1, :cond_2

    array-length v7, v1

    if-lez v7, :cond_2

    .line 220
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 221
    .local v5, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 222
    .local v0, "c":Ljava/util/Calendar;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_0
    sget-object v7, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->DAYS:[I

    array-length v7, v7

    if-ge v4, v7, :cond_2

    .line 223
    const/4 v6, 0x0

    .line 224
    .local v6, "set":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v7, v1

    if-ge v3, v7, :cond_0

    .line 225
    aget v7, v1, v3

    sget-object v8, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->DAYS:[I

    aget v8, v8, v4

    if-ne v7, v8, :cond_1

    .line 226
    const/4 v6, 0x1

    .line 230
    :cond_0
    invoke-virtual {v2, v4, v6}, Lcom/vivo/settings/notification/settime/DaysOfWeek;->set(IZ)V

    .line 231
    const-string v7, "VivoZenModeDowntime"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initViews "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->DAYS:[I

    aget v9, v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";set:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 224
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 234
    .end local v0    # "c":Ljava/util/Calendar;
    .end local v3    # "i":I
    .end local v4    # "j":I
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    .end local v6    # "set":Z
    :cond_2
    const-string v7, "VivoZenModeDowntime"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initViews dow.getCoded():"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/vivo/settings/notification/settime/DaysOfWeek;->getCoded()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-virtual {v2}, Lcom/vivo/settings/notification/settime/DaysOfWeek;->getCoded()I

    move-result v7

    if-nez v7, :cond_3

    .line 236
    iget-object v7, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime;->mStartTimePreference:Lcom/vivo/settings/notification/settime/TimePreference;

    invoke-virtual {v7, v10}, Lcom/vivo/settings/notification/settime/TimePreference;->setEnabled(Z)V

    .line 237
    iget-object v7, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime;->mEndTimePreference:Lcom/vivo/settings/notification/settime/TimePreference;

    invoke-virtual {v7, v10}, Lcom/vivo/settings/notification/settime/TimePreference;->setEnabled(Z)V

    .line 239
    :cond_3
    iget-object v7, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime;->mRepeatPrefEx:Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;

    invoke-virtual {v7, v2}, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->setDaysOfWeek(Lcom/vivo/settings/notification/settime/DaysOfWeek;)V

    .line 240
    iget-object v7, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime;->mRepeatPref:Lcom/vivo/settings/notification/settime/RepeatPreference;

    invoke-virtual {v7, v2}, Lcom/vivo/settings/notification/settime/RepeatPreference;->setDaysOfWeek(Lcom/vivo/settings/notification/settime/DaysOfWeek;)V

    .line 244
    return-void
.end method

.method private setConfig()V
    .locals 2

    .prologue
    .line 283
    const-string v0, "VivoZenModeDowntime"

    const-string v1, "setConfig"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v0, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime;->mCurConfig:Landroid/service/notification/ZenModeConfig;

    invoke-direct {p0, v0}, Lcom/vivo/settings/notification/VivoZenModeDowntime;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z

    .line 292
    return-void
.end method

.method private setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z
    .locals 6
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    .line 247
    const-string v3, "notification"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    .line 250
    .local v1, "nm":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/app/INotificationManager;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z

    move-result v2

    .line 251
    .local v2, "success":Z
    if-eqz v2, :cond_0

    .line 252
    iput-object p1, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 253
    const-string v3, "VivoZenModeDowntime"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Saved mConfig="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    .end local v2    # "success":Z
    :cond_0
    :goto_0
    return v2

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "VivoZenModeDowntime"

    const-string v4, "Error calling NoMan"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 258
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getLayoutResouce()I
    .locals 1

    .prologue
    .line 305
    const v0, 0x7f04006e

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 327
    iget-object v2, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime;->mFinalButton:Landroid/widget/Button;

    if-ne p1, v2, :cond_0

    .line 328
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 331
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const v2, 0x7f0b02d1

    invoke-virtual {p0, v2}, Lcom/vivo/settings/notification/VivoZenModeDowntime;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    const v2, 0x7f0b00cb

    invoke-virtual {p0, v2}, Lcom/vivo/settings/notification/VivoZenModeDowntime;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    new-instance v0, Lcom/vivo/app/VivoContextListDialog;

    iget-object v2, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/vivo/app/VivoContextListDialog;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 334
    .local v0, "dialog":Lcom/vivo/app/VivoContextListDialog;
    const v2, 0x7f0b0798

    invoke-virtual {p0, v2}, Lcom/vivo/settings/notification/VivoZenModeDowntime;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/vivo/app/VivoContextListDialog;->setTitle(Ljava/lang/String;)V

    .line 335
    new-instance v2, Lcom/vivo/settings/notification/VivoZenModeDowntime$3;

    invoke-direct {v2, p0, v0}, Lcom/vivo/settings/notification/VivoZenModeDowntime$3;-><init>(Lcom/vivo/settings/notification/VivoZenModeDowntime;Lcom/vivo/app/VivoContextListDialog;)V

    invoke-virtual {v0, v2}, Lcom/vivo/app/VivoContextListDialog;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 346
    invoke-virtual {v0}, Lcom/vivo/app/VivoContextListDialog;->show()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 68
    invoke-super {p0, p1}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Lcom/vivo/settings/notification/VivoZenModeDowntime;->showBBKBackButton()V

    .line 70
    const v1, 0x7f060067

    invoke-virtual {p0, v1}, Lcom/vivo/settings/notification/VivoZenModeDowntime;->addPreferencesFromResource(I)V

    .line 71
    invoke-direct {p0}, Lcom/vivo/settings/notification/VivoZenModeDowntime;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 72
    iget-object v1, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime;->mCurConfig:Landroid/service/notification/ZenModeConfig;

    .line 73
    invoke-virtual {p0}, Lcom/vivo/settings/notification/VivoZenModeDowntime;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime;->mContext:Landroid/content/Context;

    .line 74
    const-string v1, "time1"

    invoke-virtual {p0, v1}, Lcom/vivo/settings/notification/VivoZenModeDowntime;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/vivo/settings/notification/settime/TimePreference;

    iput-object v1, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime;->mStartTimePreference:Lcom/vivo/settings/notification/settime/TimePreference;

    .line 75
    const-string v1, "time2"

    invoke-virtual {p0, v1}, Lcom/vivo/settings/notification/VivoZenModeDowntime;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/vivo/settings/notification/settime/TimePreference;

    iput-object v1, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime;->mEndTimePreference:Lcom/vivo/settings/notification/settime/TimePreference;

    .line 76
    iget-object v1, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime;->mStartTimePreference:Lcom/vivo/settings/notification/settime/TimePreference;

    invoke-virtual {v1, p0}, Lcom/vivo/settings/notification/settime/TimePreference;->setOnTimeChangedListener(Lcom/vivo/settings/notification/settime/TimePreference$OnTimeChangedListener;)V

    .line 77
    iget-object v1, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime;->mEndTimePreference:Lcom/vivo/settings/notification/settime/TimePreference;

    invoke-virtual {v1, p0}, Lcom/vivo/settings/notification/settime/TimePreference;->setOnTimeChangedListener(Lcom/vivo/settings/notification/settime/TimePreference$OnTimeChangedListener;)V

    .line 78
    iget-object v1, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime;->mEndTimePreference:Lcom/vivo/settings/notification/settime/TimePreference;

    invoke-virtual {v1, v2}, Lcom/vivo/settings/notification/settime/TimePreference;->setDividerVisible(Z)V

    .line 80
    const-string v1, "setRepeat1"

    invoke-virtual {p0, v1}, Lcom/vivo/settings/notification/VivoZenModeDowntime;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/vivo/settings/notification/settime/RepeatPreference;

    iput-object v1, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime;->mRepeatPref:Lcom/vivo/settings/notification/settime/RepeatPreference;

    .line 81
    iget-object v1, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime;->mRepeatPref:Lcom/vivo/settings/notification/settime/RepeatPreference;

    invoke-virtual {v1, v2}, Lcom/vivo/settings/notification/settime/RepeatPreference;->setSelectable(Z)V

    .line 83
    const-string v1, "setRepeat2"

    invoke-virtual {p0, v1}, Lcom/vivo/settings/notification/VivoZenModeDowntime;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;

    iput-object v1, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime;->mRepeatPrefEx:Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;

    .line 84
    iget-object v1, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime;->mRepeatPrefEx:Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;

    invoke-virtual {v1, p0}, Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 85
    invoke-virtual {p0}, Lcom/vivo/settings/notification/VivoZenModeDowntime;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 86
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 87
    const-string v1, "downtimeKey"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime;->mDowntimeKey:Ljava/lang/String;

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime;->mDowntimeKey:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 90
    new-instance v1, Landroid/service/notification/ZenModeConfig$DowntimeInfo;

    invoke-direct {v1}, Landroid/service/notification/ZenModeConfig$DowntimeInfo;-><init>()V

    iput-object v1, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime;->mDowntimeInfo:Landroid/service/notification/ZenModeConfig$DowntimeInfo;

    .line 91
    iget-object v1, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime;->mDowntimeInfo:Landroid/service/notification/ZenModeConfig$DowntimeInfo;

    const/16 v2, 0x16

    iput v2, v1, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->startHour:I

    .line 92
    iget-object v1, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime;->mDowntimeInfo:Landroid/service/notification/ZenModeConfig$DowntimeInfo;

    const/4 v2, 0x7

    iput v2, v1, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->endHour:I

    .line 93
    iget-object v1, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime;->mDowntimeInfo:Landroid/service/notification/ZenModeConfig$DowntimeInfo;

    const-string v2, "days:2,3,4,5,6,7,1"

    iput-object v2, v1, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->mode:Ljava/lang/String;

    .line 97
    :goto_0
    iget-object v1, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-direct {p0, v1}, Lcom/vivo/settings/notification/VivoZenModeDowntime;->initViews(Landroid/service/notification/ZenModeConfig;)V

    .line 98
    return-void

    .line 95
    :cond_1
    iget-object v1, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig;->downtimeInfos:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime;->mDowntimeKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/ZenModeConfig$DowntimeInfo;

    iput-object v1, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime;->mDowntimeInfo:Landroid/service/notification/ZenModeConfig$DowntimeInfo;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 311
    invoke-super {p0, p1, p2, p3}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 312
    .local v0, "view":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/vivo/settings/notification/VivoZenModeDowntime;->initMarkupView(Landroid/view/View;)V

    .line 313
    return-object v0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "p"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 151
    iget-object v2, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime;->mRepeatPrefEx:Lcom/vivo/settings/notification/settime/RepeatPreferenceEx;

    if-ne p1, v2, :cond_0

    move-object v0, p2

    .line 152
    check-cast v0, Lcom/vivo/settings/notification/settime/DaysOfWeek;

    .line 153
    .local v0, "daysOfWeek":Lcom/vivo/settings/notification/settime/DaysOfWeek;
    iget-object v2, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime;->mRepeatPref:Lcom/vivo/settings/notification/settime/RepeatPreference;

    invoke-virtual {p0}, Lcom/vivo/settings/notification/VivoZenModeDowntime;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v0, v3, v4}, Lcom/vivo/settings/notification/settime/DaysOfWeek;->toString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vivo/settings/notification/settime/RepeatPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 154
    invoke-direct {p0, v0}, Lcom/vivo/settings/notification/VivoZenModeDowntime;->getMode(Lcom/vivo/settings/notification/settime/DaysOfWeek;)Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, "sleepMode":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 156
    iget-object v2, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime;->mStartTimePreference:Lcom/vivo/settings/notification/settime/TimePreference;

    invoke-virtual {v2, v5}, Lcom/vivo/settings/notification/settime/TimePreference;->setEnabled(Z)V

    .line 157
    iget-object v2, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime;->mEndTimePreference:Lcom/vivo/settings/notification/settime/TimePreference;

    invoke-virtual {v2, v5}, Lcom/vivo/settings/notification/settime/TimePreference;->setEnabled(Z)V

    .line 163
    :goto_0
    iget-object v2, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime;->mDowntimeInfo:Landroid/service/notification/ZenModeConfig$DowntimeInfo;

    iput-object v1, v2, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->mode:Ljava/lang/String;

    .line 165
    .end local v0    # "daysOfWeek":Lcom/vivo/settings/notification/settime/DaysOfWeek;
    .end local v1    # "sleepMode":Ljava/lang/String;
    :cond_0
    return v4

    .line 159
    .restart local v0    # "daysOfWeek":Lcom/vivo/settings/notification/settime/DaysOfWeek;
    .restart local v1    # "sleepMode":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime;->mStartTimePreference:Lcom/vivo/settings/notification/settime/TimePreference;

    invoke-virtual {v2, v4}, Lcom/vivo/settings/notification/settime/TimePreference;->setEnabled(Z)V

    .line 160
    iget-object v2, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime;->mEndTimePreference:Lcom/vivo/settings/notification/settime/TimePreference;

    invoke-virtual {v2, v4}, Lcom/vivo/settings/notification/settime/TimePreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 102
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onResume()V

    .line 103
    iget-object v0, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime;->mMarkupView:Lcom/vivo/common/MarkupView;

    if-eqz v0, :cond_0

    .line 104
    iget-object v1, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime;->mMarkupView:Lcom/vivo/common/MarkupView;

    iget-object v0, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime;->mDowntimeKey:Ljava/lang/String;

    if-nez v0, :cond_1

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Lcom/vivo/common/MarkupView;->setVisibility(I)V

    .line 106
    :cond_0
    return-void

    .line 104
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTimeSetted(I[I)V
    .locals 5
    .param p1, "mTimeFlag"    # I
    .param p2, "time"    # [I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 187
    if-ne p1, v3, :cond_3

    .line 188
    aget v0, p2, v4

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->isValidHour(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    aget v0, p2, v3

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->isValidMinute(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    aget v0, p2, v4

    iget-object v1, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime;->mDowntimeInfo:Landroid/service/notification/ZenModeConfig$DowntimeInfo;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->startHour:I

    if-ne v0, v1, :cond_2

    aget v0, p2, v3

    iget-object v1, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime;->mDowntimeInfo:Landroid/service/notification/ZenModeConfig$DowntimeInfo;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->startMinute:I

    if-eq v0, v1, :cond_0

    .line 193
    :cond_2
    const-string v0, "VivoZenModeDowntime"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPrefChange sleepStart h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, p2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " m="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, p2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v0, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime;->mDowntimeInfo:Landroid/service/notification/ZenModeConfig$DowntimeInfo;

    aget v1, p2, v4

    iput v1, v0, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->startHour:I

    .line 199
    iget-object v0, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime;->mDowntimeInfo:Landroid/service/notification/ZenModeConfig$DowntimeInfo;

    aget v1, p2, v3

    iput v1, v0, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->startMinute:I

    goto :goto_0

    .line 200
    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 201
    aget v0, p2, v4

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->isValidHour(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    aget v0, p2, v3

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->isValidMinute(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    aget v0, p2, v4

    iget-object v1, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime;->mDowntimeInfo:Landroid/service/notification/ZenModeConfig$DowntimeInfo;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->endHour:I

    if-ne v0, v1, :cond_4

    aget v0, p2, v3

    iget-object v1, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime;->mDowntimeInfo:Landroid/service/notification/ZenModeConfig$DowntimeInfo;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->endMinute:I

    if-eq v0, v1, :cond_0

    .line 206
    :cond_4
    const-string v0, "VivoZenModeDowntime"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPrefChange sleepEnd h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, p2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " m="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, p2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v0, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime;->mDowntimeInfo:Landroid/service/notification/ZenModeConfig$DowntimeInfo;

    aget v1, p2, v4

    iput v1, v0, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->endHour:I

    .line 212
    iget-object v0, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime;->mDowntimeInfo:Landroid/service/notification/ZenModeConfig$DowntimeInfo;

    aget v1, p2, v3

    iput v1, v0, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->endMinute:I

    goto/16 :goto_0
.end method

.method public onViewBinded(ILcom/vivo/settings/notification/settime/TimePreference;)V
    .locals 4
    .param p1, "flag"    # I
    .param p2, "preference"    # Lcom/vivo/settings/notification/settime/TimePreference;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 274
    invoke-direct {p0}, Lcom/vivo/settings/notification/VivoZenModeDowntime;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 275
    if-ne p1, v2, :cond_1

    .line 276
    new-array v0, v1, [I

    iget-object v1, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime;->mDowntimeInfo:Landroid/service/notification/ZenModeConfig$DowntimeInfo;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->startHour:I

    aput v1, v0, v3

    iget-object v1, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime;->mDowntimeInfo:Landroid/service/notification/ZenModeConfig$DowntimeInfo;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->startMinute:I

    aput v1, v0, v2

    invoke-virtual {p2, v0}, Lcom/vivo/settings/notification/settime/TimePreference;->putStartTime([I)V

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    if-ne p1, v1, :cond_0

    .line 278
    new-array v0, v1, [I

    iget-object v1, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime;->mDowntimeInfo:Landroid/service/notification/ZenModeConfig$DowntimeInfo;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->endHour:I

    aput v1, v0, v3

    iget-object v1, p0, Lcom/vivo/settings/notification/VivoZenModeDowntime;->mDowntimeInfo:Landroid/service/notification/ZenModeConfig$DowntimeInfo;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->endMinute:I

    aput v1, v0, v2

    invoke-virtual {p2, v0}, Lcom/vivo/settings/notification/settime/TimePreference;->putEndTime([I)V

    goto :goto_0
.end method

.method public showBBKBackButton()V
    .locals 1

    .prologue
    .line 109
    const v0, 0x7f0b00cb

    invoke-virtual {p0, v0}, Lcom/vivo/settings/notification/VivoZenModeDowntime;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vivo/settings/notification/VivoZenModeDowntime;->showTitleLeftButton(Ljava/lang/CharSequence;)V

    .line 110
    const v0, 0x7f0b0653

    invoke-virtual {p0, v0}, Lcom/vivo/settings/notification/VivoZenModeDowntime;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vivo/settings/notification/VivoZenModeDowntime;->showTitleRightButton(Ljava/lang/CharSequence;)V

    .line 111
    new-instance v0, Lcom/vivo/settings/notification/VivoZenModeDowntime$1;

    invoke-direct {v0, p0}, Lcom/vivo/settings/notification/VivoZenModeDowntime$1;-><init>(Lcom/vivo/settings/notification/VivoZenModeDowntime;)V

    invoke-virtual {p0, v0}, Lcom/vivo/settings/notification/VivoZenModeDowntime;->onTitleLeftButtonPressed(Landroid/view/View$OnClickListener;)V

    .line 117
    new-instance v0, Lcom/vivo/settings/notification/VivoZenModeDowntime$2;

    invoke-direct {v0, p0}, Lcom/vivo/settings/notification/VivoZenModeDowntime$2;-><init>(Lcom/vivo/settings/notification/VivoZenModeDowntime;)V

    invoke-virtual {p0, v0}, Lcom/vivo/settings/notification/VivoZenModeDowntime;->onTitleRightButtonPressed(Landroid/view/View$OnClickListener;)V

    .line 149
    return-void
.end method
