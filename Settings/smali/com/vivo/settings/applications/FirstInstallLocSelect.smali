.class public Lcom/vivo/settings/applications/FirstInstallLocSelect;
.super Lcom/vivo/settings/VivoSettingsPreferenceFragment;
.source "FirstInstallLocSelect.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final KEY_PHONE:Ljava/lang/String; = "phone_first"

.field private static final KEY_SD:Ljava/lang/String; = "sd_first"

.field private static final KEY_STORAGE:Ljava/lang/String; = "storage_first"

.field private static final TAG:Ljava/lang/String; = "FirstInstallLocSelect"


# instance fields
.field private mStateTipsCategory:Landroid/preference/PreferenceCategory;

.field private phoneFirst:Lcom/vivo/settings/preference/BBKSingleChoicePreference;

.field private root:Landroid/preference/PreferenceScreen;

.field private sdCardFirst:Lcom/vivo/settings/preference/BBKSingleChoicePreference;

.field private storageFirst:Lcom/vivo/settings/preference/BBKSingleChoicePreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 38
    invoke-super {p0, p1}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lcom/vivo/settings/applications/FirstInstallLocSelect;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/applications/FirstInstallLocSelect;->root:Landroid/preference/PreferenceScreen;

    .line 40
    iget-object v0, p0, Lcom/vivo/settings/applications/FirstInstallLocSelect;->root:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/vivo/settings/applications/FirstInstallLocSelect;->root:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 43
    :cond_0
    const v0, 0x7f06001f

    invoke-virtual {p0, v0}, Lcom/vivo/settings/applications/FirstInstallLocSelect;->addPreferencesFromResource(I)V

    .line 44
    invoke-virtual {p0}, Lcom/vivo/settings/applications/FirstInstallLocSelect;->showBBKBackButton()V

    .line 46
    invoke-virtual {p0}, Lcom/vivo/settings/applications/FirstInstallLocSelect;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/applications/FirstInstallLocSelect;->root:Landroid/preference/PreferenceScreen;

    .line 48
    iget-object v0, p0, Lcom/vivo/settings/applications/FirstInstallLocSelect;->root:Landroid/preference/PreferenceScreen;

    const-string v1, "phone_first"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/vivo/settings/preference/BBKSingleChoicePreference;

    iput-object v0, p0, Lcom/vivo/settings/applications/FirstInstallLocSelect;->phoneFirst:Lcom/vivo/settings/preference/BBKSingleChoicePreference;

    .line 49
    iget-object v0, p0, Lcom/vivo/settings/applications/FirstInstallLocSelect;->root:Landroid/preference/PreferenceScreen;

    const-string v1, "storage_first"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/vivo/settings/preference/BBKSingleChoicePreference;

    iput-object v0, p0, Lcom/vivo/settings/applications/FirstInstallLocSelect;->storageFirst:Lcom/vivo/settings/preference/BBKSingleChoicePreference;

    .line 50
    iget-object v0, p0, Lcom/vivo/settings/applications/FirstInstallLocSelect;->root:Landroid/preference/PreferenceScreen;

    const-string v1, "sd_first"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/vivo/settings/preference/BBKSingleChoicePreference;

    iput-object v0, p0, Lcom/vivo/settings/applications/FirstInstallLocSelect;->sdCardFirst:Lcom/vivo/settings/preference/BBKSingleChoicePreference;

    .line 51
    iget-object v0, p0, Lcom/vivo/settings/applications/FirstInstallLocSelect;->phoneFirst:Lcom/vivo/settings/preference/BBKSingleChoicePreference;

    invoke-virtual {v0, v2}, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->setPersistent(Z)V

    .line 52
    iget-object v0, p0, Lcom/vivo/settings/applications/FirstInstallLocSelect;->phoneFirst:Lcom/vivo/settings/preference/BBKSingleChoicePreference;

    invoke-virtual {v0, p0}, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 53
    iget-object v0, p0, Lcom/vivo/settings/applications/FirstInstallLocSelect;->storageFirst:Lcom/vivo/settings/preference/BBKSingleChoicePreference;

    invoke-virtual {v0, v2}, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->setPersistent(Z)V

    .line 54
    iget-object v0, p0, Lcom/vivo/settings/applications/FirstInstallLocSelect;->storageFirst:Lcom/vivo/settings/preference/BBKSingleChoicePreference;

    invoke-virtual {v0, p0}, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 55
    iget-object v0, p0, Lcom/vivo/settings/applications/FirstInstallLocSelect;->sdCardFirst:Lcom/vivo/settings/preference/BBKSingleChoicePreference;

    invoke-virtual {v0, v2}, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->setPersistent(Z)V

    .line 56
    iget-object v0, p0, Lcom/vivo/settings/applications/FirstInstallLocSelect;->sdCardFirst:Lcom/vivo/settings/preference/BBKSingleChoicePreference;

    invoke-virtual {v0, p0}, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 57
    iget-object v0, p0, Lcom/vivo/settings/applications/FirstInstallLocSelect;->sdCardFirst:Lcom/vivo/settings/preference/BBKSingleChoicePreference;

    invoke-virtual {v0, v2}, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->setDividerVisible(Z)V

    .line 58
    iget-object v0, p0, Lcom/vivo/settings/applications/FirstInstallLocSelect;->root:Landroid/preference/PreferenceScreen;

    const-string v1, "key_state_tips"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/vivo/settings/applications/FirstInstallLocSelect;->mStateTipsCategory:Landroid/preference/PreferenceCategory;

    .line 60
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 128
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onDestroy()V

    .line 129
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 123
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onPause()V

    .line 124
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 64
    iget-object v0, p0, Lcom/vivo/settings/applications/FirstInstallLocSelect;->phoneFirst:Lcom/vivo/settings/preference/BBKSingleChoicePreference;

    if-ne p1, v0, :cond_1

    .line 65
    const-string v0, "FirstInstallLocSelect"

    const-string v1, "  phoneMount "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v0, p0, Lcom/vivo/settings/applications/FirstInstallLocSelect;->phoneFirst:Lcom/vivo/settings/preference/BBKSingleChoicePreference;

    invoke-virtual {v0}, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->setChecked()V

    .line 67
    invoke-virtual {p0}, Lcom/vivo/settings/applications/FirstInstallLocSelect;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_install_location"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 80
    :cond_0
    :goto_0
    return v3

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/vivo/settings/applications/FirstInstallLocSelect;->storageFirst:Lcom/vivo/settings/preference/BBKSingleChoicePreference;

    if-ne p1, v0, :cond_2

    .line 70
    iget-object v0, p0, Lcom/vivo/settings/applications/FirstInstallLocSelect;->storageFirst:Lcom/vivo/settings/preference/BBKSingleChoicePreference;

    invoke-virtual {v0}, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->setChecked()V

    .line 71
    invoke-virtual {p0}, Lcom/vivo/settings/applications/FirstInstallLocSelect;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_install_location"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 73
    :cond_2
    iget-object v0, p0, Lcom/vivo/settings/applications/FirstInstallLocSelect;->sdCardFirst:Lcom/vivo/settings/preference/BBKSingleChoicePreference;

    if-ne p1, v0, :cond_0

    .line 74
    const-string v0, "FirstInstallLocSelect"

    const-string v1, "sdMount "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v0, p0, Lcom/vivo/settings/applications/FirstInstallLocSelect;->sdCardFirst:Lcom/vivo/settings/preference/BBKSingleChoicePreference;

    invoke-virtual {v0}, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->setChecked()V

    .line 76
    invoke-virtual {p0}, Lcom/vivo/settings/applications/FirstInstallLocSelect;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_install_location"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 85
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onResume()V

    .line 87
    const/4 v1, 0x0

    .line 88
    .local v1, "isTFSupport":Z
    const-string v2, "persist.sys.app.move.internal"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 89
    const-string v2, "FirstInstallLocSelect"

    const-string v3, "no need to judge whether surport TF card !"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :goto_0
    const-string v2, "0"

    const-string v3, "persist.sys.primary.emulate"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 94
    const-string v2, "FirstInstallLocSelect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isTFSupport is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    if-nez v1, :cond_0

    .line 96
    iget-object v2, p0, Lcom/vivo/settings/applications/FirstInstallLocSelect;->sdCardFirst:Lcom/vivo/settings/preference/BBKSingleChoicePreference;

    const v3, 0x7f0b098a

    invoke-virtual {v2, v3}, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->setTitle(I)V

    .line 97
    iget-object v2, p0, Lcom/vivo/settings/applications/FirstInstallLocSelect;->root:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/vivo/settings/applications/FirstInstallLocSelect;->storageFirst:Lcom/vivo/settings/preference/BBKSingleChoicePreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 104
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/vivo/settings/applications/FirstInstallLocSelect;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "default_install_location"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 106
    .local v0, "installocation":I
    const-string v2, "FirstInstallLocSelect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  installocation = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    if-eq v0, v5, :cond_1

    if-nez v0, :cond_4

    .line 109
    :cond_1
    const-string v2, "FirstInstallLocSelect"

    const-string v3, "phoneFirst.setChecked()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v2, p0, Lcom/vivo/settings/applications/FirstInstallLocSelect;->phoneFirst:Lcom/vivo/settings/preference/BBKSingleChoicePreference;

    invoke-virtual {v2}, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->setChecked()V

    .line 119
    :goto_2
    return-void

    .line 91
    .end local v0    # "installocation":I
    :cond_2
    invoke-static {}, Lcom/android/settings/AppFeature;->isDeviceSupportTF()Z

    move-result v1

    goto :goto_0

    .line 100
    :cond_3
    iget-object v2, p0, Lcom/vivo/settings/applications/FirstInstallLocSelect;->phoneFirst:Lcom/vivo/settings/preference/BBKSingleChoicePreference;

    const v3, 0x7f0b082f

    invoke-virtual {v2, v3}, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->setTitle(I)V

    .line 101
    iget-object v2, p0, Lcom/vivo/settings/applications/FirstInstallLocSelect;->mStateTipsCategory:Landroid/preference/PreferenceCategory;

    const v3, 0x7f0b08f0

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 102
    iget-object v2, p0, Lcom/vivo/settings/applications/FirstInstallLocSelect;->root:Landroid/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/vivo/settings/applications/FirstInstallLocSelect;->storageFirst:Lcom/vivo/settings/preference/BBKSingleChoicePreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 111
    .restart local v0    # "installocation":I
    :cond_4
    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    .line 112
    const-string v2, "FirstInstallLocSelect"

    const-string v3, "sdCardFirst.setChecked()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v2, p0, Lcom/vivo/settings/applications/FirstInstallLocSelect;->sdCardFirst:Lcom/vivo/settings/preference/BBKSingleChoicePreference;

    invoke-virtual {v2}, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->setChecked()V

    goto :goto_2

    .line 115
    :cond_5
    const-string v2, "FirstInstallLocSelect"

    const-string v3, "storageFirst.setChecked()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v2, p0, Lcom/vivo/settings/applications/FirstInstallLocSelect;->storageFirst:Lcom/vivo/settings/preference/BBKSingleChoicePreference;

    invoke-virtual {v2}, Lcom/vivo/settings/preference/BBKSingleChoicePreference;->setChecked()V

    goto :goto_2
.end method
