.class public Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;
.super Lcom/vivo/app/VivoPreferenceActivity;
.source "SeperateMotionOperationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final KEY_MOTION_UNLOCK_SETTING:Ljava/lang/String; = "motion_unlock_setting"

.field private static final KEY_SCREEN_DISABLE_TO_VIEW_SETTING:Ljava/lang/String; = "screen_disable_to_view_setting"

.field private static final KEY_TOUCH_CONTROL_MAPS_SETTING:Ljava/lang/String; = "touch_control_maps_setting"

.field private static final KEY_TOUCH_CONTROL_STANDBY_INTERFACE_SETTING:Ljava/lang/String; = "touch_control_standby_interface_setting"

.field private static final TAG:Ljava/lang/String; = "SeperateMotionOperationSettings"

.field private static motion_unlock_setting_state:I

.field private static screen_disable_to_view_setting_state:I

.field private static touch_control_maps_setting_state:I

.field private static touch_control_standby_interface_setting_state:I


# instance fields
.field private mMotionUnlockSetting:Landroid/preference/VivoCheckBoxPreference;

.field private mScreenDisableToViewSetting:Landroid/preference/VivoCheckBoxPreference;

.field private mTouchControlMapsSetting:Landroid/preference/VivoCheckBoxPreference;

.field private mTouchControlStandbyInterfaceSetting:Landroid/preference/VivoCheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    sput v0, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->screen_disable_to_view_setting_state:I

    .line 43
    sput v0, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->motion_unlock_setting_state:I

    .line 44
    sput v0, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->touch_control_maps_setting_state:I

    .line 45
    sput v0, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->touch_control_standby_interface_setting_state:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/vivo/app/VivoPreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;)Landroid/preference/VivoCheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->mScreenDisableToViewSetting:Landroid/preference/VivoCheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;)Landroid/preference/VivoCheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->mMotionUnlockSetting:Landroid/preference/VivoCheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;)Landroid/preference/VivoCheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->mTouchControlMapsSetting:Landroid/preference/VivoCheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;)Landroid/preference/VivoCheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->mTouchControlStandbyInterfaceSetting:Landroid/preference/VivoCheckBoxPreference;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 60
    invoke-super {p0, p1}, Lcom/vivo/app/VivoPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const v0, 0x7f050003

    invoke-virtual {p0, v0}, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->addPreferencesFromResource(I)V

    .line 63
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->showTitleLeftButton()V

    .line 64
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->setTitleLeftButtonIcon(I)V

    .line 65
    new-instance v0, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings$1;

    invoke-direct {v0, p0}, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings$1;-><init>(Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;)V

    invoke-virtual {p0, v0}, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->setTitleLeftButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "bbk_screen_disable_to_view_setting"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->screen_disable_to_view_setting_state:I

    .line 74
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "bbk_smart_unlock"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->motion_unlock_setting_state:I

    .line 76
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "bbk_touch_control_maps_setting"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->touch_control_maps_setting_state:I

    .line 79
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "bbk_touch_control_standby_interface_setting"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->touch_control_standby_interface_setting_state:I

    .line 84
    const-string v0, "screen_disable_to_view_setting"

    invoke-virtual {p0, v0}, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/VivoCheckBoxPreference;

    iput-object v0, p0, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->mScreenDisableToViewSetting:Landroid/preference/VivoCheckBoxPreference;

    .line 85
    const-string v0, "motion_unlock_setting"

    invoke-virtual {p0, v0}, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/VivoCheckBoxPreference;

    iput-object v0, p0, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->mMotionUnlockSetting:Landroid/preference/VivoCheckBoxPreference;

    .line 86
    const-string v0, "touch_control_maps_setting"

    invoke-virtual {p0, v0}, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/VivoCheckBoxPreference;

    iput-object v0, p0, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->mTouchControlMapsSetting:Landroid/preference/VivoCheckBoxPreference;

    .line 87
    const-string v0, "touch_control_standby_interface_setting"

    invoke-virtual {p0, v0}, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/VivoCheckBoxPreference;

    iput-object v0, p0, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->mTouchControlStandbyInterfaceSetting:Landroid/preference/VivoCheckBoxPreference;

    .line 89
    sget-boolean v0, Lcom/vivo/motionrecognition/MotionConfig;->mHasInfraredGesture:Z

    if-nez v0, :cond_0

    .line 90
    const-string v0, "seperate_motion_operation_settings_parent"

    invoke-virtual {p0, v0}, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iget-object v3, p0, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->mTouchControlMapsSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 91
    const-string v0, "seperate_motion_operation_settings_parent"

    invoke-virtual {p0, v0}, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iget-object v3, p0, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->mTouchControlStandbyInterfaceSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->mScreenDisableToViewSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/VivoCheckBoxPreference;->setTextAreaClickable(Z)V

    .line 95
    iget-object v0, p0, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->mMotionUnlockSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/VivoCheckBoxPreference;->setTextAreaClickable(Z)V

    .line 96
    iget-object v0, p0, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->mTouchControlMapsSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/VivoCheckBoxPreference;->setTextAreaClickable(Z)V

    .line 97
    iget-object v0, p0, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->mTouchControlStandbyInterfaceSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/VivoCheckBoxPreference;->setTextAreaClickable(Z)V

    .line 99
    iget-object v3, p0, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->mScreenDisableToViewSetting:Landroid/preference/VivoCheckBoxPreference;

    sget v0, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->screen_disable_to_view_setting_state:I

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    .line 102
    iget-object v3, p0, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->mMotionUnlockSetting:Landroid/preference/VivoCheckBoxPreference;

    sget v0, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->motion_unlock_setting_state:I

    if-lez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    .line 104
    iget-object v3, p0, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->mTouchControlMapsSetting:Landroid/preference/VivoCheckBoxPreference;

    sget v0, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->touch_control_maps_setting_state:I

    if-lez v0, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    .line 107
    iget-object v0, p0, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->mTouchControlStandbyInterfaceSetting:Landroid/preference/VivoCheckBoxPreference;

    sget v3, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->touch_control_standby_interface_setting_state:I

    if-lez v3, :cond_4

    :goto_3
    invoke-virtual {v0, v1}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    .line 111
    iget-object v0, p0, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->mScreenDisableToViewSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/VivoCheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 112
    iget-object v0, p0, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->mMotionUnlockSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/VivoCheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 113
    iget-object v0, p0, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->mTouchControlMapsSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/VivoCheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 114
    iget-object v0, p0, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->mTouchControlStandbyInterfaceSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/VivoCheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 117
    return-void

    :cond_1
    move v0, v2

    .line 99
    goto :goto_0

    :cond_2
    move v0, v2

    .line 102
    goto :goto_1

    :cond_3
    move v0, v2

    .line 104
    goto :goto_2

    :cond_4
    move v1, v2

    .line 107
    goto :goto_3
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 291
    invoke-super {p0}, Lcom/vivo/app/VivoPreferenceActivity;->onDestroy()V

    .line 292
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 286
    invoke-super {p0}, Lcom/vivo/app/VivoPreferenceActivity;->onPause()V

    .line 287
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 120
    const-string v0, "smart"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "smart onPreferenceChange "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/motionrecognition/Motion_log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->mScreenDisableToViewSetting:Landroid/preference/VivoCheckBoxPreference;

    if-ne p1, v0, :cond_2

    .line 123
    iget-object v0, p0, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->mScreenDisableToViewSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/VivoCheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    sput v4, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->screen_disable_to_view_setting_state:I

    .line 125
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bbk_screen_disable_to_view_setting"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 128
    iget-object v0, p0, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->mScreenDisableToViewSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    .line 180
    :cond_0
    :goto_0
    return v3

    .line 130
    :cond_1
    sput v3, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->screen_disable_to_view_setting_state:I

    .line 131
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bbk_screen_disable_to_view_setting"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 134
    iget-object v0, p0, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->mScreenDisableToViewSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 136
    :cond_2
    iget-object v0, p0, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->mMotionUnlockSetting:Landroid/preference/VivoCheckBoxPreference;

    if-ne p1, v0, :cond_4

    .line 138
    iget-object v0, p0, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->mMotionUnlockSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/VivoCheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 139
    sput v4, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->motion_unlock_setting_state:I

    .line 140
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bbk_smart_unlock"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 142
    iget-object v0, p0, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->mMotionUnlockSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 144
    :cond_3
    sput v3, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->motion_unlock_setting_state:I

    .line 145
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bbk_smart_unlock"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 147
    iget-object v0, p0, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->mMotionUnlockSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 149
    :cond_4
    iget-object v0, p0, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->mTouchControlMapsSetting:Landroid/preference/VivoCheckBoxPreference;

    if-ne p1, v0, :cond_6

    .line 150
    iget-object v0, p0, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->mTouchControlMapsSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/VivoCheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 151
    sput v4, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->touch_control_maps_setting_state:I

    .line 152
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bbk_touch_control_maps_setting"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 154
    iget-object v0, p0, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->mTouchControlMapsSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 156
    :cond_5
    sput v3, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->touch_control_maps_setting_state:I

    .line 157
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bbk_touch_control_maps_setting"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 159
    iget-object v0, p0, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->mTouchControlMapsSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 162
    :cond_6
    iget-object v0, p0, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->mTouchControlStandbyInterfaceSetting:Landroid/preference/VivoCheckBoxPreference;

    if-ne p1, v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->mTouchControlStandbyInterfaceSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/VivoCheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 165
    sput v4, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->touch_control_standby_interface_setting_state:I

    .line 166
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bbk_touch_control_standby_interface_setting"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 170
    iget-object v0, p0, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->mTouchControlStandbyInterfaceSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 172
    :cond_7
    sput v3, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->touch_control_standby_interface_setting_state:I

    .line 173
    invoke-virtual {p0}, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bbk_touch_control_standby_interface_setting"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 177
    iget-object v0, p0, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->mTouchControlStandbyInterfaceSetting:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 16
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 186
    new-instance v4, Landroid/app/AlertDialog$Builder;

    const v11, 0x30f0004

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 188
    .local v4, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    .line 189
    .local v7, "mAlertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v7}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 190
    .local v2, "TopLevelView":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 191
    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {v2, v11, v12}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 192
    const-string v11, "SeperateMotionOperationSettings"

    const-string v12, "disable AlertDialog Hardware acceleration"

    invoke-static {v11, v12}, Lcom/vivo/motionrecognition/Motion_log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :cond_0
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 195
    .local v6, "inflater":Landroid/view/LayoutInflater;
    const v11, 0x7f030001

    const/4 v12, 0x0

    invoke-virtual {v6, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 196
    .local v10, "view":Landroid/view/View;
    const v11, 0x7f0a0004

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 198
    .local v9, "text":Landroid/widget/TextView;
    const v11, 0x7f0a0005

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 200
    .local v5, "img":Landroid/widget/ImageView;
    const/4 v3, 0x0

    .line 202
    .local v3, "anim":Landroid/graphics/drawable/AnimationDrawable;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->mScreenDisableToViewSetting:Landroid/preference/VivoCheckBoxPreference;

    move-object/from16 v0, p2

    if-ne v0, v11, :cond_3

    .line 203
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->mScreenDisableToViewSetting:Landroid/preference/VivoCheckBoxPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/VivoCheckBoxPreference;->setEnabled(Z)V

    .line 204
    const v11, 0x7f080022

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(I)V

    .line 205
    const v11, 0x7f04000d

    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 206
    invoke-virtual {v4, v10}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 207
    const v11, 0x7f080021

    invoke-virtual {v4, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 208
    const v11, 0x7f08001f

    new-instance v12, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings$2;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings$2;-><init>(Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;)V

    invoke-virtual {v4, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 213
    new-instance v11, Landroid/os/Handler;

    invoke-direct {v11}, Landroid/os/Handler;-><init>()V

    new-instance v12, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings$3;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings$3;-><init>(Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;)V

    const-wide/16 v14, 0x1f4

    invoke-virtual {v11, v12, v14, v15}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 275
    :cond_1
    :goto_0
    invoke-virtual {v5}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .local v8, "ob":Landroid/graphics/drawable/Drawable;
    move-object v3, v8

    .line 276
    check-cast v3, Landroid/graphics/drawable/AnimationDrawable;

    .line 277
    if-eqz v3, :cond_2

    .line 278
    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 279
    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 281
    :cond_2
    invoke-super/range {p0 .. p2}, Lcom/vivo/app/VivoPreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v11

    return v11

    .line 219
    .end local v8    # "ob":Landroid/graphics/drawable/Drawable;
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->mMotionUnlockSetting:Landroid/preference/VivoCheckBoxPreference;

    move-object/from16 v0, p2

    if-ne v0, v11, :cond_4

    .line 220
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->mMotionUnlockSetting:Landroid/preference/VivoCheckBoxPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/VivoCheckBoxPreference;->setEnabled(Z)V

    .line 221
    const v11, 0x7f08005d

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(I)V

    .line 222
    const v11, 0x7f04000f

    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 223
    invoke-virtual {v4, v10}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 224
    const v11, 0x7f08005b

    invoke-virtual {v4, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 225
    const v11, 0x7f08001f

    new-instance v12, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings$4;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings$4;-><init>(Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;)V

    invoke-virtual {v4, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 231
    new-instance v11, Landroid/os/Handler;

    invoke-direct {v11}, Landroid/os/Handler;-><init>()V

    new-instance v12, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings$5;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings$5;-><init>(Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;)V

    const-wide/16 v14, 0x1f4

    invoke-virtual {v11, v12, v14, v15}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 237
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->mTouchControlMapsSetting:Landroid/preference/VivoCheckBoxPreference;

    move-object/from16 v0, p2

    if-ne v0, v11, :cond_5

    .line 238
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->mTouchControlMapsSetting:Landroid/preference/VivoCheckBoxPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/VivoCheckBoxPreference;->setEnabled(Z)V

    .line 239
    const v11, 0x7f08008f

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(I)V

    .line 240
    const v11, 0x7f04000e

    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 241
    invoke-virtual {v4, v10}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 242
    const v11, 0x7f08005e

    invoke-virtual {v4, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 243
    const v11, 0x7f08001f

    new-instance v12, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings$6;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings$6;-><init>(Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;)V

    invoke-virtual {v4, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 249
    new-instance v11, Landroid/os/Handler;

    invoke-direct {v11}, Landroid/os/Handler;-><init>()V

    new-instance v12, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings$7;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings$7;-><init>(Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;)V

    const-wide/16 v14, 0x1f4

    invoke-virtual {v11, v12, v14, v15}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 255
    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->mTouchControlStandbyInterfaceSetting:Landroid/preference/VivoCheckBoxPreference;

    move-object/from16 v0, p2

    if-ne v0, v11, :cond_1

    .line 256
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->mTouchControlStandbyInterfaceSetting:Landroid/preference/VivoCheckBoxPreference;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/VivoCheckBoxPreference;->setEnabled(Z)V

    .line 257
    const v11, 0x7f080061

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    const v11, 0x7f040018

    invoke-virtual {v5, v11}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 260
    invoke-virtual {v4, v10}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 261
    const v11, 0x7f08005f

    invoke-virtual {v4, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 262
    const v11, 0x7f08001f

    new-instance v12, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings$8;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings$8;-><init>(Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;)V

    invoke-virtual {v4, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 268
    new-instance v11, Landroid/os/Handler;

    invoke-direct {v11}, Landroid/os/Handler;-><init>()V

    new-instance v12, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings$9;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/vivo/motionrecognition/SeperateMotionOperationSettings$9;-><init>(Lcom/vivo/motionrecognition/SeperateMotionOperationSettings;)V

    const-wide/16 v14, 0x1f4

    invoke-virtual {v11, v12, v14, v15}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 296
    invoke-super {p0}, Lcom/vivo/app/VivoPreferenceActivity;->onStop()V

    .line 297
    return-void
.end method
