.class public Lcom/vivo/motionrecognition/MotionRecognition;
.super Lcom/vivo/app/VivoPreferenceActivity;
.source "MotionRecognition.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask$PostExecute;


# static fields
.field private static final FALLBACK_APPLICATION_SETTINGS_VALUE:I = 0x1

.field private static final KEY_SEPERATE_MOTION_OPERATION_SETTINGS:Ljava/lang/String; = "seperate_motion_operation_settings"

.field private static final KEY_SMART_REMINDER_SETTING:Ljava/lang/String; = "smart_remind_setting"

.field private static final KEY_SMART_WAKEUP_SETTINGS:Ljava/lang/String; = "smart_wakeup_settings"

.field private static final KEY_SMART_WAKE_SETTING:Ljava/lang/String; = "smart_wake_settings"

.field private static final KEY_TILT_PHONE_ZOOM_PHOTOS_SETTING:Ljava/lang/String; = "tilt_phone_zoom_photes_setting"

.field private static final KEY_WAVE_OPEN_APPLICATION_SETTING:Ljava/lang/String; = "wave_open_application_setting"

.field private static TAG:Ljava/lang/String;

.field private static application_settings_state:I

.field private static smart_reminder_setting_state:I

.field private static tilt_phone_zoom_photes_setting_state:I

.field private static wave_open_application_setting_state:I


# instance fields
.field private mSeperateMotionOperationSettings:Landroid/preference/PreferenceScreen;

.field private mSmartReminderSetting:Landroid/preference/VivoCheckBoxPreference;

.field private mSmartWakeSettings:Landroid/preference/PreferenceScreen;

.field private mSmartWakeupSettings:Landroid/preference/PreferenceScreen;

.field private mTiltPhoneZoomPhotosSetting:Landroid/preference/VivoCheckBoxPreference;

.field private mWaveOpenApplicationSetting:Landroid/preference/VivoCheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    const-string v0, "MotionRecognition"

    sput-object v0, Lcom/vivo/motionrecognition/MotionRecognition;->TAG:Ljava/lang/String;

    .line 47
    sput v1, Lcom/vivo/motionrecognition/MotionRecognition;->wave_open_application_setting_state:I

    .line 48
    const/4 v0, 0x1

    sput v0, Lcom/vivo/motionrecognition/MotionRecognition;->application_settings_state:I

    .line 49
    sput v1, Lcom/vivo/motionrecognition/MotionRecognition;->tilt_phone_zoom_photes_setting_state:I

    .line 50
    sput v1, Lcom/vivo/motionrecognition/MotionRecognition;->smart_reminder_setting_state:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/vivo/app/VivoPreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/vivo/motionrecognition/MotionRecognition;)Landroid/preference/VivoCheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/motionrecognition/MotionRecognition;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vivo/motionrecognition/MotionRecognition;->mWaveOpenApplicationSetting:Landroid/preference/VivoCheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vivo/motionrecognition/MotionRecognition;)Landroid/preference/VivoCheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/motionrecognition/MotionRecognition;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vivo/motionrecognition/MotionRecognition;->mTiltPhoneZoomPhotosSetting:Landroid/preference/VivoCheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vivo/motionrecognition/MotionRecognition;)Landroid/preference/VivoCheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/motionrecognition/MotionRecognition;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vivo/motionrecognition/MotionRecognition;->mSmartReminderSetting:Landroid/preference/VivoCheckBoxPreference;

    return-object v0
.end method

.method private queryGesture()V
    .locals 4

    .prologue
    .line 254
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 255
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "operation"

    const-string v2, "query"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    new-instance v1, Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask;

    invoke-direct {v1, p0, p0}, Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask;-><init>(Landroid/content/Context;Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask$PostExecute;)V

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/os/Bundle;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/vivo/motionrecognition/custom/DataBaseAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 257
    return-void
.end method


# virtual methods
.method public OnPostExecute(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 262
    const-string v1, "operation"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, "opreation":Ljava/lang/String;
    const-string v1, "query"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 264
    const-string v1, "CUSTOM_VIVO"

    const-string v2, "Motion:DataBaseAsyncTask.QUERY is ok"

    invoke-static {v1, v2}, Lcom/vivo/motionrecognition/Motion_log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 69
    invoke-super {p0, p1}, Lcom/vivo/app/VivoPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const v0, 0x7f050002

    invoke-virtual {p0, v0}, Lcom/vivo/motionrecognition/MotionRecognition;->addPreferencesFromResource(I)V

    .line 71
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/MotionRecognition;->showTitleLeftButton()V

    .line 72
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/vivo/motionrecognition/MotionRecognition;->setTitleLeftButtonIcon(I)V

    .line 73
    const-string v0, "seperate_motion_operation_settings"

    invoke-virtual {p0, v0}, Lcom/vivo/motionrecognition/MotionRecognition;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/vivo/motionrecognition/MotionRecognition;->mSeperateMotionOperationSettings:Landroid/preference/PreferenceScreen;

    .line 74
    const-string v0, "smart_wakeup_settings"

    invoke-virtual {p0, v0}, Lcom/vivo/motionrecognition/MotionRecognition;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/vivo/motionrecognition/MotionRecognition;->mSmartWakeupSettings:Landroid/preference/PreferenceScreen;

    .line 75
    const-string v0, "tilt_phone_zoom_photes_setting"

    invoke-virtual {p0, v0}, Lcom/vivo/motionrecognition/MotionRecognition;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/VivoCheckBoxPreference;

    iput-object v0, p0, Lcom/vivo/motionrecognition/MotionRecognition;->mTiltPhoneZoomPhotosSetting:Landroid/preference/VivoCheckBoxPreference;

    .line 76
    const-string v0, "smart_wake_settings"

    invoke-virtual {p0, v0}, Lcom/vivo/motionrecognition/MotionRecognition;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/vivo/motionrecognition/MotionRecognition;->mSmartWakeSettings:Landroid/preference/PreferenceScreen;

    .line 77
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/MotionRecognition;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "bbk_wave_open_application_setting"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/vivo/motionrecognition/MotionRecognition;->wave_open_application_setting_state:I

    .line 80
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/MotionRecognition;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "bbk_application_settings"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/vivo/motionrecognition/MotionRecognition;->application_settings_state:I

    .line 83
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/MotionRecognition;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "bbk_tilt_phone_zoom_photes_setting"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/vivo/motionrecognition/MotionRecognition;->tilt_phone_zoom_photes_setting_state:I

    .line 86
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/MotionRecognition;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "bbk_smart_remind"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/vivo/motionrecognition/MotionRecognition;->smart_reminder_setting_state:I

    .line 89
    const-string v0, "wave_open_application_setting"

    invoke-virtual {p0, v0}, Lcom/vivo/motionrecognition/MotionRecognition;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/VivoCheckBoxPreference;

    iput-object v0, p0, Lcom/vivo/motionrecognition/MotionRecognition;->mWaveOpenApplicationSetting:Landroid/preference/VivoCheckBoxPreference;

    .line 90
    iget-object v0, p0, Lcom/vivo/motionrecognition/MotionRecognition;->mWaveOpenApplicationSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/VivoCheckBoxPreference;->setTextAreaClickable(Z)V

    .line 91
    iget-object v3, p0, Lcom/vivo/motionrecognition/MotionRecognition;->mWaveOpenApplicationSetting:Landroid/preference/VivoCheckBoxPreference;

    sget v0, Lcom/vivo/motionrecognition/MotionRecognition;->wave_open_application_setting_state:I

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    .line 92
    iget-object v0, p0, Lcom/vivo/motionrecognition/MotionRecognition;->mWaveOpenApplicationSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/VivoCheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 94
    iget-object v0, p0, Lcom/vivo/motionrecognition/MotionRecognition;->mTiltPhoneZoomPhotosSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/VivoCheckBoxPreference;->setTextAreaClickable(Z)V

    .line 95
    iget-object v3, p0, Lcom/vivo/motionrecognition/MotionRecognition;->mTiltPhoneZoomPhotosSetting:Landroid/preference/VivoCheckBoxPreference;

    sget v0, Lcom/vivo/motionrecognition/MotionRecognition;->tilt_phone_zoom_photes_setting_state:I

    if-lez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    .line 96
    iget-object v0, p0, Lcom/vivo/motionrecognition/MotionRecognition;->mTiltPhoneZoomPhotosSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/VivoCheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 98
    const-string v0, "smart_remind_setting"

    invoke-virtual {p0, v0}, Lcom/vivo/motionrecognition/MotionRecognition;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/VivoCheckBoxPreference;

    iput-object v0, p0, Lcom/vivo/motionrecognition/MotionRecognition;->mSmartReminderSetting:Landroid/preference/VivoCheckBoxPreference;

    .line 99
    iget-object v0, p0, Lcom/vivo/motionrecognition/MotionRecognition;->mSmartReminderSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/VivoCheckBoxPreference;->setTextAreaClickable(Z)V

    .line 100
    iget-object v0, p0, Lcom/vivo/motionrecognition/MotionRecognition;->mSmartReminderSetting:Landroid/preference/VivoCheckBoxPreference;

    sget v3, Lcom/vivo/motionrecognition/MotionRecognition;->smart_reminder_setting_state:I

    if-lez v3, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    .line 101
    iget-object v0, p0, Lcom/vivo/motionrecognition/MotionRecognition;->mSmartReminderSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/VivoCheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 104
    return-void

    :cond_0
    move v0, v2

    .line 91
    goto :goto_0

    :cond_1
    move v0, v2

    .line 95
    goto :goto_1

    :cond_2
    move v1, v2

    .line 100
    goto :goto_2
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 109
    iget-object v1, p0, Lcom/vivo/motionrecognition/MotionRecognition;->mWaveOpenApplicationSetting:Landroid/preference/VivoCheckBoxPreference;

    if-ne p1, v1, :cond_2

    .line 110
    iget-object v1, p0, Lcom/vivo/motionrecognition/MotionRecognition;->mWaveOpenApplicationSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/VivoCheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    sput v4, Lcom/vivo/motionrecognition/MotionRecognition;->wave_open_application_setting_state:I

    .line 112
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/MotionRecognition;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "bbk_wave_open_application_setting"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 114
    iget-object v1, p0, Lcom/vivo/motionrecognition/MotionRecognition;->mWaveOpenApplicationSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    .line 115
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 116
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.action.MotionRecognition.WaveOpenApplication"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    const-string v1, "setWaveOpenSwitchState"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 118
    invoke-virtual {p0, v0}, Lcom/vivo/motionrecognition/MotionRecognition;->sendBroadcast(Landroid/content/Intent;)V

    .line 155
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return v3

    .line 120
    :cond_1
    sput v3, Lcom/vivo/motionrecognition/MotionRecognition;->wave_open_application_setting_state:I

    .line 121
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/MotionRecognition;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "bbk_wave_open_application_setting"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 123
    iget-object v1, p0, Lcom/vivo/motionrecognition/MotionRecognition;->mWaveOpenApplicationSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    .line 124
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 125
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "android.action.MotionRecognition.WaveOpenApplication"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    const-string v1, "setWaveOpenSwitchState"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 127
    invoke-virtual {p0, v0}, Lcom/vivo/motionrecognition/MotionRecognition;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 129
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    iget-object v1, p0, Lcom/vivo/motionrecognition/MotionRecognition;->mTiltPhoneZoomPhotosSetting:Landroid/preference/VivoCheckBoxPreference;

    if-ne p1, v1, :cond_4

    .line 130
    iget-object v1, p0, Lcom/vivo/motionrecognition/MotionRecognition;->mTiltPhoneZoomPhotosSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/VivoCheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 131
    sput v4, Lcom/vivo/motionrecognition/MotionRecognition;->tilt_phone_zoom_photes_setting_state:I

    .line 132
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/MotionRecognition;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "bbk_tilt_phone_zoom_photes_setting"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 134
    iget-object v1, p0, Lcom/vivo/motionrecognition/MotionRecognition;->mTiltPhoneZoomPhotosSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 136
    :cond_3
    sput v3, Lcom/vivo/motionrecognition/MotionRecognition;->tilt_phone_zoom_photes_setting_state:I

    .line 137
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/MotionRecognition;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "bbk_tilt_phone_zoom_photes_setting"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 139
    iget-object v1, p0, Lcom/vivo/motionrecognition/MotionRecognition;->mTiltPhoneZoomPhotosSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 141
    :cond_4
    iget-object v1, p0, Lcom/vivo/motionrecognition/MotionRecognition;->mSmartReminderSetting:Landroid/preference/VivoCheckBoxPreference;

    if-ne p1, v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/vivo/motionrecognition/MotionRecognition;->mSmartReminderSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/VivoCheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 143
    sput v4, Lcom/vivo/motionrecognition/MotionRecognition;->smart_reminder_setting_state:I

    .line 144
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/MotionRecognition;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "bbk_smart_remind"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 146
    iget-object v1, p0, Lcom/vivo/motionrecognition/MotionRecognition;->mSmartReminderSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 148
    :cond_5
    sput v3, Lcom/vivo/motionrecognition/MotionRecognition;->smart_reminder_setting_state:I

    .line 149
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/MotionRecognition;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "bbk_smart_remind"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 151
    iget-object v1, p0, Lcom/vivo/motionrecognition/MotionRecognition;->mSmartReminderSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 16
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 163
    sget-object v12, Lcom/vivo/motionrecognition/MotionRecognition;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "click tree"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/vivo/motionrecognition/Motion_log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    new-instance v4, Landroid/app/AlertDialog$Builder;

    const v12, 0x30f0004

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v12}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 166
    .local v4, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    .line 167
    .local v7, "mAlertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v7}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 168
    .local v2, "TopLevelView":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 169
    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual {v2, v12, v13}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 170
    sget-object v12, Lcom/vivo/motionrecognition/MotionRecognition;->TAG:Ljava/lang/String;

    const-string v13, "disable AlertDialog Hardware acceleration"

    invoke-static {v12, v13}, Lcom/vivo/motionrecognition/Motion_log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_0
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 173
    .local v6, "inflater":Landroid/view/LayoutInflater;
    const v12, 0x7f030001

    const/4 v13, 0x0

    invoke-virtual {v6, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 174
    .local v11, "view":Landroid/view/View;
    const v12, 0x7f0a0004

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 175
    .local v10, "textT":Landroid/widget/TextView;
    const v12, 0x7f0a0005

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 176
    .local v5, "img":Landroid/widget/ImageView;
    const v12, 0x7f0a0006

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 177
    .local v9, "textB":Landroid/widget/TextView;
    const/4 v3, 0x0

    .line 179
    .local v3, "anim":Landroid/graphics/drawable/AnimationDrawable;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vivo/motionrecognition/MotionRecognition;->mWaveOpenApplicationSetting:Landroid/preference/VivoCheckBoxPreference;

    move-object/from16 v0, p2

    if-ne v0, v12, :cond_3

    .line 180
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vivo/motionrecognition/MotionRecognition;->mWaveOpenApplicationSetting:Landroid/preference/VivoCheckBoxPreference;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/preference/VivoCheckBoxPreference;->setEnabled(Z)V

    .line 181
    const v12, 0x7f080019

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(I)V

    .line 182
    const v12, 0x7f040009

    invoke-virtual {v5, v12}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 183
    invoke-virtual {v4, v11}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 184
    const v12, 0x7f080017

    invoke-virtual {v4, v12}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 185
    const v12, 0x7f08001f

    new-instance v13, Lcom/vivo/motionrecognition/MotionRecognition$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/vivo/motionrecognition/MotionRecognition$1;-><init>(Lcom/vivo/motionrecognition/MotionRecognition;)V

    invoke-virtual {v4, v12, v13}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 189
    new-instance v12, Landroid/os/Handler;

    invoke-direct {v12}, Landroid/os/Handler;-><init>()V

    new-instance v13, Lcom/vivo/motionrecognition/MotionRecognition$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/vivo/motionrecognition/MotionRecognition$2;-><init>(Lcom/vivo/motionrecognition/MotionRecognition;)V

    const-wide/16 v14, 0x1f4

    invoke-virtual {v12, v13, v14, v15}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 232
    :cond_1
    :goto_0
    invoke-virtual {v5}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .local v8, "ob":Landroid/graphics/drawable/Drawable;
    move-object v3, v8

    .line 233
    check-cast v3, Landroid/graphics/drawable/AnimationDrawable;

    .line 234
    if-eqz v3, :cond_2

    .line 235
    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 236
    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 238
    :cond_2
    invoke-super/range {p0 .. p2}, Lcom/vivo/app/VivoPreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v12

    return v12

    .line 196
    .end local v8    # "ob":Landroid/graphics/drawable/Drawable;
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vivo/motionrecognition/MotionRecognition;->mTiltPhoneZoomPhotosSetting:Landroid/preference/VivoCheckBoxPreference;

    move-object/from16 v0, p2

    if-ne v0, v12, :cond_4

    .line 197
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vivo/motionrecognition/MotionRecognition;->mTiltPhoneZoomPhotosSetting:Landroid/preference/VivoCheckBoxPreference;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/preference/VivoCheckBoxPreference;->setEnabled(Z)V

    .line 198
    const v12, 0x7f08008d

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(I)V

    .line 199
    const v12, 0x7f04000b

    invoke-virtual {v5, v12}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 200
    invoke-virtual {v4, v11}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 201
    const v12, 0x7f08001b

    invoke-virtual {v4, v12}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 202
    const v12, 0x7f08001f

    new-instance v13, Lcom/vivo/motionrecognition/MotionRecognition$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/vivo/motionrecognition/MotionRecognition$3;-><init>(Lcom/vivo/motionrecognition/MotionRecognition;)V

    invoke-virtual {v4, v12, v13}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 206
    new-instance v12, Landroid/os/Handler;

    invoke-direct {v12}, Landroid/os/Handler;-><init>()V

    new-instance v13, Lcom/vivo/motionrecognition/MotionRecognition$4;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/vivo/motionrecognition/MotionRecognition$4;-><init>(Lcom/vivo/motionrecognition/MotionRecognition;)V

    const-wide/16 v14, 0x1f4

    invoke-virtual {v12, v13, v14, v15}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 213
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vivo/motionrecognition/MotionRecognition;->mSmartReminderSetting:Landroid/preference/VivoCheckBoxPreference;

    move-object/from16 v0, p2

    if-ne v0, v12, :cond_1

    .line 214
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vivo/motionrecognition/MotionRecognition;->mSmartReminderSetting:Landroid/preference/VivoCheckBoxPreference;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/preference/VivoCheckBoxPreference;->setEnabled(Z)V

    .line 215
    const v12, 0x7f08001e

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(I)V

    .line 216
    const v12, 0x7f040007

    invoke-virtual {v5, v12}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 217
    invoke-virtual {v4, v11}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 218
    const v12, 0x7f08001c

    invoke-virtual {v4, v12}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 219
    const v12, 0x7f08001f

    new-instance v13, Lcom/vivo/motionrecognition/MotionRecognition$5;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/vivo/motionrecognition/MotionRecognition$5;-><init>(Lcom/vivo/motionrecognition/MotionRecognition;)V

    invoke-virtual {v4, v12, v13}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 224
    new-instance v12, Landroid/os/Handler;

    invoke-direct {v12}, Landroid/os/Handler;-><init>()V

    new-instance v13, Lcom/vivo/motionrecognition/MotionRecognition$6;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/vivo/motionrecognition/MotionRecognition$6;-><init>(Lcom/vivo/motionrecognition/MotionRecognition;)V

    const-wide/16 v14, 0x1f4

    invoke-virtual {v12, v13, v14, v15}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 243
    invoke-super {p0}, Lcom/vivo/app/VivoPreferenceActivity;->onResume()V

    .line 245
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/MotionRecognition;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "visit_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 246
    .local v0, "isVisitor":I
    if-nez v0, :cond_0

    sget-boolean v1, Lcom/vivo/motionrecognition/MotionConfig;->mHasCustomGesture:Z

    if-eqz v1, :cond_0

    .line 247
    invoke-direct {p0}, Lcom/vivo/motionrecognition/MotionRecognition;->queryGesture()V

    .line 250
    :cond_0
    return-void
.end method
