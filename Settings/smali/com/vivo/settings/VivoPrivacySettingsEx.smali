.class public Lcom/vivo/settings/VivoPrivacySettingsEx;
.super Lcom/vivo/settings/VivoSettingsPreferenceFragment;
.source "VivoPrivacySettingsEx.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/settings/VivoPrivacySettingsEx$ClearThread;
    }
.end annotation


# static fields
.field private static final AUTO_RESTORE:Ljava/lang/String; = "auto_restore"

.field private static final BACKUP_CATEGORY:Ljava/lang/String; = "backup_category"

.field private static final BACKUP_DATA:Ljava/lang/String; = "backup_data"

.field private static final CONFIGURE_ACCOUNT:Ljava/lang/String; = "configure_account"

.field private static final DIALOG_ERASE_BACKUP:I = 0x2

.field private static final DLG_RESET_ALL_SET:I = 0x0

.field private static final GSETTINGS_PROVIDER:Ljava/lang/String; = "com.google.settings"

.field private static final KEYGUARD_REQUEST:I = 0x22b

.field private static final MSG_DISMISS_LOADING:I = 0x1

.field private static final MSG_SHOW_LOADING:I = 0x0

.field private static final PERSONAL_DATA_CATEGORY:Ljava/lang/String; = "personal_data"

.field private static final TAG:Ljava/lang/String; = "PrivacySettings"


# instance fields
.field private inLoadingdialog:Z

.field private mAutoRestore:Landroid/preference/CheckBoxPreference;

.field private mBackup:Landroid/preference/CheckBoxPreference;

.field private mBackupManager:Landroid/app/backup/IBackupManager;

.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field private mClearSettings:Landroid/preference/Preference;

.field private mClearThread:Lcom/vivo/settings/VivoPrivacySettingsEx$ClearThread;

.field private mConfigure:Landroid/preference/PreferenceScreen;

.field private mConfirmDialog:Landroid/app/Dialog;

.field private mDialogType:I

.field private mHandler:Landroid/os/Handler;

.field private mIsPrimary:Z

.field private progressDia:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;-><init>()V

    .line 94
    iput-object v0, p0, Lcom/vivo/settings/VivoPrivacySettingsEx;->mClearSettings:Landroid/preference/Preference;

    .line 95
    iput-object v0, p0, Lcom/vivo/settings/VivoPrivacySettingsEx;->mClearThread:Lcom/vivo/settings/VivoPrivacySettingsEx$ClearThread;

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/settings/VivoPrivacySettingsEx;->inLoadingdialog:Z

    .line 103
    new-instance v0, Lcom/vivo/settings/VivoPrivacySettingsEx$1;

    invoke-direct {v0, p0}, Lcom/vivo/settings/VivoPrivacySettingsEx$1;-><init>(Lcom/vivo/settings/VivoPrivacySettingsEx;)V

    iput-object v0, p0, Lcom/vivo/settings/VivoPrivacySettingsEx;->mHandler:Landroid/os/Handler;

    .line 276
    return-void
.end method

.method static synthetic access$000(Lcom/vivo/settings/VivoPrivacySettingsEx;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/VivoPrivacySettingsEx;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/vivo/settings/VivoPrivacySettingsEx;->showLoadingMsg()V

    return-void
.end method

.method static synthetic access$100(Lcom/vivo/settings/VivoPrivacySettingsEx;)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/VivoPrivacySettingsEx;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/vivo/settings/VivoPrivacySettingsEx;->dismissLoadingMsg()V

    return-void
.end method

.method static synthetic access$300(Lcom/vivo/settings/VivoPrivacySettingsEx;)Lcom/vivo/settings/VivoPrivacySettingsEx$ClearThread;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/VivoPrivacySettingsEx;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/vivo/settings/VivoPrivacySettingsEx;->mClearThread:Lcom/vivo/settings/VivoPrivacySettingsEx$ClearThread;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vivo/settings/VivoPrivacySettingsEx;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/VivoPrivacySettingsEx;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/vivo/settings/VivoPrivacySettingsEx;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vivo/settings/VivoPrivacySettingsEx;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/VivoPrivacySettingsEx;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-virtual {p0, p1}, Lcom/vivo/settings/VivoPrivacySettingsEx;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-static {p0}, Lcom/vivo/settings/VivoPrivacySettingsEx;->resetAndRebootPhone(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private dismissLoadingMsg()V
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/settings/VivoPrivacySettingsEx;->inLoadingdialog:Z

    .line 220
    iget-object v0, p0, Lcom/vivo/settings/VivoPrivacySettingsEx;->progressDia:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/vivo/settings/VivoPrivacySettingsEx;->progressDia:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 223
    :cond_0
    return-void
.end method

.method private static getITelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .prologue
    .line 492
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method private static resetAndRebootPhone(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 418
    if-nez p0, :cond_0

    .line 419
    const-string v4, "PrivacySettings"

    const-string v5, "context is null return"

    invoke-static {v4, v5}, Lcom/vivo/settings/Vlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const/4 v4, 0x0

    .line 487
    :goto_0
    return v4

    .line 453
    :cond_0
    :try_start_0
    const-string v4, "PrivacySettings"

    const-string v5, "WallpaperManager.getInstance(context).clear() to set wallpaper to default"

    invoke-static {v4, v5}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/WallpaperManager;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    :goto_1
    invoke-static {}, Lcom/android/settings/AppFeature;->needClearNetworkLock()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 461
    :try_start_1
    invoke-static {}, Lcom/vivo/settings/SocketClient;->clearNetworkLock()Z

    .line 463
    invoke-static {}, Lcom/vivo/settings/VivoPrivacySettingsEx;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 464
    .local v2, "iTelephony":Lcom/android/internal/telephony/ITelephony;
    const/4 v0, 0x0

    .line 465
    .local v0, "data":Landroid/os/Bundle;
    const-string v4, "PrivacySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resetAndRebootPhone iTelephony:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    if-eqz v2, :cond_1

    .line 467
    new-instance v3, Lcom/android/internal/telephony/VivoTelephonyApiParams;

    const-string v4, "API_TAG_clearPhoneData"

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/VivoTelephonyApiParams;-><init>(Ljava/lang/String;)V

    .line 468
    .local v3, "param":Lcom/android/internal/telephony/VivoTelephonyApiParams;
    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ITelephony;->vivoTelephonyApi(Lcom/android/internal/telephony/VivoTelephonyApiParams;)Lcom/android/internal/telephony/VivoTelephonyApiParams;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 476
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v2    # "iTelephony":Lcom/android/internal/telephony/ITelephony;
    .end local v3    # "param":Lcom/android/internal/telephony/VivoTelephonyApiParams;
    :cond_1
    :goto_2
    :try_start_2
    new-instance v4, Ljava/io/File;

    const-string v5, "/system/etc/restore_all_settings.sh/mode=reset_settings"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v4}, Landroid/os/RecoverySystem;->installPackage(Landroid/content/Context;Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 487
    :goto_3
    const/4 v4, 0x1

    goto :goto_0

    .line 455
    :catch_0
    move-exception v1

    .line 456
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "PrivacySettings"

    const-string v5, "set default wallpaper failed"

    invoke-static {v4, v5}, Lcom/vivo/settings/Vlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 470
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 471
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v4, "PrivacySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set nv failed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vivo/settings/Vlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 478
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 479
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v4, "PrivacySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mClearSettings error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 4
    .param p1, "request"    # I

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/vivo/settings/VivoPrivacySettingsEx;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 259
    .local v0, "res":Landroid/content/res/Resources;
    new-instance v1, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/vivo/settings/VivoPrivacySettingsEx;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    const v2, 0x7f0b02e8

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x7f0b02e9

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method private setBackupEnabled(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 397
    iget-object v1, p0, Lcom/vivo/settings/VivoPrivacySettingsEx;->mBackupManager:Landroid/app/backup/IBackupManager;

    if-eqz v1, :cond_0

    .line 399
    :try_start_0
    iget-object v1, p0, Lcom/vivo/settings/VivoPrivacySettingsEx;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v1, p1}, Landroid/app/backup/IBackupManager;->setBackupEnabled(Z)V

    .line 400
    iget-object v1, p0, Lcom/vivo/settings/VivoPrivacySettingsEx;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v1, p1}, Landroid/app/backup/IBackupManager;->setBackupProvisioned(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    :cond_0
    iget-object v1, p0, Lcom/vivo/settings/VivoPrivacySettingsEx;->mBackup:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 408
    iget-object v1, p0, Lcom/vivo/settings/VivoPrivacySettingsEx;->mAutoRestore:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 409
    iget-object v1, p0, Lcom/vivo/settings/VivoPrivacySettingsEx;->mConfigure:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, p1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 410
    :goto_0
    return-void

    .line 401
    :catch_0
    move-exception v0

    .line 402
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/vivo/settings/VivoPrivacySettingsEx;->mBackup:Landroid/preference/CheckBoxPreference;

    if-nez p1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 403
    iget-object v1, p0, Lcom/vivo/settings/VivoPrivacySettingsEx;->mAutoRestore:Landroid/preference/CheckBoxPreference;

    if-nez p1, :cond_2

    :goto_2
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    move v1, v3

    .line 402
    goto :goto_1

    :cond_2
    move v2, v3

    .line 403
    goto :goto_2
.end method

.method private setConfigureSummary(Ljava/lang/String;)V
    .locals 2
    .param p1, "summary"    # Ljava/lang/String;

    .prologue
    .line 363
    if-eqz p1, :cond_0

    .line 364
    iget-object v0, p0, Lcom/vivo/settings/VivoPrivacySettingsEx;->mConfigure:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 368
    :goto_0
    return-void

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/vivo/settings/VivoPrivacySettingsEx;->mConfigure:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0b055c

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0
.end method

.method private showEraseBackupDialog()V
    .locals 3

    .prologue
    .line 194
    iget-object v1, p0, Lcom/vivo/settings/VivoPrivacySettingsEx;->mBackup:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 196
    const/4 v1, 0x2

    iput v1, p0, Lcom/vivo/settings/VivoPrivacySettingsEx;->mDialogType:I

    .line 197
    invoke-virtual {p0}, Lcom/vivo/settings/VivoPrivacySettingsEx;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0566

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 199
    .local v0, "msg":Ljava/lang/CharSequence;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vivo/settings/VivoPrivacySettingsEx;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0565

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/settings/VivoPrivacySettingsEx;->mConfirmDialog:Landroid/app/Dialog;

    .line 205
    return-void
.end method

.method private showLoadingMsg()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 207
    iput-boolean v4, p0, Lcom/vivo/settings/VivoPrivacySettingsEx;->inLoadingdialog:Z

    .line 208
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/vivo/settings/VivoPrivacySettingsEx;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 209
    .local v0, "mStatusBar":Landroid/app/StatusBarManager;
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/vivo/settings/VivoPrivacySettingsEx;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/vivo/settings/VivoPrivacySettingsEx;->progressDia:Landroid/app/ProgressDialog;

    .line 210
    iget-object v1, p0, Lcom/vivo/settings/VivoPrivacySettingsEx;->progressDia:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 211
    iget-object v1, p0, Lcom/vivo/settings/VivoPrivacySettingsEx;->progressDia:Landroid/app/ProgressDialog;

    const v2, 0x7f0b07d6

    invoke-virtual {p0, v2}, Lcom/vivo/settings/VivoPrivacySettingsEx;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v1, p0, Lcom/vivo/settings/VivoPrivacySettingsEx;->progressDia:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 213
    iget-object v1, p0, Lcom/vivo/settings/VivoPrivacySettingsEx;->progressDia:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 214
    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 215
    iget-object v1, p0, Lcom/vivo/settings/VivoPrivacySettingsEx;->progressDia:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 216
    return-void
.end method

.method private updateConfigureSummary()V
    .locals 3

    .prologue
    .line 372
    :try_start_0
    iget-object v2, p0, Lcom/vivo/settings/VivoPrivacySettingsEx;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v2}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;

    move-result-object v1

    .line 373
    .local v1, "transport":Ljava/lang/String;
    iget-object v2, p0, Lcom/vivo/settings/VivoPrivacySettingsEx;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v2, v1}, Landroid/app/backup/IBackupManager;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 374
    .local v0, "summary":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/vivo/settings/VivoPrivacySettingsEx;->setConfigureSummary(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    .end local v0    # "summary":Ljava/lang/String;
    .end local v1    # "transport":Ljava/lang/String;
    :goto_0
    return-void

    .line 375
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private updateToggles()V
    .locals 12

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 325
    invoke-virtual {p0}, Lcom/vivo/settings/VivoPrivacySettingsEx;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 327
    .local v6, "res":Landroid/content/ContentResolver;
    const/4 v0, 0x0

    .line 328
    .local v0, "backupEnabled":Z
    const/4 v2, 0x0

    .line 329
    .local v2, "configIntent":Landroid/content/Intent;
    const/4 v3, 0x0

    .line 331
    .local v3, "configSummary":Ljava/lang/String;
    :try_start_0
    iget-object v8, p0, Lcom/vivo/settings/VivoPrivacySettingsEx;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v8}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z

    move-result v0

    .line 332
    iget-object v8, p0, Lcom/vivo/settings/VivoPrivacySettingsEx;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v8}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;

    move-result-object v7

    .line 333
    .local v7, "transport":Ljava/lang/String;
    iget-object v8, p0, Lcom/vivo/settings/VivoPrivacySettingsEx;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v8, v7}, Landroid/app/backup/IBackupManager;->getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 334
    iget-object v8, p0, Lcom/vivo/settings/VivoPrivacySettingsEx;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v8, v7}, Landroid/app/backup/IBackupManager;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 339
    .end local v7    # "transport":Ljava/lang/String;
    :goto_0
    iget-object v8, p0, Lcom/vivo/settings/VivoPrivacySettingsEx;->mBackup:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 340
    if-eqz v0, :cond_0

    .line 342
    const-string v8, "backup"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v1

    .line 344
    .local v1, "bm":Landroid/app/backup/IBackupManager;
    if-eqz v1, :cond_0

    .line 346
    const/4 v8, 0x1

    :try_start_1
    invoke-interface {v1, v8}, Landroid/app/backup/IBackupManager;->setBackupProvisioned(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 352
    .end local v1    # "bm":Landroid/app/backup/IBackupManager;
    :cond_0
    :goto_1
    iget-object v11, p0, Lcom/vivo/settings/VivoPrivacySettingsEx;->mAutoRestore:Landroid/preference/CheckBoxPreference;

    const-string v8, "backup_auto_restore"

    invoke-static {v6, v8, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v9, :cond_1

    move v8, v9

    :goto_2
    invoke-virtual {v11, v8}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 354
    iget-object v8, p0, Lcom/vivo/settings/VivoPrivacySettingsEx;->mAutoRestore:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 356
    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    move v4, v9

    .line 357
    .local v4, "configureEnabled":Z
    :goto_3
    iget-object v8, p0, Lcom/vivo/settings/VivoPrivacySettingsEx;->mConfigure:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 358
    iget-object v8, p0, Lcom/vivo/settings/VivoPrivacySettingsEx;->mConfigure:Landroid/preference/PreferenceScreen;

    invoke-virtual {v8, v2}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 359
    invoke-direct {p0, v3}, Lcom/vivo/settings/VivoPrivacySettingsEx;->setConfigureSummary(Ljava/lang/String;)V

    .line 360
    return-void

    .line 335
    .end local v4    # "configureEnabled":Z
    :catch_0
    move-exception v5

    .line 337
    .local v5, "e":Landroid/os/RemoteException;
    iget-object v8, p0, Lcom/vivo/settings/VivoPrivacySettingsEx;->mBackup:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v10}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 347
    .end local v5    # "e":Landroid/os/RemoteException;
    .restart local v1    # "bm":Landroid/app/backup/IBackupManager;
    :catch_1
    move-exception v5

    .line 348
    .restart local v5    # "e":Landroid/os/RemoteException;
    const-string v8, "PrivacySettings"

    const-string v11, "set backup provisioned false!"

    invoke-static {v8, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v1    # "bm":Landroid/app/backup/IBackupManager;
    .end local v5    # "e":Landroid/os/RemoteException;
    :cond_1
    move v8, v10

    .line 352
    goto :goto_2

    :cond_2
    move v4, v10

    .line 356
    goto :goto_3
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 414
    const v0, 0x7f0b069d

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 267
    const/16 v0, 0x22b

    if-ne p1, v0, :cond_0

    .line 268
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 269
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vivo/settings/VivoPrivacySettingsEx;->showDialog(I)V

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    if-nez p2, :cond_0

    .line 271
    invoke-virtual {p0}, Lcom/vivo/settings/VivoPrivacySettingsEx;->finish()V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x0

    .line 381
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 383
    iget v0, p0, Lcom/vivo/settings/VivoPrivacySettingsEx;->mDialogType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 384
    invoke-direct {p0, v2}, Lcom/vivo/settings/VivoPrivacySettingsEx;->setBackupEnabled(Z)V

    .line 385
    invoke-direct {p0}, Lcom/vivo/settings/VivoPrivacySettingsEx;->updateConfigureSummary()V

    .line 388
    :cond_0
    iput v2, p0, Lcom/vivo/settings/VivoPrivacySettingsEx;->mDialogType:I

    .line 389
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 120
    invoke-super {p0, p1}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 121
    const v1, 0x7f06002f

    invoke-virtual {p0, v1}, Lcom/vivo/settings/VivoPrivacySettingsEx;->addPreferencesFromResource(I)V

    .line 122
    invoke-virtual {p0}, Lcom/vivo/settings/VivoPrivacySettingsEx;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 124
    .local v0, "screen":Landroid/preference/PreferenceScreen;
    const-string v1, "backup"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/settings/VivoPrivacySettingsEx;->mBackupManager:Landroid/app/backup/IBackupManager;

    .line 127
    const-string v1, "backup_data"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/vivo/settings/VivoPrivacySettingsEx;->mBackup:Landroid/preference/CheckBoxPreference;

    .line 128
    const-string v1, "auto_restore"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/vivo/settings/VivoPrivacySettingsEx;->mAutoRestore:Landroid/preference/CheckBoxPreference;

    .line 129
    const-string v1, "configure_account"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/vivo/settings/VivoPrivacySettingsEx;->mConfigure:Landroid/preference/PreferenceScreen;

    .line 130
    const-string v1, "clear_settings"

    invoke-virtual {p0, v1}, Lcom/vivo/settings/VivoPrivacySettingsEx;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/settings/VivoPrivacySettingsEx;->mClearSettings:Landroid/preference/Preference;

    .line 131
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/vivo/settings/VivoPrivacySettingsEx;->mIsPrimary:Z

    .line 132
    invoke-static {}, Lcom/android/settings/AppFeature;->isFeatureForNetEntry()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/vivo/settings/VivoPrivacySettingsEx;->mIsPrimary:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/vivo/settings/VivoPrivacySettingsEx;->mClearSettings:Landroid/preference/Preference;

    invoke-virtual {p0, v1}, Lcom/vivo/settings/VivoPrivacySettingsEx;->removePreference(Landroid/preference/Preference;)V

    .line 136
    :cond_1
    new-instance v1, Lcom/vivo/settings/VivoPrivacySettingsEx$ClearThread;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/vivo/settings/VivoPrivacySettingsEx$ClearThread;-><init>(Lcom/vivo/settings/VivoPrivacySettingsEx;Lcom/vivo/settings/VivoPrivacySettingsEx$1;)V

    iput-object v1, p0, Lcom/vivo/settings/VivoPrivacySettingsEx;->mClearThread:Lcom/vivo/settings/VivoPrivacySettingsEx$ClearThread;

    .line 138
    invoke-virtual {p0}, Lcom/vivo/settings/VivoPrivacySettingsEx;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v3, "com.google.settings"

    invoke-virtual {v1, v3, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    if-nez v1, :cond_2

    .line 140
    const-string v1, "backup_category"

    invoke-virtual {p0, v1}, Lcom/vivo/settings/VivoPrivacySettingsEx;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 142
    :cond_2
    invoke-direct {p0}, Lcom/vivo/settings/VivoPrivacySettingsEx;->updateToggles()V

    .line 143
    return-void

    :cond_3
    move v1, v2

    .line 131
    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "dialogId"    # I

    .prologue
    .line 229
    packed-switch p1, :pswitch_data_0

    .line 254
    invoke-super {p0, p1}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    :goto_0
    return-object v1

    .line 231
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vivo/settings/VivoPrivacySettingsEx;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 232
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0b08c7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 233
    const v1, 0x7f0b088a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 234
    const v1, 0x7f0b08c6

    new-instance v2, Lcom/vivo/settings/VivoPrivacySettingsEx$2;

    invoke-direct {v2, p0}, Lcom/vivo/settings/VivoPrivacySettingsEx$2;-><init>(Lcom/vivo/settings/VivoPrivacySettingsEx;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 246
    const v1, 0x7f0b00cb

    new-instance v2, Lcom/vivo/settings/VivoPrivacySettingsEx$3;

    invoke-direct {v2, p0}, Lcom/vivo/settings/VivoPrivacySettingsEx$3;-><init>(Lcom/vivo/settings/VivoPrivacySettingsEx;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 252
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 229
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 167
    iget-object v4, p0, Lcom/vivo/settings/VivoPrivacySettingsEx;->mBackup:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_3

    .line 168
    iget-object v3, p0, Lcom/vivo/settings/VivoPrivacySettingsEx;->mBackup:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_2

    .line 169
    invoke-direct {p0}, Lcom/vivo/settings/VivoPrivacySettingsEx;->showEraseBackupDialog()V

    .line 190
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    :cond_1
    :goto_1
    return v3

    .line 171
    :cond_2
    invoke-direct {p0, v2}, Lcom/vivo/settings/VivoPrivacySettingsEx;->setBackupEnabled(Z)V

    goto :goto_0

    .line 173
    :cond_3
    iget-object v4, p0, Lcom/vivo/settings/VivoPrivacySettingsEx;->mAutoRestore:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_5

    .line 174
    iget-object v4, p0, Lcom/vivo/settings/VivoPrivacySettingsEx;->mAutoRestore:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 176
    .local v0, "curState":Z
    :try_start_0
    iget-object v4, p0, Lcom/vivo/settings/VivoPrivacySettingsEx;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v4, v0}, Landroid/app/backup/IBackupManager;->setAutoRestore(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 177
    :catch_0
    move-exception v1

    .line 178
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/vivo/settings/VivoPrivacySettingsEx;->mAutoRestore:Landroid/preference/CheckBoxPreference;

    if-nez v0, :cond_4

    :goto_2
    invoke-virtual {v4, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_2

    .line 180
    .end local v0    # "curState":Z
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_5
    iget-object v4, p0, Lcom/vivo/settings/VivoPrivacySettingsEx;->mClearSettings:Landroid/preference/Preference;

    if-ne p2, v4, :cond_0

    .line 181
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v4

    if-nez v4, :cond_1

    .line 184
    const/16 v4, 0x22b

    invoke-direct {p0, v4}, Lcom/vivo/settings/VivoPrivacySettingsEx;->runKeyguardConfirmation(I)Z

    move-result v4

    if-nez v4, :cond_6

    .line 185
    invoke-virtual {p0, v3}, Lcom/vivo/settings/VivoPrivacySettingsEx;->removeDialog(I)V

    .line 186
    invoke-virtual {p0, v3}, Lcom/vivo/settings/VivoPrivacySettingsEx;->showDialog(I)V

    :cond_6
    move v3, v2

    .line 188
    goto :goto_1
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 147
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onResume()V

    .line 148
    invoke-virtual {p0}, Lcom/vivo/settings/VivoPrivacySettingsEx;->showBBKBackButton()V

    .line 149
    const v0, 0x7f0b0555

    invoke-virtual {p0, v0}, Lcom/vivo/settings/VivoPrivacySettingsEx;->setTitle(I)V

    .line 151
    invoke-direct {p0}, Lcom/vivo/settings/VivoPrivacySettingsEx;->updateToggles()V

    .line 152
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/vivo/settings/VivoPrivacySettingsEx;->mConfirmDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/settings/VivoPrivacySettingsEx;->mConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/vivo/settings/VivoPrivacySettingsEx;->mConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 159
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/settings/VivoPrivacySettingsEx;->mConfirmDialog:Landroid/app/Dialog;

    .line 160
    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/settings/VivoPrivacySettingsEx;->mDialogType:I

    .line 161
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onStop()V

    .line 162
    return-void
.end method
