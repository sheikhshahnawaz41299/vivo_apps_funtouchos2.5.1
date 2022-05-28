.class public Lcom/vivo/settings/VivoSecuritySettings;
.super Lcom/vivo/settings/VivoSettingsPreferenceFragment;
.source "VivoSecuritySettings.java"


# static fields
.field private static final ACTION_EYE_PRINT:Ljava/lang/String; = "vivo.intent.action.start_vivoeye_prefrenece"

.field private static final DLG_NONE_MARKET_CONFIRM:I = 0x2

.field private static final DLG_VISIT_CLEAN:I = 0x1

.field private static final KEY_ENCRYPTION:Ljava/lang/String; = "encryption"

.field private static final KEY_EYE_CATEGORY:Ljava/lang/String; = "eyep_category"

.field public static final KEY_EYE_PRINT:Ljava/lang/String; = "eye_print"

.field private static final KEY_FINGER_CATEGORY:Ljava/lang/String; = "finger_category"

.field private static final KEY_FINGER_PRINT_EXPLAIN:Ljava/lang/String; = "finger_print_explain"

.field private static final KEY_MANAGE_NOTIFICATION_ACCESS:Ljava/lang/String; = "manage_notification_access"

.field private static final KEY_RESET_CREDENTIALS:Ljava/lang/String; = "reset_credentials"

.field private static final KEY_SCREEN_PINNING:Ljava/lang/String; = "screen_pinning_settings"

.field private static final KEY_SECURITY_CATEGORY:Ljava/lang/String; = "security_category"

.field private static final KEY_SECURITY_CATEGORY_CRYPT:Ljava/lang/String; = "security_category_crypt"

.field private static final KEY_SIM_LOCK_PREF:Ljava/lang/String; = "sim_lock_pref"

.field private static final KEY_TOGGLE_INSTALL_APPLICATIONS:Ljava/lang/String; = "toggle_install_applications"

.field private static final KEY_TOGGLE_INSTALL_TITLE:Ljava/lang/String; = "toggle_install_title"

.field private static final KEY_UNLOCK_SET_OR_CHANGE:Ljava/lang/String; = "unlock_set_or_change"

.field private static final KEY_VISIBLE_PATTERN:Ljava/lang/String; = "visible_pattern"

.field private static final KEY_VISIT_MODE:Ljava/lang/String; = "visit_mode"

.field private static final PACKAGE_MIME_TYPE:Ljava/lang/String; = "application/vnd.android.package-archive"

.field public static final SETTINGS_RESOUCE:Lcom/vivo/settings/xml/SettingsResouce;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vivo/settings/xml/SettingsResouce",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SecuritySettings"


# instance fields
.field private mAppInstallLoc:Landroid/preference/CheckBoxPreference;

.field private mChangeUnlcokClicked:Z

.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field private mEncryption:Landroid/preference/Preference;

.field private mEyeCategory:Landroid/preference/Preference;

.field private mEyePrint:Landroid/preference/Preference;

.field private mIsPrimary:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNotificationAccess:Landroid/preference/Preference;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mResetCredentials:Landroid/preference/Preference;

.field private mSecurityCategory:Landroid/preference/Preference;

.field private mSecurityCategoryCrypt:Landroid/preference/Preference;

.field private mSimLock:Landroid/preference/Preference;

.field private mSimUtils:Lcom/vivo/settings/SimUtils;

.field private mToggleVerifyApps:Landroid/preference/CheckBoxPreference;

.field private mUnlockSetting:Landroid/preference/Preference;

.field private mVisiblePattern:Landroid/preference/CheckBoxPreference;

.field private mVisitMode:Landroid/preference/Preference;

.field private screenPinning:Landroid/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 469
    new-instance v0, Lcom/vivo/settings/VivoSecuritySettings$3;

    invoke-direct {v0}, Lcom/vivo/settings/VivoSecuritySettings$3;-><init>()V

    sput-object v0, Lcom/vivo/settings/VivoSecuritySettings;->SETTINGS_RESOUCE:Lcom/vivo/settings/xml/SettingsResouce;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;-><init>()V

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vivo/settings/VivoSecuritySettings;->mChangeUnlcokClicked:Z

    .line 93
    new-instance v0, Lcom/vivo/settings/VivoSecuritySettings$1;

    invoke-direct {v0, p0}, Lcom/vivo/settings/VivoSecuritySettings$1;-><init>(Lcom/vivo/settings/VivoSecuritySettings;)V

    iput-object v0, p0, Lcom/vivo/settings/VivoSecuritySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/vivo/settings/VivoSecuritySettings;)Lcom/vivo/settings/SimUtils;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/VivoSecuritySettings;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/vivo/settings/VivoSecuritySettings;->mSimUtils:Lcom/vivo/settings/SimUtils;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vivo/settings/VivoSecuritySettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/VivoSecuritySettings;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/vivo/settings/VivoSecuritySettings;->mSimLock:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vivo/settings/VivoSecuritySettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/VivoSecuritySettings;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/vivo/settings/VivoSecuritySettings;->updatePrefs()V

    return-void
.end method

.method static synthetic access$300(Lcom/vivo/settings/VivoSecuritySettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/VivoSecuritySettings;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/vivo/settings/VivoSecuritySettings;->mAppInstallLoc:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vivo/settings/VivoSecuritySettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/VivoSecuritySettings;

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/vivo/settings/VivoSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private getNumEnabledNotificationListeners()I
    .locals 5

    .prologue
    .line 386
    invoke-virtual {p0}, Lcom/vivo/settings/VivoSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "enabled_notification_listeners"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 388
    .local v2, "flat":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x0

    .line 394
    :goto_0
    return v3

    .line 389
    :cond_1
    const-string v3, "com.bbk.launcher2/com.bbk.launcher2.NotificationCollectorListener"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 390
    .local v1, "enableLauncher":Z
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v0, "components":[Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 392
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 394
    :cond_2
    array-length v3, v0

    goto :goto_0
.end method

.method private initPrefs()V
    .locals 4

    .prologue
    .line 232
    const-string v1, "security_category"

    invoke-virtual {p0, v1}, Lcom/vivo/settings/VivoSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/settings/VivoSecuritySettings;->mSecurityCategory:Landroid/preference/Preference;

    .line 233
    const-string v1, "unlock_set_or_change"

    invoke-virtual {p0, v1}, Lcom/vivo/settings/VivoSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/settings/VivoSecuritySettings;->mUnlockSetting:Landroid/preference/Preference;

    .line 234
    const-string v1, "visit_mode"

    invoke-virtual {p0, v1}, Lcom/vivo/settings/VivoSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/settings/VivoSecuritySettings;->mVisitMode:Landroid/preference/Preference;

    .line 235
    const-string v1, "visible_pattern"

    invoke-virtual {p0, v1}, Lcom/vivo/settings/VivoSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/vivo/settings/VivoSecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    .line 236
    const-string v1, "sim_lock_pref"

    invoke-virtual {p0, v1}, Lcom/vivo/settings/VivoSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/settings/VivoSecuritySettings;->mSimLock:Landroid/preference/Preference;

    .line 237
    const-string v1, "toggle_install_applications"

    invoke-virtual {p0, v1}, Lcom/vivo/settings/VivoSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/vivo/settings/VivoSecuritySettings;->mAppInstallLoc:Landroid/preference/CheckBoxPreference;

    .line 238
    const-string v1, "reset_credentials"

    invoke-virtual {p0, v1}, Lcom/vivo/settings/VivoSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/settings/VivoSecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    .line 239
    const-string v1, "eyep_category"

    invoke-virtual {p0, v1}, Lcom/vivo/settings/VivoSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/settings/VivoSecuritySettings;->mEyeCategory:Landroid/preference/Preference;

    .line 240
    const-string v1, "manage_notification_access"

    invoke-virtual {p0, v1}, Lcom/vivo/settings/VivoSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/settings/VivoSecuritySettings;->mNotificationAccess:Landroid/preference/Preference;

    .line 241
    const-string v1, "eye_print"

    invoke-virtual {p0, v1}, Lcom/vivo/settings/VivoSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/settings/VivoSecuritySettings;->mEyePrint:Landroid/preference/Preference;

    .line 242
    const-string v1, "screen_pinning_settings"

    invoke-virtual {p0, v1}, Lcom/vivo/settings/VivoSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/settings/VivoSecuritySettings;->screenPinning:Landroid/preference/Preference;

    .line 243
    const-string v1, "security_category_crypt"

    invoke-virtual {p0, v1}, Lcom/vivo/settings/VivoSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/settings/VivoSecuritySettings;->mSecurityCategoryCrypt:Landroid/preference/Preference;

    .line 244
    const-string v1, "encryption"

    invoke-virtual {p0, v1}, Lcom/vivo/settings/VivoSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/settings/VivoSecuritySettings;->mEncryption:Landroid/preference/Preference;

    .line 246
    const-string v1, "toggle_verify_applications"

    invoke-virtual {p0, v1}, Lcom/vivo/settings/VivoSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/vivo/settings/VivoSecuritySettings;->mToggleVerifyApps:Landroid/preference/CheckBoxPreference;

    .line 248
    sget-object v1, Lcom/vivo/settings/VivoSecuritySettings;->SETTINGS_RESOUCE:Lcom/vivo/settings/xml/SettingsResouce;

    invoke-virtual {p0}, Lcom/vivo/settings/VivoSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "eye_print"

    invoke-virtual {v1, v2, v3}, Lcom/vivo/settings/xml/SettingsResouce;->isItemEnabled(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result v0

    .line 250
    .local v0, "isEyePrintExist":Z
    sget-object v1, Lcom/vivo/settings/VivoSecuritySettings;->SETTINGS_RESOUCE:Lcom/vivo/settings/xml/SettingsResouce;

    invoke-virtual {p0}, Lcom/vivo/settings/VivoSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "screen_pinning_settings"

    invoke-virtual {v1, v2, v3}, Lcom/vivo/settings/xml/SettingsResouce;->isItemEnabled(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 251
    iget-object v1, p0, Lcom/vivo/settings/VivoSecuritySettings;->screenPinning:Landroid/preference/Preference;

    invoke-virtual {p0, v1}, Lcom/vivo/settings/VivoSecuritySettings;->removePreference(Landroid/preference/Preference;)V

    .line 253
    :cond_0
    sget-object v1, Lcom/vivo/settings/VivoSecuritySettings;->SETTINGS_RESOUCE:Lcom/vivo/settings/xml/SettingsResouce;

    invoke-virtual {p0}, Lcom/vivo/settings/VivoSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "encryption"

    invoke-virtual {v1, v2, v3}, Lcom/vivo/settings/xml/SettingsResouce;->isItemEnabled(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 254
    iget-object v1, p0, Lcom/vivo/settings/VivoSecuritySettings;->mEncryption:Landroid/preference/Preference;

    invoke-virtual {p0, v1}, Lcom/vivo/settings/VivoSecuritySettings;->removePreference(Landroid/preference/Preference;)V

    .line 255
    const-string v1, "security_category_crypt"

    invoke-virtual {p0, v1}, Lcom/vivo/settings/VivoSecuritySettings;->removePreference(Ljava/lang/String;)V

    .line 258
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/vivo/settings/VivoSecuritySettings;->mIsPrimary:Z

    .line 259
    iget-boolean v1, p0, Lcom/vivo/settings/VivoSecuritySettings;->mIsPrimary:Z

    if-eqz v1, :cond_2

    .line 260
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 263
    iget-object v1, p0, Lcom/vivo/settings/VivoSecuritySettings;->mEncryption:Landroid/preference/Preference;

    const v2, 0x7f0b00fd

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 271
    :cond_2
    if-nez v0, :cond_3

    .line 272
    iget-object v1, p0, Lcom/vivo/settings/VivoSecuritySettings;->mEyePrint:Landroid/preference/Preference;

    invoke-virtual {p0, v1}, Lcom/vivo/settings/VivoSecuritySettings;->removePreference(Landroid/preference/Preference;)V

    .line 274
    :cond_3
    if-nez v0, :cond_4

    .line 275
    const-string v1, "SecuritySettings"

    const-string v2, "removePreference mEyeCategory"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v1, p0, Lcom/vivo/settings/VivoSecuritySettings;->mEyeCategory:Landroid/preference/Preference;

    invoke-virtual {p0, v1}, Lcom/vivo/settings/VivoSecuritySettings;->removePreference(Landroid/preference/Preference;)V

    .line 278
    :cond_4
    invoke-static {}, Lcom/android/settings/AppFeature;->IsExport()Z

    move-result v1

    if-nez v1, :cond_5

    .line 279
    iget-object v1, p0, Lcom/vivo/settings/VivoSecuritySettings;->mToggleVerifyApps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v1}, Lcom/vivo/settings/VivoSecuritySettings;->removePreference(Landroid/preference/Preference;)V

    .line 280
    const-string v1, "toggle_verify_applications_category"

    invoke-virtual {p0, v1}, Lcom/vivo/settings/VivoSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/vivo/settings/VivoSecuritySettings;->removePreference(Landroid/preference/Preference;)V

    .line 282
    :cond_5
    return-void

    .line 258
    :cond_6
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isInVisitMode()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 443
    invoke-virtual {p0}, Lcom/vivo/settings/VivoSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "visit_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isVerifierInstalled()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 454
    invoke-virtual {p0}, Lcom/vivo/settings/VivoSecuritySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 455
    .local v0, "pm":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 457
    .local v2, "verification":Landroid/content/Intent;
    const-string v5, "application/vnd.android.package-archive"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 458
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 459
    invoke-virtual {v0, v2, v4}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 461
    .local v1, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method private isVerifyAppsEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 449
    invoke-virtual {p0}, Lcom/vivo/settings/VivoSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "package_verifier_enable"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showVerifierSetting()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 465
    invoke-virtual {p0}, Lcom/vivo/settings/VivoSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "verifier_setting_visible"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updatePrefs()V
    .locals 11

    .prologue
    const v10, 0x7f0b011d

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 285
    iget-object v5, p0, Lcom/vivo/settings/VivoSecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    iget-object v8, p0, Lcom/vivo/settings/VivoSecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v8}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled()Z

    move-result v8

    invoke-virtual {v5, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 286
    invoke-direct {p0}, Lcom/vivo/settings/VivoSecuritySettings;->isInVisitMode()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 287
    iget-object v5, p0, Lcom/vivo/settings/VivoSecuritySettings;->mSecurityCategory:Landroid/preference/Preference;

    invoke-virtual {p0, v5}, Lcom/vivo/settings/VivoSecuritySettings;->removePreference(Landroid/preference/Preference;)V

    .line 288
    iget-object v5, p0, Lcom/vivo/settings/VivoSecuritySettings;->mUnlockSetting:Landroid/preference/Preference;

    invoke-virtual {p0, v5}, Lcom/vivo/settings/VivoSecuritySettings;->removePreference(Landroid/preference/Preference;)V

    .line 289
    iget-object v5, p0, Lcom/vivo/settings/VivoSecuritySettings;->mVisitMode:Landroid/preference/Preference;

    invoke-virtual {p0, v5}, Lcom/vivo/settings/VivoSecuritySettings;->removePreference(Landroid/preference/Preference;)V

    .line 290
    iget-object v5, p0, Lcom/vivo/settings/VivoSecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v5}, Lcom/vivo/settings/VivoSecuritySettings;->removePreference(Landroid/preference/Preference;)V

    .line 291
    iget-object v5, p0, Lcom/vivo/settings/VivoSecuritySettings;->mEyeCategory:Landroid/preference/Preference;

    invoke-virtual {p0, v5}, Lcom/vivo/settings/VivoSecuritySettings;->removePreference(Landroid/preference/Preference;)V

    .line 337
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/vivo/settings/VivoSecuritySettings;->mSimLock:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/vivo/settings/VivoSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/AppFeature;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/vivo/settings/VivoSecuritySettings;->mSimUtils:Lcom/vivo/settings/SimUtils;

    invoke-virtual {v5}, Lcom/vivo/settings/SimUtils;->getInertedSimCount()I

    move-result v5

    if-lez v5, :cond_7

    move v5, v6

    :goto_1
    invoke-virtual {v8, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 339
    iget-object v8, p0, Lcom/vivo/settings/VivoSecuritySettings;->mAppInstallLoc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/vivo/settings/VivoSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v9, "install_non_market_apps"

    invoke-static {v5, v9, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_8

    move v5, v6

    :goto_2
    invoke-virtual {v8, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 342
    :try_start_0
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v5

    invoke-virtual {v5}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v1

    .line 343
    .local v1, "keystoreEmpty":Z
    const-string v5, "SecuritySettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updatePrefs keystoreEmpty:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v8, p0, Lcom/vivo/settings/VivoSecuritySettings;->mResetCredentials:Landroid/preference/Preference;

    if-nez v1, :cond_9

    move v5, v6

    :goto_3
    invoke-virtual {v8, v5}, Landroid/preference/Preference;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    .end local v1    # "keystoreEmpty":Z
    :goto_4
    invoke-direct {p0}, Lcom/vivo/settings/VivoSecuritySettings;->showVerifierSetting()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 351
    invoke-direct {p0}, Lcom/vivo/settings/VivoSecuritySettings;->isVerifierInstalled()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 352
    iget-object v5, p0, Lcom/vivo/settings/VivoSecuritySettings;->mToggleVerifyApps:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/vivo/settings/VivoSecuritySettings;->isVerifyAppsEnabled()Z

    move-result v8

    invoke-virtual {v5, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 358
    :cond_1
    :goto_5
    invoke-virtual {p0}, Lcom/vivo/settings/VivoSecuritySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/notification/NotificationAccessSettings;->getListenersCount(Landroid/content/pm/PackageManager;)I

    move-result v3

    .line 359
    .local v3, "total":I
    if-nez v3, :cond_b

    .line 360
    iget-object v5, p0, Lcom/vivo/settings/VivoSecuritySettings;->mNotificationAccess:Landroid/preference/Preference;

    invoke-virtual {p0, v5}, Lcom/vivo/settings/VivoSecuritySettings;->removePreference(Landroid/preference/Preference;)V

    .line 373
    :goto_6
    invoke-virtual {p0}, Lcom/vivo/settings/VivoSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lock_to_app_enabled"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_d

    .line 375
    iget-object v5, p0, Lcom/vivo/settings/VivoSecuritySettings;->screenPinning:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/vivo/settings/VivoSecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b072e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 382
    :goto_7
    invoke-virtual {p0}, Lcom/vivo/settings/VivoSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {p0}, Lcom/vivo/settings/VivoSecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/vivo/settings/PreferenceHelper;->addDividers(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V

    .line 383
    return-void

    .line 293
    .end local v3    # "total":I
    :cond_2
    invoke-virtual {p0}, Lcom/vivo/settings/VivoSecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v8, p0, Lcom/vivo/settings/VivoSecuritySettings;->mSecurityCategory:Landroid/preference/Preference;

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 294
    invoke-virtual {p0}, Lcom/vivo/settings/VivoSecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v8, p0, Lcom/vivo/settings/VivoSecuritySettings;->mUnlockSetting:Landroid/preference/Preference;

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 295
    invoke-virtual {p0}, Lcom/vivo/settings/VivoSecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v8, p0, Lcom/vivo/settings/VivoSecuritySettings;->mVisitMode:Landroid/preference/Preference;

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 296
    invoke-virtual {p0}, Lcom/vivo/settings/VivoSecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v8, p0, Lcom/vivo/settings/VivoSecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 297
    sget-object v5, Lcom/vivo/settings/VivoSecuritySettings;->SETTINGS_RESOUCE:Lcom/vivo/settings/xml/SettingsResouce;

    invoke-virtual {p0}, Lcom/vivo/settings/VivoSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string v9, "eye_print"

    invoke-virtual {v5, v8, v9}, Lcom/vivo/settings/xml/SettingsResouce;->isItemEnabled(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result v0

    .line 298
    .local v0, "isEyePrintExist":Z
    if-eqz v0, :cond_3

    .line 299
    invoke-virtual {p0}, Lcom/vivo/settings/VivoSecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v8, p0, Lcom/vivo/settings/VivoSecuritySettings;->mEyeCategory:Landroid/preference/Preference;

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 302
    :cond_3
    const/4 v4, 0x0

    .line 303
    .local v4, "withVisiblePattern":Z
    iget-object v5, p0, Lcom/vivo/settings/VivoSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v5

    if-nez v5, :cond_5

    .line 305
    invoke-virtual {p0}, Lcom/vivo/settings/VivoSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, "lock_to_app_exit_locked"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 306
    iget-object v5, p0, Lcom/vivo/settings/VivoSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 307
    iget-object v5, p0, Lcom/vivo/settings/VivoSecuritySettings;->mUnlockSetting:Landroid/preference/Preference;

    const v8, 0x7f0b011a

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setSummary(I)V

    .line 326
    :goto_8
    if-eqz v4, :cond_6

    .line 327
    invoke-virtual {p0}, Lcom/vivo/settings/VivoSecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v8, p0, Lcom/vivo/settings/VivoSecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 332
    :goto_9
    invoke-virtual {p0}, Lcom/vivo/settings/VivoSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/AppFeature;->isSupportFinger(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 333
    iget-object v5, p0, Lcom/vivo/settings/VivoSecuritySettings;->mUnlockSetting:Landroid/preference/Preference;

    invoke-virtual {p0, v5}, Lcom/vivo/settings/VivoSecuritySettings;->removePreference(Landroid/preference/Preference;)V

    .line 334
    iget-object v5, p0, Lcom/vivo/settings/VivoSecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v5}, Lcom/vivo/settings/VivoSecuritySettings;->removePreference(Landroid/preference/Preference;)V

    goto/16 :goto_0

    .line 309
    :cond_4
    iget-object v5, p0, Lcom/vivo/settings/VivoSecuritySettings;->mUnlockSetting:Landroid/preference/Preference;

    const v8, 0x7f0b0786

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_8

    .line 312
    :cond_5
    iget-object v5, p0, Lcom/vivo/settings/VivoSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto :goto_8

    .line 314
    :sswitch_0
    iget-object v5, p0, Lcom/vivo/settings/VivoSecuritySettings;->mUnlockSetting:Landroid/preference/Preference;

    const v8, 0x7f0b011c

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setSummary(I)V

    .line 315
    const/4 v4, 0x1

    .line 316
    goto :goto_8

    .line 318
    :sswitch_1
    iget-object v5, p0, Lcom/vivo/settings/VivoSecuritySettings;->mUnlockSetting:Landroid/preference/Preference;

    invoke-virtual {v5, v10}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_8

    .line 323
    :sswitch_2
    iget-object v5, p0, Lcom/vivo/settings/VivoSecuritySettings;->mUnlockSetting:Landroid/preference/Preference;

    invoke-virtual {v5, v10}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_8

    .line 329
    :cond_6
    iget-object v5, p0, Lcom/vivo/settings/VivoSecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0, v5}, Lcom/vivo/settings/VivoSecuritySettings;->removePreference(Landroid/preference/Preference;)V

    goto :goto_9

    .end local v0    # "isEyePrintExist":Z
    .end local v4    # "withVisiblePattern":Z
    :cond_7
    move v5, v7

    .line 337
    goto/16 :goto_1

    :cond_8
    move v5, v7

    .line 339
    goto/16 :goto_2

    .restart local v1    # "keystoreEmpty":Z
    :cond_9
    move v5, v7

    .line 344
    goto/16 :goto_3

    .line 354
    .end local v1    # "keystoreEmpty":Z
    :cond_a
    iget-object v5, p0, Lcom/vivo/settings/VivoSecuritySettings;->mToggleVerifyApps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 355
    iget-object v5, p0, Lcom/vivo/settings/VivoSecuritySettings;->mToggleVerifyApps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto/16 :goto_5

    .line 362
    .restart local v3    # "total":I
    :cond_b
    invoke-virtual {p0}, Lcom/vivo/settings/VivoSecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v8, p0, Lcom/vivo/settings/VivoSecuritySettings;->mNotificationAccess:Landroid/preference/Preference;

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 363
    invoke-direct {p0}, Lcom/vivo/settings/VivoSecuritySettings;->getNumEnabledNotificationListeners()I

    move-result v2

    .line 364
    .local v2, "n":I
    if-nez v2, :cond_c

    .line 365
    iget-object v5, p0, Lcom/vivo/settings/VivoSecuritySettings;->mNotificationAccess:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/vivo/settings/VivoSecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0b0705

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 368
    :cond_c
    iget-object v5, p0, Lcom/vivo/settings/VivoSecuritySettings;->mNotificationAccess:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/vivo/settings/VivoSecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0f0008

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v6, v7

    invoke-virtual {v8, v9, v2, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 378
    .end local v2    # "n":I
    :cond_d
    iget-object v5, p0, Lcom/vivo/settings/VivoSecuritySettings;->screenPinning:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/vivo/settings/VivoSecuritySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b072f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 346
    .end local v3    # "total":I
    :catch_0
    move-exception v5

    goto/16 :goto_4

    .line 345
    :catch_1
    move-exception v5

    goto/16 :goto_4

    .line 312
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_2
        0x60000 -> :sswitch_2
    .end sparse-switch
.end method

.method private updateVisitModeStatus()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 188
    invoke-virtual {p0}, Lcom/vivo/settings/VivoSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "visit_password"

    invoke-static {v4, v5, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 190
    .local v3, "visitMode":I
    const/4 v2, 0x0

    .line 191
    .local v2, "unLockMode":I
    iget-object v4, p0, Lcom/vivo/settings/VivoSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v4

    if-nez v4, :cond_3

    .line 192
    const/4 v2, 0x0

    .line 208
    :goto_0
    const-string v4, "SecuritySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "visitMode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; unLockMode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const-string v4, "SecuritySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "vivo_visit_mode_board = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/vivo/settings/VivoSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "vivo_visit_mode_board"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; vivo_mix_board = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/vivo/settings/VivoSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "vivo_mix_board"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    if-eqz v3, :cond_2

    .line 211
    if-ne v3, v8, :cond_0

    if-eq v3, v2, :cond_2

    :cond_0
    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    const/4 v4, 0x3

    if-ne v2, v4, :cond_4

    :cond_1
    if-eq v3, v8, :cond_4

    invoke-virtual {p0}, Lcom/vivo/settings/VivoSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "vivo_visit_mode_board"

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p0}, Lcom/vivo/settings/VivoSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "vivo_mix_board"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v4, v5, :cond_4

    .line 229
    :cond_2
    :goto_1
    return-void

    .line 194
    :cond_3
    iget-object v4, p0, Lcom/vivo/settings/VivoSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_0

    .line 196
    :sswitch_0
    const/4 v2, 0x1

    .line 197
    goto/16 :goto_0

    .line 199
    :sswitch_1
    const/4 v2, 0x2

    .line 200
    goto/16 :goto_0

    .line 204
    :sswitch_2
    const/4 v2, 0x3

    goto/16 :goto_0

    .line 216
    :cond_4
    const-string v4, "SecuritySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mChangeUnlcokClicked = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/vivo/settings/VivoSecuritySettings;->mChangeUnlcokClicked:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-boolean v4, p0, Lcom/vivo/settings/VivoSecuritySettings;->mChangeUnlcokClicked:Z

    if-eqz v4, :cond_5

    .line 218
    invoke-virtual {p0, v8}, Lcom/vivo/settings/VivoSecuritySettings;->showDialog(I)V

    .line 220
    :cond_5
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.bbk.Visit.action.close_Pattern"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 221
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/vivo/settings/VivoSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 222
    invoke-virtual {p0}, Lcom/vivo/settings/VivoSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "secure_finger_print_visit_mode"

    invoke-static {v4, v5, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v8, :cond_6

    iget-object v4, p0, Lcom/vivo/settings/VivoSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 223
    const-string v4, "SecuritySettings"

    const-string v5, "SERVICE_SECURE_ERASE_VISIT_FINGER_PRINT "

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    new-instance v0, Landroid/content/Intent;

    const-string v4, "vivo.intent.action_REMOVE_VISIT_FINGER_PRINT"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 225
    .local v0, "fintent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/vivo/settings/VivoSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 227
    .end local v0    # "fintent":Landroid/content/Intent;
    :cond_6
    invoke-virtual {p0}, Lcom/vivo/settings/VivoSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "visit_password"

    invoke-static {v4, v5, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 194
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_2
        0x60000 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 108
    invoke-super {p0, p1}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 109
    const-string v1, "SecuritySettings"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/vivo/settings/VivoSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vivo/settings/VivoSecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 111
    sget-object v1, Lcom/vivo/settings/VivoSecuritySettings;->SETTINGS_RESOUCE:Lcom/vivo/settings/xml/SettingsResouce;

    invoke-virtual {v1}, Lcom/vivo/settings/xml/SettingsResouce;->getXmlResouce()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/vivo/settings/VivoSecuritySettings;->addPreferencesFromResource(I)V

    .line 112
    new-instance v1, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/vivo/settings/VivoSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/vivo/settings/VivoSecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    .line 113
    new-instance v1, Lcom/vivo/settings/SimUtils;

    invoke-virtual {p0}, Lcom/vivo/settings/VivoSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/vivo/settings/SimUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vivo/settings/VivoSecuritySettings;->mSimUtils:Lcom/vivo/settings/SimUtils;

    .line 114
    invoke-direct {p0}, Lcom/vivo/settings/VivoSecuritySettings;->initPrefs()V

    .line 115
    const-string v1, "1"

    const-string v2, "persist.sys.primary.emulate"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 116
    .local v0, "isEmulate":Z
    invoke-static {}, Lcom/android/settings/AppFeature;->isDeviceSupportTF()Z

    move-result v1

    if-nez v1, :cond_2

    .line 117
    if-nez v0, :cond_1

    .line 118
    const-string v1, "toggle_install_title"

    invoke-virtual {p0, v1}, Lcom/vivo/settings/VivoSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const v2, 0x7f0b0992

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    const-string v1, "toggle_install_title"

    invoke-virtual {p0, v1}, Lcom/vivo/settings/VivoSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const v2, 0x7f0b084c

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    goto :goto_0

    .line 123
    :cond_2
    if-nez v0, :cond_0

    .line 124
    const-string v1, "toggle_install_title"

    invoke-virtual {p0, v1}, Lcom/vivo/settings/VivoSecuritySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const v2, 0x7f0b0991

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .param p1, "dialogId"    # I

    .prologue
    const/4 v7, 0x0

    const v6, 0x104000a

    const/4 v5, 0x0

    .line 132
    packed-switch p1, :pswitch_data_0

    .line 157
    invoke-super {p0, p1}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v2

    :goto_0
    return-object v2

    .line 134
    :pswitch_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vivo/settings/VivoSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0b0800

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0b07d3

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 139
    .local v0, "builder2":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_0

    .line 141
    .end local v0    # "builder2":Landroid/app/AlertDialog$Builder;
    :pswitch_1
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vivo/settings/VivoSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0b094c

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0b0347

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 145
    .local v1, "builder3":Landroid/app/AlertDialog$Builder;
    new-instance v3, Lcom/vivo/settings/VivoSecuritySettings$2;

    invoke-direct {v3, p0}, Lcom/vivo/settings/VivoSecuritySettings$2;-><init>(Lcom/vivo/settings/VivoSecuritySettings;)V

    invoke-virtual {v1, v6, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 152
    const/high16 v3, 0x1040000

    invoke-virtual {v1, v3, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 153
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 154
    .local v2, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v2, v5}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_0

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/vivo/settings/VivoSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/settings/VivoSecuritySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 184
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onPause()V

    .line 185
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 401
    const-string v3, "SecuritySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreferenceTreeClick preference = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-object v3, p0, Lcom/vivo/settings/VivoSecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_2

    .line 403
    iget-object v1, p0, Lcom/vivo/settings/VivoSecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    iget-object v3, p0, Lcom/vivo/settings/VivoSecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(Z)V

    :cond_0
    :goto_0
    move v1, v2

    .line 439
    :cond_1
    :goto_1
    return v1

    .line 404
    :cond_2
    iget-object v3, p0, Lcom/vivo/settings/VivoSecuritySettings;->mSimLock:Landroid/preference/Preference;

    if-ne p2, v3, :cond_4

    .line 405
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 406
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/vivo/settings/VivoSecuritySettings;->mSimUtils:Lcom/vivo/settings/SimUtils;

    invoke-virtual {v1}, Lcom/vivo/settings/SimUtils;->getInertedSimCount()I

    move-result v1

    if-lt v1, v6, :cond_3

    .line 407
    const-string v1, "com.android.settings"

    const-class v3, Lcom/vivo/settings/BBKIccLockSettingsTabActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 413
    :goto_2
    invoke-virtual {p0, v0}, Lcom/vivo/settings/VivoSecuritySettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 410
    :cond_3
    const-string v1, "com.android.settings"

    const-class v3, Lcom/android/settings/IccLockSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 414
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_4
    iget-object v3, p0, Lcom/vivo/settings/VivoSecuritySettings;->mAppInstallLoc:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_6

    .line 415
    iget-object v3, p0, Lcom/vivo/settings/VivoSecuritySettings;->mAppInstallLoc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 416
    iget-object v3, p0, Lcom/vivo/settings/VivoSecuritySettings;->mAppInstallLoc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 417
    invoke-virtual {p0, v6}, Lcom/vivo/settings/VivoSecuritySettings;->removeDialog(I)V

    .line 418
    invoke-virtual {p0, v6}, Lcom/vivo/settings/VivoSecuritySettings;->showDialog(I)V

    goto :goto_0

    .line 420
    :cond_5
    invoke-virtual {p0}, Lcom/vivo/settings/VivoSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "install_non_market_apps"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 422
    :cond_6
    const-string v3, "unlock_set_or_change"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 423
    iput-boolean v2, p0, Lcom/vivo/settings/VivoSecuritySettings;->mChangeUnlcokClicked:Z

    .line 424
    invoke-super {p0, p1, p2}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_1

    .line 425
    :cond_7
    iget-object v3, p0, Lcom/vivo/settings/VivoSecuritySettings;->mToggleVerifyApps:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_9

    .line 426
    invoke-virtual {p0}, Lcom/vivo/settings/VivoSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "package_verifier_enable"

    iget-object v5, p0, Lcom/vivo/settings/VivoSecuritySettings;->mToggleVerifyApps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_8

    move v1, v2

    :cond_8
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 428
    :cond_9
    iget-object v3, p0, Lcom/vivo/settings/VivoSecuritySettings;->mEncryption:Landroid/preference/Preference;

    if-ne p2, v3, :cond_a

    .line 429
    iget-boolean v3, p0, Lcom/vivo/settings/VivoSecuritySettings;->mIsPrimary:Z

    if-eqz v3, :cond_0

    .line 430
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 433
    invoke-super {p0, p1, p2}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto/16 :goto_1

    .line 437
    :cond_a
    invoke-super {p0, p1, p2}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 162
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onResume()V

    .line 163
    invoke-virtual {p0}, Lcom/vivo/settings/VivoSecuritySettings;->showBBKBackButton()V

    .line 164
    const v1, 0x7f0b00f9

    invoke-virtual {p0, v1}, Lcom/vivo/settings/VivoSecuritySettings;->setTitle(I)V

    .line 165
    invoke-direct {p0}, Lcom/vivo/settings/VivoSecuritySettings;->updatePrefs()V

    .line 166
    invoke-direct {p0}, Lcom/vivo/settings/VivoSecuritySettings;->updateVisitModeStatus()V

    .line 167
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 168
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    const-string v1, "android.settings.VisitMode.action.TURN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Lcom/vivo/settings/VivoSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/settings/VivoSecuritySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 171
    invoke-virtual {p0}, Lcom/vivo/settings/VivoSecuritySettings;->switchToSearchPref()Z

    .line 172
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 176
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onStart()V

    .line 177
    const-string v1, "SecuritySettings"

    const-string v2, "onStart"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v1, p0, Lcom/vivo/settings/VivoSecuritySettings;->mAppInstallLoc:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/vivo/settings/VivoSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "install_non_market_apps"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 179
    return-void
.end method
