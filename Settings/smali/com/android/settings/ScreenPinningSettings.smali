.class public Lcom/android/settings/ScreenPinningSettings;
.super Lcom/vivo/settings/VivoSettingsPreferenceFragment;
.source "ScreenPinningSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# static fields
.field private static final CHANGE_LOCK_METHOD_REQUEST:I = 0x2b

.field private static final KEY_SCREEN_PIN_DESCRIPTION:Ljava/lang/CharSequence;

.field private static final KEY_SCREEN_PIN_TITLE:Ljava/lang/CharSequence;

.field private static final KEY_USE_SCREEN_LOCK:Ljava/lang/CharSequence;

.field private static final TAG:Ljava/lang/String; = "ScreenPinningSettings"


# instance fields
.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mScreenPinDes:Landroid/preference/PreferenceCategory;

.field private mScreenPinTitle:Landroid/preference/VivoCheckBoxPreference;

.field private mUseScreenLock:Landroid/preference/VivoCheckBoxPreference;

.field private root:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-string v0, "screen_pinning_title"

    sput-object v0, Lcom/android/settings/ScreenPinningSettings;->KEY_SCREEN_PIN_TITLE:Ljava/lang/CharSequence;

    .line 57
    const-string v0, "screen_pinning_description"

    sput-object v0, Lcom/android/settings/ScreenPinningSettings;->KEY_SCREEN_PIN_DESCRIPTION:Ljava/lang/CharSequence;

    .line 58
    const-string v0, "use_screen_lock"

    sput-object v0, Lcom/android/settings/ScreenPinningSettings;->KEY_USE_SCREEN_LOCK:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ScreenPinningSettings;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ScreenPinningSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/settings/ScreenPinningSettings;->setScreenLockUsed(Z)Z

    move-result v0

    return v0
.end method

.method private getCurrentSecurityTitle()I
    .locals 3

    .prologue
    const v1, 0x7f0b0787

    .line 158
    iget-object v2, p0, Lcom/android/settings/ScreenPinningSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v0

    .line 159
    .local v0, "quality":I
    sparse-switch v0, :sswitch_data_0

    .line 172
    :cond_0
    const v1, 0x7f0b0758

    :goto_0
    :sswitch_0
    return v1

    .line 168
    :sswitch_1
    iget-object v2, p0, Lcom/android/settings/ScreenPinningSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 159
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_1
        0x20000 -> :sswitch_0
        0x30000 -> :sswitch_0
        0x40000 -> :sswitch_0
        0x50000 -> :sswitch_0
        0x60000 -> :sswitch_0
    .end sparse-switch
.end method

.method private static isLockToAppEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 110
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_to_app_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isScreenLockUsed()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 120
    invoke-direct {p0}, Lcom/android/settings/ScreenPinningSettings;->getCurrentSecurityTitle()I

    move-result v3

    const v4, 0x7f0b0758

    if-eq v3, v4, :cond_0

    move v0, v1

    .line 121
    .local v0, "def":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lock_to_app_exit_locked"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    return v1

    .end local v0    # "def":I
    :cond_0
    move v0, v2

    .line 120
    goto :goto_0

    .restart local v0    # "def":I
    :cond_1
    move v1, v2

    .line 121
    goto :goto_1
.end method

.method private setLockToAppEnabled(Z)V
    .locals 3
    .param p1, "isEnabled"    # Z

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_to_app_enabled"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 117
    return-void

    .line 115
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setScreenLockUsed(Z)Z
    .locals 6
    .param p1, "isEnabled"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 126
    if-eqz p1, :cond_0

    .line 127
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 128
    .local v1, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v4

    if-nez v4, :cond_0

    .line 130
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 131
    .local v0, "chooseLockIntent":Landroid/content/Intent;
    const-string v3, "minimum_quality"

    const/high16 v4, 0x10000

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 134
    const-string v3, "from_app"

    const-string v4, "ScreenPin"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    const/16 v3, 0x2b

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/ScreenPinningSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 141
    .end local v0    # "chooseLockIntent":Landroid/content/Intent;
    .end local v1    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :goto_0
    return v2

    .line 139
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lock_to_app_exit_locked"

    if-eqz p1, :cond_1

    move v2, v3

    :cond_1
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v2, v3

    .line 141
    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 73
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v2, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/ScreenPinningSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 75
    const v2, 0x7f060032

    invoke-virtual {p0, v2}, Lcom/android/settings/ScreenPinningSettings;->addPreferencesFromResource(I)V

    .line 76
    sget-object v2, Lcom/android/settings/ScreenPinningSettings;->KEY_SCREEN_PIN_TITLE:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/android/settings/ScreenPinningSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/VivoCheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/ScreenPinningSettings;->mScreenPinTitle:Landroid/preference/VivoCheckBoxPreference;

    .line 77
    iget-object v2, p0, Lcom/android/settings/ScreenPinningSettings;->mScreenPinTitle:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/ScreenPinningSettings;->isLockToAppEnabled(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    .line 78
    sget-object v2, Lcom/android/settings/ScreenPinningSettings;->KEY_SCREEN_PIN_DESCRIPTION:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/android/settings/ScreenPinningSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/android/settings/ScreenPinningSettings;->mScreenPinDes:Landroid/preference/PreferenceCategory;

    .line 79
    sget-object v2, Lcom/android/settings/ScreenPinningSettings;->KEY_USE_SCREEN_LOCK:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/android/settings/ScreenPinningSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/VivoCheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/ScreenPinningSettings;->mUseScreenLock:Landroid/preference/VivoCheckBoxPreference;

    .line 80
    invoke-direct {p0}, Lcom/android/settings/ScreenPinningSettings;->isScreenLockUsed()Z

    move-result v1

    .line 81
    .local v1, "isScreenLockUsed":Z
    iget-object v2, p0, Lcom/android/settings/ScreenPinningSettings;->mUseScreenLock:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    .line 82
    iget-object v2, p0, Lcom/android/settings/ScreenPinningSettings;->mUseScreenLock:Landroid/preference/VivoCheckBoxPreference;

    new-instance v3, Lcom/android/settings/ScreenPinningSettings$1;

    invoke-direct {v3, p0}, Lcom/android/settings/ScreenPinningSettings$1;-><init>(Lcom/android/settings/ScreenPinningSettings;)V

    invoke-virtual {v2, v3}, Landroid/preference/VivoCheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 88
    iget-object v2, p0, Lcom/android/settings/ScreenPinningSettings;->mScreenPinTitle:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/VivoCheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    iget-object v2, p0, Lcom/android/settings/ScreenPinningSettings;->mScreenPinDes:Landroid/preference/PreferenceCategory;

    invoke-virtual {p0, v2}, Lcom/android/settings/ScreenPinningSettings;->removePreference(Landroid/preference/Preference;)V

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v2, p0, Lcom/android/settings/ScreenPinningSettings;->mUseScreenLock:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {p0, v2}, Lcom/android/settings/ScreenPinningSettings;->removePreference(Landroid/preference/Preference;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 146
    invoke-super {p0, p1, p2, p3}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 147
    const/16 v2, 0x2b

    if-ne p1, v2, :cond_0

    .line 148
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 149
    .local v0, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 151
    .local v1, "validPassQuality":Z
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/settings/ScreenPinningSettings;->setScreenLockUsed(Z)Z

    .line 153
    iget-object v2, p0, Lcom/android/settings/ScreenPinningSettings;->mUseScreenLock:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    .line 155
    .end local v0    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .end local v1    # "validPassQuality":Z
    :cond_0
    return-void

    .line 149
    .restart local v0    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 97
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onDestroyView()V

    .line 98
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 192
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 197
    iget-object v1, p0, Lcom/android/settings/ScreenPinningSettings;->mScreenPinTitle:Landroid/preference/VivoCheckBoxPreference;

    if-ne p2, v1, :cond_0

    .line 198
    iget-object v1, p0, Lcom/android/settings/ScreenPinningSettings;->mScreenPinTitle:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/VivoCheckBoxPreference;->isChecked()Z

    move-result v0

    .line 199
    .local v0, "isChecked":Z
    const-string v1, "ScreenPinningSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isChecked = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-direct {p0, v0}, Lcom/android/settings/ScreenPinningSettings;->setLockToAppEnabled(Z)V

    .line 201
    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->updateDisplay()V

    .line 202
    const/4 v1, 0x1

    .line 204
    .end local v0    # "isChecked":Z
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 102
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onResume()V

    .line 103
    const v0, 0x7f0b0730

    invoke-virtual {p0, v0}, Lcom/android/settings/ScreenPinningSettings;->setTitle(I)V

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->showBBKBackButton()V

    .line 106
    iget-object v0, p0, Lcom/android/settings/ScreenPinningSettings;->mUseScreenLock:Landroid/preference/VivoCheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings/ScreenPinningSettings;->getCurrentSecurityTitle()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/VivoCheckBoxPreference;->setTitle(I)V

    .line 107
    return-void
.end method

.method public updateDisplay()V
    .locals 3

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/ScreenPinningSettings;->isLockToAppEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    iget-object v1, p0, Lcom/android/settings/ScreenPinningSettings;->mScreenPinDes:Landroid/preference/PreferenceCategory;

    invoke-virtual {p0, v1}, Lcom/android/settings/ScreenPinningSettings;->removePreference(Landroid/preference/Preference;)V

    .line 178
    iget-object v1, p0, Lcom/android/settings/ScreenPinningSettings;->mUseScreenLock:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {p0, v1}, Lcom/android/settings/ScreenPinningSettings;->addPreference(Landroid/preference/Preference;)V

    .line 179
    invoke-direct {p0}, Lcom/android/settings/ScreenPinningSettings;->isScreenLockUsed()Z

    move-result v0

    .line 180
    .local v0, "isScreenLockUsed":Z
    iget-object v1, p0, Lcom/android/settings/ScreenPinningSettings;->mUseScreenLock:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    .line 182
    iget-object v1, p0, Lcom/android/settings/ScreenPinningSettings;->mUseScreenLock:Landroid/preference/VivoCheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings/ScreenPinningSettings;->getCurrentSecurityTitle()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/VivoCheckBoxPreference;->setTitle(I)V

    .line 187
    .end local v0    # "isScreenLockUsed":Z
    :goto_0
    return-void

    .line 184
    :cond_0
    iget-object v1, p0, Lcom/android/settings/ScreenPinningSettings;->mScreenPinDes:Landroid/preference/PreferenceCategory;

    invoke-virtual {p0, v1}, Lcom/android/settings/ScreenPinningSettings;->addPreference(Landroid/preference/Preference;)V

    .line 185
    iget-object v1, p0, Lcom/android/settings/ScreenPinningSettings;->mUseScreenLock:Landroid/preference/VivoCheckBoxPreference;

    invoke-virtual {p0, v1}, Lcom/android/settings/ScreenPinningSettings;->removePreference(Landroid/preference/Preference;)V

    goto :goto_0
.end method
