.class public Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;
.super Lcom/vivo/settings/VivoFragment;
.source "ConfirmLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ConfirmLockPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmLockPatternFragment"
.end annotation


# static fields
.field private static final KEY_NUM_WRONG_ATTEMPTS:Ljava/lang/String; = "num_wrong_attempts"

.field private static final WRONG_PATTERN_CLEAR_TIMEOUT_MS:I = 0x7d0


# instance fields
.field private mClearPatternRunnable:Ljava/lang/Runnable;

.field private mConfirmExistingLockPatternListener:Lcom/android/settings/SetPatternView$OnPatternListener;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mFooterText:Ljava/lang/CharSequence;

.field private mFooterTextView:Landroid/widget/TextView;

.field private mFooterWrongText:Ljava/lang/CharSequence;

.field private mHeaderText:Ljava/lang/CharSequence;

.field private mHeaderTextView:Landroid/widget/TextView;

.field private mHeaderWrongText:Ljava/lang/CharSequence;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockPatternView:Lcom/android/settings/SetPatternView;

.field private mNumWrongConfirmAttempts:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/vivo/settings/VivoFragment;-><init>()V

    .line 251
    new-instance v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$1;-><init>(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)V

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    .line 268
    new-instance v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$2;-><init>(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)V

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mConfirmExistingLockPatternListener:Lcom/android/settings/SetPatternView$OnPatternListener;

    .line 114
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/settings/SetPatternView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/settings/SetPatternView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;
    .param p1, "x1"    # I

    .prologue
    .line 90
    iput p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mNumWrongConfirmAttempts:I

    return p1
.end method

.method static synthetic access$304(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    .prologue
    .line 90
    iget v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mNumWrongConfirmAttempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mNumWrongConfirmAttempts:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;
    .param p1, "x1"    # J

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->handleAttemptLockout(J)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;Lcom/android/settings/ConfirmLockPattern$Stage;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;
    .param p1, "x1"    # Lcom/android/settings/ConfirmLockPattern$Stage;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/settings/ConfirmLockPattern$Stage;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->postClearPatternRunnable()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mFooterTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method private handleAttemptLockout(J)V
    .locals 9
    .param p1, "elapsedRealtimeDeadline"    # J

    .prologue
    .line 315
    sget-object v0, Lcom/android/settings/ConfirmLockPattern$Stage;->LockedOut:Lcom/android/settings/ConfirmLockPattern$Stage;

    invoke-direct {p0, v0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/settings/ConfirmLockPattern$Stage;)V

    .line 316
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 317
    .local v6, "elapsedRealtime":J
    new-instance v0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$3;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$3;-><init>(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;JJ)V

    invoke-virtual {v0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$3;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 339
    return-void
.end method

.method private postClearPatternRunnable()V
    .locals 4

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/settings/SetPatternView;

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/settings/SetPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 261
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/settings/SetPatternView;

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/SetPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 262
    return-void
.end method

.method private updateStage(Lcom/android/settings/ConfirmLockPattern$Stage;)V
    .locals 4
    .param p1, "stage"    # Lcom/android/settings/ConfirmLockPattern$Stage;

    .prologue
    const/4 v3, 0x1

    .line 203
    sget-object v0, Lcom/android/settings/ConfirmLockPattern$1;->$SwitchMap$com$android$settings$ConfirmLockPattern$Stage:[I

    invoke-virtual {p1}, Lcom/android/settings/ConfirmLockPattern$Stage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 248
    :goto_0
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 249
    return-void

    .line 205
    :pswitch_0
    const-string v0, "ConfirmLockPattern"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHeaderText = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    :goto_1
    const-string v0, "ConfirmLockPattern"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFooterText = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mFooterText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mFooterText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mFooterTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mFooterText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    :goto_2
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/settings/SetPatternView;

    invoke-virtual {v0, v3}, Lcom/android/settings/SetPatternView;->setEnabled(Z)V

    .line 220
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/settings/SetPatternView;

    invoke-virtual {v0}, Lcom/android/settings/SetPatternView;->enableInput()V

    goto :goto_0

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    const v1, 0x7f0b032c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mFooterTextView:Landroid/widget/TextView;

    const-string v1, " "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    const-string v0, "ConfirmLockPattern"

    const-string v1, "mFooterText = null"

    invoke-static {v0, v1}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 223
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderWrongText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 224
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderWrongText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    :goto_3
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mFooterWrongText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 229
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mFooterTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mFooterWrongText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    :goto_4
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/settings/SetPatternView;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/settings/SetPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 235
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/settings/SetPatternView;

    invoke-virtual {v0, v3}, Lcom/android/settings/SetPatternView;->setEnabled(Z)V

    .line 236
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/settings/SetPatternView;

    invoke-virtual {v0}, Lcom/android/settings/SetPatternView;->enableInput()V

    goto/16 :goto_0

    .line 226
    :cond_2
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    const v1, 0x7f0b08a0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 231
    :cond_3
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mFooterTextView:Landroid/widget/TextView;

    const v1, 0x7f0b032e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4

    .line 239
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/settings/SetPatternView;

    invoke-virtual {v0}, Lcom/android/settings/SetPatternView;->clearPattern()V

    .line 242
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/settings/SetPatternView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/SetPatternView;->setEnabled(Z)V

    goto/16 :goto_0

    .line 203
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 118
    invoke-super {p0, p1}, Lcom/vivo/settings/VivoFragment;->onCreate(Landroid/os/Bundle;)V

    .line 120
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 125
    const v3, 0x7f04002a

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 126
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/settings/SettingsActivity;

    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b07c5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/SettingsActivity;->setTitleLeftButtonText(Ljava/lang/CharSequence;)V

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v3}, Lcom/android/settings/SettingsActivity;->showTitleLeftButton()V

    .line 128
    const v3, 0x7f0e0048

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    .line 129
    const v3, 0x7f0e004e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/settings/SetPatternView;

    iput-object v3, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/settings/SetPatternView;

    .line 130
    const v3, 0x7f0e004f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mFooterTextView:Landroid/widget/TextView;

    .line 134
    const v3, 0x7f0e004d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;

    .line 136
    .local v1, "topLayout":Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;
    iget-object v3, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/settings/SetPatternView;

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->setDefaultTouchRecepient(Landroid/view/View;)V

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 139
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 140
    const-string v3, "com.android.settings.ConfirmLockPattern.header"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderText:Ljava/lang/CharSequence;

    .line 141
    const-string v3, "com.android.settings.ConfirmLockPattern.footer"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mFooterText:Ljava/lang/CharSequence;

    .line 142
    const-string v3, "com.android.settings.ConfirmLockPattern.header_wrong"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderWrongText:Ljava/lang/CharSequence;

    .line 143
    const-string v3, "com.android.settings.ConfirmLockPattern.footer_wrong"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mFooterWrongText:Ljava/lang/CharSequence;

    .line 145
    :cond_0
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 147
    iget-object v4, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/settings/SetPatternView;

    iget-object v3, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v4, v3}, Lcom/android/settings/SetPatternView;->setInStealthMode(Z)V

    .line 148
    iget-object v3, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/settings/SetPatternView;

    iget-object v4, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/settings/SetPatternView;->setTactileFeedbackEnabled(Z)V

    .line 149
    iget-object v3, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/settings/SetPatternView;

    iget-object v4, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mConfirmExistingLockPatternListener:Lcom/android/settings/SetPatternView$OnPatternListener;

    invoke-virtual {v3, v4}, Lcom/android/settings/SetPatternView;->setOnPatternListener(Lcom/android/settings/SetPatternView$OnPatternListener;)V

    .line 150
    sget-object v3, Lcom/android/settings/ConfirmLockPattern$Stage;->NeedToUnlock:Lcom/android/settings/ConfirmLockPattern$Stage;

    invoke-direct {p0, v3}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/settings/ConfirmLockPattern$Stage;)V

    .line 152
    if-eqz p3, :cond_3

    .line 153
    const-string v3, "num_wrong_attempts"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mNumWrongConfirmAttempts:I

    .line 163
    :cond_1
    :goto_1
    return-object v2

    .line 147
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 158
    :cond_3
    iget-object v3, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->savedPatternExists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setResult(I)V

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto :goto_1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 174
    invoke-super {p0}, Lcom/vivo/settings/VivoFragment;->onPause()V

    .line 176
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 179
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 183
    invoke-super {p0}, Lcom/vivo/settings/VivoFragment;->onResume()V

    .line 186
    iget-object v2, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v0

    .line 187
    .local v0, "deadline":J
    const-string v2, "ConfirmLockPattern"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deadline =   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    .line 189
    invoke-direct {p0, v0, v1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->handleAttemptLockout(J)V

    .line 197
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v2

    if-nez v2, :cond_1

    .line 198
    invoke-virtual {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->finish()V

    .line 200
    :cond_1
    return-void

    .line 190
    :cond_2
    iget-object v2, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/settings/SetPatternView;

    invoke-virtual {v2}, Lcom/android/settings/SetPatternView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 193
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mNumWrongConfirmAttempts:I

    .line 194
    sget-object v2, Lcom/android/settings/ConfirmLockPattern$Stage;->NeedToUnlock:Lcom/android/settings/ConfirmLockPattern$Stage;

    invoke-direct {p0, v2}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/settings/ConfirmLockPattern$Stage;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 169
    const-string v0, "num_wrong_attempts"

    iget v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->mNumWrongConfirmAttempts:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 170
    return-void
.end method
