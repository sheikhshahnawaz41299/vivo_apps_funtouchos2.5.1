.class public Lcom/vivo/settings/HolsterFragment;
.super Lcom/vivo/settings/VivoSettingsPreferenceFragment;
.source "HolsterFragment.java"


# static fields
.field private static final HOLSTER_MODE:Ljava/lang/String; = "holster_lock_screen_mode"

.field private static final TAG:Ljava/lang/String; = "HolsterFragment"


# instance fields
.field mContext:Landroid/content/Context;

.field mHallManager:Lcom/vivo/services/hallstate/HallManager;

.field mHolster:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/settings/HolsterFragment;->mHallManager:Lcom/vivo/services/hallstate/HallManager;

    return-void
.end method

.method public static isEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "holster_lock_screen_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 67
    .local v0, "isEnabled":Z
    :goto_0
    return v0

    .line 65
    .end local v0    # "isEnabled":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const v0, 0x7f060057

    invoke-virtual {p0, v0}, Lcom/vivo/settings/HolsterFragment;->addPreferencesFromResource(I)V

    .line 32
    const-string v0, "HolsterFragment"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-virtual {p0}, Lcom/vivo/settings/HolsterFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/HolsterFragment;->mContext:Landroid/content/Context;

    .line 34
    iget-object v0, p0, Lcom/vivo/settings/HolsterFragment;->mContext:Landroid/content/Context;

    const-string v1, "hall_state_manager"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/services/hallstate/HallManager;

    iput-object v0, p0, Lcom/vivo/settings/HolsterFragment;->mHallManager:Lcom/vivo/services/hallstate/HallManager;

    .line 35
    const-string v0, "holster_lock_screen"

    invoke-virtual {p0, v0}, Lcom/vivo/settings/HolsterFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/vivo/settings/HolsterFragment;->mHolster:Landroid/preference/CheckBoxPreference;

    .line 36
    iget-object v0, p0, Lcom/vivo/settings/HolsterFragment;->mHolster:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/vivo/settings/HolsterFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/vivo/settings/HolsterFragment;->isEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 37
    invoke-virtual {p0}, Lcom/vivo/settings/HolsterFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vivo/settings/HolsterFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/settings/PreferenceHelper;->addDividers(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V

    .line 38
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 50
    const-string v1, "HolsterFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreferenceTreeClick preference = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v1, p0, Lcom/vivo/settings/HolsterFragment;->mHolster:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_0

    .line 52
    iget-object v4, p0, Lcom/vivo/settings/HolsterFragment;->mHallManager:Lcom/vivo/services/hallstate/HallManager;

    iget-object v1, p0, Lcom/vivo/settings/HolsterFragment;->mHolster:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Lcom/vivo/services/hallstate/HallManager;->hallSwitchEnable(I)I

    move-result v0

    .line 53
    .local v0, "ret":I
    if-gez v0, :cond_3

    .line 54
    iget-object v1, p0, Lcom/vivo/settings/HolsterFragment;->mHolster:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/vivo/settings/HolsterFragment;->mHolster:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_1
    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 55
    const-string v1, "HolsterFragment"

    const-string v2, "operate holster checkbox failed!"

    invoke-static {v1, v2}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .end local v0    # "ret":I
    :cond_0
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    :cond_1
    move v1, v3

    .line 52
    goto :goto_0

    .restart local v0    # "ret":I
    :cond_2
    move v3, v2

    .line 54
    goto :goto_1

    .line 57
    :cond_3
    iget-object v1, p0, Lcom/vivo/settings/HolsterFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "holster_lock_screen_mode"

    iget-object v5, p0, Lcom/vivo/settings/HolsterFragment;->mHolster:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_4

    :goto_3
    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_4
    move v2, v3

    goto :goto_3
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onResume()V

    .line 43
    invoke-virtual {p0}, Lcom/vivo/settings/HolsterFragment;->showBBKBackButton()V

    .line 44
    const v0, 0x7f0b0974

    invoke-virtual {p0, v0}, Lcom/vivo/settings/HolsterFragment;->setTitle(I)V

    .line 45
    return-void
.end method
