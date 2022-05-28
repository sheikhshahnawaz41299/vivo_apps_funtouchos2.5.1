.class public Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;
.super Lcom/vivo/settings/VivoFragment;
.source "ConfirmVivoPin.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ConfirmVivoPin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmVivoPinFragment"
.end annotation


# static fields
.field private static final ERROR_MESSAGE_TIMEOUT:J = 0xbb8L

.field private static final KEY_NUM_WRONG_CONFIRM_ATTEMPTS:Ljava/lang/String; = "confirm_lock_password_fragment.key_num_wrong_confirm_attempts"

.field private static final TAG:Ljava/lang/String; = "ConfirmVivoPinFragment"

.field private static mPasswordEnable:Z


# instance fields
.field private final ADD:I

.field private final SUB:I

.field private gIsUpper:Z

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mDelete:Landroid/widget/ImageButton;

.field private mHandler:Landroid/os/Handler;

.field private mHeaderText:Landroid/widget/TextView;

.field private mIsAlpha:Z

.field private mKey0:Landroid/widget/ImageButton;

.field private mKey1:Landroid/widget/ImageButton;

.field private mKey2:Landroid/widget/ImageButton;

.field private mKey3:Landroid/widget/ImageButton;

.field private mKey4:Landroid/widget/ImageButton;

.field private mKey5:Landroid/widget/ImageButton;

.field private mKey6:Landroid/widget/ImageButton;

.field private mKey7:Landroid/widget/ImageButton;

.field private mKey8:Landroid/widget/ImageButton;

.field private mKey9:Landroid/widget/ImageButton;

.field private mKey_c:Landroid/widget/ImageButton;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMixMinLength:I

.field private mMixOk:Landroid/widget/Button;

.field protected mMixPwEntry:Landroid/widget/EditText;

.field private mMix_keyboard:Landroid/view/ViewGroup;

.field private mMixdel:Landroid/widget/ImageButton;

.field private mNumMinLength:I

.field private mNumWrongConfirmAttempts:I

.field private mPassword1:Landroid/widget/ImageView;

.field private mPassword2:Landroid/widget/ImageView;

.field private mPassword3:Landroid/widget/ImageView;

.field private mPassword4:Landroid/widget/ImageView;

.field private mPassword_keyboard:Landroid/view/View;

.field private final mResetErrorRunnable:Ljava/lang/Runnable;

.field private mShowNumBoard:Z

.field private mSimple_group:Landroid/view/View;

.field private mUpper:Landroid/widget/ImageButton;

.field private mUserPassword:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mPasswordEnable:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 121
    invoke-direct {p0}, Lcom/vivo/settings/VivoFragment;-><init>()V

    .line 98
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mHandler:Landroid/os/Handler;

    .line 107
    const-string v0, " "

    iput-object v0, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mUserPassword:Ljava/lang/String;

    .line 108
    iput v2, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->ADD:I

    iput v1, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->SUB:I

    .line 109
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mNumMinLength:I

    .line 110
    iput v1, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mMixMinLength:I

    .line 116
    iput-boolean v1, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mShowNumBoard:Z

    .line 118
    iput-boolean v2, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->gIsUpper:Z

    .line 615
    new-instance v0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment$5;

    invoke-direct {v0, p0}, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment$5;-><init>(Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;)V

    iput-object v0, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mResetErrorRunnable:Ljava/lang/Runnable;

    .line 123
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mPassword_keyboard:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->handleNext()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mHeaderText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 91
    sput-boolean p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mPasswordEnable:Z

    return p0
.end method

.method static synthetic access$400(Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->getDefaultHeader()I

    move-result v0

    return v0
.end method

.method static synthetic access$502(Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;
    .param p1, "x1"    # I

    .prologue
    .line 91
    iput p1, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mNumWrongConfirmAttempts:I

    return p1
.end method

.method private getDefaultHeader()I
    .locals 1

    .prologue
    .line 289
    const v0, 0x7f0b0866

    return v0
.end method

.method private handleAttemptLockout(J)V
    .locals 9
    .param p1, "elapsedRealtimeDeadline"    # J

    .prologue
    const/4 v1, 0x0

    .line 568
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 569
    .local v6, "elapsedRealtime":J
    const v0, 0x7f0b033e

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->showError(IJ)V

    .line 571
    sput-boolean v1, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mPasswordEnable:Z

    .line 572
    iget-object v0, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mMixPwEntry:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 573
    new-instance v0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment$4;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment$4;-><init>(Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;JJ)V

    invoke-virtual {v0}, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment$4;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 596
    return-void
.end method

.method private handleNext()V
    .locals 7

    .prologue
    const v6, 0x7f020135

    .line 336
    invoke-virtual {p0}, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-nez v4, :cond_0

    .line 337
    const-string v4, "ConfirmVivoPinFragment"

    const-string v5, "error,getActivity() is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :goto_0
    return-void

    .line 342
    :cond_0
    iget-boolean v4, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mShowNumBoard:Z

    if-eqz v4, :cond_2

    .line 343
    iget-object v3, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mUserPassword:Ljava/lang/String;

    .line 347
    .local v3, "pin":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, v3}, Lcom/android/internal/widget/LockPatternUtils;->checkNormalPassword(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 349
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 350
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    instance-of v4, v4, Lcom/android/settings/ConfirmLockPassword$InternalActivity;

    if-eqz v4, :cond_1

    .line 351
    const-string v5, "type"

    iget-boolean v4, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mIsAlpha:Z

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 354
    const-string v4, "password"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 357
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4, v5, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 358
    invoke-virtual {p0}, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 345
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "pin":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mMixPwEntry:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "pin":Ljava/lang/String;
    goto :goto_1

    .line 351
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_3
    const/4 v4, 0x3

    goto :goto_2

    .line 360
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_4
    iget v4, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mNumWrongConfirmAttempts:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mNumWrongConfirmAttempts:I

    const/4 v5, 0x5

    if-lt v4, v5, :cond_5

    .line 361
    iget-object v4, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline()J

    move-result-wide v0

    .line 362
    .local v0, "deadline":J
    invoke-direct {p0, v0, v1}, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->handleAttemptLockout(J)V

    .line 368
    .end local v0    # "deadline":J
    :goto_3
    iget-boolean v4, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mShowNumBoard:Z

    if-eqz v4, :cond_6

    .line 369
    const-string v4, " "

    iput-object v4, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mUserPassword:Ljava/lang/String;

    .line 370
    iget-object v4, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mPassword1:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 371
    iget-object v4, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mPassword2:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 372
    iget-object v4, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mPassword3:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 373
    iget-object v4, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mPassword4:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 365
    :cond_5
    const v4, 0x7f0b081a

    invoke-direct {p0, v4}, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->showError(I)V

    goto :goto_3

    .line 375
    :cond_6
    iget-object v4, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mMixPwEntry:Landroid/widget/EditText;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private mixToPin()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 638
    iget-object v0, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mSimple_group:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 639
    iget-object v0, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mPassword_keyboard:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 640
    iget-object v0, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mMix_keyboard:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 641
    iget-object v0, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mMixPwEntry:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 642
    return-void
.end method

.method private pinToMix()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 631
    iget-object v0, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mSimple_group:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 632
    iget-object v0, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mPassword_keyboard:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 633
    iget-object v0, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mMix_keyboard:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 634
    iget-object v0, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mMixPwEntry:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 635
    return-void
.end method

.method private setMixText(Landroid/view/ViewGroup;)V
    .locals 7
    .param p1, "v"    # Landroid/view/ViewGroup;

    .prologue
    .line 646
    const-string v4, "ConfirmVivoPinFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "gIsUpper = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->gIsUpper:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-gt v0, v4, :cond_3

    .line 648
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 649
    .local v3, "vivomixkey":Landroid/view/View;
    instance-of v4, v3, Lcom/android/settings/VivoMixKey;

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f0e0251

    if-eq v4, v5, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f0e0252

    if-eq v4, v5, :cond_2

    move-object v4, v3

    .line 650
    check-cast v4, Lcom/android/settings/VivoMixKey;

    invoke-virtual {v4}, Lcom/android/settings/VivoMixKey;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 651
    .local v1, "txt":Ljava/lang/String;
    iget-boolean v4, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->gIsUpper:Z

    if-eqz v4, :cond_1

    .line 652
    check-cast v3, Lcom/android/settings/VivoMixKey;

    .end local v3    # "vivomixkey":Landroid/view/View;
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/VivoMixKey;->setText(Ljava/lang/CharSequence;)V

    .line 653
    const-string v4, "ConfirmVivoPinFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "txt.toUpperCase() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    .end local v1    # "txt":Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 655
    .restart local v1    # "txt":Ljava/lang/String;
    .restart local v3    # "vivomixkey":Landroid/view/View;
    :cond_1
    check-cast v3, Lcom/android/settings/VivoMixKey;

    .end local v3    # "vivomixkey":Landroid/view/View;
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/VivoMixKey;->setText(Ljava/lang/CharSequence;)V

    .line 656
    const-string v4, "ConfirmVivoPinFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "txt.toUpperCase() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 659
    .end local v1    # "txt":Ljava/lang/String;
    .restart local v3    # "vivomixkey":Landroid/view/View;
    :cond_2
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    move-object v2, v3

    .line 660
    check-cast v2, Landroid/view/ViewGroup;

    .line 661
    .local v2, "vg":Landroid/view/ViewGroup;
    invoke-direct {p0, v2}, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->setMixText(Landroid/view/ViewGroup;)V

    goto :goto_1

    .line 664
    .end local v2    # "vg":Landroid/view/ViewGroup;
    .end local v3    # "vivomixkey":Landroid/view/View;
    :cond_3
    return-void
.end method

.method private showError(I)V
    .locals 2
    .param p1, "msg"    # I

    .prologue
    .line 612
    const-wide/16 v0, 0xbb8

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->showError(IJ)V

    .line 613
    return-void
.end method

.method private showError(IJ)V
    .locals 2
    .param p1, "msg"    # I
    .param p2, "timeout"    # J

    .prologue
    .line 622
    iget-object v0, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 623
    iget-object v0, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 625
    iget-object v0, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mResetErrorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 626
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mResetErrorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 629
    :cond_0
    return-void
.end method

.method private updatepasswordframe(II)V
    .locals 3
    .param p1, "num"    # I
    .param p2, "tag"    # I

    .prologue
    const v2, 0x7f02013d

    const v1, 0x7f020135

    .line 521
    sget-boolean v0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mPasswordEnable:Z

    if-nez v0, :cond_1

    .line 522
    const-string v0, " "

    iput-object v0, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mUserPassword:Ljava/lang/String;

    .line 565
    :cond_0
    :goto_0
    return-void

    .line 525
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 555
    if-eqz p2, :cond_0

    .line 558
    iget-object v0, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mPassword4:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 527
    :pswitch_0
    if-nez p2, :cond_2

    .line 528
    iget-object v0, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mPassword1:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 530
    :cond_2
    iget-object v0, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mPassword1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 534
    :pswitch_1
    if-nez p2, :cond_3

    .line 535
    iget-object v0, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mPassword2:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 537
    :cond_3
    iget-object v0, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mPassword1:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 541
    :pswitch_2
    if-nez p2, :cond_4

    .line 542
    iget-object v0, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mPassword3:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 544
    :cond_4
    iget-object v0, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mPassword2:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 548
    :pswitch_3
    if-nez p2, :cond_5

    .line 549
    iget-object v0, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mPassword4:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 551
    :cond_5
    iget-object v0, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mPassword3:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 525
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 667
    const-string v1, "ConfirmVivoPinFragment"

    const-string v2, "afterTextChanged----- = "

    invoke-static {v1, v2}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    iget-object v1, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mMixPwEntry:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v0

    .line 674
    .local v0, "mixlen":I
    iget v1, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mMixMinLength:I

    if-lt v0, v1, :cond_0

    .line 675
    iget-object v1, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mMixOk:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 680
    :goto_0
    return-void

    .line 677
    :cond_0
    iget-object v1, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mMixOk:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 684
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v5, 0x7f020135

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 380
    iget-object v2, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mUserPassword:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mUserPassword:Ljava/lang/String;

    .line 381
    iget-object v2, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mUserPassword:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 383
    .local v0, "length":I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 503
    const-string v2, "ConfirmVivoPinFragment"

    const-string v3, "onClick default = "

    invoke-static {v2, v3}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    :cond_0
    :goto_0
    return-void

    .line 385
    :sswitch_0
    iget v2, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mNumMinLength:I

    if-ge v0, v2, :cond_1

    .line 386
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mUserPassword:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mUserPassword:Ljava/lang/String;

    .line 387
    invoke-direct {p0, v0, v4}, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->updatepasswordframe(II)V

    .line 507
    :cond_1
    :goto_1
    const-string v2, "ConfirmVivoPinFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "new mUserPassword = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mUserPassword:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mUserPassword:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    iget-object v2, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mUserPassword:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget v3, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mNumMinLength:I

    if-ne v2, v3, :cond_0

    .line 510
    iget-object v2, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment$3;

    invoke-direct {v3, p0}, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment$3;-><init>(Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 392
    :sswitch_1
    iget v2, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mNumMinLength:I

    if-ge v0, v2, :cond_1

    .line 393
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mUserPassword:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mUserPassword:Ljava/lang/String;

    .line 394
    invoke-direct {p0, v0, v4}, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->updatepasswordframe(II)V

    goto :goto_1

    .line 400
    :sswitch_2
    iget v2, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mNumMinLength:I

    if-ge v0, v2, :cond_1

    .line 401
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mUserPassword:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "3"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mUserPassword:Ljava/lang/String;

    .line 402
    invoke-direct {p0, v0, v4}, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->updatepasswordframe(II)V

    goto :goto_1

    .line 407
    :sswitch_3
    iget v2, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mNumMinLength:I

    if-ge v0, v2, :cond_1

    .line 408
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mUserPassword:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mUserPassword:Ljava/lang/String;

    .line 409
    invoke-direct {p0, v0, v4}, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->updatepasswordframe(II)V

    goto/16 :goto_1

    .line 414
    :sswitch_4
    iget v2, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mNumMinLength:I

    if-ge v0, v2, :cond_1

    .line 415
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mUserPassword:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "5"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mUserPassword:Ljava/lang/String;

    .line 416
    invoke-direct {p0, v0, v4}, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->updatepasswordframe(II)V

    goto/16 :goto_1

    .line 421
    :sswitch_5
    iget v2, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mNumMinLength:I

    if-ge v0, v2, :cond_1

    .line 422
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mUserPassword:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "6"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mUserPassword:Ljava/lang/String;

    .line 423
    invoke-direct {p0, v0, v4}, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->updatepasswordframe(II)V

    goto/16 :goto_1

    .line 428
    :sswitch_6
    iget v2, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mNumMinLength:I

    if-ge v0, v2, :cond_1

    .line 429
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mUserPassword:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "7"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mUserPassword:Ljava/lang/String;

    .line 430
    invoke-direct {p0, v0, v4}, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->updatepasswordframe(II)V

    goto/16 :goto_1

    .line 435
    :sswitch_7
    iget v2, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mNumMinLength:I

    if-ge v0, v2, :cond_1

    .line 436
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mUserPassword:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "8"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mUserPassword:Ljava/lang/String;

    .line 437
    invoke-direct {p0, v0, v4}, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->updatepasswordframe(II)V

    goto/16 :goto_1

    .line 443
    :sswitch_8
    iget v2, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mNumMinLength:I

    if-ge v0, v2, :cond_1

    .line 444
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mUserPassword:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "9"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mUserPassword:Ljava/lang/String;

    .line 445
    invoke-direct {p0, v0, v4}, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->updatepasswordframe(II)V

    goto/16 :goto_1

    .line 450
    :sswitch_9
    iget v2, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mNumMinLength:I

    if-ge v0, v2, :cond_1

    .line 451
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mUserPassword:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mUserPassword:Ljava/lang/String;

    .line 452
    invoke-direct {p0, v0, v4}, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->updatepasswordframe(II)V

    goto/16 :goto_1

    .line 457
    :sswitch_a
    if-lez v0, :cond_1

    .line 458
    if-ne v0, v3, :cond_2

    .line 459
    const-string v2, " "

    iput-object v2, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mUserPassword:Ljava/lang/String;

    .line 460
    invoke-direct {p0, v3, v3}, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->updatepasswordframe(II)V

    goto/16 :goto_1

    .line 462
    :cond_2
    iget-object v2, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mUserPassword:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mUserPassword:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mUserPassword:Ljava/lang/String;

    .line 463
    invoke-direct {p0, v0, v3}, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->updatepasswordframe(II)V

    goto/16 :goto_1

    .line 470
    :sswitch_b
    const-string v2, " "

    iput-object v2, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mUserPassword:Ljava/lang/String;

    .line 471
    iget-object v2, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mPassword1:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 472
    iget-object v2, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mPassword2:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 473
    iget-object v2, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mPassword3:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 474
    iget-object v2, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mPassword4:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 480
    :sswitch_c
    iget-boolean v2, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->gIsUpper:Z

    if-nez v2, :cond_3

    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->gIsUpper:Z

    .line 481
    iget-boolean v2, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->gIsUpper:Z

    if-eqz v2, :cond_4

    .line 482
    iget-object v2, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mUpper:Landroid/widget/ImageButton;

    const v4, 0x7f020141

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 483
    invoke-virtual {p0}, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "vivo_mix_password_keyguard_upper"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_3
    move v2, v4

    .line 480
    goto :goto_2

    .line 485
    :cond_4
    iget-object v2, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mUpper:Landroid/widget/ImageButton;

    const v3, 0x7f02013c

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 486
    invoke-virtual {p0}, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vivo_mix_password_keyguard_upper"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 491
    :sswitch_d
    iget-object v2, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mMixPwEntry:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v1

    .line 492
    .local v1, "mixlen":I
    if-lez v1, :cond_5

    .line 493
    const-string v2, "ConfirmVivoPinFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mMixPwEntry.getText().length() = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mMixPwEntry:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    iget-object v2, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mMixPwEntry:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mMixPwEntry:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    add-int/lit8 v5, v1, -0x1

    invoke-interface {v3, v4, v5}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 496
    :cond_5
    iget-object v2, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mMixPwEntry:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mMixPwEntry:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-static {v2, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto/16 :goto_0

    .line 499
    .end local v1    # "mixlen":I
    :sswitch_e
    invoke-direct {p0}, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->handleNext()V

    goto/16 :goto_0

    .line 383
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e007d -> :sswitch_0
        0x7f0e007e -> :sswitch_1
        0x7f0e007f -> :sswitch_2
        0x7f0e0080 -> :sswitch_3
        0x7f0e0081 -> :sswitch_4
        0x7f0e0082 -> :sswitch_5
        0x7f0e0083 -> :sswitch_6
        0x7f0e0084 -> :sswitch_7
        0x7f0e0085 -> :sswitch_8
        0x7f0e0086 -> :sswitch_b
        0x7f0e0087 -> :sswitch_9
        0x7f0e0088 -> :sswitch_a
        0x7f0e00a8 -> :sswitch_c
        0x7f0e00b0 -> :sswitch_d
        0x7f0e00b1 -> :sswitch_e
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 127
    invoke-super {p0, p1}, Lcom/vivo/settings/VivoFragment;->onCreate(Landroid/os/Bundle;)V

    .line 128
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 129
    if-eqz p1, :cond_0

    .line 130
    const-string v0, "confirm_lock_password_fragment.key_num_wrong_confirm_attempts"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mNumWrongConfirmAttempts:I

    .line 133
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 13
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 138
    iget-object v9, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v5

    .line 139
    .local v5, "storedQuality":I
    const v9, 0x7f04002c

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 141
    .local v7, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->showBBKBackButton()V

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    check-cast v9, Lcom/android/settings/SettingsActivity;

    invoke-virtual {p0}, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b07c5

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/settings/SettingsActivity;->setTitleLeftButtonText(Ljava/lang/CharSequence;)V

    .line 154
    const v9, 0x7f0e0048

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mHeaderText:Landroid/widget/TextView;

    .line 155
    const/high16 v9, 0x40000

    if-eq v9, v5, :cond_0

    const/high16 v9, 0x50000

    if-eq v9, v5, :cond_0

    const/high16 v9, 0x60000

    if-ne v9, v5, :cond_4

    :cond_0
    const/4 v9, 0x1

    :goto_0
    iput-boolean v9, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mIsAlpha:Z

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 160
    .local v3, "intent":Landroid/content/Intent;
    if-eqz v3, :cond_2

    .line 161
    const-string v9, "com.android.settings.ConfirmLockPattern.header"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 162
    .local v1, "headerMessage":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 163
    invoke-direct {p0}, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->getDefaultHeader()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 165
    :cond_1
    iget-object v9, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    .end local v1    # "headerMessage":Ljava/lang/CharSequence;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 180
    .local v0, "activity":Landroid/app/Activity;
    const v9, 0x7f0e007d

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mKey1:Landroid/widget/ImageButton;

    .line 181
    iget-object v9, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mKey1:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    const v9, 0x7f0e007e

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mKey2:Landroid/widget/ImageButton;

    .line 184
    iget-object v9, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mKey2:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    const v9, 0x7f0e007f

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mKey3:Landroid/widget/ImageButton;

    .line 187
    iget-object v9, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mKey3:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    const v9, 0x7f0e0080

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mKey4:Landroid/widget/ImageButton;

    .line 190
    iget-object v9, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mKey4:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    const v9, 0x7f0e0081

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mKey5:Landroid/widget/ImageButton;

    .line 193
    iget-object v9, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mKey5:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    const v9, 0x7f0e0082

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mKey6:Landroid/widget/ImageButton;

    .line 196
    iget-object v9, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mKey6:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    const v9, 0x7f0e0083

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mKey7:Landroid/widget/ImageButton;

    .line 199
    iget-object v9, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mKey7:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    const v9, 0x7f0e0084

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mKey8:Landroid/widget/ImageButton;

    .line 202
    iget-object v9, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mKey8:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    const v9, 0x7f0e0085

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mKey9:Landroid/widget/ImageButton;

    .line 205
    iget-object v9, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mKey9:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    const v9, 0x7f0e0087

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mKey0:Landroid/widget/ImageButton;

    .line 208
    iget-object v9, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mKey0:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    const v9, 0x7f0e0088

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mDelete:Landroid/widget/ImageButton;

    .line 211
    iget-object v9, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mDelete:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    const v9, 0x7f0e0086

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mKey_c:Landroid/widget/ImageButton;

    .line 214
    iget-object v9, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mKey_c:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    const v9, 0x7f0e0078

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mPassword1:Landroid/widget/ImageView;

    .line 217
    const v9, 0x7f0e0079

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mPassword2:Landroid/widget/ImageView;

    .line 218
    const v9, 0x7f0e007a

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mPassword3:Landroid/widget/ImageView;

    .line 219
    const v9, 0x7f0e007b

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mPassword4:Landroid/widget/ImageView;

    .line 221
    const v9, 0x7f0e0089

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    iput-object v9, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mMixPwEntry:Landroid/widget/EditText;

    .line 223
    iget-object v9, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mMixPwEntry:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 224
    iget-object v9, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mMixPwEntry:Landroid/widget/EditText;

    const/16 v10, 0x81

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setInputType(I)V

    .line 226
    iget-object v9, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mMixPwEntry:Landroid/widget/EditText;

    invoke-virtual {v9, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 227
    iget-object v9, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mMixPwEntry:Landroid/widget/EditText;

    new-instance v10, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment$1;

    invoke-direct {v10, p0}, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment$1;-><init>(Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;)V

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 234
    invoke-virtual {p0}, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v8

    .line 235
    .local v8, "win":Landroid/view/Window;
    const/high16 v9, 0x20000

    invoke-virtual {v8, v9}, Landroid/view/Window;->addFlags(I)V

    .line 238
    const v9, 0x7f0e00a8

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mUpper:Landroid/widget/ImageButton;

    .line 239
    iget-object v9, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mUpper:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    const v9, 0x7f0e00b0

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mMixdel:Landroid/widget/ImageButton;

    .line 241
    iget-object v9, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mMixdel:Landroid/widget/ImageButton;

    invoke-virtual {v9, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    iget-object v9, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mMixdel:Landroid/widget/ImageButton;

    new-instance v10, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment$2;

    invoke-direct {v10, p0}, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment$2;-><init>(Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;)V

    invoke-virtual {v9, v10}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 252
    const v9, 0x7f0e0077

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mSimple_group:Landroid/view/View;

    .line 253
    const v9, 0x7f0e007c

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mPassword_keyboard:Landroid/view/View;

    .line 254
    const v9, 0x7f0e008a

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    iput-object v9, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mMix_keyboard:Landroid/view/ViewGroup;

    .line 256
    const v9, 0x7f0e00b1

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    iput-object v9, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mMixOk:Landroid/widget/Button;

    .line 257
    iget-object v9, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mMixOk:Landroid/widget/Button;

    invoke-virtual {v9, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    iget-object v9, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mMixOk:Landroid/widget/Button;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 264
    const/4 v9, 0x1

    invoke-virtual {p0}, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "vivo_mix_board"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v9, v10, :cond_5

    const/4 v9, 0x1

    :goto_1
    iput-boolean v9, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mShowNumBoard:Z

    .line 270
    iget-boolean v9, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mShowNumBoard:Z

    if-eqz v9, :cond_6

    .line 271
    invoke-direct {p0}, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mixToPin()V

    .line 275
    :goto_2
    instance-of v9, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v9, :cond_3

    move-object v4, v0

    .line 276
    check-cast v4, Lcom/android/settings/SettingsActivity;

    .line 277
    .local v4, "sa":Lcom/android/settings/SettingsActivity;
    const v2, 0x7f0b08e1

    .line 278
    .local v2, "id":I
    invoke-virtual {p0, v2}, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 279
    .local v6, "title":Ljava/lang/CharSequence;
    invoke-virtual {v4, v6}, Lcom/android/settings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 281
    .end local v2    # "id":I
    .end local v4    # "sa":Lcom/android/settings/SettingsActivity;
    .end local v6    # "title":Ljava/lang/CharSequence;
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "vivo_mix_maxlength"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 283
    return-object v7

    .line 155
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v8    # "win":Landroid/view/Window;
    :cond_4
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 264
    .restart local v0    # "activity":Landroid/app/Activity;
    .restart local v3    # "intent":Landroid/content/Intent;
    .restart local v8    # "win":Landroid/view/Window;
    :cond_5
    const/4 v9, 0x0

    goto :goto_1

    .line 273
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->pinToMix()V

    goto :goto_2
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 294
    invoke-super {p0}, Lcom/vivo/settings/VivoFragment;->onPause()V

    .line 296
    iget-object v0, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 298
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 300
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 305
    invoke-super {p0}, Lcom/vivo/settings/VivoFragment;->onResume()V

    .line 306
    const-string v4, "ConfirmVivoPinFragment"

    const-string v5, "onResume  "

    invoke-static {v4, v5}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-virtual {p0}, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "vivo_mix_password_keyguard_upper"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_1

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->gIsUpper:Z

    .line 309
    iget-boolean v2, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->gIsUpper:Z

    if-eqz v2, :cond_2

    .line 310
    iget-object v2, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mUpper:Landroid/widget/ImageButton;

    const v4, 0x7f020141

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 315
    :goto_1
    iget-object v2, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v0

    .line 316
    .local v0, "deadline":J
    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-eqz v2, :cond_3

    .line 317
    invoke-direct {p0, v0, v1}, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->handleAttemptLockout(J)V

    .line 323
    :goto_2
    iget-object v2, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v2

    if-nez v2, :cond_0

    .line 324
    invoke-virtual {p0}, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->finish()V

    .line 326
    :cond_0
    return-void

    .end local v0    # "deadline":J
    :cond_1
    move v2, v3

    .line 307
    goto :goto_0

    .line 312
    :cond_2
    iget-object v2, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mUpper:Landroid/widget/ImageButton;

    const v4, 0x7f02013c

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_1

    .line 319
    .restart local v0    # "deadline":J
    :cond_3
    iget-object v2, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->getDefaultHeader()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 320
    sput-boolean v3, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mPasswordEnable:Z

    .line 321
    iget-object v2, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mMixPwEntry:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    goto :goto_2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 330
    invoke-super {p0, p1}, Lcom/vivo/settings/VivoFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 331
    const-string v0, "confirm_lock_password_fragment.key_num_wrong_confirm_attempts"

    iget v1, p0, Lcom/android/settings/ConfirmVivoPin$ConfirmVivoPinFragment;->mNumWrongConfirmAttempts:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 332
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 688
    return-void
.end method
