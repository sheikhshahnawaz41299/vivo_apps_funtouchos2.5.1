.class public Lcom/android/keyguard/KeyguardSimPinView;
.super Lcom/android/keyguard/KeyguardPinBasedInputView;
.source "KeyguardSimPinView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardSimPinView$6;,
        Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "KeyguardSimPinView"

.field private static final SETCLOCK_CENTER:I = 0x1

.field public static final TAG:Ljava/lang/String; = "KeyguardSimPinView"

.field private static final UPDATA_BACKBROUND:I = 0x2


# instance fields
.field private mCheckSimPinThread:Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;

.field private mDateFormatString:Ljava/lang/String;

.field private mDateView:Landroid/widget/TextView;

.field private mDayFormatString:Ljava/lang/String;

.field private mDeleteButton:Landroid/widget/Button;

.field private mDigitalClock:Lcom/android/keyguard/vivo/widget/ImageDigitalClock;

.field private mHandler:Landroid/os/Handler;

.field private mKeyguardUtils:Lcom/android/keyguard/KeyguardUtils;

.field mKgUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public mPinPukTitle:Landroid/widget/TextView;

.field public mRemainTime:Landroid/widget/TextView;

.field private mRemainingAttempts:I

.field private mRemainingAttemptsDialog:Landroid/app/AlertDialog;

.field private mShowDefaultMessage:Z

.field public mSimCardName:Landroid/widget/TextView;

.field private mSimImageView:Landroid/widget/ImageView;

.field private mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

.field private mSubDisplayName:Landroid/widget/TextView;

.field private mSubId:I

.field private mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mWeekView:Landroid/widget/TextView;

.field private mkeyguard_sim_pin_view:Lcom/android/keyguard/KeyguardSimPinView;

.field private ok:Landroid/view/View;

.field private okbutton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardSimPinView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 142
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 145
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardPinBasedInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    iput-object v2, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mShowDefaultMessage:Z

    .line 69
    iput v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mRemainingAttempts:I

    .line 72
    iput v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubId:I

    .line 73
    iput-object v2, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubDisplayName:Landroid/widget/TextView;

    .line 89
    new-instance v0, Lcom/android/keyguard/KeyguardSimPinView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardSimPinView$1;-><init>(Lcom/android/keyguard/KeyguardSimPinView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 577
    new-instance v0, Lcom/android/keyguard/KeyguardSimPinView$5;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardSimPinView$5;-><init>(Lcom/android/keyguard/KeyguardSimPinView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mHandler:Landroid/os/Handler;

    .line 146
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPinView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mKgUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 147
    new-instance v0, Lcom/android/keyguard/KeyguardUtils;

    invoke-direct {v0, p1}, Lcom/android/keyguard/KeyguardUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mKeyguardUtils:Lcom/android/keyguard/KeyguardUtils;

    .line 148
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardSimPinView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPinView;

    .prologue
    .line 61
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubId:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardSimPinView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPinView;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPinView;->handleSubInfoChangeIfNeeded()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/keyguard/KeyguardSimPinView;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPinView;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/keyguard/KeyguardSimPinView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPinView;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mShowDefaultMessage:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/keyguard/KeyguardSimPinView;IZ)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPinView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardSimPinView;->getPinPasswordErrorMessage(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/keyguard/KeyguardSimPinView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPinView;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/keyguard/KeyguardSimPinView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPinView;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/keyguard/KeyguardSimPinView;Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;)Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPinView;
    .param p1, "x1"    # Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mCheckSimPinThread:Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/keyguard/KeyguardSimPinView;)Lcom/android/keyguard/vivo/widget/ImageDigitalClock;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPinView;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mDigitalClock:Lcom/android/keyguard/vivo/widget/ImageDigitalClock;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/keyguard/KeyguardSimPinView;)Lcom/android/keyguard/KeyguardSimPinView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPinView;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mkeyguard_sim_pin_view:Lcom/android/keyguard/KeyguardSimPinView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardSimPinView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPinView;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPinView;->handleSubInfoChange()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardSimPinView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPinView;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPinView;->closeKeyGuard()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/keyguard/KeyguardSimPinView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPinView;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mWeekView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardSimPinView;)Lcom/android/keyguard/KeyguardUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPinView;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mKeyguardUtils:Lcom/android/keyguard/KeyguardUtils;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/KeyguardSimPinView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPinView;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mDateView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/KeyguardSimPinView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPinView;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/keyguard/KeyguardSimPinView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPinView;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSimPinView;->setEnternBtn(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/keyguard/KeyguardSimPinView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPinView;

    .prologue
    .line 61
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mRemainingAttempts:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/keyguard/KeyguardSimPinView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardSimPinView;
    .param p1, "x1"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mRemainingAttempts:I

    return p1
.end method

.method private closeKeyGuard()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 388
    const-string v0, "KeyguardSimPinView"

    const-string v1, "closeKeyGuard: Verification Completed, closing Keyguard."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "finger_simpinpuk"

    const-string v2, "enable"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 390
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mRemainingAttempts:I

    .line 391
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mKgUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubId:I

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportSimUnlocked(I)V

    .line 392
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 395
    :cond_0
    iput-boolean v3, p0, Lcom/android/keyguard/KeyguardSimPinView;->mShowDefaultMessage:Z

    .line 396
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPinView;->reset()V

    .line 397
    return-void
.end method

.method private getPinPasswordErrorMessage(IZ)Ljava/lang/String;
    .locals 7
    .param p1, "attemptsRemaining"    # I
    .param p2, "isDefault"    # Z

    .prologue
    .line 164
    if-nez p1, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPinView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->kg_password_wrong_pin_code_pukked:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "displayMessage":Ljava/lang/String;
    :goto_0
    const-string v2, "KeyguardSimPinView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPinPasswordErrorMessage: attemptsRemaining="

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

    .line 181
    return-object v0

    .line 166
    .end local v0    # "displayMessage":Ljava/lang/String;
    :cond_0
    if-lez p1, :cond_1

    .line 172
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPinView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->vivo_pinpuk_attempts:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/keyguard/KeyguardSimPinView;->mRemainingAttempts:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "displayMessage":Ljava/lang/String;
    goto :goto_0

    .line 175
    .end local v0    # "displayMessage":Ljava/lang/String;
    :cond_1
    if-eqz p2, :cond_2

    sget v1, Lcom/android/keyguard/R$string;->kg_sim_pin_instructions:I

    .line 177
    .local v1, "msgId":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPinView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "displayMessage":Ljava/lang/String;
    goto :goto_0

    .line 175
    .end local v0    # "displayMessage":Ljava/lang/String;
    .end local v1    # "msgId":I
    :cond_2
    sget v1, Lcom/android/keyguard/R$string;->kg_password_pin_failed:I

    goto :goto_1
.end method

.method private getPinRemainingAttemptsDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1, "remaining"    # I

    .prologue
    const/4 v3, 0x0

    .line 372
    invoke-direct {p0, p1, v3}, Lcom/android/keyguard/KeyguardSimPinView;->getPinPasswordErrorMessage(IZ)Ljava/lang/String;

    move-result-object v1

    .line 373
    .local v1, "msg":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPinView;->mRemainingAttemptsDialog:Landroid/app/AlertDialog;

    if-nez v2, :cond_0

    .line 374
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPinView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 375
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 376
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 377
    sget v2, Lcom/android/keyguard/R$string;->ok:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 378
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/KeyguardSimPinView;->mRemainingAttemptsDialog:Landroid/app/AlertDialog;

    .line 379
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPinView;->mRemainingAttemptsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 384
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPinView;->mRemainingAttemptsDialog:Landroid/app/AlertDialog;

    return-object v2

    .line 382
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPinView;->mRemainingAttemptsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private getSimUnlockProgressDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 360
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 361
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPinView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->kg_sim_unlock_progress_dialog_message:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 363
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 364
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 365
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private handleSubInfoChange()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    .line 496
    const/4 v1, 0x0

    .line 498
    .local v1, "displayName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPinView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v4

    iget v5, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubId:I

    invoke-virtual {v4, v5}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    .line 500
    .local v2, "info":Landroid/telephony/SubscriptionInfo;
    if-eqz v2, :cond_0

    .line 501
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 504
    :cond_0
    const-string v4, "KeyguardSimPinView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleSubInfoChange, mSubId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubId:I

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

    .line 506
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimCardName:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    .line 507
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimCardName:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SIM "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubId:I

    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 509
    :cond_1
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPinView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "finger_simpinpuk"

    const-string v6, "disable"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 511
    sget v4, Lcom/android/keyguard/R$id;->slot_id_name:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardSimPinView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 513
    .local v3, "slotName":Landroid/widget/TextView;
    if-nez v1, :cond_2

    .line 514
    const-string v4, "KeyguardSimPinView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mSubId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": New Card Inserted"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 518
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubDisplayName:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 545
    :goto_0
    return-void

    .line 525
    :cond_2
    const-string v4, "KeyguardSimPinView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleSubInfoChange, refresh Sub Info for mSubId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    const/4 v0, -0x1

    .line 527
    .local v0, "color":I
    if-eqz v2, :cond_3

    .line 528
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getIconTint()I

    move-result v0

    .line 530
    :cond_3
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimImageView:Landroid/widget/ImageView;

    if-eqz v4, :cond_4

    .line 531
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimImageView:Landroid/widget/ImageView;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 537
    :cond_4
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubDisplayName:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 538
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private handleSubInfoChangeIfNeeded()V
    .locals 2

    .prologue
    .line 486
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mKgUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimPinLockSubId()I

    move-result v0

    .line 487
    .local v0, "subId":I
    iget v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubId:I

    if-eq v0, v1, :cond_0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 488
    iput v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubId:I

    .line 489
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPinView;->handleSubInfoChange()V

    .line 490
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mRemainingAttempts:I

    .line 491
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mShowDefaultMessage:Z

    .line 493
    :cond_0
    return-void
.end method

.method private setEnternBtn(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 590
    if-eqz p1, :cond_0

    .line 591
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->ok:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 597
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->okbutton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setClickable(Z)V

    .line 598
    return-void

    .line 594
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->ok:Landroid/view/View;

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method private showDefaultMessage()V
    .locals 6

    .prologue
    .line 548
    iget v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mRemainingAttempts:I

    if-lez v1, :cond_0

    .line 552
    const-string v0, ""

    .line 553
    .local v0, "displayMessage":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPinView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->vivo_pinpuk_attempts:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/keyguard/KeyguardSimPinView;->mRemainingAttempts:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 554
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mRemainTime:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 574
    .end local v0    # "displayMessage":Ljava/lang/String;
    :goto_0
    return-void

    .line 558
    :cond_0
    new-instance v1, Lcom/android/keyguard/KeyguardSimPinView$4;

    const-string v2, ""

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/KeyguardSimPinView$4;-><init>(Lcom/android/keyguard/KeyguardSimPinView;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSimPinView$4;->start()V

    goto :goto_0
.end method


# virtual methods
.method protected getPasswordTextViewId()I
    .locals 1

    .prologue
    .line 192
    sget v0, Lcom/android/keyguard/R$id;->simPinEntry:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 290
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onAttachedToWindow()V

    .line 291
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mShowDefaultMessage:Z

    if-eqz v0, :cond_0

    .line 292
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPinView;->showDefaultMessage()V

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mKgUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 295
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 259
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 261
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mKeyguardUtils:Lcom/android/keyguard/KeyguardUtils;

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mWeekView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mKeyguardUtils:Lcom/android/keyguard/KeyguardUtils;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mWeekView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUtils;->updateWeekInfo(Landroid/widget/TextView;)V

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mDateView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mKeyguardUtils:Lcom/android/keyguard/KeyguardUtils;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUtils;->refreshDate(Landroid/widget/TextView;)V

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mDeleteButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 270
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mDeleteButton:Landroid/widget/Button;

    sget v1, Lcom/android/keyguard/R$string;->kg_reordering_delete_drop_target_text:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 272
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->okbutton:Landroid/widget/Button;

    if-eqz v0, :cond_3

    .line 273
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->okbutton:Landroid/widget/Button;

    sget v1, Lcom/android/keyguard/R$string;->findphone_ok:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 275
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_5

    .line 276
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mPinPukTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 277
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mPinPukTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->vivo_password_enter_pin_code:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mRemainTime:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 279
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mRemainingAttempts:I

    if-nez v0, :cond_6

    .line 280
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mRemainTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_password_wrong_pin_code_pukked:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    :cond_5
    :goto_0
    return-void

    .line 281
    :cond_6
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mRemainingAttempts:I

    if-lez v0, :cond_5

    .line 282
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mRemainTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->vivo_pinpuk_attempts:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/keyguard/KeyguardSimPinView;->mRemainingAttempts:I

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
    .line 299
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onDetachedFromWindow()V

    .line 300
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mKgUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 302
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 304
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 306
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 197
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onFinishInflate()V

    .line 199
    sget v1, Lcom/android/keyguard/R$id;->sub_display_name:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSimPinView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubDisplayName:Landroid/widget/TextView;

    .line 200
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mKgUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimPinLockSubId()I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSubId:I

    .line 201
    sget v1, Lcom/android/keyguard/R$id;->keyguard_sim:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSimPinView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimImageView:Landroid/widget/ImageView;

    .line 202
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mKgUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNumPhones()I

    move-result v1

    if-le v1, v4, :cond_1

    .line 204
    sget v1, Lcom/android/keyguard/R$id;->sim_info_message:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSimPinView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 205
    .local v0, "simInfoMsg":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 206
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 209
    :cond_0
    sget v1, Lcom/android/keyguard/R$id;->SIMCardName:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSimPinView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimCardName:Landroid/widget/TextView;

    .line 211
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPinView;->handleSubInfoChange()V

    .line 214
    .end local v0    # "simInfoMsg":Landroid/view/View;
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v1, v5}, Lcom/android/keyguard/SecurityMessageDisplay;->setTimeout(I)V

    .line 215
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mEcaView:Landroid/view/View;

    instance-of v1, v1, Lcom/android/keyguard/EmergencyCarrierArea;

    if-eqz v1, :cond_2

    .line 216
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mEcaView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/EmergencyCarrierArea;

    invoke-virtual {v1, v4}, Lcom/android/keyguard/EmergencyCarrierArea;->setCarrierTextVisible(Z)V

    .line 219
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "finger_simpinpuk"

    const-string v3, "disable"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 220
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPinView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->vivo_keyguard_full_wday_month_no_year:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mDateFormatString:Ljava/lang/String;

    .line 221
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPinView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->vivo_keyguard_full_wday_no_year:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mDayFormatString:Ljava/lang/String;

    .line 222
    sget v1, Lcom/android/keyguard/R$id;->date:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSimPinView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mDateView:Landroid/widget/TextView;

    .line 223
    sget v1, Lcom/android/keyguard/R$id;->Week:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSimPinView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mWeekView:Landroid/widget/TextView;

    .line 224
    sget v1, Lcom/android/keyguard/R$id;->RemainTime:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSimPinView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mRemainTime:Landroid/widget/TextView;

    .line 225
    sget v1, Lcom/android/keyguard/R$id;->PinPukTitle:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSimPinView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mPinPukTitle:Landroid/widget/TextView;

    .line 226
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mPinPukTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPinView;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/keyguard/R$string;->vivo_password_enter_pin_code:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    sget v1, Lcom/android/keyguard/R$id;->keyguard_sim_pin_view:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSimPinView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardSimPinView;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mkeyguard_sim_pin_view:Lcom/android/keyguard/KeyguardSimPinView;

    .line 228
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mkeyguard_sim_pin_view:Lcom/android/keyguard/KeyguardSimPinView;

    if-nez v1, :cond_3

    .line 229
    sget v1, Lcom/android/keyguard/R$id;->vivo_sim_pin_view:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSimPinView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardSimPinView;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mkeyguard_sim_pin_view:Lcom/android/keyguard/KeyguardSimPinView;

    .line 231
    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mKeyguardUtils:Lcom/android/keyguard/KeyguardUtils;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPinView;->mkeyguard_sim_pin_view:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUtils;->setBackDrawable(Landroid/view/View;)V

    .line 232
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mKeyguardUtils:Lcom/android/keyguard/KeyguardUtils;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPinView;->mWeekView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUtils;->updateWeekInfo(Landroid/widget/TextView;)V

    .line 233
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mKeyguardUtils:Lcom/android/keyguard/KeyguardUtils;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPinView;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUtils;->refreshDate(Landroid/widget/TextView;)V

    .line 234
    sget v1, Lcom/android/keyguard/R$id;->key_enter:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSimPinView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->ok:Landroid/view/View;

    .line 235
    sget v1, Lcom/android/keyguard/R$id;->key_enter:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSimPinView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->okbutton:Landroid/widget/Button;

    .line 236
    invoke-direct {p0, v5}, Lcom/android/keyguard/KeyguardSimPinView;->setEnternBtn(Z)V

    .line 237
    sget v1, Lcom/android/keyguard/R$id;->delete_button:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSimPinView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mDeleteButton:Landroid/widget/Button;

    .line 238
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    new-instance v2, Lcom/android/keyguard/KeyguardSimPinView$2;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardSimPinView$2;-><init>(Lcom/android/keyguard/KeyguardSimPinView;)V

    invoke-virtual {v1, v2}, Lcom/android/keyguard/PasswordTextView;->setTextChangedListener(Lcom/android/keyguard/PasswordTextView$ITextChangedWatcher;)V

    .line 252
    sget v1, Lcom/android/keyguard/R$id;->time:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSimPinView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mDigitalClock:Lcom/android/keyguard/vivo/widget/ImageDigitalClock;

    .line 253
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 255
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 317
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 319
    :cond_0
    return-void
.end method

.method public resetState()V
    .locals 3

    .prologue
    .line 151
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetState()V

    .line 152
    const-string v0, "KeyguardSimPinView"

    const-string v1, "resetState."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mPinPukTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->vivo_password_enter_pin_code:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPinView;->handleSubInfoChangeIfNeeded()V

    .line 155
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mShowDefaultMessage:Z

    if-eqz v0, :cond_0

    .line 156
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPinView;->showDefaultMessage()V

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PasswordTextView;->setEnabled(Z)V

    .line 159
    return-void
.end method

.method protected shouldLockout(J)Z
    .locals 1
    .param p1, "deadline"    # J

    .prologue
    .line 187
    const/4 v0, 0x0

    return v0
.end method

.method public showUsabilityHint()V
    .locals 0

    .prologue
    .line 310
    return-void
.end method

.method public startAppearAnimation()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 473
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardSimPinView;->setAlpha(F)V

    .line 474
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimPinView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 478
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "finishRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 482
    const/4 v0, 0x0

    return v0
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 4

    .prologue
    .line 401
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v1}, Lcom/android/keyguard/PasswordTextView;->getText()Ljava/lang/String;

    move-result-object v0

    .line 403
    .local v0, "entry":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    .line 407
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mPinPukTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPinView;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/keyguard/R$string;->kg_invalid_sim_pin_hint:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSimPinView;->resetPasswordText(Z)V

    .line 410
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 468
    :cond_0
    :goto_0
    return-void

    .line 414
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPinView;->getSimUnlockProgressDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 416
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mCheckSimPinThread:Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;

    if-nez v1, :cond_0

    .line 417
    new-instance v1, Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPinView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v2}, Lcom/android/keyguard/PasswordTextView;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/KeyguardSimPinView$3;-><init>(Lcom/android/keyguard/KeyguardSimPinView;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mCheckSimPinThread:Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;

    .line 466
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView;->mCheckSimPinThread:Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;->start()V

    goto :goto_0
.end method
