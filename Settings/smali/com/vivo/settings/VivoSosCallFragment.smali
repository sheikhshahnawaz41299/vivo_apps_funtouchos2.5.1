.class public Lcom/vivo/settings/VivoSosCallFragment;
.super Lcom/vivo/settings/VivoSettingsPreferenceFragment;
.source "VivoSosCallFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VivoSosCallFragment"

.field private static final mSos_Call_Toggle:Ljava/lang/String; = "sos_call_toggle"


# instance fields
.field mSosCallCategory:Landroid/preference/PreferenceCategory;

.field mSosToggleCheckbox:Landroid/preference/VivoCheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v0, 0x7f0b0009

    invoke-virtual {p0, v0}, Lcom/vivo/settings/VivoSosCallFragment;->setTitle(I)V

    .line 36
    const v0, 0x7f060062

    invoke-virtual {p0, v0}, Lcom/vivo/settings/VivoSosCallFragment;->addPreferencesFromResource(I)V

    .line 37
    const-string v0, "VivoSosCallFragment"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const-string v0, "sos_toggle_settings"

    invoke-virtual {p0, v0}, Lcom/vivo/settings/VivoSosCallFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/VivoCheckBoxPreference;

    iput-object v0, p0, Lcom/vivo/settings/VivoSosCallFragment;->mSosToggleCheckbox:Landroid/preference/VivoCheckBoxPreference;

    .line 39
    const-string v0, "sos_call_explain"

    invoke-virtual {p0, v0}, Lcom/vivo/settings/VivoSosCallFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/vivo/settings/VivoSosCallFragment;->mSosCallCategory:Landroid/preference/PreferenceCategory;

    .line 40
    invoke-virtual {p0}, Lcom/vivo/settings/VivoSosCallFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vivo/settings/VivoSosCallFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/settings/PreferenceHelper;->addDividers(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V

    .line 41
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v1, 0x1

    .line 57
    const-string v0, "VivoSosCallFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceTreeClick preference = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v0, p0, Lcom/vivo/settings/VivoSosCallFragment;->mSosToggleCheckbox:Landroid/preference/VivoCheckBoxPreference;

    if-ne p2, v0, :cond_1

    .line 59
    invoke-virtual {p0}, Lcom/vivo/settings/VivoSosCallFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sos_call_toggle"

    iget-object v0, p0, Lcom/vivo/settings/VivoSosCallFragment;->mSosToggleCheckbox:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/VivoCheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 62
    :goto_1
    return v1

    .line 59
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 62
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_1
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 45
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onResume()V

    .line 46
    invoke-virtual {p0}, Lcom/vivo/settings/VivoSosCallFragment;->showBBKBackButton()V

    .line 47
    iget-object v4, p0, Lcom/vivo/settings/VivoSosCallFragment;->mSosToggleCheckbox:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {p0}, Lcom/vivo/settings/VivoSosCallFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "sos_call_toggle"

    invoke-static {v1, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v2, v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    .line 48
    invoke-virtual {p0}, Lcom/vivo/settings/VivoSosCallFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "emergency_number"

    const/16 v5, 0x64

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 49
    .local v0, "emergencyNumber":I
    iget-object v1, p0, Lcom/vivo/settings/VivoSosCallFragment;->mSosCallCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/vivo/settings/VivoSosCallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b09af

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v3

    invoke-virtual {v4, v5, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 51
    return-void

    .end local v0    # "emergencyNumber":I
    :cond_0
    move v1, v3

    .line 47
    goto :goto_0
.end method
