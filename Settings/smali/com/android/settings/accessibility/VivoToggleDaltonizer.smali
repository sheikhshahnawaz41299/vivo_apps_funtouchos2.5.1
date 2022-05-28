.class public Lcom/android/settings/accessibility/VivoToggleDaltonizer;
.super Lcom/vivo/settings/VivoSettingsPreferenceFragment;
.source "VivoToggleDaltonizer.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final DEFAULT_TYPE:I = -0x1

.field private static final ENABLED:Ljava/lang/String; = "accessibility_display_daltonizer_enabled"

.field private static final TYPE:Ljava/lang/String; = "accessibility_display_daltonizer"


# instance fields
.field private mCheckBox:Landroid/preference/CheckBoxPreference;

.field private mType:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private initPreferences()V
    .locals 7

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/android/settings/accessibility/VivoToggleDaltonizer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accessibility_display_daltonizer"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "value":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/accessibility/VivoToggleDaltonizer;->mType:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 54
    iget-object v2, p0, Lcom/android/settings/accessibility/VivoToggleDaltonizer;->mType:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 55
    iget-object v2, p0, Lcom/android/settings/accessibility/VivoToggleDaltonizer;->mType:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 56
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 58
    iget-object v2, p0, Lcom/android/settings/accessibility/VivoToggleDaltonizer;->mType:Landroid/preference/ListPreference;

    const v3, 0x7f0b0453

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const v6, 0x7f0b05c5

    invoke-virtual {p0, v6}, Lcom/android/settings/accessibility/VivoToggleDaltonizer;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/accessibility/VivoToggleDaltonizer;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 60
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, -0x2

    .line 29
    invoke-super {p0, p1}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v1, 0x7f06004f

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/VivoToggleDaltonizer;->addPreferencesFromResource(I)V

    .line 31
    invoke-virtual {p0}, Lcom/android/settings/accessibility/VivoToggleDaltonizer;->showBBKBackButton()V

    .line 32
    const v1, 0x7f0b0450

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/VivoToggleDaltonizer;->setTitle(I)V

    .line 33
    invoke-virtual {p0}, Lcom/android/settings/accessibility/VivoToggleDaltonizer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_display_daltonizer"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 34
    .local v0, "default_value":I
    if-ne v0, v3, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/android/settings/accessibility/VivoToggleDaltonizer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_display_daltonizer"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 37
    :cond_0
    const-string v1, "type"

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/VivoToggleDaltonizer;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/settings/accessibility/VivoToggleDaltonizer;->mType:Landroid/preference/ListPreference;

    .line 38
    const-string v1, "diaplay_daltonizer"

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/VivoToggleDaltonizer;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/settings/accessibility/VivoToggleDaltonizer;->mCheckBox:Landroid/preference/CheckBoxPreference;

    .line 40
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/accessibility/VivoToggleDaltonizer;->mType:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/accessibility/VivoToggleDaltonizer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_daltonizer"

    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 73
    const-string v0, "%s"

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 76
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/accessibility/VivoToggleDaltonizer;->mCheckBox:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/accessibility/VivoToggleDaltonizer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_display_daltonizer_enabled"

    iget-object v0, p0, Lcom/android/settings/accessibility/VivoToggleDaltonizer;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 66
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 64
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 44
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onResume()V

    .line 45
    invoke-virtual {p0}, Lcom/android/settings/accessibility/VivoToggleDaltonizer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accessibility_display_daltonizer_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 46
    .local v0, "isChecked":Z
    :goto_0
    iget-object v1, p0, Lcom/android/settings/accessibility/VivoToggleDaltonizer;->mCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 47
    invoke-direct {p0}, Lcom/android/settings/accessibility/VivoToggleDaltonizer;->initPreferences()V

    .line 48
    invoke-virtual {p0}, Lcom/android/settings/accessibility/VivoToggleDaltonizer;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/VivoToggleDaltonizer;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/settings/PreferenceHelper;->addDividers(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V

    .line 49
    return-void

    .end local v0    # "isChecked":Z
    :cond_0
    move v0, v1

    .line 45
    goto :goto_0
.end method
