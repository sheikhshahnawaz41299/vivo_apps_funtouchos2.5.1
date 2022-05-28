.class public Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;
.super Lcom/android/keyguard/KeyguardAbsKeyInputView;
.source "KeyguardFindPhonePswView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/android/keyguard/KeyguardSecurityView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/vivo/KeyguardFindPhonePswView$RecAccountPasswordBroadcastReceiver;
    }
.end annotation


# static fields
.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "BBKOnLineService"

.field private static final ACTION_CHECK_PASSWORD:Ljava/lang/String; = "com.vivo.findphone.CHECK_PASSWORD_STATE"

.field public static final BR_ACTION_FINDPHONE_PSWINPUT_OK:Ljava/lang/String; = "com.vivo.Findphone.PswInputOK"

.field public static final BR_ACTION_FINDPHONE_PSWINPUT_TWICE:Ljava/lang/String; = "com.vivo.Findphone.PswInputTwice"

.field private static final FINDPHONE_PKG:Ljava/lang/String; = "com.vivo.findphone"

.field private static final FINDPHONE_SERVER:Ljava/lang/String; = "com.vivo.findphone.CheckVivoAccountPassword"

.field private static final TAG:Ljava/lang/String; = "KeyguardFindPhonePswView"


# instance fields
.field private buttonsClickListener:Landroid/view/View$OnClickListener;

.field private getPasswordState:Lcom/android/keyguard/vivo/KeyguardFindPhonePswView$RecAccountPasswordBroadcastReceiver;

.field private mButtonConfirm:Landroid/widget/Button;

.field private mButtonEmergDial:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mDateFormatString:Ljava/lang/String;

.field private mDateView:Landroid/widget/TextView;

.field private mDayFormatString:Ljava/lang/String;

.field mImm:Landroid/view/inputmethod/InputMethodManager;

.field mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mKeyguardFindPhonePswView:Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;

.field private mPasswordEntry:Landroid/widget/TextView;

.field private final mShowImeAtScreenOn:Z

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mTempLocation:[I

.field private mWeekView:Landroid/widget/TextView;

.field m_nPswTryCnt:I

.field private rogressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 111
    iput-object p1, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mContext:Landroid/content/Context;

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 115
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardAbsKeyInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->m_nPswTryCnt:I

    .line 302
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mTempLocation:[I

    .line 304
    new-instance v0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView$3;-><init>(Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;)V

    iput-object v0, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 337
    new-instance v0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView$4;-><init>(Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;)V

    iput-object v0, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->buttonsClickListener:Landroid/view/View$OnClickListener;

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$bool;->kg_show_ime_at_screen_on:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mShowImeAtScreenOn:Z

    .line 118
    iput-object p1, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mContext:Landroid/content/Context;

    .line 119
    return-void
.end method

.method private TryPassword(Ljava/lang/String;)V
    .locals 8
    .param p1, "psw"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 400
    const-string v3, "KeyguardFindPhonePswView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "==TryPassword=1="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object v3, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mPasswordEntry:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    invoke-direct {p0}, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->getRomVersion()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 403
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 444
    :cond_0
    :goto_0
    return-void

    .line 406
    :cond_1
    const-string v3, "KeyguardFindPhonePswView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "==TryPassword=2="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v3, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3, p1}, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->isPasswordOk(Landroid/content/Context;Ljava/lang/String;)Z

    .line 408
    iget-object v3, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/keyguard/R$string;->findphone_verifying_password:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5, v7, v7}, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->showProgress(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->rogressDialog:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 410
    :cond_2
    iget-object v3, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3, p1}, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->isPasswordOk(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 414
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.vivo.Findphone.PswInputOK"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 415
    .local v2, "intentForContact":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 416
    iget-object v3, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lvivo/util/FtFindPhoneLockUtil;->setFindPhoneUnlocked(Landroid/content/Context;)V

    .line 418
    iput v7, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->m_nPswTryCnt:I

    .line 419
    iget-object v3, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v3, v6}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(Z)V

    .line 421
    iget-object v3, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v3, v6}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 422
    iget-object v3, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v3, :cond_0

    .line 423
    iget-object v3, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v3, v7}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_0

    .line 425
    .end local v2    # "intentForContact":Landroid/content/Intent;
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 426
    iget-object v3, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    if-eqz v3, :cond_4

    .line 427
    iget-object v3, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v4, Lcom/android/keyguard/R$string;->kg_wrong_password:I

    invoke-interface {v3, v4, v6}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 430
    :cond_4
    iget-object v3, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v3, v7}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(Z)V

    .line 431
    iget-object v3, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->m_nPswTryCnt:I

    .line 432
    iget v3, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->m_nPswTryCnt:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_5

    .line 433
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.vivo.Findphone.PswInputTwice"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 434
    .restart local v2    # "intentForContact":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 436
    .end local v2    # "intentForContact":Landroid/content/Intent;
    :cond_5
    iget v3, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->m_nPswTryCnt:I

    rem-int/lit8 v3, v3, 0x5

    if-nez v3, :cond_0

    .line 438
    iget-object v3, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline()J

    move-result-wide v0

    .line 439
    .local v0, "deadline":J
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->handleAttemptLockout(J)V

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mPasswordEntry:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;)Landroid/app/StatusBarManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mStatusBarManager:Landroid/app/StatusBarManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->isPasswordError(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->updateWeekInfo()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->TryPassword(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;)Lcom/android/keyguard/vivo/KeyguardFindPhonePswView$RecAccountPasswordBroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->getPasswordState:Lcom/android/keyguard/vivo/KeyguardFindPhonePswView$RecAccountPasswordBroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;Lcom/android/keyguard/vivo/KeyguardFindPhonePswView$RecAccountPasswordBroadcastReceiver;)Lcom/android/keyguard/vivo/KeyguardFindPhonePswView$RecAccountPasswordBroadcastReceiver;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;
    .param p1, "x1"    # Lcom/android/keyguard/vivo/KeyguardFindPhonePswView$RecAccountPasswordBroadcastReceiver;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->getPasswordState:Lcom/android/keyguard/vivo/KeyguardFindPhonePswView$RecAccountPasswordBroadcastReceiver;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->closeDialog()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method public static checkStringNull(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 452
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 453
    :cond_0
    const/4 v0, 0x1

    .line 455
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private closeDialog()V
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->rogressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->rogressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 448
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->rogressDialog:Landroid/app/ProgressDialog;

    .line 450
    :cond_0
    return-void
.end method

.method private getRomVersion()Z
    .locals 4

    .prologue
    .line 586
    const-string v1, "ro.vivo.rom.version"

    const-string v2, "rom"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 587
    .local v0, "romVersion":Ljava/lang/String;
    const-string v1, "KeyguardFindPhonePswView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "============getRomVersion=========romVersion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    const-string v1, "rom_2.5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 589
    const/4 v1, 0x1

    .line 591
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z
    .locals 12
    .param p1, "imm"    # Landroid/view/inputmethod/InputMethodManager;
    .param p2, "shouldIncludeAuxiliarySubtypes"    # Z

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 253
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v1

    .line 256
    .local v1, "enabledImis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v2, 0x0

    .line 258
    .local v2, "filteredImisCount":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    .line 260
    .local v5, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-le v2, v10, :cond_1

    .line 286
    .end local v5    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :goto_1
    return v10

    .line 261
    .restart local v5    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_1
    invoke-virtual {p1, v5, v10}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v8

    .line 264
    .local v8, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 265
    add-int/lit8 v2, v2, 0x1

    .line 266
    goto :goto_0

    .line 269
    :cond_2
    const/4 v0, 0x0

    .line 270
    .local v0, "auxCount":I
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodSubtype;

    .line 271
    .local v7, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 272
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 275
    .end local v7    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    sub-int v6, v11, v0

    .line 280
    .local v6, "nonAuxCount":I
    if-gtz v6, :cond_5

    if-eqz p2, :cond_0

    if-le v0, v10, :cond_0

    .line 281
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 282
    goto :goto_0

    .line 286
    .end local v0    # "auxCount":I
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v6    # "nonAuxCount":I
    .end local v8    # "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_6
    if-gt v2, v10, :cond_7

    const/4 v11, 0x0

    invoke-virtual {p1, v11, v9}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-le v11, v10, :cond_8

    :cond_7
    move v9, v10

    :cond_8
    move v10, v9

    goto :goto_1
.end method

.method private isPasswordError(Ljava/lang/String;I)V
    .locals 6
    .param p1, "respMsg"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    const/4 v5, 0x1

    .line 375
    iget-object v3, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    if-eqz v3, :cond_0

    .line 376
    const-string v3, ""

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 377
    const/16 v3, 0xd

    if-ne p2, v3, :cond_3

    .line 378
    iget-object v3, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v4, Lcom/android/keyguard/R$string;->findphone_unable_network:I

    invoke-interface {v3, v4, v5}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 386
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(Z)V

    .line 387
    iget-object v3, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->m_nPswTryCnt:I

    .line 388
    iget v3, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->m_nPswTryCnt:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_1

    .line 389
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.vivo.Findphone.PswInputTwice"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 390
    .local v2, "intentForContact":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 392
    .end local v2    # "intentForContact":Landroid/content/Intent;
    :cond_1
    iget v3, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->m_nPswTryCnt:I

    rem-int/lit8 v3, v3, 0x5

    if-nez v3, :cond_2

    .line 394
    iget-object v3, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline()J

    move-result-wide v0

    .line 395
    .local v0, "deadline":J
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->handleAttemptLockout(J)V

    .line 397
    .end local v0    # "deadline":J
    :cond_2
    return-void

    .line 380
    :cond_3
    iget-object v3, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v4, Lcom/android/keyguard/R$string;->kg_wrong_password:I

    invoke-interface {v3, v4, v5}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    goto :goto_0

    .line 383
    :cond_4
    iget-object v3, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v3, p1, v5}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    goto :goto_0
.end method

.method private isPasswordOk(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 543
    invoke-direct {p0}, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->getRomVersion()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 544
    new-instance v4, Landroid/content/IntentFilter;

    const-string v7, "com.vivo.findphone.CHECK_PASSWORD_STATE"

    invoke-direct {v4, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 545
    .local v4, "getPasswordIntent":Landroid/content/IntentFilter;
    const/16 v7, 0x3e8

    invoke-virtual {v4, v7}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 546
    new-instance v7, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView$RecAccountPasswordBroadcastReceiver;

    invoke-direct {v7, p0}, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView$RecAccountPasswordBroadcastReceiver;-><init>(Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;)V

    iput-object v7, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->getPasswordState:Lcom/android/keyguard/vivo/KeyguardFindPhonePswView$RecAccountPasswordBroadcastReceiver;

    .line 547
    iget-object v7, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->getPasswordState:Lcom/android/keyguard/vivo/KeyguardFindPhonePswView$RecAccountPasswordBroadcastReceiver;

    invoke-virtual {p1, v7, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 548
    const-string v7, "KeyguardFindPhonePswView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "============isPasswordOk=========getPasswordState="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->getPasswordState:Lcom/android/keyguard/vivo/KeyguardFindPhonePswView$RecAccountPasswordBroadcastReceiver;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 550
    .local v5, "intent":Landroid/content/Intent;
    const-string v7, "password"

    invoke-virtual {v5, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 551
    const-string v7, "com.vivo.findphone"

    const-string v9, "com.vivo.findphone.CheckVivoAccountPassword"

    invoke-virtual {v5, v7, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 552
    invoke-virtual {p1, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .end local v4    # "getPasswordIntent":Landroid/content/IntentFilter;
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_0
    move v7, v8

    .line 581
    :cond_1
    :goto_0
    return v7

    .line 555
    :cond_2
    const/4 v2, 0x0

    .line 557
    .local v2, "accounts":[Landroid/accounts/Account;
    :try_start_0
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 558
    .local v0, "accountManager":Landroid/accounts/AccountManager;
    const-string v9, "BBKOnLineService"

    invoke-virtual {v0, v9}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 564
    const/4 v1, 0x0

    .line 565
    .local v1, "accountObj":Landroid/accounts/Account;
    array-length v9, v2

    if-lez v9, :cond_3

    .line 566
    aget-object v1, v2, v8

    .line 568
    :cond_3
    if-eqz v1, :cond_1

    .line 571
    const-string v6, ""

    .line 573
    .local v6, "pass":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getPassword(Landroid/accounts/Account;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 577
    :goto_1
    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_0

    .line 559
    .end local v0    # "accountManager":Landroid/accounts/AccountManager;
    .end local v1    # "accountObj":Landroid/accounts/Account;
    .end local v6    # "pass":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 561
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move v7, v8

    .line 562
    goto :goto_0

    .line 574
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "accountManager":Landroid/accounts/AccountManager;
    .restart local v1    # "accountObj":Landroid/accounts/Account;
    .restart local v6    # "pass":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 575
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private setBackDrawable(I)V
    .locals 5
    .param p1, "category"    # I

    .prologue
    .line 328
    iget-object v2, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/vivo/common/utils/VivoWallpaperManager;->getInstance(Landroid/content/Context;)Lcom/vivo/common/utils/VivoWallpaperManager;

    move-result-object v1

    .line 329
    .local v1, "vwm":Lcom/vivo/common/utils/VivoWallpaperManager;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/vivo/common/utils/VivoWallpaperManager;->getLockScreen(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 330
    .local v0, "b":Landroid/graphics/Bitmap;
    const-string v2, "KeyguardFindPhonePswView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "============setBackDrawable=========="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",mKeyguardFindPhonePswView="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mKeyguardFindPhonePswView:Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mKeyguardFindPhonePswView:Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;

    if-eqz v2, :cond_0

    .line 332
    const-string v2, "KeyguardFindPhonePswView"

    const-string v3, "============setBackDrawable=========="

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v2, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mKeyguardFindPhonePswView:Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 335
    :cond_0
    return-void
.end method

.method public static showProgress(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "indeterminate"    # Z
    .param p4, "cancelable"    # Z

    .prologue
    .line 460
    const/4 v0, 0x0

    .line 461
    .local v0, "dialog":Landroid/app/ProgressDialog;
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->checkStringNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 462
    new-instance v0, Landroid/app/ProgressDialog;

    .end local v0    # "dialog":Landroid/app/ProgressDialog;
    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 463
    .restart local v0    # "dialog":Landroid/app/ProgressDialog;
    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 464
    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 465
    invoke-virtual {v0, p3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 466
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 467
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 468
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 471
    :cond_0
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 473
    :cond_1
    return-object v0
.end method

.method private updateWeekInfo()V
    .locals 3

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mWeekView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mWeekView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mDayFormatString:Ljava/lang/String;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    :cond_0
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "arg0"    # Landroid/text/Editable;

    .prologue
    .line 598
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 604
    iget-object v0, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 607
    :cond_0
    return-void
.end method

.method protected getPasswordText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPasswordTextViewId()I
    .locals 1

    .prologue
    .line 130
    sget v0, Lcom/android/keyguard/R$id;->passwordEntry_findphone:I

    return v0
.end method

.method public getWrongPasswordStringId()I
    .locals 1

    .prologue
    .line 298
    sget v0, Lcom/android/keyguard/R$string;->kg_wrong_password:I

    return v0
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x1

    return v0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 363
    if-eqz p2, :cond_0

    const/4 v1, 0x6

    if-eq p2, v1, :cond_0

    const/4 v1, 0x5

    if-ne p2, v1, :cond_2

    .line 365
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v1

    sget v2, Lcom/android/keyguard/R$id;->passwordEntry_findphone:I

    if-eq v1, v2, :cond_1

    .line 371
    :goto_0
    return v0

    .line 368
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->TryPassword(Ljava/lang/String;)V

    goto :goto_0

    .line 371
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 6

    .prologue
    .line 185
    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onFinishInflate()V

    .line 187
    const/4 v0, 0x0

    .line 188
    .local v0, "imeOrDeleteButtonVisible":Z
    const-string v3, "KeyguardFindPhonePswView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "============setBackDrawable=========mPasswordEntry="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-virtual {p0}, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->getPasswordTextViewId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mPasswordEntry:Landroid/widget/TextView;

    .line 190
    sget v3, Lcom/android/keyguard/R$id;->keyguard_password_findphone_view:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;

    iput-object v3, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mKeyguardFindPhonePswView:Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;

    .line 191
    invoke-virtual {p0}, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    iput-object v3, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 194
    iget-object v3, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 195
    iget-object v3, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mPasswordEntry:Landroid/widget/TextView;

    const/16 v4, 0x81

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setInputType(I)V

    .line 199
    iget-object v3, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mPasswordEntry:Landroid/widget/TextView;

    new-instance v4, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView$1;

    invoke-direct {v4, p0}, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView$1;-><init>(Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iget-object v3, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mPasswordEntry:Landroid/widget/TextView;

    new-instance v4, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView$2;

    invoke-direct {v4, p0}, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView$2;-><init>(Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 220
    iget-object v3, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->requestFocus()Z

    .line 224
    if-nez v0, :cond_0

    .line 225
    iget-object v3, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 226
    .local v2, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 227
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 228
    .local v1, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 229
    iget-object v3, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    .end local v1    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v2    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->setBackDrawable(I)V

    .line 234
    sget v3, Lcom/android/keyguard/R$id;->date:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mDateView:Landroid/widget/TextView;

    .line 235
    invoke-virtual {p0}, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$string;->vivo_keyguard_full_wday_month_no_year:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mDateFormatString:Ljava/lang/String;

    .line 236
    invoke-virtual {p0}, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$string;->vivo_keyguard_full_wday_no_year:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mDayFormatString:Ljava/lang/String;

    .line 237
    sget v3, Lcom/android/keyguard/R$id;->Week:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mWeekView:Landroid/widget/TextView;

    .line 239
    sget v3, Lcom/android/keyguard/R$id;->button_fppsw_confirm:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mButtonConfirm:Landroid/widget/Button;

    .line 240
    iget-object v3, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mButtonConfirm:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->buttonsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 172
    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onPause()V

    .line 173
    iget-object v0, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 175
    return-void
.end method

.method public onResume(I)V
    .locals 6
    .param p1, "reason"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 140
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->onResume(I)V

    .line 141
    iget-object v1, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mContext:Landroid/content/Context;

    const-string v4, "statusbar"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    iput-object v1, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 145
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v1, :cond_1

    .line 146
    iget-object v1, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v4, 0x10000

    invoke-virtual {v1, v4}, Landroid/app/StatusBarManager;->disable(I)V

    .line 148
    :cond_1
    sget v1, Lcom/android/keyguard/R$id;->keyguard_password_findphone_view:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;

    iput-object v1, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mKeyguardFindPhonePswView:Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;

    .line 149
    iget-object v1, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    .line 151
    iget-object v1, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mPasswordEntry:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mTempLocation:[I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 152
    iget-object v1, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mTempLocation:[I

    aget v1, v1, v2

    if-ltz v1, :cond_5

    iget-object v1, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mTempLocation:[I

    aget v1, v1, v2

    iget-object v4, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    if-gt v1, v4, :cond_5

    move v0, v2

    .line 155
    .local v0, "passwordEntryVisible":Z
    :goto_0
    const-string v1, "KeyguardFindPhonePswView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mShowImeAtScreenOn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mShowImeAtScreenOn:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", passwordEntryVisible="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    if-ne p1, v2, :cond_2

    iget-boolean v1, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mShowImeAtScreenOn:Z

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 160
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1, v4, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 162
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->setBackDrawable(I)V

    .line 165
    iget-object v1, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    if-eqz v1, :cond_4

    .line 166
    iget-object v1, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const-string v2, ""

    invoke-interface {v1, v2, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 168
    :cond_4
    return-void

    .end local v0    # "passwordEntryVisible":Z
    :cond_5
    move v0, v3

    .line 152
    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 613
    return-void
.end method

.method refreshDate()V
    .locals 3

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mDateView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mDateView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mDateFormatString:Ljava/lang/String;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 179
    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->reset()V

    .line 180
    iget-object v0, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 181
    return-void
.end method

.method protected resetPasswordText(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    .line 624
    iget-object v0, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mPasswordEntry:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 625
    return-void
.end method

.method protected resetState()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 122
    iget-object v0, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v1, Lcom/android/keyguard/R$string;->kg_password_findphone_tip:I

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 124
    iget-object v0, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 126
    :cond_0
    return-void
.end method

.method protected setPasswordEntryEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 636
    iget-object v0, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 637
    return-void
.end method

.method public showUsabilityHint()V
    .locals 0

    .prologue
    .line 294
    return-void
.end method

.method public startAppearAnimation()V
    .locals 0

    .prologue
    .line 619
    return-void
.end method
