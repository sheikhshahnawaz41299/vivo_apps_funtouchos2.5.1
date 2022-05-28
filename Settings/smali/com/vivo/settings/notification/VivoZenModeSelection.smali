.class public Lcom/vivo/settings/notification/VivoZenModeSelection;
.super Lcom/vivo/settings/VivoSettingsPreferenceFragment;
.source "VivoZenModeSelection.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private currMode:I

.field private mContext:Landroid/content/Context;

.field private modeImportantInterruptions:Landroid/preference/Preference;

.field private modeNoInterruptions:Landroid/preference/Preference;

.field private modeOff:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;-><init>()V

    .line 22
    const-string v0, "VivoZenModeSelection"

    iput-object v0, p0, Lcom/vivo/settings/notification/VivoZenModeSelection;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 28
    invoke-virtual {p0}, Lcom/vivo/settings/notification/VivoZenModeSelection;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/settings/notification/VivoZenModeSelection;->mContext:Landroid/content/Context;

    .line 29
    invoke-virtual {p0}, Lcom/vivo/settings/notification/VivoZenModeSelection;->showBBKBackButton()V

    .line 30
    const-string v1, "VivoZenModeSelection"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    const v1, 0x7f060068

    invoke-virtual {p0, v1}, Lcom/vivo/settings/notification/VivoZenModeSelection;->addPreferencesFromResource(I)V

    .line 32
    invoke-virtual {p0}, Lcom/vivo/settings/notification/VivoZenModeSelection;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 33
    .local v0, "root":Landroid/preference/PreferenceScreen;
    const-string v1, "mode_no_interruptions"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/settings/notification/VivoZenModeSelection;->modeNoInterruptions:Landroid/preference/Preference;

    .line 34
    const-string v1, "mode_important_interruptions"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/settings/notification/VivoZenModeSelection;->modeImportantInterruptions:Landroid/preference/Preference;

    .line 35
    const-string v1, "mode_off"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/settings/notification/VivoZenModeSelection;->modeOff:Landroid/preference/Preference;

    .line 36
    iget-object v1, p0, Lcom/vivo/settings/notification/VivoZenModeSelection;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "zen_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/vivo/settings/notification/VivoZenModeSelection;->currMode:I

    .line 37
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/preference/Preference;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x1

    .line 45
    const-string v1, "VivoZenModeSelection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceTreeClick:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";currMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/vivo/settings/notification/VivoZenModeSelection;->currMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v1, p0, Lcom/vivo/settings/notification/VivoZenModeSelection;->modeNoInterruptions:Landroid/preference/Preference;

    if-ne v1, p2, :cond_0

    .line 47
    iget-object v1, p0, Lcom/vivo/settings/notification/VivoZenModeSelection;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "zen_mode"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 48
    iget v1, p0, Lcom/vivo/settings/notification/VivoZenModeSelection;->currMode:I

    if-ne v1, v4, :cond_2

    .line 49
    invoke-virtual {p0}, Lcom/vivo/settings/notification/VivoZenModeSelection;->finish()V

    .line 62
    :goto_0
    return v0

    .line 52
    :cond_0
    iget-object v1, p0, Lcom/vivo/settings/notification/VivoZenModeSelection;->modeImportantInterruptions:Landroid/preference/Preference;

    if-ne v1, p2, :cond_1

    .line 53
    iget-object v1, p0, Lcom/vivo/settings/notification/VivoZenModeSelection;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "zen_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 54
    iget v1, p0, Lcom/vivo/settings/notification/VivoZenModeSelection;->currMode:I

    if-ne v1, v0, :cond_2

    .line 55
    invoke-virtual {p0}, Lcom/vivo/settings/notification/VivoZenModeSelection;->finish()V

    goto :goto_0

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/vivo/settings/notification/VivoZenModeSelection;->modeOff:Landroid/preference/Preference;

    if-ne v0, p2, :cond_2

    .line 59
    iget-object v0, p0, Lcom/vivo/settings/notification/VivoZenModeSelection;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zen_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 61
    :cond_2
    invoke-virtual {p0}, Lcom/vivo/settings/notification/VivoZenModeSelection;->finish()V

    .line 62
    invoke-super {p0, p1, p2}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method
