.class public Lcom/android/settings/accessibility/VivoToggleScreenMagnification;
.super Lcom/vivo/settings/VivoSettingsPreferenceFragment;
.source "VivoToggleScreenMagnification.java"


# instance fields
.field private mCheckBox:Landroid/preference/VivoCheckBoxPreference;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mSettingsObserver:Landroid/database/ContentObserver;

.field private mSummaryPreference:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;-><init>()V

    .line 110
    new-instance v0, Lcom/android/settings/accessibility/VivoToggleScreenMagnification$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/VivoToggleScreenMagnification$2;-><init>(Lcom/android/settings/accessibility/VivoToggleScreenMagnification;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/VivoToggleScreenMagnification;->mSettingsObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/VivoToggleScreenMagnification;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/VivoToggleScreenMagnification;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/settings/accessibility/VivoToggleScreenMagnification;->updateCheckBox()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/accessibility/VivoToggleScreenMagnification;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/VivoToggleScreenMagnification;

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/android/settings/accessibility/VivoToggleScreenMagnification;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/accessibility/VivoToggleScreenMagnification;)Landroid/preference/VivoCheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/VivoToggleScreenMagnification;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/settings/accessibility/VivoToggleScreenMagnification;->mCheckBox:Landroid/preference/VivoCheckBoxPreference;

    return-object v0
.end method

.method private showPerformanceAlertDialog()V
    .locals 3

    .prologue
    .line 157
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/VivoToggleScreenMagnification;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 158
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0b09ac

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 159
    const v1, 0x7f0b09ad

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 160
    const v1, 0x7f0b037e

    new-instance v2, Lcom/android/settings/accessibility/VivoToggleScreenMagnification$3;

    invoke-direct {v2, p0}, Lcom/android/settings/accessibility/VivoToggleScreenMagnification$3;-><init>(Lcom/android/settings/accessibility/VivoToggleScreenMagnification;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 168
    const v1, 0x7f0b037f

    new-instance v2, Lcom/android/settings/accessibility/VivoToggleScreenMagnification$4;

    invoke-direct {v2, p0}, Lcom/android/settings/accessibility/VivoToggleScreenMagnification$4;-><init>(Lcom/android/settings/accessibility/VivoToggleScreenMagnification;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 174
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 175
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 176
    return-void
.end method

.method private updateCheckBox()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/accessibility/VivoToggleScreenMagnification;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accessibility_display_magnification_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 107
    .local v0, "isChecked":Z
    :goto_0
    iget-object v1, p0, Lcom/android/settings/accessibility/VivoToggleScreenMagnification;->mCheckBox:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    .line 108
    return-void

    .end local v0    # "isChecked":Z
    :cond_0
    move v0, v1

    .line 105
    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v4, 0x7f0b0443

    const/4 v3, 0x0

    .line 37
    invoke-super {p0, p1}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcom/android/settings/accessibility/VivoToggleScreenMagnification;->showBBKBackButton()V

    .line 39
    invoke-virtual {p0}, Lcom/android/settings/accessibility/VivoToggleScreenMagnification;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 76
    :goto_0
    return-void

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/VivoToggleScreenMagnification;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accessibility/VivoToggleScreenMagnification;->mContentResolver:Landroid/content/ContentResolver;

    .line 43
    invoke-virtual {p0, v4}, Lcom/android/settings/accessibility/VivoToggleScreenMagnification;->setTitle(I)V

    .line 44
    invoke-virtual {p0}, Lcom/android/settings/accessibility/VivoToggleScreenMagnification;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/VivoToggleScreenMagnification;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 46
    .local v0, "preferenceScreen":Landroid/preference/PreferenceScreen;
    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/VivoToggleScreenMagnification;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 47
    new-instance v1, Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/VivoToggleScreenMagnification;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/preference/VivoCheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/accessibility/VivoToggleScreenMagnification;->mCheckBox:Landroid/preference/VivoCheckBoxPreference;

    .line 49
    iget-object v1, p0, Lcom/android/settings/accessibility/VivoToggleScreenMagnification;->mCheckBox:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/VivoCheckBoxPreference;->setTitle(I)V

    .line 50
    iget-object v1, p0, Lcom/android/settings/accessibility/VivoToggleScreenMagnification;->mCheckBox:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/VivoCheckBoxPreference;->setPersistent(Z)V

    .line 51
    iget-object v1, p0, Lcom/android/settings/accessibility/VivoToggleScreenMagnification;->mCheckBox:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 52
    new-instance v1, Lcom/android/settings/accessibility/VivoToggleScreenMagnification$1;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/VivoToggleScreenMagnification;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/settings/accessibility/VivoToggleScreenMagnification$1;-><init>(Lcom/android/settings/accessibility/VivoToggleScreenMagnification;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/accessibility/VivoToggleScreenMagnification;->mSummaryPreference:Landroid/preference/Preference;

    .line 73
    iget-object v1, p0, Lcom/android/settings/accessibility/VivoToggleScreenMagnification;->mSummaryPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 74
    iget-object v1, p0, Lcom/android/settings/accessibility/VivoToggleScreenMagnification;->mSummaryPreference:Landroid/preference/Preference;

    const v2, 0x7f0400dc

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 75
    iget-object v1, p0, Lcom/android/settings/accessibility/VivoToggleScreenMagnification;->mSummaryPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/accessibility/VivoToggleScreenMagnification;->mContentResolver:Landroid/content/ContentResolver;

    .line 139
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onDestroy()V

    .line 140
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/settings/accessibility/VivoToggleScreenMagnification;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/settings/accessibility/VivoToggleScreenMagnification;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/settings/accessibility/VivoToggleScreenMagnification;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 133
    :cond_0
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onPause()V

    .line 134
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/settings/accessibility/VivoToggleScreenMagnification;->mCheckBox:Landroid/preference/VivoCheckBoxPreference;

    if-ne p2, v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/settings/accessibility/VivoToggleScreenMagnification;->mCheckBox:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/VivoCheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    invoke-direct {p0}, Lcom/android/settings/accessibility/VivoToggleScreenMagnification;->showPerformanceAlertDialog()V

    .line 153
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 147
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/accessibility/VivoToggleScreenMagnification;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_magnification_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method protected onProcessArguments(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 85
    if-nez p1, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/accessibility/VivoToggleScreenMagnification;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/VivoToggleScreenMagnification;->mSummaryPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 102
    :goto_0
    return-void

    .line 91
    :cond_0
    const-string v1, "summary"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    const-string v1, "summary"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 94
    .local v0, "summary":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/settings/accessibility/VivoToggleScreenMagnification;->mSummaryPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/accessibility/VivoToggleScreenMagnification;->getListView()Landroid/widget/ListView;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/accessibility/VivoToggleScreenMagnification;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 101
    .end local v0    # "summary":Ljava/lang/CharSequence;
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/accessibility/VivoToggleScreenMagnification;->updateCheckBox()V

    goto :goto_0

    .line 99
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/accessibility/VivoToggleScreenMagnification;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/VivoToggleScreenMagnification;->mSummaryPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 119
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onResume()V

    .line 120
    invoke-direct {p0}, Lcom/android/settings/accessibility/VivoToggleScreenMagnification;->updateCheckBox()V

    .line 122
    iget-object v0, p0, Lcom/android/settings/accessibility/VivoToggleScreenMagnification;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "accessibility_display_magnification_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/accessibility/VivoToggleScreenMagnification;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 126
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 80
    invoke-super {p0, p1, p2}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/accessibility/VivoToggleScreenMagnification;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/VivoToggleScreenMagnification;->onProcessArguments(Landroid/os/Bundle;)V

    .line 82
    return-void
.end method
