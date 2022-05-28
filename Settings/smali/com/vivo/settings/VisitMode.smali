.class public Lcom/vivo/settings/VisitMode;
.super Lcom/vivo/settings/VivoSettingsPreferenceFragment;
.source "VisitMode.java"


# static fields
.field public static final ACTION_VISIT_MODE_CHAGED:Ljava/lang/String; = "android.settings.VisitMode.action.TURN_ON"

.field private static final DLG_LOCK_SET_SUCCESS:I = 0x1

.field private static final DLG_NOT_SECURE:I = 0x0

.field private static final FINAGER_PRINT_VISIT_ACTION:Ljava/lang/String; = "android.intent.vivo.fingerprint.enrol"

.field private static final FINAGER_PRINT_VISIT_EXTRA:Ljava/lang/String; = "visitor_model"

.field private static final MIN_PASSWORD_LENGTH:I = 0x4

.field public static final SERVICE_SECURE_ERASE_VISIT_FINGER_PRINT:Ljava/lang/String; = "vivo.intent.action_REMOVE_VISIT_FINGER_PRINT"

.field private static final SET_OR_CHANGE_VISIT_MODE_LOCK_METHOD_REQUEST:I = 0x7d

.field private static final TAG:Ljava/lang/String; = "VisitMode"


# instance fields
.field mClearMode:Landroid/preference/Preference;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field mHandler:Landroid/os/Handler;

.field private mLockVisit:Lcom/android/internal/widget/LockPatternUtils;

.field mPicProtect:Landroid/preference/CheckBoxPreference;

.field mVisitorfingerprint:Landroid/preference/Preference;

.field mhide_info:Landroid/preference/PreferenceCategory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;-><init>()V

    .line 41
    iput-object v0, p0, Lcom/vivo/settings/VisitMode;->mClearMode:Landroid/preference/Preference;

    .line 42
    iput-object v0, p0, Lcom/vivo/settings/VisitMode;->mPicProtect:Landroid/preference/CheckBoxPreference;

    .line 44
    iput-object v0, p0, Lcom/vivo/settings/VisitMode;->mVisitorfingerprint:Landroid/preference/Preference;

    .line 47
    new-instance v0, Lcom/vivo/settings/VisitMode$1;

    invoke-direct {v0, p0}, Lcom/vivo/settings/VisitMode$1;-><init>(Lcom/vivo/settings/VisitMode;)V

    iput-object v0, p0, Lcom/vivo/settings/VisitMode;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/vivo/settings/VisitMode;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .param p0, "x0"    # Lcom/vivo/settings/VisitMode;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/vivo/settings/VisitMode;->mLockVisit:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vivo/settings/VisitMode;I)V
    .locals 0
    .param p0, "x0"    # Lcom/vivo/settings/VisitMode;
    .param p1, "x1"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/vivo/settings/VisitMode;->startPin(I)V

    return-void
.end method

.method private isInVisitMode()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 277
    invoke-virtual {p0}, Lcom/vivo/settings/VisitMode;->getContentResolver()Landroid/content/ContentResolver;

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

.method public static isVisitFingerPrintConnected(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 273
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "secure_finger_print_visit_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private startPin(I)V
    .locals 6
    .param p1, "quality"    # I

    .prologue
    .line 215
    const-string v3, "device_policy"

    invoke-virtual {p0, v3}, Lcom/vivo/settings/VisitMode;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    iput-object v3, p0, Lcom/vivo/settings/VisitMode;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 216
    iget-object v3, p0, Lcom/vivo/settings/VisitMode;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v2

    .line 217
    .local v2, "minLength":I
    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    .line 218
    const/4 v2, 0x4

    .line 220
    :cond_0
    iget-object v3, p0, Lcom/vivo/settings/VisitMode;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v3, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v1

    .line 221
    .local v1, "maxLength":I
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/vivo/settings/VisitMode;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-class v5, Lcom/android/settings/ChooseLockPassword;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 222
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "lockscreen.password_type"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 223
    const-string v3, "lockscreen.password_min"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 224
    const-string v3, "lockscreen.password_max"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 226
    const-string v3, "confirm_credentials"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 227
    const-string v3, "VistModeSwitch"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 228
    const-string v3, "switch_password"

    const-string v4, "fromVisitMode"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    const/high16 v3, 0x2000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 231
    invoke-virtual {p0, v0}, Lcom/vivo/settings/VisitMode;->startActivity(Landroid/content/Intent;)V

    .line 232
    return-void
.end method

.method private updateVisitSummary()V
    .locals 7

    .prologue
    const v6, 0x7f0b0872

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 235
    invoke-virtual {p0}, Lcom/vivo/settings/VisitMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "visit_password"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 237
    .local v0, "key_type":I
    const-string v1, "VisitMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key_type == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    if-nez v0, :cond_1

    .line 239
    iget-object v1, p0, Lcom/vivo/settings/VisitMode;->mClearMode:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/vivo/settings/VisitMode;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0926

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v1, p0, Lcom/vivo/settings/VisitMode;->mClearMode:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/vivo/settings/VisitMode;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b07d0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 241
    iget-object v1, p0, Lcom/vivo/settings/VisitMode;->mVisitorfingerprint:Landroid/preference/Preference;

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    if-ne v0, v4, :cond_2

    .line 243
    iget-object v1, p0, Lcom/vivo/settings/VisitMode;->mClearMode:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/vivo/settings/VisitMode;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b011c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v1, p0, Lcom/vivo/settings/VisitMode;->mClearMode:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/vivo/settings/VisitMode;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 246
    iget-object v1, p0, Lcom/vivo/settings/VisitMode;->mVisitorfingerprint:Landroid/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 247
    :cond_2
    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 248
    :cond_3
    iget-object v1, p0, Lcom/vivo/settings/VisitMode;->mClearMode:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/vivo/settings/VisitMode;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b011d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v1, p0, Lcom/vivo/settings/VisitMode;->mClearMode:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/vivo/settings/VisitMode;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 251
    iget-object v1, p0, Lcom/vivo/settings/VisitMode;->mVisitorfingerprint:Landroid/preference/Preference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 259
    const/16 v0, 0x7d

    if-ne p1, v0, :cond_2

    .line 260
    iget-object v0, p0, Lcom/vivo/settings/VisitMode;->mLockVisit:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-nez v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/vivo/settings/VisitMode;->mLockVisit:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    const-string v0, "VisitMode"

    const-string v1, "may be something worong isLockScreenDisabled() but !isSecure()"

    invoke-static {v0, v1}, Lcom/vivo/settings/Vlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vivo/settings/VisitMode;->showDialog(I)V

    goto :goto_0

    .line 269
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 63
    invoke-super {p0, p1}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v0, 0x7f06004e

    invoke-virtual {p0, v0}, Lcom/vivo/settings/VisitMode;->addPreferencesFromResource(I)V

    .line 65
    const-string v0, "clear_mode"

    invoke-virtual {p0, v0}, Lcom/vivo/settings/VisitMode;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/VisitMode;->mClearMode:Landroid/preference/Preference;

    .line 66
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/vivo/settings/VisitMode;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/settings/VisitMode;->mLockVisit:Lcom/android/internal/widget/LockPatternUtils;

    .line 67
    const-string v0, "picture"

    invoke-virtual {p0, v0}, Lcom/vivo/settings/VisitMode;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/vivo/settings/VisitMode;->mPicProtect:Landroid/preference/CheckBoxPreference;

    .line 68
    iget-object v3, p0, Lcom/vivo/settings/VisitMode;->mPicProtect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/vivo/settings/VisitMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "picture"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 69
    const-string v0, "hide_info"

    invoke-virtual {p0, v0}, Lcom/vivo/settings/VisitMode;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/vivo/settings/VisitMode;->mhide_info:Landroid/preference/PreferenceCategory;

    .line 70
    const-string v0, "visitor_fingerprint"

    invoke-virtual {p0, v0}, Lcom/vivo/settings/VisitMode;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/VisitMode;->mVisitorfingerprint:Landroid/preference/Preference;

    .line 72
    return-void

    :cond_0
    move v0, v2

    .line 68
    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .param p1, "dialogId"    # I

    .prologue
    const v5, 0x7f0b0800

    const v4, 0x104000a

    const/high16 v3, 0x1040000

    const/4 v2, 0x0

    .line 156
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vivo/settings/VisitMode;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 157
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 199
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1

    .line 159
    :pswitch_0
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 160
    const v1, 0x7f0b07ff

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 161
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 162
    new-instance v1, Lcom/vivo/settings/VisitMode$2;

    invoke-direct {v1, p0}, Lcom/vivo/settings/VisitMode$2;-><init>(Lcom/vivo/settings/VisitMode;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 172
    new-instance v1, Lcom/vivo/settings/VisitMode$3;

    invoke-direct {v1, p0, p1}, Lcom/vivo/settings/VisitMode$3;-><init>(Lcom/vivo/settings/VisitMode;I)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 180
    :pswitch_1
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 181
    const v1, 0x7f0b093c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 182
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 183
    new-instance v1, Lcom/vivo/settings/VisitMode$4;

    invoke-direct {v1, p0}, Lcom/vivo/settings/VisitMode$4;-><init>(Lcom/vivo/settings/VisitMode;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 196
    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 157
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 106
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onPause()V

    .line 107
    iget-object v0, p0, Lcom/vivo/settings/VisitMode;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 108
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 113
    const-string v3, "VisitMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreferenceTreeClick preference = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v3, p0, Lcom/vivo/settings/VisitMode;->mClearMode:Landroid/preference/Preference;

    if-ne p2, v3, :cond_3

    .line 115
    iget-object v3, p0, Lcom/vivo/settings/VisitMode;->mLockVisit:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v3

    if-nez v3, :cond_1

    .line 120
    invoke-virtual {p0, v1}, Lcom/vivo/settings/VisitMode;->showDialog(I)V

    .line 149
    :cond_0
    :goto_0
    return v2

    .line 122
    :cond_1
    iget-object v1, p0, Lcom/vivo/settings/VisitMode;->mLockVisit:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 123
    const-string v1, "VisitMode"

    const-string v3, "lock pattern enable set visit pattern"

    invoke-static {v1, v3}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lcom/vivo/settings/VisitMode;->setVisitPatter()V

    goto :goto_0

    .line 125
    :cond_2
    iget-object v1, p0, Lcom/vivo/settings/VisitMode;->mLockVisit:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    const/high16 v1, 0x20000

    invoke-direct {p0, v1}, Lcom/vivo/settings/VisitMode;->startPin(I)V

    goto :goto_0

    .line 129
    :cond_3
    iget-object v3, p0, Lcom/vivo/settings/VisitMode;->mPicProtect:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_5

    .line 130
    invoke-virtual {p0}, Lcom/vivo/settings/VisitMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "picture"

    iget-object v5, p0, Lcom/vivo/settings/VisitMode;->mPicProtect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_4

    move v1, v2

    :cond_4
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 131
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.VisitMode.action.TURN_ON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 132
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "switch_menu"

    const-string v3, "picture"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    invoke-virtual {p0}, Lcom/vivo/settings/VisitMode;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 134
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_5
    const-string v1, "visit_info"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 135
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.bbk_phoneInstructions_VisitMode"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 136
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/vivo/settings/VisitMode;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 137
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_6
    iget-object v1, p0, Lcom/vivo/settings/VisitMode;->mVisitorfingerprint:Landroid/preference/Preference;

    if-ne p2, v1, :cond_8

    .line 138
    invoke-virtual {p0}, Lcom/vivo/settings/VisitMode;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/settings/VisitMode;->isVisitFingerPrintConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 139
    invoke-super {p0, p1, p2}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_0

    .line 141
    :cond_7
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 142
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "android.intent.vivo.fingerprint.enrol"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    const-string v1, "visitor_model"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 144
    invoke-virtual {p0, v0}, Lcom/vivo/settings/VisitMode;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 147
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_8
    invoke-super {p0, p1, p2}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 76
    invoke-super {p0}, Lcom/vivo/settings/VivoSettingsPreferenceFragment;->onResume()V

    .line 78
    invoke-direct {p0}, Lcom/vivo/settings/VisitMode;->isInVisitMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/vivo/settings/VisitMode;->finish()V

    .line 102
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-direct {p0}, Lcom/vivo/settings/VisitMode;->updateVisitSummary()V

    .line 84
    const v0, 0x7f0b0941

    invoke-virtual {p0, v0}, Lcom/vivo/settings/VisitMode;->setTitle(I)V

    .line 85
    invoke-virtual {p0}, Lcom/vivo/settings/VisitMode;->showBBKBackButton()V

    .line 86
    invoke-virtual {p0}, Lcom/vivo/settings/VisitMode;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/AppFeature;->isSupportFinger(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/vivo/settings/VisitMode;->mVisitorfingerprint:Landroid/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/vivo/settings/VisitMode;->removePreference(Landroid/preference/Preference;)V

    .line 97
    :goto_1
    iget-object v0, p0, Lcom/vivo/settings/VisitMode;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x3c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 100
    invoke-virtual {p0}, Lcom/vivo/settings/VisitMode;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vivo/settings/VisitMode;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/settings/PreferenceHelper;->addDividers(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V

    goto :goto_0

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/vivo/settings/VisitMode;->mVisitorfingerprint:Landroid/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/vivo/settings/VisitMode;->removePreference(Landroid/preference/Preference;)V

    goto :goto_1
.end method

.method setVisitPatter()V
    .locals 3

    .prologue
    .line 203
    const-string v1, "VisitMode"

    const-string v2, "updateUnlockMethodAndFinish------"

    invoke-static {v1, v2}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 205
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/vivo/settings/VisitMode;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/ChooseLockPattern;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 206
    const-string v1, "key_lock_method"

    const-string v2, "pattern"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    const-string v1, "confirm_credentials"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 208
    const-string v1, "VistModeSwitch"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 209
    const-string v1, "switch_password"

    const-string v2, "fromVisitMode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 211
    invoke-virtual {p0, v0}, Lcom/vivo/settings/VisitMode;->startActivity(Landroid/content/Intent;)V

    .line 212
    return-void
.end method
