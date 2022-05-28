.class public Lcom/vivo/settings/VivoDateTimeSettings;
.super Lcom/vivo/settings/VivoSettingsPreferenceFragment;
.source "VivoDateTimeSettings.java"

# interfaces
.implements Lcom/vivo/app/BBKDatePickerDialog$OnDateSetListener;
.implements Lcom/vivo/app/BBKTimePickerDialog$OnTimeSetListener;


# static fields
.field private static final ACTION_SETTING_TIME:Ljava/lang/String; = "com.android.settings.SETTING_TIME"

.field public static final CONNECTION_TYPE_MOBILE:I = 0x3ea

.field public static final CONNECTION_TYPE_NULL:I = 0x3e9

.field public static final CONNECTION_TYPE_WIFI:I = 0x3eb

.field private static final DIALOG_DATEPICKER:I = 0x1

.field private static final DIALOG_TIMEPICKER:I = 0x0

.field private static final HOURS_12:Ljava/lang/String; = "12"

.field private static final HOURS_24:Ljava/lang/String; = "24"

.field private static final TAG:Ljava/lang/String; = "DateTimeSettings"


# instance fields
.field private mAutoTimePref:Landroid/preference/CheckBoxPreference;

.field private mDatePref:Landroid/preference/Preference;

.field private mDummyDate:Ljava/util/Calendar;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mTime24Pref:Landroid/preference/CheckBoxPreference;

.field private mTimePref:Landroid/preference/Preference;

.field private mTimeZone:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;-><init>()V

    .line 90
    new-instance v0, Lcom/vivo/settings/VivoDateTimeSettings$1;

    invoke-direct {v0, p0}, Lcom/vivo/settings/VivoDateTimeSettings$1;-><init>(Lcom/vivo/settings/VivoDateTimeSettings;)V

    iput-object v0, p0, Lcom/vivo/settings/VivoDateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static configureDatePicker(Landroid/widget/DatePicker;)V
    .locals 4
    .param p0, "datePicker"    # Landroid/widget/DatePicker;

    .prologue
    .line 282
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 283
    .local v0, "t":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 284
    const/16 v1, 0x7b2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 285
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 286
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 287
    const/16 v1, 0x7f5

    const/16 v2, 0xb

    const/16 v3, 0x1f

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 288
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/widget/DatePicker;->setMaxDate(J)V

    .line 289
    return-void
.end method

.method public static getConnectionType(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v3, 0x3e9

    .line 296
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 298
    .local v0, "conMan":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 299
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-nez v1, :cond_1

    .line 311
    :cond_0
    :goto_0
    return v3

    .line 302
    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_0

    .line 305
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 306
    .local v2, "type":I
    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    .line 307
    const/16 v3, 0x3eb

    goto :goto_0

    .line 308
    :cond_2
    if-nez v2, :cond_0

    .line 309
    const/16 v3, 0x3ea

    goto :goto_0
.end method

.method private getTimeZoneText(Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 5
    .param p1, "tz"    # Ljava/util/TimeZone;

    .prologue
    .line 115
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v3}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    .line 116
    .local v0, "daylight":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 118
    .local v2, "tzId":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    .line 119
    const-string v3, "Asia/Krasnoyarsk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0918

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 130
    :goto_0
    return-object v3

    .line 122
    :cond_0
    const-string v3, "Europe/London"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 123
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0917

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 125
    :cond_1
    const-string v3, "Pacific/Tongatapu"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 126
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0919

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 129
    :cond_2
    const/4 v3, 0x1

    invoke-virtual {p1, v0, v3}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private initUI()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 55
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/VivoDateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    .line 56
    iget-object v0, p0, Lcom/vivo/settings/VivoDateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/vivo/settings/VivoDateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xb

    const/16 v3, 0x1f

    const/16 v4, 0xd

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 58
    const-string v0, "auto_time"

    invoke-virtual {p0, v0}, Lcom/vivo/settings/VivoDateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/vivo/settings/VivoDateTimeSettings;->mAutoTimePref:Landroid/preference/CheckBoxPreference;

    .line 59
    const-string v0, "time"

    invoke-virtual {p0, v0}, Lcom/vivo/settings/VivoDateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/VivoDateTimeSettings;->mTimePref:Landroid/preference/Preference;

    .line 60
    const-string v0, "24 hour"

    invoke-virtual {p0, v0}, Lcom/vivo/settings/VivoDateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/vivo/settings/VivoDateTimeSettings;->mTime24Pref:Landroid/preference/CheckBoxPreference;

    .line 61
    const-string v0, "date"

    invoke-virtual {p0, v0}, Lcom/vivo/settings/VivoDateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/VivoDateTimeSettings;->mDatePref:Landroid/preference/Preference;

    .line 62
    const-string v0, "timezone"

    invoke-virtual {p0, v0}, Lcom/vivo/settings/VivoDateTimeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/VivoDateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    .line 63
    return-void
.end method

.method private is24Hour()Z
    .locals 1

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private isAutoTimeZoneOn()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 162
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "auto_time"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_1

    move v0, v2

    .line 163
    .local v0, "timeOn":Z
    :goto_0
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "auto_time_zone"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_2

    move v1, v2

    .line 164
    .local v1, "zoneOn":Z
    :goto_1
    if-eq v0, v1, :cond_0

    .line 165
    invoke-direct {p0, v0}, Lcom/vivo/settings/VivoDateTimeSettings;->setAutoTimeZoneOn(Z)V

    .line 167
    :cond_0
    return v0

    .end local v0    # "timeOn":Z
    .end local v1    # "zoneOn":Z
    :cond_1
    move v0, v3

    .line 162
    goto :goto_0

    .restart local v0    # "timeOn":Z
    :cond_2
    move v1, v3

    .line 163
    goto :goto_1
.end method

.method private set24Hour(Z)V
    .locals 3
    .param p1, "is24Hour"    # Z

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "time_12_24"

    if-eqz p1, :cond_0

    const-string v0, "24"

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 215
    return-void

    .line 213
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

    .line 171
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "auto_time"

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 172
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "auto_time_zone"

    if-eqz p1, :cond_1

    :goto_1
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 173
    return-void

    :cond_0
    move v0, v2

    .line 171
    goto :goto_0

    :cond_1
    move v1, v2

    .line 172
    goto :goto_1
.end method

.method static setDate(Landroid/content/Context;III)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    .line 258
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 260
    .local v0, "c":Ljava/util/Calendar;
    const/16 v1, 0x7bc

    if-ge p1, v1, :cond_2

    .line 261
    const/16 p1, 0x7bc

    .line 262
    const/4 p2, 0x0

    .line 263
    const/4 p3, 0x1

    .line 270
    :cond_0
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 271
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 272
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 273
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 275
    .local v2, "when":J
    const-wide/16 v4, 0x3e8

    div-long v4, v2, v4

    const-wide/32 v6, 0x7fffffff

    cmp-long v1, v4, v6

    if-gez v1, :cond_1

    .line 276
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlarmManager;->setTime(J)V

    .line 278
    :cond_1
    return-void

    .line 264
    .end local v2    # "when":J
    :cond_2
    const/16 v1, 0x7f5

    if-le p1, v1, :cond_0

    .line 265
    const/16 p1, 0x7f5

    .line 266
    const/16 p2, 0xb

    .line 267
    const/16 p3, 0x1f

    goto :goto_0
.end method

.method private setDependency(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 176
    iget-object v0, p0, Lcom/vivo/settings/VivoDateTimeSettings;->mTimePref:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 177
    iget-object v0, p0, Lcom/vivo/settings/VivoDateTimeSettings;->mDatePref:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 178
    iget-object v0, p0, Lcom/vivo/settings/VivoDateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 179
    return-void
.end method

.method static setTime(Landroid/content/Context;II)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hourOfDay"    # I
    .param p2, "minute"    # I

    .prologue
    const/4 v4, 0x0

    .line 244
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 246
    .local v0, "c":Ljava/util/Calendar;
    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 247
    const/16 v1, 0xc

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 248
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 249
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 250
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 252
    .local v2, "when":J
    const-wide/16 v4, 0x3e8

    div-long v4, v2, v4

    const-wide/32 v6, 0x7fffffff

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    .line 253
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlarmManager;->setTime(J)V

    .line 255
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const-string v0, "DateTimeSettings"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const v0, 0x7f060052

    invoke-virtual {p0, v0}, Lcom/vivo/settings/VivoDateTimeSettings;->addPreferencesFromResource(I)V

    .line 50
    invoke-direct {p0}, Lcom/vivo/settings/VivoDateTimeSettings;->initUI()V

    .line 51
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/settings/PreferenceHelper;->addDividers(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V

    .line 52
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 9
    .param p1, "dialogId"    # I

    .prologue
    const/4 v8, 0x0

    .line 186
    const/4 v0, 0x0

    .line 187
    .local v0, "dialog":Landroid/app/Dialog;
    packed-switch p1, :pswitch_data_0

    .line 205
    :goto_0
    return-object v0

    .line 189
    :pswitch_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 190
    .local v6, "calendar":Ljava/util/Calendar;
    new-instance v0, Lcom/vivo/app/BBKDatePickerDialog;

    .end local v0    # "dialog":Landroid/app/Dialog;
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettings;->getActivity()Landroid/app/Activity;

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

    .line 193
    check-cast v1, Lcom/vivo/app/BBKDatePickerDialog;

    const/16 v2, 0x7bc

    const/16 v3, 0x7f5

    invoke-virtual {v1, v2, v3}, Lcom/vivo/app/BBKDatePickerDialog;->updateYearRange(II)V

    .line 194
    invoke-virtual {v0, v8}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_0

    .line 197
    .end local v6    # "calendar":Ljava/util/Calendar;
    :pswitch_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 198
    .local v7, "calendar2":Ljava/util/Calendar;
    new-instance v0, Lcom/vivo/app/BBKTimePickerDialog;

    .end local v0    # "dialog":Landroid/app/Dialog;
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v7, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v2, 0xc

    invoke-virtual {v7, v2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/vivo/app/BBKTimePickerDialog;-><init>(Landroid/content/Context;Lcom/vivo/app/BBKTimePickerDialog$OnTimeSetListener;IIZ)V

    .line 202
    .restart local v0    # "dialog":Landroid/app/Dialog;
    invoke-virtual {v0, v8}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_0

    .line 187
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
    .line 232
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 233
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 234
    const-string v1, "DateTimeSettings"

    const-string v2, "onDateSet"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-static {v0, p2, p3, p4}, Lcom/vivo/settings/VivoDateTimeSettings;->setDate(Landroid/content/Context;III)V

    .line 236
    invoke-virtual {p0, v0}, Lcom/vivo/settings/VivoDateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 237
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.settings.SETTING_TIME"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 241
    :goto_0
    return-void

    .line 239
    :cond_0
    const-string v1, "DateTimeSettings"

    const-string v2, "onDateSet activity is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/vivo/settings/VivoDateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/settings/VivoDateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 70
    :cond_0
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onPause()V

    .line 71
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 136
    const-string v4, "DateTimeSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPreferenceTreeClick preference = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v4, p0, Lcom/vivo/settings/VivoDateTimeSettings;->mAutoTimePref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_2

    .line 138
    iget-object v4, p0, Lcom/vivo/settings/VivoDateTimeSettings;->mAutoTimePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/vivo/settings/VivoDateTimeSettings;->setAutoTimeZoneOn(Z)V

    .line 139
    iget-object v4, p0, Lcom/vivo/settings/VivoDateTimeSettings;->mAutoTimePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-nez v4, :cond_1

    :goto_0
    invoke-direct {p0, v2}, Lcom/vivo/settings/VivoDateTimeSettings;->setDependency(Z)V

    .line 141
    iget-object v2, p0, Lcom/vivo/settings/VivoDateTimeSettings;->mAutoTimePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 142
    new-instance v0, Landroid/content/Intent;

    const-string v2, "vivo.settings.service.AUTO_DATE_TIME_FROM_VIVO"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 143
    .local v0, "intent":Landroid/content/Intent;
    sget-object v2, Lcom/vivo/settings/AutoDateTimeService;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 144
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 158
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    :cond_1
    move v2, v3

    .line 139
    goto :goto_0

    .line 146
    :cond_2
    iget-object v4, p0, Lcom/vivo/settings/VivoDateTimeSettings;->mTimePref:Landroid/preference/Preference;

    if-ne p2, v4, :cond_3

    .line 147
    invoke-virtual {p0, v3}, Lcom/vivo/settings/VivoDateTimeSettings;->removeDialog(I)V

    .line 148
    invoke-virtual {p0, v3}, Lcom/vivo/settings/VivoDateTimeSettings;->showDialog(I)V

    goto :goto_1

    .line 149
    :cond_3
    iget-object v3, p0, Lcom/vivo/settings/VivoDateTimeSettings;->mDatePref:Landroid/preference/Preference;

    if-ne p2, v3, :cond_4

    .line 150
    invoke-virtual {p0, v2}, Lcom/vivo/settings/VivoDateTimeSettings;->showDialog(I)V

    goto :goto_1

    .line 151
    :cond_4
    iget-object v2, p0, Lcom/vivo/settings/VivoDateTimeSettings;->mTime24Pref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_0

    .line 152
    iget-object v2, p0, Lcom/vivo/settings/VivoDateTimeSettings;->mTime24Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/vivo/settings/VivoDateTimeSettings;->set24Hour(Z)V

    .line 153
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/vivo/settings/VivoDateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 154
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.TIME_SET"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 155
    .local v1, "timeChanged":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 75
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onResume()V

    .line 76
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettings;->showBBKBackButton()V

    .line 77
    const v2, 0x7f0b00d9

    invoke-virtual {p0, v2}, Lcom/vivo/settings/VivoDateTimeSettings;->setTitle(I)V

    .line 79
    iget-object v2, p0, Lcom/vivo/settings/VivoDateTimeSettings;->mTime24Pref:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/vivo/settings/VivoDateTimeSettings;->is24Hour()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 80
    invoke-direct {p0}, Lcom/vivo/settings/VivoDateTimeSettings;->isAutoTimeZoneOn()Z

    move-result v1

    .line 81
    .local v1, "isAutoTimeOn":Z
    iget-object v2, p0, Lcom/vivo/settings/VivoDateTimeSettings;->mAutoTimePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 82
    if-nez v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-direct {p0, v2}, Lcom/vivo/settings/VivoDateTimeSettings;->setDependency(Z)V

    .line 83
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 84
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 85
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/settings/VivoDateTimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0, v4, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 88
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/vivo/settings/VivoDateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 89
    return-void

    .line 82
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onTimeSet(Lcom/vivo/common/widget/BBKTimePicker;II)V
    .locals 3
    .param p1, "view"    # Lcom/vivo/common/widget/BBKTimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 220
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 221
    const-string v1, "DateTimeSettings"

    const-string v2, "onTimeSet"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-static {v0, p2, p3}, Lcom/vivo/settings/VivoDateTimeSettings;->setTime(Landroid/content/Context;II)V

    .line 223
    invoke-virtual {p0, v0}, Lcom/vivo/settings/VivoDateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 224
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.settings.SETTING_TIME"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 228
    :goto_0
    return-void

    .line 226
    :cond_0
    const-string v1, "DateTimeSettings"

    const-string v2, "onTimeSet activity is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateTimeAndDateDisplay(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 101
    const-string v0, "DateTimeSettings"

    const-string v1, "updateTimeAndDateDisplay"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-static {p1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v8

    .line 104
    .local v8, "shortDateFormat":Ljava/text/DateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 105
    .local v7, "now":Ljava/util/Calendar;
    iget-object v0, p0, Lcom/vivo/settings/VivoDateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 106
    iget-object v0, p0, Lcom/vivo/settings/VivoDateTimeSettings;->mDummyDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xb

    const/16 v3, 0x1f

    const/16 v4, 0xd

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 107
    iget-object v0, p0, Lcom/vivo/settings/VivoDateTimeSettings;->mTimePref:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/vivo/settings/VivoDateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 109
    const-string v0, "DateTimeSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "time zone is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcom/vivo/settings/VivoDateTimeSettings;->mTimeZone:Landroid/preference/Preference;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vivo/settings/VivoDateTimeSettings;->getTimeZoneText(Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v0, p0, Lcom/vivo/settings/VivoDateTimeSettings;->mDatePref:Landroid/preference/Preference;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 112
    return-void
.end method
