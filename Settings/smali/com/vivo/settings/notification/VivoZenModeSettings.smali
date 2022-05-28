.class public Lcom/vivo/settings/notification/VivoZenModeSettings;
.super Lcom/vivo/settings/VivoSettingsPreferenceFragment;
.source "VivoZenModeSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/settings/notification/VivoZenModeSettings$SettingsObserver;
    }
.end annotation


# static fields
.field private static final GROUPS_COLUMNS:[Ljava/lang/String;

.field private static final KEY_AUTO_ZEN_MODE:Ljava/lang/String; = "zen_mode"

.field private static final KEY_DOWNTIME:Ljava/lang/String; = "downtime"

.field private static final KEY_END_TIME:Ljava/lang/String; = "end_time"

.field private static final KEY_IMPORTANT_EXPLAIN:Ljava/lang/String; = "important"

.field private static final KEY_SHECDUL_CATEGORY:Ljava/lang/String; = "shecdul_rules"

.field private static final KEY_SHECDUL_ZEN_MODE:Ljava/lang/String; = "shecdul_zen_mode"

.field private static final KEY_STARRED:Ljava/lang/String; = "starred"

.field private static final KEY_START_TIME:Ljava/lang/String; = "start_time"

.field private static final KEY_ZEN_MODE_EXPLAIN:Ljava/lang/String; = "zen_mode_explain"

.field private static final REQUEST_EXIT_SHECDUL_RULE:I = 0x2

.field private static final REQUEST_SHECDUL_RULE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "VivoZenModeSettings"

.field private static final ZEN_MODE_CONTACTS_GROUP:Ljava/lang/String; = "zen_mode_contacts_group"

.field private static final ZEN_MODE_GROUP_NAME:Ljava/lang/String; = "zen_mode_group_name"

.field private static final ZEN_MODE_REPEAT_CYCLE:Ljava/lang/String; = "zen_mode_repeat_cycle"

.field private static final ZEN_MODE_SHECDUL:Ljava/lang/String; = "zen_mode_shecdul_"


# instance fields
.field private mAutoZenMode:Landroid/preference/VivoCheckBoxPreference;

.field private mConfig:Landroid/service/notification/ZenModeConfig;

.field private mContactsExplain:Landroid/preference/PreferenceCategory;

.field private mContext:Landroid/content/Context;

.field private mDisableListeners:Z

.field private final mHandler:Landroid/os/Handler;

.field private mPM:Landroid/content/pm/PackageManager;

.field private final mSettingsObserver:Lcom/vivo/settings/notification/VivoZenModeSettings$SettingsObserver;

.field private mShecdulCategory:Landroid/preference/PreferenceCategory;

.field private mShecdulZenMode:Landroid/preference/VivoCheckBoxPreference;

.field private mStarred:Landroid/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 107
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "title"

    aput-object v2, v0, v1

    sput-object v0, Lcom/vivo/settings/notification/VivoZenModeSettings;->GROUPS_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;-><init>()V

    .line 111
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/vivo/settings/notification/VivoZenModeSettings;->mHandler:Landroid/os/Handler;

    .line 112
    new-instance v0, Lcom/vivo/settings/notification/VivoZenModeSettings$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/vivo/settings/notification/VivoZenModeSettings$SettingsObserver;-><init>(Lcom/vivo/settings/notification/VivoZenModeSettings;)V

    iput-object v0, p0, Lcom/vivo/settings/notification/VivoZenModeSettings;->mSettingsObserver:Lcom/vivo/settings/notification/VivoZenModeSettings$SettingsObserver;

    .line 380
    return-void
.end method

.method static synthetic access$000(Lcom/vivo/settings/notification/VivoZenModeSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/notification/VivoZenModeSettings;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/vivo/settings/notification/VivoZenModeSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vivo/settings/notification/VivoZenModeSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/notification/VivoZenModeSettings;

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/vivo/settings/notification/VivoZenModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/vivo/settings/notification/VivoZenModeSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/notification/VivoZenModeSettings;

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/vivo/settings/notification/VivoZenModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/vivo/settings/notification/VivoZenModeSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/notification/VivoZenModeSettings;

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/vivo/settings/notification/VivoZenModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/vivo/settings/notification/VivoZenModeSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/notification/VivoZenModeSettings;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/vivo/settings/notification/VivoZenModeSettings;->updateZenModeConfig()V

    return-void
.end method

.method static synthetic access$500(Lcom/vivo/settings/notification/VivoZenModeSettings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/notification/VivoZenModeSettings;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/vivo/settings/notification/VivoZenModeSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getDaysString(Landroid/service/notification/ZenModeConfig$DowntimeInfo;)Ljava/lang/String;
    .locals 9
    .param p1, "downtime"    # Landroid/service/notification/ZenModeConfig$DowntimeInfo;

    .prologue
    .line 182
    iget-object v7, p0, Lcom/vivo/settings/notification/VivoZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-eqz v7, :cond_4

    .line 183
    iget-object v7, p1, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->mode:Ljava/lang/String;

    invoke-static {v7}, Landroid/service/notification/ZenModeConfig;->tryParseDays(Ljava/lang/String;)[I

    move-result-object v2

    .line 184
    .local v2, "days":[I
    const/4 v1, 0x0

    .line 185
    .local v1, "count":I
    if-eqz v2, :cond_4

    array-length v7, v2

    if-eqz v7, :cond_4

    .line 186
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 187
    .local v0, "c":Ljava/util/Calendar;
    new-instance v3, Lcom/vivo/settings/notification/settime/DaysOfWeek;

    const/4 v7, 0x0

    invoke-direct {v3, v7}, Lcom/vivo/settings/notification/settime/DaysOfWeek;-><init>(I)V

    .line 188
    .local v3, "dow":Lcom/vivo/settings/notification/settime/DaysOfWeek;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_0
    sget-object v7, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->DAYS:[I

    array-length v7, v7

    if-ge v5, v7, :cond_2

    .line 189
    const/4 v6, 0x0

    .line 190
    .local v6, "set":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v7, v2

    if-ge v4, v7, :cond_0

    .line 191
    aget v7, v2, v4

    sget-object v8, Lcom/android/settings/notification/ZenModeDowntimeDaysSelection;->DAYS:[I

    aget v8, v8, v5

    if-ne v7, v8, :cond_1

    .line 192
    const/4 v6, 0x1

    .line 193
    add-int/lit8 v1, v1, 0x1

    .line 197
    :cond_0
    invoke-virtual {v3, v5, v6}, Lcom/vivo/settings/notification/settime/DaysOfWeek;->set(IZ)V

    .line 188
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 190
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 199
    .end local v4    # "i":I
    .end local v6    # "set":Z
    :cond_2
    invoke-virtual {v3}, Lcom/vivo/settings/notification/settime/DaysOfWeek;->isRepeatSet()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 200
    const/4 v7, 0x7

    if-ne v1, v7, :cond_3

    .line 201
    iget-object v7, p0, Lcom/vivo/settings/notification/VivoZenModeSettings;->mContext:Landroid/content/Context;

    const v8, 0x7f0b095f

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 208
    .end local v0    # "c":Ljava/util/Calendar;
    .end local v1    # "count":I
    .end local v2    # "days":[I
    .end local v3    # "dow":Lcom/vivo/settings/notification/settime/DaysOfWeek;
    .end local v5    # "j":I
    :goto_2
    return-object v7

    .line 203
    .restart local v0    # "c":Ljava/util/Calendar;
    .restart local v1    # "count":I
    .restart local v2    # "days":[I
    .restart local v3    # "dow":Lcom/vivo/settings/notification/settime/DaysOfWeek;
    .restart local v5    # "j":I
    :cond_3
    iget-object v7, p0, Lcom/vivo/settings/notification/VivoZenModeSettings;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    invoke-virtual {v3, v7, v8}, Lcom/vivo/settings/notification/settime/DaysOfWeek;->toString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 208
    .end local v0    # "c":Ljava/util/Calendar;
    .end local v1    # "count":I
    .end local v2    # "days":[I
    .end local v3    # "dow":Lcom/vivo/settings/notification/settime/DaysOfWeek;
    .end local v5    # "j":I
    :cond_4
    const/4 v7, 0x0

    goto :goto_2
.end method

.method private getRuleTitle(Landroid/service/notification/ZenModeConfig$DowntimeInfo;)Ljava/lang/String;
    .locals 4
    .param p1, "downtime"    # Landroid/service/notification/ZenModeConfig$DowntimeInfo;

    .prologue
    .line 499
    iget v2, p1, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->startHour:I

    iget v3, p1, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->startMinute:I

    invoke-direct {p0, v2, v3}, Lcom/vivo/settings/notification/VivoZenModeSettings;->getTimeString(II)Ljava/lang/String;

    move-result-object v1

    .line 500
    .local v1, "startTime":Ljava/lang/String;
    iget v2, p1, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->endHour:I

    iget v3, p1, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->endMinute:I

    invoke-direct {p0, v2, v3}, Lcom/vivo/settings/notification/VivoZenModeSettings;->getTimeString(II)Ljava/lang/String;

    move-result-object v0

    .line 501
    .local v0, "endTime":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getTimeString(II)Ljava/lang/String;
    .locals 7
    .param p1, "hour"    # I
    .param p2, "minute"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 405
    const-string v0, ""

    .line 406
    .local v0, "timeString":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%d:"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%02d"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 409
    return-object v0
.end method

.method private getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    .locals 4

    .prologue
    .line 350
    const-string v2, "notification"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    .line 353
    .local v1, "nm":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v1}, Landroid/app/INotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 356
    :goto_0
    return-object v2

    .line 354
    :catch_0
    move-exception v0

    .line 355
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "VivoZenModeSettings"

    const-string v3, "Error calling NoMan"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 356
    new-instance v2, Landroid/service/notification/ZenModeConfig;

    invoke-direct {v2}, Landroid/service/notification/ZenModeConfig;-><init>()V

    goto :goto_0
.end method

.method private setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z
    .locals 6
    .param p1, "config"    # Landroid/service/notification/ZenModeConfig;

    .prologue
    .line 361
    const-string v3, "notification"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    .line 364
    .local v1, "nm":Landroid/app/INotificationManager;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/app/INotificationManager;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z

    move-result v2

    .line 365
    .local v2, "success":Z
    if-eqz v2, :cond_0

    .line 366
    iput-object p1, p0, Lcom/vivo/settings/notification/VivoZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 367
    const-string v3, "VivoZenModeSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Saved mConfig="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/vivo/settings/notification/VivoZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    .end local v2    # "success":Z
    :cond_0
    :goto_0
    return v2

    .line 370
    :catch_0
    move-exception v0

    .line 371
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "VivoZenModeSettings"

    const-string v4, "Error calling NoMan"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 372
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateControls()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 212
    iput-boolean v3, p0, Lcom/vivo/settings/notification/VivoZenModeSettings;->mDisableListeners:Z

    .line 213
    iget-object v5, p0, Lcom/vivo/settings/notification/VivoZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v5}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 214
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    iget-object v5, p0, Lcom/vivo/settings/notification/VivoZenModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "zen_mode"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_0

    move v1, v3

    .line 215
    .local v1, "isCurrModeOn":Z
    :goto_0
    iget-object v5, p0, Lcom/vivo/settings/notification/VivoZenModeSettings;->mAutoZenMode:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v5, v1}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    .line 216
    iget-object v5, p0, Lcom/vivo/settings/notification/VivoZenModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "zen_mode_shecdul_"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_1

    move v2, v3

    .line 217
    .local v2, "isShecdulModeOn":Z
    :goto_1
    iget-object v3, p0, Lcom/vivo/settings/notification/VivoZenModeSettings;->mShecdulZenMode:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    .line 245
    invoke-direct {p0}, Lcom/vivo/settings/notification/VivoZenModeSettings;->updateZenFromSummary()V

    .line 246
    iput-boolean v4, p0, Lcom/vivo/settings/notification/VivoZenModeSettings;->mDisableListeners:Z

    .line 247
    return-void

    .end local v1    # "isCurrModeOn":Z
    .end local v2    # "isShecdulModeOn":Z
    :cond_0
    move v1, v4

    .line 214
    goto :goto_0

    .restart local v1    # "isCurrModeOn":Z
    :cond_1
    move v2, v4

    .line 216
    goto :goto_1
.end method

.method private updateShecdulRules()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/4 v4, 0x1

    const/4 v10, 0x0

    .line 422
    const-string v11, "VivoZenModeSettings"

    const-string v12, "updateShecdulRules"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object v11, p0, Lcom/vivo/settings/notification/VivoZenModeSettings;->mShecdulCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v11}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 424
    new-instance v11, Landroid/preference/VivoCheckBoxPreference;

    iget-object v12, p0, Lcom/vivo/settings/notification/VivoZenModeSettings;->mContext:Landroid/content/Context;

    invoke-direct {v11, v12}, Landroid/preference/VivoCheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/vivo/settings/notification/VivoZenModeSettings;->mShecdulZenMode:Landroid/preference/VivoCheckBoxPreference;

    .line 426
    iget-object v11, p0, Lcom/vivo/settings/notification/VivoZenModeSettings;->mShecdulZenMode:Landroid/preference/VivoCheckBoxPreference;

    const-string v12, "shecdul_zen_mode"

    invoke-virtual {v11, v12}, Landroid/preference/VivoCheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 427
    iget-object v11, p0, Lcom/vivo/settings/notification/VivoZenModeSettings;->mShecdulZenMode:Landroid/preference/VivoCheckBoxPreference;

    iget-object v12, p0, Lcom/vivo/settings/notification/VivoZenModeSettings;->mContext:Landroid/content/Context;

    const v13, 0x7f0b08e2

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/VivoCheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 428
    iget-object v11, p0, Lcom/vivo/settings/notification/VivoZenModeSettings;->mShecdulZenMode:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v11, v10}, Landroid/preference/VivoCheckBoxPreference;->setPersistent(Z)V

    .line 429
    iget-object v11, p0, Lcom/vivo/settings/notification/VivoZenModeSettings;->mShecdulCategory:Landroid/preference/PreferenceCategory;

    iget-object v12, p0, Lcom/vivo/settings/notification/VivoZenModeSettings;->mShecdulZenMode:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 430
    iget-object v11, p0, Lcom/vivo/settings/notification/VivoZenModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "zen_mode"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 431
    .local v9, "zenMode":I
    iget-object v11, p0, Lcom/vivo/settings/notification/VivoZenModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "zen_mode_shecdul_"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v4, :cond_1

    .line 432
    .local v4, "isShecdulModeOn":Z
    :goto_0
    iget-object v11, p0, Lcom/vivo/settings/notification/VivoZenModeSettings;->mShecdulZenMode:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v11, v4}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    .line 433
    iget-object v11, p0, Lcom/vivo/settings/notification/VivoZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iput-boolean v4, v11, Landroid/service/notification/ZenModeConfig;->downtimeEnable:Z

    .line 434
    iget-object v11, p0, Lcom/vivo/settings/notification/VivoZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v8, v11, Landroid/service/notification/ZenModeConfig;->downtimeInfos:Landroid/util/ArrayMap;

    .line 437
    .local v8, "rules":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/service/notification/ZenModeConfig$DowntimeInfo;>;"
    if-eqz v4, :cond_0

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v11

    if-gtz v11, :cond_2

    .line 438
    :cond_0
    iget-object v11, p0, Lcom/vivo/settings/notification/VivoZenModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "zen_mode_shecdul_"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 439
    iget-object v11, p0, Lcom/vivo/settings/notification/VivoZenModeSettings;->mShecdulZenMode:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v11, v10}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    .line 440
    iget-object v11, p0, Lcom/vivo/settings/notification/VivoZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iput-boolean v10, v11, Landroid/service/notification/ZenModeConfig;->downtimeEnable:Z

    .line 441
    iget-object v10, p0, Lcom/vivo/settings/notification/VivoZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-direct {p0, v10}, Lcom/vivo/settings/notification/VivoZenModeSettings;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z

    .line 491
    :goto_1
    return-void

    .end local v4    # "isShecdulModeOn":Z
    .end local v8    # "rules":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/service/notification/ZenModeConfig$DowntimeInfo;>;"
    :cond_1
    move v4, v10

    .line 431
    goto :goto_0

    .line 444
    .restart local v4    # "isShecdulModeOn":Z
    .restart local v8    # "rules":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/service/notification/ZenModeConfig$DowntimeInfo;>;"
    :cond_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v11

    if-ge v3, v11, :cond_4

    .line 445
    invoke-virtual {v8, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/service/notification/ZenModeConfig$DowntimeInfo;

    .line 446
    .local v6, "rule":Landroid/service/notification/ZenModeConfig$DowntimeInfo;
    invoke-virtual {v8, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 449
    .local v7, "ruleId":Ljava/lang/String;
    if-nez v6, :cond_3

    .line 444
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 452
    :cond_3
    new-instance v5, Landroid/preference/PreferenceScreen;

    iget-object v11, p0, Lcom/vivo/settings/notification/VivoZenModeSettings;->mContext:Landroid/content/Context;

    invoke-direct {v5, v11, v14}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 453
    .local v5, "pref":Landroid/preference/PreferenceScreen;
    invoke-direct {p0, v6}, Lcom/vivo/settings/notification/VivoZenModeSettings;->getRuleTitle(Landroid/service/notification/ZenModeConfig$DowntimeInfo;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 454
    invoke-direct {p0, v6}, Lcom/vivo/settings/notification/VivoZenModeSettings;->getDaysString(Landroid/service/notification/ZenModeConfig$DowntimeInfo;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 455
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "rule"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 460
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 461
    .local v1, "args":Landroid/os/Bundle;
    const-string v11, "downtimeKey"

    invoke-virtual {v1, v11, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    invoke-virtual {v5, v10}, Landroid/preference/PreferenceScreen;->setPersistent(Z)V

    .line 463
    new-instance v11, Lcom/vivo/settings/notification/VivoZenModeSettings$1;

    invoke-direct {v11, p0, v1}, Lcom/vivo/settings/notification/VivoZenModeSettings$1;-><init>(Lcom/vivo/settings/notification/VivoZenModeSettings;Landroid/os/Bundle;)V

    invoke-virtual {v5, v11}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 471
    const-string v11, "VivoZenModeSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "addShecdulPrefs i = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ruleId = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object v11, p0, Lcom/vivo/settings/notification/VivoZenModeSettings;->mShecdulCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v11, v5}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_3

    .line 474
    .end local v1    # "args":Landroid/os/Bundle;
    .end local v5    # "pref":Landroid/preference/PreferenceScreen;
    .end local v6    # "rule":Landroid/service/notification/ZenModeConfig$DowntimeInfo;
    .end local v7    # "ruleId":Ljava/lang/String;
    :cond_4
    new-instance v0, Landroid/preference/Preference;

    iget-object v10, p0, Lcom/vivo/settings/notification/VivoZenModeSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v10, v14}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 477
    .local v0, "addPref":Landroid/preference/Preference;
    iget-object v10, p0, Lcom/vivo/settings/notification/VivoZenModeSettings;->mContext:Landroid/content/Context;

    const v11, 0x7f0b0797

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 478
    const-string v10, "addPref"

    invoke-virtual {v0, v10}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 479
    new-instance v10, Lcom/vivo/settings/notification/VivoZenModeSettings$2;

    invoke-direct {v10, p0}, Lcom/vivo/settings/notification/VivoZenModeSettings$2;-><init>(Lcom/vivo/settings/notification/VivoZenModeSettings;)V

    invoke-virtual {v0, v10}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 487
    iget-object v10, p0, Lcom/vivo/settings/notification/VivoZenModeSettings;->mShecdulCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v10, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 488
    iget-object v10, p0, Lcom/vivo/settings/notification/VivoZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v10}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v2

    .line 489
    .local v2, "config":Landroid/service/notification/ZenModeConfig;
    iput-object v8, v2, Landroid/service/notification/ZenModeConfig;->downtimeInfos:Landroid/util/ArrayMap;

    .line 490
    invoke-direct {p0, v2}, Lcom/vivo/settings/notification/VivoZenModeSettings;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z

    goto/16 :goto_1
.end method

.method private updateZenFromSummary()V
    .locals 12

    .prologue
    const-wide/16 v10, -0x1

    .line 250
    const-string v7, ""

    .line 251
    .local v7, "summary":Ljava/lang/String;
    const-string v0, ""

    .line 252
    .local v0, "explain":Ljava/lang/String;
    invoke-direct {p0}, Lcom/vivo/settings/notification/VivoZenModeSettings;->updateZenModeForm()V

    .line 253
    iget-object v8, p0, Lcom/vivo/settings/notification/VivoZenModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 254
    .local v4, "res":Landroid/content/res/Resources;
    iget-object v8, p0, Lcom/vivo/settings/notification/VivoZenModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "zen_mode_contacts_group"

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 255
    .local v2, "groupId":J
    iget-object v8, p0, Lcom/vivo/settings/notification/VivoZenModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "zen_mode_group_name"

    invoke-static {v8, v9}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 256
    .local v1, "groupName":Ljava/lang/String;
    cmp-long v8, v2, v10

    if-nez v8, :cond_1

    .line 257
    iget-object v8, p0, Lcom/vivo/settings/notification/VivoZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v8, v8, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-eqz v8, :cond_0

    .line 258
    iget-object v8, p0, Lcom/vivo/settings/notification/VivoZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v8, v8, Landroid/service/notification/ZenModeConfig;->allowFrom:I

    packed-switch v8, :pswitch_data_0

    .line 283
    :goto_0
    iget-object v8, p0, Lcom/vivo/settings/notification/VivoZenModeSettings;->mStarred:Landroid/preference/Preference;

    invoke-virtual {v8, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 284
    iget-object v8, p0, Lcom/vivo/settings/notification/VivoZenModeSettings;->mContactsExplain:Landroid/preference/PreferenceCategory;

    invoke-virtual {v8, v0}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 285
    return-void

    .line 260
    :pswitch_0
    const v8, 0x7f0b07b8

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 261
    const v8, 0x7f0b079b

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 262
    goto :goto_0

    .line 264
    :pswitch_1
    const v8, 0x7f0b08ee

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 265
    const v8, 0x7f0b079e

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 266
    goto :goto_0

    .line 268
    :pswitch_2
    const v8, 0x7f0b07de

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 269
    const v8, 0x7f0b079c

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 273
    :cond_0
    const v8, 0x7f0b0882

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 274
    const v8, 0x7f0b079d

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 278
    :cond_1
    invoke-virtual {p0}, Lcom/vivo/settings/notification/VivoZenModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b079a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 279
    .local v6, "sInfoFormat":Ljava/lang/String;
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 280
    .local v5, "sFinalInfo":Ljava/lang/String;
    move-object v7, v1

    .line 281
    move-object v0, v5

    goto :goto_0

    .line 258
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private updateZenModeConfig()V
    .locals 4

    .prologue
    .line 342
    invoke-direct {p0}, Lcom/vivo/settings/notification/VivoZenModeSettings;->updateControls()V

    .line 343
    invoke-direct {p0}, Lcom/vivo/settings/notification/VivoZenModeSettings;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 344
    .local v0, "config":Landroid/service/notification/ZenModeConfig;
    iget-object v1, p0, Lcom/vivo/settings/notification/VivoZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 347
    :goto_0
    return-void

    .line 345
    :cond_0
    iput-object v0, p0, Lcom/vivo/settings/notification/VivoZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 346
    const-string v1, "VivoZenModeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateZenModeConfig mConfig="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/settings/notification/VivoZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateZenModeForm()V
    .locals 15

    .prologue
    .line 288
    iget-object v0, p0, Lcom/vivo/settings/notification/VivoZenModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zen_mode_contacts_group"

    const-wide/16 v4, -0x1

    invoke-static {v0, v1, v4, v5}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v10

    .line 289
    .local v10, "groupId":J
    const-string v3, "account_type NOT NULL AND account_name NOT NULL AND auto_add=0 AND favorites=0 AND deleted=0"

    .line 292
    .local v3, "where":Ljava/lang/String;
    iget-object v0, p0, Lcom/vivo/settings/notification/VivoZenModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_SUMMARY_URI:Landroid/net/Uri;

    sget-object v2, Lcom/vivo/settings/notification/VivoZenModeSettings;->GROUPS_COLUMNS:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 294
    .local v8, "cursor":Landroid/database/Cursor;
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 295
    .local v12, "idIndex":I
    const-string v0, "title"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 296
    .local v14, "titleIndex":I
    const-string v0, "account_name"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 297
    .local v7, "accountIndex":I
    const/4 v9, 0x0

    .line 298
    .local v9, "falg":Z
    if-eqz v8, :cond_1

    .line 299
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 300
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 301
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    cmp-long v0, v0, v10

    if-nez v0, :cond_4

    .line 302
    const/4 v9, 0x1

    .line 303
    invoke-interface {v8, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 304
    .local v13, "title":Ljava/lang/String;
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 305
    .local v6, "account":Ljava/lang/String;
    iget-object v0, p0, Lcom/vivo/settings/notification/VivoZenModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zen_mode_group_name"

    const-string v2, "Phone"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .end local v13    # "title":Ljava/lang/String;
    :goto_1
    invoke-static {v0, v1, v13}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 310
    .end local v6    # "account":Ljava/lang/String;
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 312
    :cond_1
    if-nez v9, :cond_2

    .line 313
    iget-object v0, p0, Lcom/vivo/settings/notification/VivoZenModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zen_mode_contacts_group"

    const-wide/16 v4, -0x1

    invoke-static {v0, v1, v4, v5}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 315
    :cond_2
    return-void

    .line 305
    .restart local v6    # "account":Ljava/lang/String;
    .restart local v13    # "title":Ljava/lang/String;
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_1

    .line 308
    .end local v6    # "account":Ljava/lang/String;
    .end local v13    # "title":Ljava/lang/String;
    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v1, 0x1

    .line 414
    const-string v0, "VivoZenModeSettings"

    const-string v3, "VivoZenModeSettings.onActivityResult()"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    if-ne p1, v1, :cond_0

    .line 416
    iget-object v3, p0, Lcom/vivo/settings/notification/VivoZenModeSettings;->mShecdulZenMode:Landroid/preference/VivoCheckBoxPreference;

    if-ne p2, v4, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    .line 417
    iget-object v0, p0, Lcom/vivo/settings/notification/VivoZenModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "zen_mode_shecdul_"

    if-ne p2, v4, :cond_2

    :goto_1
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 419
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 416
    goto :goto_0

    :cond_2
    move v1, v2

    .line 417
    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 127
    invoke-super {p0, p1}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 128
    invoke-virtual {p0}, Lcom/vivo/settings/notification/VivoZenModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/settings/notification/VivoZenModeSettings;->mContext:Landroid/content/Context;

    .line 129
    iget-object v1, p0, Lcom/vivo/settings/notification/VivoZenModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/settings/notification/VivoZenModeSettings;->mPM:Landroid/content/pm/PackageManager;

    .line 131
    const v1, 0x7f060069

    invoke-virtual {p0, v1}, Lcom/vivo/settings/notification/VivoZenModeSettings;->addPreferencesFromResource(I)V

    .line 132
    invoke-virtual {p0}, Lcom/vivo/settings/notification/VivoZenModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 134
    .local v0, "root":Landroid/preference/PreferenceScreen;
    invoke-direct {p0}, Lcom/vivo/settings/notification/VivoZenModeSettings;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/settings/notification/VivoZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 135
    const-string v1, "VivoZenModeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Vivo Loaded mConfig="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/settings/notification/VivoZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v1, "zen_mode"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/VivoCheckBoxPreference;

    iput-object v1, p0, Lcom/vivo/settings/notification/VivoZenModeSettings;->mAutoZenMode:Landroid/preference/VivoCheckBoxPreference;

    .line 138
    const-string v1, "shecdul_rules"

    invoke-virtual {p0, v1}, Lcom/vivo/settings/notification/VivoZenModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/vivo/settings/notification/VivoZenModeSettings;->mShecdulCategory:Landroid/preference/PreferenceCategory;

    .line 139
    const-string v1, "shecdul_zen_mode"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/VivoCheckBoxPreference;

    iput-object v1, p0, Lcom/vivo/settings/notification/VivoZenModeSettings;->mShecdulZenMode:Landroid/preference/VivoCheckBoxPreference;

    .line 141
    const-string v1, "starred"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/settings/notification/VivoZenModeSettings;->mStarred:Landroid/preference/Preference;

    .line 142
    const-string v1, "important"

    invoke-virtual {p0, v1}, Lcom/vivo/settings/notification/VivoZenModeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/vivo/settings/notification/VivoZenModeSettings;->mContactsExplain:Landroid/preference/PreferenceCategory;

    .line 143
    iget-object v1, p0, Lcom/vivo/settings/notification/VivoZenModeSettings;->mSettingsObserver:Lcom/vivo/settings/notification/VivoZenModeSettings$SettingsObserver;

    invoke-virtual {v1}, Lcom/vivo/settings/notification/VivoZenModeSettings$SettingsObserver;->register()V

    .line 144
    invoke-direct {p0}, Lcom/vivo/settings/notification/VivoZenModeSettings;->updateControls()V

    .line 145
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 337
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onDestroy()V

    .line 338
    iget-object v0, p0, Lcom/vivo/settings/notification/VivoZenModeSettings;->mSettingsObserver:Lcom/vivo/settings/notification/VivoZenModeSettings$SettingsObserver;

    invoke-virtual {v0}, Lcom/vivo/settings/notification/VivoZenModeSettings$SettingsObserver;->unregister()V

    .line 339
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 332
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onPause()V

    .line 333
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 148
    iget-object v1, p0, Lcom/vivo/settings/notification/VivoZenModeSettings;->mAutoZenMode:Landroid/preference/VivoCheckBoxPreference;

    if-ne p2, v1, :cond_4

    .line 149
    iget-object v1, p0, Lcom/vivo/settings/notification/VivoZenModeSettings;->mAutoZenMode:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/VivoCheckBoxPreference;->isChecked()Z

    move-result v7

    .line 150
    .local v7, "isAutoModeOn":Z
    iget-object v1, p0, Lcom/vivo/settings/notification/VivoZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v8, v1, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    .line 151
    .local v8, "isPriorityOn":Z
    if-eqz v8, :cond_2

    .line 152
    iget-object v1, p0, Lcom/vivo/settings/notification/VivoZenModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "zen_mode"

    if-eqz v7, :cond_1

    :goto_0
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 167
    .end local v7    # "isAutoModeOn":Z
    .end local v8    # "isPriorityOn":Z
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .restart local v7    # "isAutoModeOn":Z
    .restart local v8    # "isPriorityOn":Z
    :cond_1
    move v4, v0

    .line 152
    goto :goto_0

    .line 154
    :cond_2
    iget-object v1, p0, Lcom/vivo/settings/notification/VivoZenModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "zen_mode"

    if-eqz v7, :cond_3

    const/4 v0, 0x2

    :cond_3
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 156
    .end local v7    # "isAutoModeOn":Z
    .end local v8    # "isPriorityOn":Z
    :cond_4
    iget-object v1, p0, Lcom/vivo/settings/notification/VivoZenModeSettings;->mShecdulZenMode:Landroid/preference/VivoCheckBoxPreference;

    if-ne p2, v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/vivo/settings/notification/VivoZenModeSettings;->mShecdulZenMode:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/VivoCheckBoxPreference;->isChecked()Z

    move-result v9

    .line 158
    .local v9, "isShecdulModeOn":Z
    if-eqz v9, :cond_5

    iget-object v1, p0, Lcom/vivo/settings/notification/VivoZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig;->downtimeInfos:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-gtz v1, :cond_5

    .line 159
    iget-object v0, p0, Lcom/vivo/settings/notification/VivoZenModeSettings;->mContext:Landroid/content/Context;

    const-class v1, Lcom/vivo/settings/notification/VivoZenModeDowntime;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v5, 0x7f0b079f

    move-object v3, p0

    move-object v6, v2

    invoke-static/range {v0 .. v6}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V

    goto :goto_1

    .line 162
    :cond_5
    iget-object v1, p0, Lcom/vivo/settings/notification/VivoZenModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "zen_mode_shecdul_"

    if-eqz v9, :cond_6

    :goto_2
    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 163
    invoke-direct {p0}, Lcom/vivo/settings/notification/VivoZenModeSettings;->updateShecdulRules()V

    goto :goto_1

    :cond_6
    move v4, v0

    .line 162
    goto :goto_2
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 319
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onResume()V

    .line 320
    invoke-virtual {p0}, Lcom/vivo/settings/notification/VivoZenModeSettings;->showBBKBackButton()V

    .line 321
    const v0, 0x7f0b0960

    invoke-virtual {p0, v0}, Lcom/vivo/settings/notification/VivoZenModeSettings;->setTitle(I)V

    .line 322
    invoke-direct {p0}, Lcom/vivo/settings/notification/VivoZenModeSettings;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/notification/VivoZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 323
    const-string v0, "VivoZenModeSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Vivo Loaded mConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/settings/notification/VivoZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    invoke-direct {p0}, Lcom/vivo/settings/notification/VivoZenModeSettings;->updateControls()V

    .line 325
    invoke-direct {p0}, Lcom/vivo/settings/notification/VivoZenModeSettings;->updateShecdulRules()V

    .line 327
    invoke-virtual {p0}, Lcom/vivo/settings/notification/VivoZenModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vivo/settings/notification/VivoZenModeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/settings/PreferenceHelper;->addDividers(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V

    .line 328
    return-void
.end method

.method protected putZenModeSetting(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 377
    invoke-virtual {p0}, Lcom/vivo/settings/notification/VivoZenModeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zen_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 378
    return-void
.end method
