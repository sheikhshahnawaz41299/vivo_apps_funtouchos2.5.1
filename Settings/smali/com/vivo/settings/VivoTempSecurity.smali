.class public Lcom/vivo/settings/VivoTempSecurity;
.super Lcom/vivo/app/VivoBaseActivity;
.source "VivoTempSecurity.java"


# static fields
.field public static final CONFIRM_EXISTING_REQUEST_FINGER:I = 0x9e5

.field public static final EXISTING_FINGER:I = 0x9e4

.field private static final EXTRA_SELECT:Ljava/lang/String; = "extra_select"

.field private static final TAG:Ljava/lang/String; = "VivoTempSeurity"


# instance fields
.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mSelect:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/vivo/app/VivoBaseActivity;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/settings/VivoTempSecurity;->mSelect:Ljava/lang/String;

    return-void
.end method

.method private startFinger()V
    .locals 3

    .prologue
    .line 79
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.vivo.fingerprint"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 80
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0, v0}, Lcom/vivo/settings/VivoUtils;->isIntentExist(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    const/16 v1, 0x9e4

    invoke-virtual {p0, v0, v1}, Lcom/vivo/settings/VivoTempSecurity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 86
    :goto_0
    return-void

    .line 83
    :cond_0
    const-string v1, "ActivityNotFoundException:act = android.intent.vivo.fingerprint"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 84
    const-string v1, "VivoTempSeurity"

    const-string v2, "No Activity found to handle Intent {act=android.intent.vivo.fingerprint}"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 55
    const-string v0, "VivoTempSeurity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestCode =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";  resultCode =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const/16 v0, 0x9e5

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 58
    const-string v0, "VivoTempSeurity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult mSelect =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/settings/VivoTempSecurity;->mSelect:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-direct {p0}, Lcom/vivo/settings/VivoTempSecurity;->startFinger()V

    .line 75
    :goto_0
    invoke-virtual {p0}, Lcom/vivo/settings/VivoTempSecurity;->finish()V

    .line 76
    return-void

    .line 73
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vivo/settings/VivoTempSecurity;->setResult(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 37
    invoke-super {p0, p1}, Lcom/vivo/app/VivoBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const-string v2, "VivoTempSeurity"

    const-string v3, "onCreate "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const v2, 0x7f0400f2

    invoke-virtual {p0, v2}, Lcom/vivo/settings/VivoTempSecurity;->setContentView(I)V

    .line 40
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/vivo/settings/VivoTempSecurity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 41
    invoke-virtual {p0}, Lcom/vivo/settings/VivoTempSecurity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 42
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {p0, v1}, Lcom/vivo/settings/xml/ItemUtils;->getOtherExtrasForFinger(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vivo/settings/VivoTempSecurity;->mSelect:Ljava/lang/String;

    .line 43
    const-string v2, "VivoTempSeurity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSelect =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/vivo/settings/VivoTempSecurity;->mSelect:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object v2, p0, Lcom/vivo/settings/VivoTempSecurity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 45
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-direct {v0, p0, v5}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 46
    .local v0, "helper":Lcom/android/settings/ChooseLockSettingsHelper;
    const/16 v2, 0x9e5

    invoke-virtual {v0, v2, v5, v5}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 51
    .end local v0    # "helper":Lcom/android/settings/ChooseLockSettingsHelper;
    :goto_0
    return-void

    .line 48
    :cond_0
    invoke-direct {p0}, Lcom/vivo/settings/VivoTempSecurity;->startFinger()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 95
    invoke-super {p0}, Lcom/vivo/app/VivoBaseActivity;->onPause()V

    .line 96
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 90
    invoke-super {p0}, Lcom/vivo/app/VivoBaseActivity;->onResume()V

    .line 91
    return-void
.end method
