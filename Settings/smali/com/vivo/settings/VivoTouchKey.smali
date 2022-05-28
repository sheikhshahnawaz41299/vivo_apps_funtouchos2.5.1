.class public Lcom/vivo/settings/VivoTouchKey;
.super Lcom/vivo/settings/VivoSettingsPreferenceFragment;
.source "VivoTouchKey.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final FINGER_TOUCH_SWITCH:Ljava/lang/String; = "finger_touch_switch"

.field private static final KEY_TOUCH_KEY_LIGHT_DURATION:Ljava/lang/String; = "touch_key_light_duration"

.field private static final KEY_TOUCH_KEY_TO_DESKTOP:Ljava/lang/String; = "touch_to_desktop"

.field private static final TAG:Ljava/lang/String; = "VivoTouchKey"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mTouchKeyDuration:Landroid/preference/ListPreference;

.field private mTouchKeyEntries:[Ljava/lang/CharSequence;

.field private mTouchToDesktop:Landroid/preference/VivoCheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/settings/VivoTouchKey;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getTouchKeyDurationMode()I
    .locals 3

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/vivo/settings/VivoTouchKey;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "key_button_light_control_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isTouchToDesktopOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 130
    iget-object v1, p0, Lcom/vivo/settings/VivoTouchKey;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "finger_touch_switch"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const v1, 0x7f060063

    invoke-virtual {p0, v1}, Lcom/vivo/settings/VivoTouchKey;->addPreferencesFromResource(I)V

    .line 62
    const-string v1, "VivoTouchKey"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-virtual {p0}, Lcom/vivo/settings/VivoTouchKey;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 78
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/vivo/settings/VivoTouchKey;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/settings/VivoTouchKey;->mContext:Landroid/content/Context;

    .line 67
    const-string v1, "touch_key_light_duration"

    invoke-virtual {p0, v1}, Lcom/vivo/settings/VivoTouchKey;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/vivo/settings/VivoTouchKey;->mTouchKeyDuration:Landroid/preference/ListPreference;

    .line 68
    const-string v1, "touch_to_desktop"

    invoke-virtual {p0, v1}, Lcom/vivo/settings/VivoTouchKey;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/VivoCheckBoxPreference;

    iput-object v1, p0, Lcom/vivo/settings/VivoTouchKey;->mTouchToDesktop:Landroid/preference/VivoCheckBoxPreference;

    .line 70
    iget-object v1, p0, Lcom/vivo/settings/VivoTouchKey;->mTouchKeyDuration:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/settings/VivoTouchKey;->mTouchKeyEntries:[Ljava/lang/CharSequence;

    .line 71
    invoke-virtual {p0}, Lcom/vivo/settings/VivoTouchKey;->getTouchKeyDurationMode()I

    move-result v0

    .line 72
    .local v0, "mode":I
    iget-object v1, p0, Lcom/vivo/settings/VivoTouchKey;->mTouchKeyDuration:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/vivo/settings/VivoTouchKey;->mTouchKeyEntries:[Ljava/lang/CharSequence;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v1, p0, Lcom/vivo/settings/VivoTouchKey;->mTouchKeyDuration:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 74
    iget-object v1, p0, Lcom/vivo/settings/VivoTouchKey;->mTouchKeyDuration:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 76
    iget-object v1, p0, Lcom/vivo/settings/VivoTouchKey;->mTouchToDesktop:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {p0}, Lcom/vivo/settings/VivoTouchKey;->isTouchToDesktopOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    .line 77
    invoke-virtual {p0}, Lcom/vivo/settings/VivoTouchKey;->showBBKBackButton()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 95
    const-string v0, "VivoTouchKey"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onDestroy()V

    .line 97
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 89
    const-string v0, "VivoTouchKey"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onPause()V

    .line 91
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 101
    iget-object v1, p0, Lcom/vivo/settings/VivoTouchKey;->mTouchKeyDuration:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_1

    .line 102
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 103
    .local v0, "mode":I
    iget-object v1, p0, Lcom/vivo/settings/VivoTouchKey;->mPowerManager:Landroid/os/PowerManager;

    if-nez v1, :cond_0

    .line 104
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/vivo/settings/VivoTouchKey;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/vivo/settings/VivoTouchKey;->mPowerManager:Landroid/os/PowerManager;

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/vivo/settings/VivoTouchKey;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1, v0}, Landroid/os/PowerManager;->setButtonLightMode(I)V

    .line 107
    invoke-virtual {p0}, Lcom/vivo/settings/VivoTouchKey;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "key_button_light_control_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 109
    iget-object v1, p0, Lcom/vivo/settings/VivoTouchKey;->mTouchKeyDuration:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/vivo/settings/VivoTouchKey;->mTouchKeyEntries:[Ljava/lang/CharSequence;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 110
    const/4 v1, 0x1

    .line 112
    .end local v0    # "mode":I
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x1

    .line 118
    const-string v1, "VivoTouchKey"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreferenceTreeClick preference = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v1, p0, Lcom/vivo/settings/VivoTouchKey;->mTouchToDesktop:Landroid/preference/VivoCheckBoxPreference;

    if-ne p2, v1, :cond_1

    .line 120
    iget-object v1, p0, Lcom/vivo/settings/VivoTouchKey;->mTouchToDesktop:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/VivoCheckBoxPreference;->isChecked()Z

    move-result v0

    .line 121
    .local v0, "touchToDesktopState":Z
    const-string v1, "VivoTouchKey"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mTouchToDesktop.isChecked = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v1, p0, Lcom/vivo/settings/VivoTouchKey;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "finger_touch_switch"

    if-eqz v0, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 126
    .end local v0    # "touchToDesktopState":Z
    :goto_1
    return v2

    .line 122
    .restart local v0    # "touchToDesktopState":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 126
    .end local v0    # "touchToDesktopState":Z
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_1
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 82
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onResume()V

    .line 83
    invoke-virtual {p0}, Lcom/vivo/settings/VivoTouchKey;->updateInfo()V

    .line 84
    const-string v0, "VivoTouchKey"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return-void
.end method

.method public updateInfo()V
    .locals 3

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/vivo/settings/VivoTouchKey;->getTouchKeyDurationMode()I

    move-result v0

    .line 140
    .local v0, "mode":I
    iget-object v1, p0, Lcom/vivo/settings/VivoTouchKey;->mTouchKeyDuration:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/vivo/settings/VivoTouchKey;->mTouchKeyEntries:[Ljava/lang/CharSequence;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v1, p0, Lcom/vivo/settings/VivoTouchKey;->mTouchKeyDuration:Landroid/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 143
    iget-object v1, p0, Lcom/vivo/settings/VivoTouchKey;->mTouchToDesktop:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {p0}, Lcom/vivo/settings/VivoTouchKey;->isTouchToDesktopOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    .line 144
    return-void
.end method
