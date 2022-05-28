.class public Lcom/vivo/settings/VivoDateTimeSettingsEx;
.super Lcom/vivo/settings/VivoSettingsPreferenceFragment;
.source "VivoDateTimeSettingsEx.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Lcom/vivo/app/BBKDatePickerDialog$OnDateSetListener;
.implements Lcom/vivo/app/BBKTimePickerDialog$OnTimeSetListener;


# static fields
.field private static final ACTION_DATE_FORMAT_CHANGED:Ljava/lang/String; = "android.settings.ACTION_DATE_FORMAT_CHANGED"

.field private static final ACTION_SETTING_TIME:Ljava/lang/String; = "com.android.settings.SETTING_TIME"

.field private static final ACTION_THAI_CALENDAR_CHANGED:Ljava/lang/String; = "android.settings.ACTION_THAI_CALENDAR_CHANGED"

.field public static final CONNECTION_TYPE_MOBILE:I = 0x3ea

.field public static final CONNECTION_TYPE_NULL:I = 0x3e9

.field public static final CONNECTION_TYPE_WIFI:I = 0x3eb

.field private static final DIALOG_DATEPICKER:I = 0x1

.field private static final DIALOG_TIMEPICKER:I = 0x0

.field private static final HOURS_12:Ljava/lang/String; = "12"

.field private static final HOURS_24:Ljava/lang/String; = "24"

.field private static final INTENT_ACTION_NETWORK_SETTINGS:Ljava/lang/String; = "android.settings.NETWORK_SETTINGS"

.field private static final KEY_AUTO_TIME_ZONE:Ljava/lang/String; = "auto_zone"

.field private static final KEY_DATE_FORMAT:Ljava/lang/String; = "date_format"

.field private static final KEY_NEED_UPDATE_TIME:Ljava/lang/String; = "need_update_time_for_rtc_reset"

.field private static final TAG:Ljava/lang/String; = "DateTimeSettings"

.field private static final UPDATE_TIME_TRY_TIMES:I = 0x3


# instance fields
.field private mAutoTimePref:Landroid/preference/CheckBoxPreference;

.field private mAutoTimePrefEx:Landroid/preference/CheckBoxPreference;

.field private mAutoTimeZonePref:Landroid/preference/CheckBoxPreference;

.field private mDateFormat:Landroid/preference/ListPreference;

.field private mDatePref:Landroid/preference/Preference;

.field private mDummyDate:Ljava/util/Calendar;

.field private mExplain:Landroid/preference/Preference;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mThaiCalendar:Landroid/preference/CheckBoxPreference;

.field private mTime24Pref:Landroid/preference/CheckBoxPreference;

.field private mTimePref:Landroid/preference/Preference;

.field private mTimeZone:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;-><init>()V

    .line 233
    new-instance v0, Lcom/vivo/settings/VivoDateTimeSettingsEx$1;

    invoke-direct {v0, p0}, Lcom/vivo/settings/VivoDateTimeSettingsEx$1;-><init>(Lcom/vivo/settings/VivoDateTimeSettingsEx;)V

    iput-object v0, p0, Lcom/vivo/settings/VivoDateTimeSettingsEx;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/vivo/settings/VivoDateTimeSettingsEx;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/VivoDateTimeSettingsEx;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->updateDateFormatEntries()V

    return-void
.end method

.method private static clearFlag(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 647
    return-void
.end method

.method private getAutoState(Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 554
    :try_start_0
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    .line 556
    :cond_0
    :goto_0
    return v1

    .line 555
    :catch_0
    move-exception v0

    .line 556
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method public static getConnectionType(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v3, 0x3e9

    .line 622
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 624
    .local v0, "conMan":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 625
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-nez v1, :cond_1

    .line 637
    :cond_0
    :goto_0
    return v3

    .line 628
    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_0

    .line 631
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 632
    .local v2, "type":I
    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    .line 633
    const/16 v3, 0x3eb

    goto :goto_0

    .line 634
    :cond_2
    if-nez v2, :cond_0

    .line 635
    const/16 v3, 0x3ea

    goto :goto_0
.end method

.method private getDateFormat()Ljava/lang/String;
    .locals 2

    .prologue
    .line 534
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "date_format"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDateFormatForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DateFormat;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 651
    invoke-static {p0, p1}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->getDateFormatStringForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 652
    .local v0, "format":Ljava/lang/String;
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private static getDateFormatStringForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 656
    if-eqz p1, :cond_5

    .line 657
    const/16 v5, 0x4d

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 658
    .local v2, "month":I
    const/16 v5, 0x64

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 659
    .local v1, "day":I
    const/16 v5, 0x79

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 661
    .local v4, "year":I
    if-ltz v2, :cond_5

    if-ltz v1, :cond_5

    if-ltz v4, :cond_5

    .line 662
    const v5, 0x1040063

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 663
    .local v3, "template":Ljava/lang/String;
    if-ge v4, v2, :cond_1

    if-ge v4, v1, :cond_1

    .line 664
    if-ge v2, v1, :cond_0

    .line 665
    new-array v5, v6, [Ljava/lang/Object;

    const-string v6, "yyyy"

    aput-object v6, v5, v7

    const-string v6, "MM"

    aput-object v6, v5, v8

    const-string v6, "dd"

    aput-object v6, v5, v9

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v5, p1

    .line 689
    .end local v1    # "day":I
    .end local v2    # "month":I
    .end local v3    # "template":Ljava/lang/String;
    .end local v4    # "year":I
    :goto_1
    return-object v5

    .line 667
    .restart local v1    # "day":I
    .restart local v2    # "month":I
    .restart local v3    # "template":Ljava/lang/String;
    .restart local v4    # "year":I
    :cond_0
    new-array v5, v6, [Ljava/lang/Object;

    const-string v6, "yyyy"

    aput-object v6, v5, v7

    const-string v6, "dd"

    aput-object v6, v5, v8

    const-string v6, "MM"

    aput-object v6, v5, v9

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 669
    :cond_1
    if-ge v2, v1, :cond_3

    .line 670
    if-ge v1, v4, :cond_2

    .line 671
    new-array v5, v6, [Ljava/lang/Object;

    const-string v6, "MM"

    aput-object v6, v5, v7

    const-string v6, "dd"

    aput-object v6, v5, v8

    const-string v6, "yyyy"

    aput-object v6, v5, v9

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 673
    :cond_2
    new-array v5, v6, [Ljava/lang/Object;

    const-string v6, "MM"

    aput-object v6, v5, v7

    const-string v6, "yyyy"

    aput-object v6, v5, v8

    const-string v6, "dd"

    aput-object v6, v5, v9

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 676
    :cond_3
    if-ge v2, v4, :cond_4

    .line 677
    new-array v5, v6, [Ljava/lang/Object;

    const-string v6, "dd"

    aput-object v6, v5, v7

    const-string v6, "MM"

    aput-object v6, v5, v8

    const-string v6, "yyyy"

    aput-object v6, v5, v9

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 679
    :cond_4
    new-array v5, v6, [Ljava/lang/Object;

    const-string v6, "dd"

    aput-object v6, v5, v7

    const-string v6, "yyyy"

    aput-object v6, v5, v8

    const-string v6, "MM"

    aput-object v6, v5, v9

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 688
    .end local v1    # "day":I
    .end local v2    # "month":I
    .end local v3    # "template":Ljava/lang/String;
    .end local v4    # "year":I
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v5}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    .line 689
    .local v0, "d":Llibcore/icu/LocaleData;
    iget-object v5, v0, Llibcore/icu/LocaleData;->shortDateFormat4:Ljava/lang/String;

    goto :goto_1
.end method

.method private getTimeZoneText(Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 5
    .param p1, "tz"    # Ljava/util/TimeZone;

    .prologue
    .line 288
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v3}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    .line 289
    .local v0, "daylight":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 290
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 291
    .local v2, "tzId":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    .line 292
    const-string v3, "Asia/Krasnoyarsk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 293
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0918

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 303
    :goto_0
    return-object v3

    .line 295
    :cond_0
    const-string v3, "Europe/London"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 296
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0917

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 298
    :cond_1
    const-string v3, "Pacific/Tongatapu"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 299
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0919

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 302
    :cond_2
    const/4 v3, 0x1

    invoke-virtual {p1, v0, v3}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private initUI()V
    .locals 14

    .prologue
    const/high16 v13, 0x7f080000

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 112
    const-string v8, "auto_time"

    invoke-direct {p0, v8}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->getAutoState(Ljava/lang/String;)Z

    move-result v0

    .line 113
    .local v0, "autoTimeEnabled":Z
    const-string v8, "auto_time_zone"

    invoke-direct {p0, v8}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->getAutoState(Ljava/lang/String;)Z

    move-result v1

    .line 114
    .local v1, "autoTimeZoneEnabled":Z
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/settings/VivoDateTimeSettingsEx;->mDummyDate:Ljava/util/Calendar;

    .line 116
    const-string v8, "auto_zone"

    invoke-virtual {p0, v8}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/vivo/settings/VivoDateTimeSettingsEx;->mAutoTimeZonePref:Landroid/preference/CheckBoxPreference;

    .line 117
    iget-object v8, p0, Lcom/vivo/settings/VivoDateTimeSettingsEx;->mAutoTimeZonePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 118
    const-string v8, "auto_time"

    invoke-virtual {p0, v8}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/vivo/settings/VivoDateTimeSettingsEx;->mAutoTimePref:Landroid/preference/CheckBoxPreference;

    .line 119
    const-string v8, "auto_time_ex"

    invoke-virtual {p0, v8}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/vivo/settings/VivoDateTimeSettingsEx;->mAutoTimePrefEx:Landroid/preference/CheckBoxPreference;

    .line 120
    const-string v8, "time"

    invoke-virtual {p0, v8}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/settings/VivoDateTimeSettingsEx;->mTimePref:Landroid/preference/Preference;

    .line 121
    const-string v8, "24 hour"

    invoke-virtual {p0, v8}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/vivo/settings/VivoDateTimeSettingsEx;->mTime24Pref:Landroid/preference/CheckBoxPreference;

    .line 122
    const-string v8, "thaiCalendar"

    invoke-virtual {p0, v8}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/vivo/settings/VivoDateTimeSettingsEx;->mThaiCalendar:Landroid/preference/CheckBoxPreference;

    .line 123
    const-string v8, "date"

    invoke-virtual {p0, v8}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/settings/VivoDateTimeSettingsEx;->mDatePref:Landroid/preference/Preference;

    .line 124
    const-string v8, "auto_time_explain"

    invoke-virtual {p0, v8}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/settings/VivoDateTimeSettingsEx;->mExplain:Landroid/preference/Preference;

    .line 125
    const-string v8, "date_format"

    invoke-virtual {p0, v8}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/ListPreference;

    iput-object v8, p0, Lcom/vivo/settings/VivoDateTimeSettingsEx;->mDateFormat:Landroid/preference/ListPreference;

    .line 126
    const-string v8, "timezone"

    invoke-virtual {p0, v8}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/settings/VivoDateTimeSettingsEx;->mTimeZone:Landroid/preference/Preference;

    .line 128
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 129
    .local v3, "dateFormats":[Ljava/lang/String;
    array-length v8, v3

    new-array v6, v8, [Ljava/lang/String;

    .line 130
    .local v6, "formattedDates":[Ljava/lang/String;
    invoke-direct {p0}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->getDateFormat()Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, "currentFormat":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->updateDefaultDateFormat()V

    .line 134
    if-eqz v2, :cond_0

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 135
    :cond_0
    const-string v2, ""

    .line 137
    :cond_1
    invoke-direct {p0}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->isThaiArea()Z

    move-result v8

    if-nez v8, :cond_2

    .line 138
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v11, "use_thai_calendar"

    const-string v12, "0"

    invoke-static {v8, v11, v12}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 141
    :cond_2
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v8, v6

    if-ge v7, v8, :cond_5

    .line 142
    iget-object v8, p0, Lcom/vivo/settings/VivoDateTimeSettingsEx;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    .line 143
    .local v4, "dummyDate":Ljava/util/Date;
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->getActivity()Landroid/app/Activity;

    move-result-object v8

    aget-object v11, v3, v7

    invoke-static {v8, v11}, Landroid/text/format/DateFormat;->getDateFormatForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 145
    .local v5, "formatted":Ljava/lang/String;
    const-string v8, "1"

    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "use_thai_calendar"

    invoke-static {v11, v12}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 147
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/util/Calendar;->get(I)I

    move-result v11

    add-int/lit16 v11, v11, 0x21f

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v8, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 149
    :cond_3
    aget-object v8, v3, v7

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_4

    .line 150
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v11, 0x7f0b0085

    new-array v12, v9, [Ljava/lang/Object;

    aput-object v5, v12, v10

    invoke-virtual {v8, v11, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 141
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 153
    :cond_4
    aput-object v5, v6, v7

    goto :goto_1

    .line 157
    .end local v4    # "dummyDate":Ljava/util/Date;
    .end local v5    # "formatted":Ljava/lang/String;
    :cond_5
    iget-object v8, p0, Lcom/vivo/settings/VivoDateTimeSettingsEx;->mDateFormat:Landroid/preference/ListPreference;

    invoke-virtual {v8, v6}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 158
    iget-object v8, p0, Lcom/vivo/settings/VivoDateTimeSettingsEx;->mDateFormat:Landroid/preference/ListPreference;

    invoke-virtual {v8, v13}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 159
    iget-object v8, p0, Lcom/vivo/settings/VivoDateTimeSettingsEx;->mDateFormat:Landroid/preference/ListPreference;

    invoke-virtual {v8, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 161
    invoke-static {}, Lcom/android/settings/AppFeature;->IsExport()Z

    move-result v8

    if-nez v8, :cond_6

    .line 162
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v9, p0, Lcom/vivo/settings/VivoDateTimeSettingsEx;->mThaiCalendar:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 163
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v9, p0, Lcom/vivo/settings/VivoDateTimeSettingsEx;->mDateFormat:Landroid/preference/ListPreference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 164
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v9, p0, Lcom/vivo/settings/VivoDateTimeSettingsEx;->mAutoTimePrefEx:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 172
    :goto_2
    return-void

    .line 166
    :cond_6
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/vivo/settings/VivoDateTimeSettingsEx;->mAutoTimePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 167
    iget-object v8, p0, Lcom/vivo/settings/VivoDateTimeSettingsEx;->mAutoTimePrefEx:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 168
    iget-object v11, p0, Lcom/vivo/settings/VivoDateTimeSettingsEx;->mTimePref:Landroid/preference/Preference;

    if-nez v0, :cond_7

    move v8, v9

    :goto_3
    invoke-virtual {v11, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 169
    iget-object v11, p0, Lcom/vivo/settings/VivoDateTimeSettingsEx;->mDatePref:Landroid/preference/Preference;

    if-nez v0, :cond_8

    move v8, v9

    :goto_4
    invoke-virtual {v11, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 170
    iget-object v8, p0, Lcom/vivo/settings/VivoDateTimeSettingsEx;->mTimeZone:Landroid/preference/Preference;

    if-nez v1, :cond_9

    :goto_5
    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    :cond_7
    move v8, v10

    .line 168
    goto :goto_3

    :cond_8
    move v8, v10

    .line 169
    goto :goto_4

    :cond_9
    move v9, v10

    .line 170
    goto :goto_5
.end method

.method private is24Hour()Z
    .locals 1

    .prologue
    .line 512
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private isAutoTimeZoneOn()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 443
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_time_zone"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 447
    .local v0, "zoneOn":Z
    :goto_0
    return v0

    .end local v0    # "zoneOn":Z
    :cond_0
    move v0, v1

    .line 443
    goto :goto_0
.end method

.method private isThaiArea()Z
    .locals 2

    .prologue
    .line 561
    const-string v1, "persist.sys.vivo.product.cust"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 563
    .local v0, "countside":Ljava/lang/String;
    const-string v1, "TH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private set24Hour(Z)V
    .locals 3
    .param p1, "is24Hour"    # Z

    .prologue
    .line 516
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "time_12_24"

    if-eqz p1, :cond_0

    const-string v0, "24"

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 518
    return-void

    .line 516
    :cond_0
    const-string v0, "12"

    goto :goto_0
.end method

.method private setAutoTimeZoneOn(Z)V
    .locals 5
    .param p1, "on"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 451
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "auto_time"

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 452
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "auto_time_zone"

    if-eqz p1, :cond_1

    :goto_1
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 453
    return-void

    :cond_0
    move v0, v2

    .line 451
    goto :goto_0

    :cond_1
    move v1, v2

    .line 452
    goto :goto_1
.end method

.method static setDate(Landroid/content/Context;III)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    .line 582
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 584
    .local v0, "c":Ljava/util/Calendar;
    const/16 v1, 0x7bc

    if-ge p1, v1, :cond_2

    .line 585
    const/16 p1, 0x7bc

    .line 586
    const/4 p2, 0x0

    .line 587
    const/4 p3, 0x1

    .line 594
    :cond_0
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 595
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 596
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 597
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 599
    .local v2, "when":J
    const-wide/16 v4, 0x3e8

    div-long v4, v2, v4

    const-wide/32 v6, 0x7fffffff

    cmp-long v1, v4, v6

    if-gez v1, :cond_1

    .line 601
    invoke-static {v2, v3}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 603
    :cond_1
    invoke-static {p0}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->clearFlag(Landroid/content/Context;)V

    .line 604
    return-void

    .line 588
    .end local v2    # "when":J
    :cond_2
    const/16 v1, 0x7f5

    if-le p1, v1, :cond_0

    .line 589
    const/16 p1, 0x7f5

    .line 590
    const/16 p2, 0xb

    .line 591
    const/16 p3, 0x1f

    goto :goto_0
.end method

.method private setDependency(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 456
    iget-object v0, p0, Lcom/vivo/settings/VivoDateTimeSettingsEx;->mTimePref:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 457
    iget-object v0, p0, Lcom/vivo/settings/VivoDateTimeSettingsEx;->mDatePref:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 458
    iget-object v0, p0, Lcom/vivo/settings/VivoDateTimeSettingsEx;->mTimeZone:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 459
    return-void
.end method

.method static setTime(Landroid/content/Context;II)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hourOfDay"    # I
    .param p2, "minute"    # I

    .prologue
    const/4 v4, 0x0

    .line 566
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 568
    .local v0, "c":Ljava/util/Calendar;
    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 569
    const/16 v1, 0xc

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 570
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 571
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 572
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 574
    .local v2, "when":J
    const-wide/16 v4, 0x3e8

    div-long v4, v2, v4

    const-wide/32 v6, 0x7fffffff

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    .line 576
    invoke-static {v2, v3}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 578
    :cond_0
    invoke-static {p0}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->clearFlag(Landroid/content/Context;)V

    .line 579
    return-void
.end method

.method private updateDateFormatEntries()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 307
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f080000

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, "dateFormats":[Ljava/lang/String;
    array-length v5, v0

    new-array v3, v5, [Ljava/lang/String;

    .line 309
    .local v3, "formattedDates":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_2

    .line 310
    iget-object v5, p0, Lcom/vivo/settings/VivoDateTimeSettingsEx;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 311
    .local v1, "dummyDate":Ljava/util/Date;
    const/16 v5, 0xb

    invoke-virtual {v1, v5}, Ljava/util/Date;->setMonth(I)V

    .line 312
    const/16 v5, 0x1f

    invoke-virtual {v1, v5}, Ljava/util/Date;->setDate(I)V

    .line 313
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->getActivity()Landroid/app/Activity;

    move-result-object v5

    aget-object v6, v0, v4

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->getDateFormatForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 314
    .local v2, "formatted":Ljava/lang/String;
    const-string v5, "1"

    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "use_thai_calendar"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 316
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit16 v6, v6, 0x21f

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 318
    :cond_0
    aget-object v5, v0, v4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 319
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0085

    new-array v7, v9, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 309
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 322
    :cond_1
    aput-object v2, v3, v4

    goto :goto_1

    .line 325
    .end local v1    # "dummyDate":Ljava/util/Date;
    .end local v2    # "formatted":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/vivo/settings/VivoDateTimeSettingsEx;->mDateFormat:Landroid/preference/ListPreference;

    invoke-virtual {v5, v3}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 326
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 103
    invoke-super {p0, p1}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 104
    const-string v0, "DateTimeSettings"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const v0, 0x7f060014

    invoke-virtual {p0, v0}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->addPreferencesFromResource(I)V

    .line 107
    invoke-direct {p0}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->initUI()V

    .line 108
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/settings/PreferenceHelper;->addDividers(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V

    .line 109
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 9
    .param p1, "dialogId"    # I

    .prologue
    const/4 v8, 0x0

    .line 467
    const/4 v0, 0x0

    .line 468
    .local v0, "dialog":Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_0

    .line 508
    :goto_0
    return-object v0

    .line 470
    :pswitch_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 471
    .local v6, "calendar":Ljava/util/Calendar;
    new-instance v0, Lcom/vivo/app/BBKDatePickerDialog;

    .end local v0    # "dialog":Landroid/app/Dialog;
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v2, 0x2

    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v2, 0x5

    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/vivo/app/BBKDatePickerDialog;-><init>(Landroid/content/Context;Lcom/vivo/app/BBKDatePickerDialog$OnDateSetListener;III)V

    .restart local v0    # "dialog":Landroid/app/Dialog;
    move-object v1, v0

    .line 474
    check-cast v1, Lcom/vivo/app/BBKDatePickerDialog;

    const/16 v2, 0x7bc

    const/16 v3, 0x7f5

    invoke-virtual {v1, v2, v3}, Lcom/vivo/app/BBKDatePickerDialog;->updateYearRange(II)V

    .line 475
    invoke-virtual {v0, v8}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_0

    .line 478
    .end local v6    # "calendar":Ljava/util/Calendar;
    :pswitch_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 479
    .local v7, "calendar2":Ljava/util/Calendar;
    new-instance v0, Lcom/vivo/app/BBKTimePickerDialog;

    .end local v0    # "dialog":Landroid/app/Dialog;
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v7, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v2, 0xc

    invoke-virtual {v7, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/vivo/app/BBKTimePickerDialog;-><init>(Landroid/content/Context;Lcom/vivo/app/BBKTimePickerDialog$OnTimeSetListener;IIZ)V

    .line 483
    .restart local v0    # "dialog":Landroid/app/Dialog;
    invoke-virtual {v0, v8}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_0

    .line 468
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onDateSet(Lcom/vivo/common/widget/BBKDatePicker;III)V
    .locals 3
    .param p1, "view"    # Lcom/vivo/common/widget/BBKDatePicker;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I

    .prologue
    .line 540
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 541
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 542
    const-string v1, "DateTimeSettings"

    const-string v2, "onDateSet"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    invoke-static {v0, p2, p3, p4}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->setDate(Landroid/content/Context;III)V

    .line 544
    invoke-virtual {p0, v0}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 545
    invoke-direct {p0}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->updateDateFormatEntries()V

    .line 550
    :goto_0
    return-void

    .line 548
    :cond_0
    const-string v1, "DateTimeSettings"

    const-string v2, "onDateSet activity is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/vivo/settings/VivoDateTimeSettingsEx;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/settings/VivoDateTimeSettingsEx;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 179
    :cond_0
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 181
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onPause()V

    .line 182
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 367
    const-string v4, "DateTimeSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onPreferenceTreeClick preference = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget-object v4, p0, Lcom/vivo/settings/VivoDateTimeSettingsEx;->mAutoTimePref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_1

    .line 369
    iget-object v4, p0, Lcom/vivo/settings/VivoDateTimeSettingsEx;->mAutoTimePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->setAutoTimeZoneOn(Z)V

    .line 438
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    return v4

    .line 391
    :cond_1
    iget-object v4, p0, Lcom/vivo/settings/VivoDateTimeSettingsEx;->mTimePref:Landroid/preference/Preference;

    if-ne p2, v4, :cond_2

    .line 392
    invoke-virtual {p0, v6}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->removeDialog(I)V

    .line 393
    invoke-virtual {p0, v6}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->showDialog(I)V

    goto :goto_0

    .line 394
    :cond_2
    iget-object v4, p0, Lcom/vivo/settings/VivoDateTimeSettingsEx;->mDatePref:Landroid/preference/Preference;

    if-ne p2, v4, :cond_3

    .line 395
    invoke-virtual {p0, v5}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->removeDialog(I)V

    .line 396
    invoke-virtual {p0, v5}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->showDialog(I)V

    goto :goto_0

    .line 397
    :cond_3
    iget-object v4, p0, Lcom/vivo/settings/VivoDateTimeSettingsEx;->mTime24Pref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_4

    .line 398
    iget-object v4, p0, Lcom/vivo/settings/VivoDateTimeSettingsEx;->mTime24Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->set24Hour(Z)V

    .line 399
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 400
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.TIME_SET"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 401
    .local v3, "timeChanged":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 402
    .end local v3    # "timeChanged":Landroid/content/Intent;
    :cond_4
    iget-object v4, p0, Lcom/vivo/settings/VivoDateTimeSettingsEx;->mThaiCalendar:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_6

    .line 403
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "use_thai_calendar"

    iget-object v4, p0, Lcom/vivo/settings/VivoDateTimeSettingsEx;->mThaiCalendar:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "1"

    :goto_1
    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 407
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 408
    invoke-direct {p0}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->updateDateFormatEntries()V

    .line 409
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.settings.ACTION_THAI_CALENDAR_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 410
    .local v2, "thaiChanged":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 403
    .end local v2    # "thaiChanged":Landroid/content/Intent;
    :cond_5
    const-string v4, "0"

    goto :goto_1

    .line 411
    :cond_6
    iget-object v4, p0, Lcom/vivo/settings/VivoDateTimeSettingsEx;->mAutoTimePrefEx:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_a

    .line 412
    const-string v4, "DateTimeSettings"

    const-string v7, "Begin to update time"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v4, p0, Lcom/vivo/settings/VivoDateTimeSettingsEx;->mAutoTimePrefEx:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 415
    .local v0, "autoEnabled":Z
    if-eqz v0, :cond_7

    .line 416
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "auto_time"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 418
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "auto_time_gps"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 426
    :goto_2
    iget-object v7, p0, Lcom/vivo/settings/VivoDateTimeSettingsEx;->mTimePref:Landroid/preference/Preference;

    if-nez v0, :cond_8

    move v4, v5

    :goto_3
    invoke-virtual {v7, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 427
    iget-object v4, p0, Lcom/vivo/settings/VivoDateTimeSettingsEx;->mDatePref:Landroid/preference/Preference;

    if-nez v0, :cond_9

    :goto_4
    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 421
    :cond_7
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "auto_time"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 423
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "auto_time_gps"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_8
    move v4, v6

    .line 426
    goto :goto_3

    :cond_9
    move v5, v6

    .line 427
    goto :goto_4

    .line 428
    .end local v0    # "autoEnabled":Z
    :cond_a
    iget-object v4, p0, Lcom/vivo/settings/VivoDateTimeSettingsEx;->mAutoTimeZonePref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_0

    .line 429
    iget-object v4, p0, Lcom/vivo/settings/VivoDateTimeSettingsEx;->mAutoTimeZonePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    .line 431
    .local v1, "autoTimeZoneEnabled":Z
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "auto_time_zone"

    if-eqz v1, :cond_b

    move v4, v5

    :goto_5
    invoke-static {v7, v8, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 435
    iget-object v4, p0, Lcom/vivo/settings/VivoDateTimeSettingsEx;->mTimeZone:Landroid/preference/Preference;

    if-nez v1, :cond_c

    :goto_6
    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_b
    move v4, v6

    .line 431
    goto :goto_5

    :cond_c
    move v5, v6

    .line 435
    goto :goto_6
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 186
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onResume()V

    .line 187
    const v2, 0x7f0b0086

    invoke-virtual {p0, v2}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->setTitle(I)V

    .line 188
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->showBBKBackButton()V

    .line 190
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 192
    iget-object v2, p0, Lcom/vivo/settings/VivoDateTimeSettingsEx;->mTime24Pref:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->is24Hour()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 193
    invoke-direct {p0}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->isAutoTimeZoneOn()Z

    move-result v1

    .line 194
    .local v1, "isAutoTimeOn":Z
    iget-object v2, p0, Lcom/vivo/settings/VivoDateTimeSettingsEx;->mAutoTimePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 196
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 197
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 198
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 199
    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/settings/VivoDateTimeSettingsEx;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0, v4, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 201
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 202
    invoke-direct {p0}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->updateDateFormatEntries()V

    .line 203
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 6
    .param p1, "preferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 343
    const-string v3, "date_format"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 344
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0084

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 346
    .local v1, "format":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 348
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->getDateFormatForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v2

    check-cast v2, Ljava/text/SimpleDateFormat;

    .line 349
    .local v2, "sFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->getDateFormatForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v2

    .end local v2    # "sFormat":Ljava/text/SimpleDateFormat;
    check-cast v2, Ljava/text/SimpleDateFormat;

    .line 350
    .restart local v2    # "sFormat":Ljava/text/SimpleDateFormat;
    const-string v3, "DateTimeSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sFormat.toPattern() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "date_format"

    invoke-virtual {v2}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 357
    .end local v2    # "sFormat":Ljava/text/SimpleDateFormat;
    :goto_0
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->updateDefaultDateFormat()V

    .line 358
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 359
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.settings.ACTION_DATE_FORMAT_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 360
    .local v0, "dateFormatChanged":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 362
    .end local v0    # "dateFormatChanged":Landroid/content/Intent;
    .end local v1    # "format":Ljava/lang/String;
    :cond_0
    return-void

    .line 354
    .restart local v1    # "format":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "date_format"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public onTimeSet(Lcom/vivo/common/widget/BBKTimePicker;II)V
    .locals 3
    .param p1, "view"    # Lcom/vivo/common/widget/BBKTimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    .line 522
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 523
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 524
    const-string v1, "DateTimeSettings"

    const-string v2, "onTimeSet"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    invoke-static {v0, p2, p3}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->setTime(Landroid/content/Context;II)V

    .line 526
    invoke-virtual {p0, v0}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 527
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.settings.SETTING_TIME"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 531
    :goto_0
    return-void

    .line 529
    :cond_0
    const-string v1, "DateTimeSettings"

    const-string v2, "onTimeSet activity is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateDefaultDateFormat()V
    .locals 7

    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f080000

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 330
    .local v1, "dateFormats":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "date_format"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, "currFormat":Ljava/lang/String;
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 333
    .local v2, "listDateFormats":Ljava/util/List;
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 334
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/text/format/DateFormat;->getDateFormatForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v3

    check-cast v3, Ljava/text/SimpleDateFormat;

    .line 335
    .local v3, "sFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/format/DateFormat;->getDateFormatForSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/text/DateFormat;

    move-result-object v3

    .end local v3    # "sFormat":Ljava/text/SimpleDateFormat;
    check-cast v3, Ljava/text/SimpleDateFormat;

    .line 336
    .restart local v3    # "sFormat":Ljava/text/SimpleDateFormat;
    const-string v4, "DateTimeSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateDefaultDateFormat to sFormat.toPattern() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",currFormat="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "date_format"

    invoke-virtual {v3}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 340
    .end local v3    # "sFormat":Ljava/text/SimpleDateFormat;
    :cond_0
    return-void
.end method

.method public updateTimeAndDateDisplay(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x1

    .line 245
    const-string v8, "DateTimeSettings"

    const-string v9, "updateTimeAndDateDisplay"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const/4 v0, 0x0

    .line 247
    .local v0, "autoZone":Z
    invoke-static {p1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v5

    .line 249
    .local v5, "shortDateFormat":Ljava/text/DateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    iput-object v8, p0, Lcom/vivo/settings/VivoDateTimeSettingsEx;->mDummyDate:Ljava/util/Calendar;

    .line 250
    iget-object v8, p0, Lcom/vivo/settings/VivoDateTimeSettingsEx;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    .line 252
    .local v3, "dummyDate":Ljava/util/Date;
    iget-object v8, p0, Lcom/vivo/settings/VivoDateTimeSettingsEx;->mTimePref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v8, p0, Lcom/vivo/settings/VivoDateTimeSettingsEx;->mTimeZone:Landroid/preference/Preference;

    iget-object v9, p0, Lcom/vivo/settings/VivoDateTimeSettingsEx;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->getTimeZoneText(Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 255
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 258
    .local v2, "dateTemp":Ljava/lang/String;
    move-object v4, v3

    .line 259
    .local v4, "formatDate":Ljava/util/Date;
    const/16 v8, 0xb

    invoke-virtual {v4, v8}, Ljava/util/Date;->setMonth(I)V

    .line 260
    const/16 v8, 0x1f

    invoke-virtual {v4, v8}, Ljava/util/Date;->setDate(I)V

    .line 261
    invoke-virtual {v5, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 262
    .local v1, "dateFomat":Ljava/lang/String;
    const-string v8, "1"

    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "use_thai_calendar"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 264
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/util/Calendar;->get(I)I

    move-result v9

    add-int/lit16 v9, v9, 0x21f

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 265
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/util/Calendar;->get(I)I

    move-result v9

    add-int/lit16 v9, v9, 0x21f

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 267
    :cond_0
    iget-object v8, p0, Lcom/vivo/settings/VivoDateTimeSettingsEx;->mDatePref:Landroid/preference/Preference;

    invoke-virtual {v8, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v8, p0, Lcom/vivo/settings/VivoDateTimeSettingsEx;->mDateFormat:Landroid/preference/ListPreference;

    invoke-virtual {v8, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 270
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v7

    .line 271
    .local v7, "tz":Ljava/util/TimeZone;
    const-string v8, "DateTimeSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "tz="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-static {}, Lcom/android/settings/AppFeature;->IsExport()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 273
    invoke-direct {p0}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->isThaiArea()Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "ar_EG"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 274
    :cond_1
    iget-object v8, p0, Lcom/vivo/settings/VivoDateTimeSettingsEx;->mThaiCalendar:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v8}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->removePreference(Landroid/preference/Preference;)V

    .line 275
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "use_thai_calendar"

    const-string v10, "0"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 277
    new-instance v6, Landroid/content/Intent;

    const-string v8, "android.settings.ACTION_THAI_CALENDAR_CHANGED"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 278
    .local v6, "thaiChanged":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 285
    .end local v6    # "thaiChanged":Landroid/content/Intent;
    :cond_2
    :goto_0
    return-void

    .line 280
    :cond_3
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v9, p0, Lcom/vivo/settings/VivoDateTimeSettingsEx;->mThaiCalendar:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 281
    iget-object v8, p0, Lcom/vivo/settings/VivoDateTimeSettingsEx;->mThaiCalendar:Landroid/preference/CheckBoxPreference;

    const-string v9, "1"

    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "use_thai_calendar"

    invoke-static {v10, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method
