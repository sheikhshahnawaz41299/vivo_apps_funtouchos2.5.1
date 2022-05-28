.class public final Lcom/android/settings/SmsDefaultDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "SmsDefaultDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mNewDefault:Landroid/content/ComponentName;

.field private mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

.field private mPackageName:Ljava/lang/String;

.field private mSourceName:Ljava/lang/String;

.field private mVpm:Lcom/vivo/services/security/client/VivoPermissionManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 47
    const-string v0, "SmsDefaultDialog"

    iput-object v0, p0, Lcom/android/settings/SmsDefaultDialog;->TAG:Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcom/android/settings/SmsDefaultDialog;->mSourceName:Ljava/lang/String;

    .line 49
    iput-object v1, p0, Lcom/android/settings/SmsDefaultDialog;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SmsDefaultDialog;)Lcom/vivo/services/security/client/VivoPermissionManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/SmsDefaultDialog;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings/SmsDefaultDialog;->mVpm:Lcom/vivo/services/security/client/VivoPermissionManager;

    return-object v0
.end method

.method private buildDialog(Ljava/lang/String;)Z
    .locals 14
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const v13, 0x7f0b08eb

    const/4 v12, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 216
    const-string v10, "phone"

    invoke-virtual {p0, v10}, Lcom/android/settings/SmsDefaultDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 217
    .local v7, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v10

    if-nez v10, :cond_1

    .line 317
    :cond_0
    :goto_0
    return v8

    .line 222
    :cond_1
    invoke-static {p1, p0}, Lcom/android/internal/telephony/SmsApplication;->getSmsApplicationData(Ljava/lang/String;Landroid/content/Context;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 223
    iget-object v10, p0, Lcom/android/settings/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    if-eqz v10, :cond_0

    .line 227
    const/4 v3, 0x0

    .line 228
    .local v3, "oldSmsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    invoke-static {p0, v9}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v4

    .line 229
    .local v4, "oldSmsComponent":Landroid/content/ComponentName;
    if-eqz v4, :cond_2

    .line 230
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, p0}, Lcom/android/internal/telephony/SmsApplication;->getSmsApplicationData(Ljava/lang/String;Landroid/content/Context;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v3

    .line 232
    iget-object v10, v3, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/settings/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v11, v11, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 238
    :cond_2
    const/4 v2, 0x0

    .line 239
    .local v2, "isSystemApp":Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 241
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SmsDefaultDialog;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const/16 v11, 0x2200

    invoke-virtual {v10, p1, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 244
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v10, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_3

    .line 245
    const/4 v2, 0x1

    .line 252
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_3
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    const-string v10, "com.android.mms"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    if-nez v2, :cond_5

    .line 254
    iget-object v10, p0, Lcom/android/settings/SmsDefaultDialog;->mVpm:Lcom/vivo/services/security/client/VivoPermissionManager;

    if-nez v10, :cond_4

    .line 255
    invoke-static {p0}, Lcom/vivo/services/security/client/VivoPermissionManager;->getVPM(Landroid/content/Context;)Lcom/vivo/services/security/client/VivoPermissionManager;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/SmsDefaultDialog;->mVpm:Lcom/vivo/services/security/client/VivoPermissionManager;

    .line 257
    :cond_4
    iget-object v10, p0, Lcom/android/settings/SmsDefaultDialog;->mVpm:Lcom/vivo/services/security/client/VivoPermissionManager;

    invoke-virtual {v10, p1}, Lcom/vivo/services/security/client/VivoPermissionManager;->getAppPermission(Ljava/lang/String;)Lcom/vivo/services/security/client/VivoPermissionInfo;

    move-result-object v6

    .line 259
    .local v6, "perInfo":Lcom/vivo/services/security/client/VivoPermissionInfo;
    invoke-virtual {v6}, Lcom/vivo/services/security/client/VivoPermissionInfo;->isWhiteListApp()Z

    move-result v10

    if-nez v10, :cond_5

    .line 261
    iget-object v8, p0, Lcom/android/settings/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v8, v8, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    invoke-direct {p0, p1, v8}, Lcom/android/settings/SmsDefaultDialog;->createWarningDlg(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;

    move v8, v9

    .line 262
    goto :goto_0

    .line 247
    .end local v6    # "perInfo":Lcom/vivo/services/security/client/VivoPermissionInfo;
    :catch_0
    move-exception v1

    .line 248
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v10, "SmsDefaultDialog"

    const-string v11, "buildDialog NameNotFoundException"

    invoke-static {v10, v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 268
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_5
    iget-object v5, p0, Lcom/android/settings/SmsDefaultDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 270
    .local v5, "p":Lcom/android/internal/app/AlertController$AlertParams;
    iget-object v10, p0, Lcom/android/settings/SmsDefaultDialog;->mSourceName:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 271
    iget-object v10, p0, Lcom/android/settings/SmsDefaultDialog;->mPackageName:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    iget-object v10, p0, Lcom/android/settings/SmsDefaultDialog;->mPackageName:Ljava/lang/String;

    const-string v11, "com.android.mms"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 272
    const v10, 0x7f0b091a

    invoke-virtual {p0, v10}, Lcom/android/settings/SmsDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v5, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 280
    :goto_2
    if-eqz v3, :cond_b

    .line 285
    iget-object v10, p0, Lcom/android/settings/SmsDefaultDialog;->mSourceName:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 286
    iget-object v10, p0, Lcom/android/settings/SmsDefaultDialog;->mPackageName:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8

    iget-object v10, p0, Lcom/android/settings/SmsDefaultDialog;->mPackageName:Ljava/lang/String;

    const-string v11, "com.android.mms"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 287
    new-array v10, v12, [Ljava/lang/Object;

    iget-object v11, p0, Lcom/android/settings/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v11, v11, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    aput-object v11, v10, v8

    iget-object v8, v3, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    aput-object v8, v10, v9

    invoke-virtual {p0, v13, v10}, Lcom/android/settings/SmsDefaultDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 311
    :goto_3
    const v8, 0x7f0b037e

    invoke-virtual {p0, v8}, Lcom/android/settings/SmsDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 312
    const v8, 0x7f0b037f

    invoke-virtual {p0, v8}, Lcom/android/settings/SmsDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 313
    iput-object p0, v5, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 314
    iput-object p0, v5, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 315
    invoke-virtual {p0}, Lcom/android/settings/SmsDefaultDialog;->setupAlert()V

    move v8, v9

    .line 317
    goto/16 :goto_0

    .line 274
    :cond_6
    const v10, 0x7f0b02fd

    invoke-virtual {p0, v10}, Lcom/android/settings/SmsDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v5, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    goto :goto_2

    .line 277
    :cond_7
    const v10, 0x7f0b08ec

    invoke-virtual {p0, v10}, Lcom/android/settings/SmsDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v5, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    goto :goto_2

    .line 291
    :cond_8
    const v10, 0x7f0b02fe

    new-array v11, v12, [Ljava/lang/Object;

    iget-object v12, p0, Lcom/android/settings/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v12, v12, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    aput-object v12, v11, v8

    iget-object v8, v3, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    aput-object v8, v11, v9

    invoke-virtual {p0, v10, v11}, Lcom/android/settings/SmsDefaultDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_3

    .line 296
    :cond_9
    iget-object v10, p0, Lcom/android/settings/SmsDefaultDialog;->mPackageName:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_a

    iget-object v10, p0, Lcom/android/settings/SmsDefaultDialog;->mPackageName:Ljava/lang/String;

    const-string v11, "com.android.mms"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 297
    new-array v10, v12, [Ljava/lang/Object;

    iget-object v11, p0, Lcom/android/settings/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v11, v11, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    aput-object v11, v10, v8

    iget-object v8, v3, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    aput-object v8, v10, v9

    invoke-virtual {p0, v13, v10}, Lcom/android/settings/SmsDefaultDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_3

    .line 301
    :cond_a
    const v10, 0x7f0b08ea

    new-array v11, v12, [Ljava/lang/Object;

    iget-object v12, p0, Lcom/android/settings/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v12, v12, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    aput-object v12, v11, v8

    iget-object v8, v3, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    aput-object v8, v11, v9

    invoke-virtual {p0, v10, v11}, Lcom/android/settings/SmsDefaultDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_3

    .line 308
    :cond_b
    const v10, 0x7f0b02ff

    new-array v11, v9, [Ljava/lang/Object;

    iget-object v12, p0, Lcom/android/settings/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v12, v12, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    aput-object v12, v11, v8

    invoke-virtual {p0, v10, v11}, Lcom/android/settings/SmsDefaultDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto/16 :goto_3
.end method

.method private createWarningDlg(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "pkgLable"    # Ljava/lang/CharSequence;

    .prologue
    .line 191
    const-string v1, "SmsDefaultDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createWarningDlg pkgName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b07c2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b08a1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/SmsDefaultDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b000d

    new-instance v3, Lcom/android/settings/SmsDefaultDialog$2;

    invoke-direct {v3, p0, p1}, Lcom/android/settings/SmsDefaultDialog$2;-><init>(Lcom/android/settings/SmsDefaultDialog;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b000e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/SmsDefaultDialog$1;

    invoke-direct {v2, p0}, Lcom/android/settings/SmsDefaultDialog$1;-><init>(Lcom/android/settings/SmsDefaultDialog;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 210
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 211
    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 79
    packed-switch p2, :pswitch_data_0

    .line 87
    :goto_0
    return-void

    .line 81
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v0, v0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V

    .line 82
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/SmsDefaultDialog;->setResult(I)V

    goto :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 59
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/SmsDefaultDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 62
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SmsDefaultDialog;->mPackageName:Ljava/lang/String;

    .line 64
    const-string v1, "source"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/SmsDefaultDialog;->mSourceName:Ljava/lang/String;

    .line 65
    const-string v1, "SmsDefaultDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sourceName is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/SmsDefaultDialog;->mSourceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ; packageName is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/SmsDefaultDialog;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/SmsDefaultDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    .line 71
    invoke-virtual {p0, v4}, Lcom/android/settings/SmsDefaultDialog;->setResult(I)V

    .line 72
    iget-object v1, p0, Lcom/android/settings/SmsDefaultDialog;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings/SmsDefaultDialog;->buildDialog(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/SmsDefaultDialog;->finish()V

    .line 75
    :cond_0
    return-void
.end method
