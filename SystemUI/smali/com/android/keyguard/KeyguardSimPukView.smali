.class public Lcom/android/keyguard/KeyguardSimPukView;
.super Lcom/android/keyguard/KeyguardPinBasedInputView;
.source "KeyguardSimPukView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardSimPukView$6;,
        Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;,
        Lcom/android/keyguard/KeyguardSimPukView$StateMachine;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "KeyguardSimPukView"

.field private static final SETCLOCK_CENTER:I = 0x1

.field public static final TAG:Ljava/lang/String; = "KeyguardSimPukView"

.field private static final UPDATA_BACKBROUND:I = 0x2


# instance fields
.field private mCheckSimPukThread:Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;

.field private mDateFormatString:Ljava/lang/String;

.field private mDateView:Landroid/widget/TextView;

.field private mDayFormatString:Ljava/lang/String;

.field private mDeleteButton:Landroid/widget/Button;

.field private mDigitalClock:Lcom/android/keyguard/vivo/widget/ImageDigitalClock;

.field private mHandler:Landroid/os/Handler;

.field private mKeyguardUtils:Lcom/android/keyguard/KeyguardUtils;

.field mKgUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public mPinPukTitle:Landroid/widget/TextView;

.field private mPinText:Ljava/lang/String;

.field private mPukText:Ljava/lang/String;

.field public mRemainTime:Landroid/widget/TextView;

.field private mRemainingAttempts:I

.field private mRemainingAttemptsDialog:Landroid/app/AlertDialog;

.field private mShowDefaultMessage:Z

.field public mSimCardName:Landroid/widget/TextView;

.field private mSimImageView:Landroid/widget/ImageView;

.field private mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

.field private mStateMachine:Lcom/android/keyguard/KeyguardSimPukView$StateMachine;

.field private mSubDisplayName:Landroid/widget/TextView;

.field private mSubId:I

.field private mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mWeekView:Landroid/widget/TextView;

.field private mkeyguard_sim_puk_view:Lcom/android/keyguard/KeyguardSimPukView;

.field private ok:Landroid/view/View;

.field private okbutton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 238
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardSimPukView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 239
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 242
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardPinBasedInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    iput-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mShowDefaultMessage:Z

    .line 76
    iput v2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mRemainingAttempts:I

    .line 79
    new-instance v0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;-><init>(Lcom/android/keyguard/KeyguardSimPukView;Lcom/android/keyguard/KeyguardSimPukView$1;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mStateMachine:Lcom/android/keyguard/KeyguardSimPukView$StateMachine;

    .line 82
    iput v2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSubId:I

    .line 83
    iput-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSubDisplayName:Landroid/widget/TextView;

    .line 99
    new-instance v0, Lcom/android/keyguard/KeyguardSimPukView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardSimPukView$1;-><init>(Lcom/android/keyguard/KeyguardSimPukView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 684
    new-instance v0, Lcom/android/keyguard/KeyguardSimPukView$5;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardSimPukView$5;-><init>(Lcom/android/keyguard/KeyguardSimPukView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mHandler:Landroid/os/Handler;

    .line 243
    new-instance v0, Lcom/android/keyguard/KeyguardUtils;

    invoke-direct {v0, p1}, Lcom/android/keyguard/KeyguardUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mKeyguardUtils:Lcom/android/keyguard/KeyguardUtils;

    .line 244
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPukView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mKgUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 245
    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardSimPukView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPukView;

    .prologue
    .line 68
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSubId:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/keyguard/KeyguardSimPukView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPukView;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPukView;->updateSim()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/keyguard/KeyguardSimPukView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPukView;
    .param p1, "x1"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSubId:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/keyguard/KeyguardSimPukView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPukView;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSimPukView;->setEnternBtn(Z)V

    return-void
.end method

.method static synthetic access$1202(Lcom/android/keyguard/KeyguardSimPukView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPukView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPinText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/android/keyguard/KeyguardSimPukView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPukView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPukText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/keyguard/KeyguardSimPukView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPukView;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPukView;->handleSubInfoChangeIfNeeded()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/keyguard/KeyguardSimPukView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPukView;

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mShowDefaultMessage:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/keyguard/KeyguardSimPukView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPukView;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mShowDefaultMessage:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/keyguard/KeyguardSimPukView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPukView;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPukView;->showDefaultMessage()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/keyguard/KeyguardSimPukView;)Lcom/android/keyguard/KeyguardSimPukView$StateMachine;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPukView;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mStateMachine:Lcom/android/keyguard/KeyguardSimPukView$StateMachine;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/keyguard/KeyguardSimPukView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPukView;

    .prologue
    .line 68
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mRemainingAttempts:I

    return v0
.end method

.method static synthetic access$1902(Lcom/android/keyguard/KeyguardSimPukView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPukView;
    .param p1, "x1"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mRemainingAttempts:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardSimPukView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPukView;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPukView;->handleSubInfoChange()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPukView;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/keyguard/KeyguardSimPukView;IZ)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPukView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardSimPukView;->getPukPasswordErrorMessage(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPukView;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPukView;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/keyguard/KeyguardSimPukView;Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;)Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPukView;
    .param p1, "x1"    # Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mCheckSimPukThread:Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/keyguard/KeyguardSimPukView;)Lcom/android/keyguard/vivo/widget/ImageDigitalClock;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPukView;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mDigitalClock:Lcom/android/keyguard/vivo/widget/ImageDigitalClock;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/keyguard/KeyguardSimPukView;)Lcom/android/keyguard/KeyguardSimPukView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPukView;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mkeyguard_sim_puk_view:Lcom/android/keyguard/KeyguardSimPukView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardSimPukView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPukView;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPukView;->closeKeyGuard()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPukView;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mWeekView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardSimPukView;)Lcom/android/keyguard/KeyguardUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPukView;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mKeyguardUtils:Lcom/android/keyguard/KeyguardUtils;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPukView;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mDateView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPukView;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/keyguard/KeyguardSimPukView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPukView;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPukView;->checkPuk()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/keyguard/KeyguardSimPukView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPukView;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPukView;->checkPin()Z

    move-result v0

    return v0
.end method

.method private checkPin()Z
    .locals 2

    .prologue
    .line 485
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v1}, Lcom/android/keyguard/PasswordTextView;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 486
    .local v0, "length":I
    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    .line 487
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v1}, Lcom/android/keyguard/PasswordTextView;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPinText:Ljava/lang/String;

    .line 488
    const/4 v1, 0x1

    .line 490
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private checkPuk()Z
    .locals 2

    .prologue
    .line 476
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 477
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPukText:Ljava/lang/String;

    .line 478
    const/4 v0, 0x1

    .line 480
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private closeKeyGuard()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 463
    const-string v0, "KeyguardSimPukView"

    const-string v1, "closeKeyGuard: Verification Completed, closing Keyguard."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "finger_simpinpuk"

    const-string v2, "enable"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 465
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mRemainingAttempts:I

    .line 466
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mKgUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSubId:I

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportSimUnlocked(I)V

    .line 467
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 470
    :cond_0
    iput-boolean v3, p0, Lcom/android/keyguard/KeyguardSimPukView;->mShowDefaultMessage:Z

    .line 471
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPukView;->reset()V

    .line 472
    return-void
.end method

.method private getPukPasswordErrorMessage(IZ)Ljava/lang/String;
    .locals 7
    .param p1, "attemptsRemaining"    # I
    .param p2, "isDefault"    # Z

    .prologue
    .line 217
    if-nez p1, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPukView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->kg_password_wrong_puk_code_dead:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "displayMessage":Ljava/lang/String;
    :goto_0
    const-string v2, "KeyguardSimPukView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPukPasswordErrorMessage: attemptsRemaining="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " displayMessage="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    return-object v0

    .line 219
    .end local v0    # "displayMessage":Ljava/lang/String;
    :cond_0
    if-lez p1, :cond_1

    .line 225
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPukView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->vivo_pinpuk_attempts:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/keyguard/KeyguardSimPukView;->mRemainingAttempts:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "displayMessage":Ljava/lang/String;
    goto :goto_0

    .line 228
    .end local v0    # "displayMessage":Ljava/lang/String;
    :cond_1
    if-eqz p2, :cond_2

    sget v1, Lcom/android/keyguard/R$string;->kg_puk_enter_puk_hint:I

    .line 230
    .local v1, "msgId":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPukView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "displayMessage":Ljava/lang/String;
    goto :goto_0

    .line 228
    .end local v0    # "displayMessage":Ljava/lang/String;
    .end local v1    # "msgId":I
    :cond_2
    sget v1, Lcom/android/keyguard/R$string;->kg_password_puk_failed:I

    goto :goto_1
.end method

.method private getPukRemainingAttemptsDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1, "remaining"    # I

    .prologue
    const/4 v3, 0x0

    .line 447
    invoke-direct {p0, p1, v3}, Lcom/android/keyguard/KeyguardSimPukView;->getPukPasswordErrorMessage(IZ)Ljava/lang/String;

    move-result-object v1

    .line 448
    .local v1, "msg":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mRemainingAttemptsDialog:Landroid/app/AlertDialog;

    if-nez v2, :cond_0

    .line 449
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 450
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 451
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 452
    sget v2, Lcom/android/keyguard/R$string;->ok:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 453
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mRemainingAttemptsDialog:Landroid/app/AlertDialog;

    .line 454
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mRemainingAttemptsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 459
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mRemainingAttemptsDialog:Landroid/app/AlertDialog;

    return-object v2

    .line 457
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mRemainingAttemptsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private getSimUnlockProgressDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 433
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 434
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPukView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->kg_sim_unlock_progress_dialog_message:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 436
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 437
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 438
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private handleSubInfoChange()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 582
    const/4 v1, 0x0

    .line 584
    .local v1, "displayName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v4

    iget v5, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSubId:I

    invoke-virtual {v4, v5}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    .line 586
    .local v2, "info":Landroid/telephony/SubscriptionInfo;
    if-eqz v2, :cond_0

    .line 587
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 589
    :cond_0
    const-string v4, "KeyguardSimPukView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleSubInfoChange, mSubId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSubId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", displayName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "finger_simpinpuk"

    const-string v6, "disable"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 592
    sget v4, Lcom/android/keyguard/R$id;->slot_id_name:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardSimPukView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 593
    .local v3, "slotName":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimCardName:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    .line 594
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimCardName:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SIM "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSubId:I

    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 597
    :cond_1
    if-nez v1, :cond_2

    .line 598
    const-string v4, "KeyguardSimPukView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mSubId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSubId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": New Card Inserted"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 602
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSubDisplayName:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 629
    :goto_0
    return-void

    .line 609
    :cond_2
    const-string v4, "KeyguardSimPukView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleSubInfoChange, refresh Sub Info for mSubId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSubId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    const/4 v0, -0x1

    .line 611
    .local v0, "color":I
    if-eqz v2, :cond_3

    .line 612
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getIconTint()I

    move-result v0

    .line 614
    :cond_3
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimImageView:Landroid/widget/ImageView;

    if-eqz v4, :cond_4

    .line 615
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimImageView:Landroid/widget/ImageView;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 620
    :cond_4
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSubDisplayName:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 621
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSubDisplayName:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 622
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private handleSubInfoChangeIfNeeded()V
    .locals 2

    .prologue
    .line 572
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mKgUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimPukLockSubId()I

    move-result v0

    .line 573
    .local v0, "subId":I
    iget v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSubId:I

    if-eq v0, v1, :cond_0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 574
    iput v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSubId:I

    .line 575
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPukView;->handleSubInfoChange()V

    .line 576
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mRemainingAttempts:I

    .line 577
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mShowDefaultMessage:Z

    .line 579
    :cond_0
    return-void
.end method

.method private setBackDrawable()V
    .locals 5

    .prologue
    .line 665
    const-string v2, "KeyguardSimPukView"

    const-string v3, "============setBackDrawable=========="

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/vivo/common/utils/VivoWallpaperManager;->getInstance(Landroid/content/Context;)Lcom/vivo/common/utils/VivoWallpaperManager;

    move-result-object v1

    .line 667
    .local v1, "vwm":Lcom/vivo/common/utils/VivoWallpaperManager;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/vivo/common/utils/VivoWallpaperManager;->getLockScreen(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 668
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 669
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mkeyguard_sim_puk_view:Lcom/android/keyguard/KeyguardSimPukView;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardSimPukView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 670
    :cond_0
    return-void
.end method

.method private setEnternBtn(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 697
    if-eqz p1, :cond_0

    .line 698
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->ok:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 703
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->okbutton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setClickable(Z)V

    .line 704
    return-void

    .line 701
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->ok:Landroid/view/View;

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method private showDefaultMessage()V
    .locals 6

    .prologue
    .line 632
    iget v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mRemainingAttempts:I

    if-ltz v1, :cond_0

    .line 636
    const-string v0, ""

    .line 637
    .local v0, "displayMessage":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPukView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->vivo_pinpuk_attempts:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/keyguard/KeyguardSimPukView;->mRemainingAttempts:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 638
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mRemainTime:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 661
    .end local v0    # "displayMessage":Ljava/lang/String;
    :goto_0
    return-void

    .line 645
    :cond_0
    new-instance v1, Lcom/android/keyguard/KeyguardSimPukView$4;

    const-string v2, ""

    const-string v3, ""

    invoke-direct {v1, p0, v2, v3}, Lcom/android/keyguard/KeyguardSimPukView$4;-><init>(Lcom/android/keyguard/KeyguardSimPukView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSimPukView$4;->start()V

    goto :goto_0
.end method

.method private updateSim()V
    .locals 3

    .prologue
    .line 498
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPukView;->getSimUnlockProgressDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 500
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mCheckSimPukThread:Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;

    if-nez v0, :cond_0

    .line 501
    new-instance v0, Lcom/android/keyguard/KeyguardSimPukView$3;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPukText:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPinText:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/keyguard/KeyguardSimPukView$3;-><init>(Lcom/android/keyguard/KeyguardSimPukView;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mCheckSimPukThread:Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;

    .line 547
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mCheckSimPukThread:Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;->start()V

    .line 549
    :cond_0
    return-void
.end method

.method private updateWeekInfo()V
    .locals 3

    .prologue
    .line 673
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mWeekView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 674
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mWeekView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mDayFormatString:Ljava/lang/String;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 676
    :cond_0
    return-void
.end method


# virtual methods
.method public confirmPin()Z
    .locals 2

    .prologue
    .line 494
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPinText:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v1}, Lcom/android/keyguard/PasswordTextView;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected getPasswordTextViewId()I
    .locals 1

    .prologue
    .line 261
    sget v0, Lcom/android/keyguard/R$id;->pukEntry:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 366
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onAttachedToWindow()V

    .line 367
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mShowDefaultMessage:Z

    if-eqz v0, :cond_0

    .line 368
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPukView;->showDefaultMessage()V

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mKgUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 371
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 335
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 337
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mKeyguardUtils:Lcom/android/keyguard/KeyguardUtils;

    if-eqz v0, :cond_1

    .line 338
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mWeekView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mKeyguardUtils:Lcom/android/keyguard/KeyguardUtils;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mWeekView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUtils;->updateWeekInfo(Landroid/widget/TextView;)V

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mDateView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 342
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mKeyguardUtils:Lcom/android/keyguard/KeyguardUtils;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUtils;->refreshDate(Landroid/widget/TextView;)V

    .line 345
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mDeleteButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 346
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mDeleteButton:Landroid/widget/Button;

    sget v1, Lcom/android/keyguard/R$string;->kg_reordering_delete_drop_target_text:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 348
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->okbutton:Landroid/widget/Button;

    if-eqz v0, :cond_3

    .line 349
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->okbutton:Landroid/widget/Button;

    sget v1, Lcom/android/keyguard/R$string;->findphone_ok:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 351
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_5

    .line 352
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPinPukTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 353
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPinPukTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->vivo_password_enter_puk_code:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 354
    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mRemainTime:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 355
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mRemainingAttempts:I

    if-nez v0, :cond_6

    .line 356
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mRemainTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_password_wrong_puk_code_dead:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    :cond_5
    :goto_0
    return-void

    .line 357
    :cond_6
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mRemainingAttempts:I

    if-lez v0, :cond_5

    .line 358
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mRemainTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->vivo_pinpuk_attempts:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/keyguard/KeyguardSimPukView;->mRemainingAttempts:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 375
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onDetachedFromWindow()V

    .line 376
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mKgUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 377
    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 266
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onFinishInflate()V

    .line 268
    sget v1, Lcom/android/keyguard/R$id;->sub_display_name:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSimPukView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSubDisplayName:Landroid/widget/TextView;

    .line 269
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mKgUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimPukLockSubId()I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSubId:I

    .line 270
    sget v1, Lcom/android/keyguard/R$id;->keyguard_sim:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSimPukView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimImageView:Landroid/widget/ImageView;

    .line 271
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mKgUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNumPhones()I

    move-result v1

    if-le v1, v4, :cond_1

    .line 273
    sget v1, Lcom/android/keyguard/R$id;->sim_info_message:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSimPukView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 274
    .local v0, "simInfoMsg":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 275
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 278
    :cond_0
    sget v1, Lcom/android/keyguard/R$id;->SIMCardName:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSimPukView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimCardName:Landroid/widget/TextView;

    .line 280
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPukView;->handleSubInfoChange()V

    .line 283
    .end local v0    # "simInfoMsg":Landroid/view/View;
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v1, v5}, Lcom/android/keyguard/SecurityMessageDisplay;->setTimeout(I)V

    .line 284
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mEcaView:Landroid/view/View;

    instance-of v1, v1, Lcom/android/keyguard/EmergencyCarrierArea;

    if-eqz v1, :cond_2

    .line 285
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mEcaView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/EmergencyCarrierArea;

    invoke-virtual {v1, v4}, Lcom/android/keyguard/EmergencyCarrierArea;->setCarrierTextVisible(Z)V

    .line 289
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "finger_simpinpuk"

    const-string v3, "disable"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 290
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPukView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->vivo_keyguard_full_wday_month_no_year:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mDateFormatString:Ljava/lang/String;

    .line 291
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPukView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->vivo_keyguard_full_wday_no_year:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mDayFormatString:Ljava/lang/String;

    .line 292
    sget v1, Lcom/android/keyguard/R$id;->date:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSimPukView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mDateView:Landroid/widget/TextView;

    .line 293
    sget v1, Lcom/android/keyguard/R$id;->Week:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSimPukView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mWeekView:Landroid/widget/TextView;

    .line 294
    sget v1, Lcom/android/keyguard/R$id;->RemainTime:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSimPukView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mRemainTime:Landroid/widget/TextView;

    .line 295
    sget v1, Lcom/android/keyguard/R$id;->PinPukTitle:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSimPukView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPinPukTitle:Landroid/widget/TextView;

    .line 296
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPinPukTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/keyguard/R$string;->vivo_password_enter_puk_code:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    sget v1, Lcom/android/keyguard/R$id;->keyguard_sim_puk_view:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSimPukView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardSimPukView;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mkeyguard_sim_puk_view:Lcom/android/keyguard/KeyguardSimPukView;

    .line 298
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mkeyguard_sim_puk_view:Lcom/android/keyguard/KeyguardSimPukView;

    if-nez v1, :cond_3

    .line 299
    sget v1, Lcom/android/keyguard/R$id;->vivo_sim_puk_view:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSimPukView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardSimPukView;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mkeyguard_sim_puk_view:Lcom/android/keyguard/KeyguardSimPukView;

    .line 301
    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mKeyguardUtils:Lcom/android/keyguard/KeyguardUtils;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mkeyguard_sim_puk_view:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUtils;->setBackDrawable(Landroid/view/View;)V

    .line 302
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mKeyguardUtils:Lcom/android/keyguard/KeyguardUtils;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mWeekView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUtils;->updateWeekInfo(Landroid/widget/TextView;)V

    .line 303
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mKeyguardUtils:Lcom/android/keyguard/KeyguardUtils;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUtils;->refreshDate(Landroid/widget/TextView;)V

    .line 304
    sget v1, Lcom/android/keyguard/R$id;->key_enter:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSimPukView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->ok:Landroid/view/View;

    .line 305
    sget v1, Lcom/android/keyguard/R$id;->key_enter:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSimPukView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->okbutton:Landroid/widget/Button;

    .line 306
    invoke-direct {p0, v5}, Lcom/android/keyguard/KeyguardSimPukView;->setEnternBtn(Z)V

    .line 307
    sget v1, Lcom/android/keyguard/R$id;->delete_button:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSimPukView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mDeleteButton:Landroid/widget/Button;

    .line 308
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    new-instance v2, Lcom/android/keyguard/KeyguardSimPukView$2;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardSimPukView$2;-><init>(Lcom/android/keyguard/KeyguardSimPukView;)V

    invoke-virtual {v1, v2}, Lcom/android/keyguard/PasswordTextView;->setTextChangedListener(Lcom/android/keyguard/PasswordTextView$ITextChangedWatcher;)V

    .line 328
    sget v1, Lcom/android/keyguard/R$id;->time:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSimPukView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mDigitalClock:Lcom/android/keyguard/vivo/widget/ImageDigitalClock;

    .line 329
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 331
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 388
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 390
    :cond_0
    return-void
.end method

.method refreshDate()V
    .locals 3

    .prologue
    .line 679
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mDateView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 680
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mDateView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView;->mDateFormatString:Ljava/lang/String;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 682
    :cond_0
    return-void
.end method

.method public resetState()V
    .locals 2

    .prologue
    .line 248
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetState()V

    .line 249
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mStateMachine:Lcom/android/keyguard/KeyguardSimPukView$StateMachine;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->reset()V

    .line 250
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PasswordTextView;->setEnabled(Z)V

    .line 251
    return-void
.end method

.method protected shouldLockout(J)Z
    .locals 1
    .param p1, "deadline"    # J

    .prologue
    .line 256
    const/4 v0, 0x0

    return v0
.end method

.method public showUsabilityHint()V
    .locals 0

    .prologue
    .line 381
    return-void
.end method

.method public startAppearAnimation()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 559
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardSimPukView;->setAlpha(F)V

    .line 560
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPukView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 564
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "finishRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 568
    const/4 v0, 0x0

    return v0
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView;->mStateMachine:Lcom/android/keyguard/KeyguardSimPukView$StateMachine;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->next()V

    .line 554
    return-void
.end method
