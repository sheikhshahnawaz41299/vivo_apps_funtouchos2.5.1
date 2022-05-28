.class public Lcom/android/keyguard/VivoPasswordView;
.super Lcom/android/keyguard/VivoBaseView;
.source "VivoPasswordView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/keyguard/KeyguardSecurityView;


# static fields
.field private static final FINGERFAIL:I = 0x0

.field protected static final MINIMUM_PASSWORD_LENGTH_BEFORE_REPORT:I = 0x1

.field private static final SETCLOCK_CENTER:I = 0x3

.field private static final SHOW_LOCKSCREEN:I = 0x5

.field private static final TAG:Ljava/lang/String; = "VivoPasswordView"

.field private static final UPDATA_BACKBROUND:I = 0x4

.field private static final UPDATE_MESSAGE_AREA:I = 0x2

.field private static mOpEntry:Ljava/lang/String;


# instance fields
.field private final ADD:I

.field private final SUB:I

.field public gIsUpper:Z

.field private final mAppearAnimationUtils:Lcom/android/keyguard/AppearAnimationUtils;

.field mBatteryLevel:I

.field private mBouncerFrame:Landroid/graphics/drawable/Drawable;

.field protected mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mCharP:Landroid/widget/Button;

.field private mCharQ:Landroid/widget/Button;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mDateView:Landroid/widget/TextView;

.field private mDelete:Landroid/widget/ImageButton;

.field private mDigitalClock:Lcom/android/keyguard/vivo/widget/ImageDigitalClock;

.field private mDisappearYTranslation:I

.field protected mEcaView:Landroid/view/View;

.field private mEmergency:Landroid/widget/Button;

.field private mEntry_cmcc:Ljava/lang/Boolean;

.field private mHandler:Landroid/os/Handler;

.field private mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mKeyguardBouncerFrame:Landroid/view/ViewGroup;

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mKeyguardUtils:Lcom/android/keyguard/KeyguardUtils;

.field protected mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMixOk:Landroid/widget/Button;

.field protected mMixPwEntry:Landroid/widget/TextView;

.field private mMix_keyboard:Landroid/view/ViewGroup;

.field private mNum0:Landroid/widget/Button;

.field private mNum1:Landroid/widget/Button;

.field private mPadDirectionLeftBtn:Landroid/widget/ImageButton;

.field private mPadDirectionRightBtn:Landroid/widget/ImageButton;

.field private mPadResumeLeftBtn:Landroid/widget/ImageButton;

.field private mPadResumeRightBtn:Landroid/widget/ImageButton;

.field private mPinVewDirection:I

.field protected mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

.field protected mSecurityMessageTitle:Lcom/android/keyguard/SecurityMessageDisplay;

.field private mSpeedObserver:Landroid/database/ContentObserver;

.field private mUpper:Landroid/widget/ImageButton;

.field private mVivoPasswordView:Lcom/android/keyguard/VivoPasswordView;

.field private mWeekView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 132
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/VivoPasswordView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 136
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/VivoBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 119
    iput v1, p0, Lcom/android/keyguard/VivoPasswordView;->ADD:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/keyguard/VivoPasswordView;->SUB:I

    .line 121
    iput v1, p0, Lcom/android/keyguard/VivoPasswordView;->mPinVewDirection:I

    .line 123
    iput v1, p0, Lcom/android/keyguard/VivoPasswordView;->mBatteryLevel:I

    .line 126
    iput-boolean v1, p0, Lcom/android/keyguard/VivoPasswordView;->gIsUpper:Z

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 128
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mEntry_cmcc:Ljava/lang/Boolean;

    .line 503
    new-instance v0, Lcom/android/keyguard/VivoPasswordView$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/VivoPasswordView$4;-><init>(Lcom/android/keyguard/VivoPasswordView;)V

    iput-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 529
    new-instance v0, Lcom/android/keyguard/VivoPasswordView$5;

    invoke-direct {v0, p0}, Lcom/android/keyguard/VivoPasswordView$5;-><init>(Lcom/android/keyguard/VivoPasswordView;)V

    iput-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mHandler:Landroid/os/Handler;

    .line 809
    new-instance v0, Lcom/android/keyguard/VivoPasswordView$9;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/VivoPasswordView$9;-><init>(Lcom/android/keyguard/VivoPasswordView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mSpeedObserver:Landroid/database/ContentObserver;

    .line 139
    new-instance v0, Lcom/android/keyguard/AppearAnimationUtils;

    invoke-direct {v0, p1}, Lcom/android/keyguard/AppearAnimationUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mAppearAnimationUtils:Lcom/android/keyguard/AppearAnimationUtils;

    .line 140
    invoke-virtual {p0}, Lcom/android/keyguard/VivoPasswordView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$dimen;->disappear_y_translation:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/VivoPasswordView;->mDisappearYTranslation:I

    .line 142
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 143
    new-instance v0, Lcom/android/keyguard/KeyguardUtils;

    invoke-direct {v0, p1}, Lcom/android/keyguard/KeyguardUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mKeyguardUtils:Lcom/android/keyguard/KeyguardUtils;

    .line 144
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/VivoPasswordView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/VivoPasswordView;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mWeekView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/VivoPasswordView;)Lcom/android/keyguard/KeyguardUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/VivoPasswordView;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mKeyguardUtils:Lcom/android/keyguard/KeyguardUtils;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/VivoPasswordView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/VivoPasswordView;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mDateView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/VivoPasswordView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/VivoPasswordView;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/VivoPasswordView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/VivoPasswordView;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/keyguard/VivoPasswordView;->passwordbgAnim()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/keyguard/VivoPasswordView;)Lcom/android/keyguard/vivo/widget/ImageDigitalClock;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/VivoPasswordView;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mDigitalClock:Lcom/android/keyguard/vivo/widget/ImageDigitalClock;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/VivoPasswordView;)Lcom/android/keyguard/VivoPasswordView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/VivoPasswordView;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mVivoPasswordView:Lcom/android/keyguard/VivoPasswordView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/VivoPasswordView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/VivoPasswordView;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/keyguard/VivoPasswordView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/VivoPasswordView;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private passwordbgAnim()V
    .locals 4

    .prologue
    .line 629
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 630
    .local v0, "animator":Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 631
    new-instance v1, Lcom/android/keyguard/VivoPasswordView$6;

    invoke-direct {v1, p0}, Lcom/android/keyguard/VivoPasswordView$6;-><init>(Lcom/android/keyguard/VivoPasswordView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 640
    new-instance v1, Lcom/android/keyguard/VivoPasswordView$7;

    invoke-direct {v1, p0}, Lcom/android/keyguard/VivoPasswordView$7;-><init>(Lcom/android/keyguard/VivoPasswordView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 647
    new-instance v1, Lcom/android/keyguard/VivoPasswordView$8;

    invoke-direct {v1, p0}, Lcom/android/keyguard/VivoPasswordView$8;-><init>(Lcom/android/keyguard/VivoPasswordView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 676
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 677
    return-void

    .line 629
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private setMixText(Landroid/view/ViewGroup;)V
    .locals 7
    .param p1, "v"    # Landroid/view/ViewGroup;

    .prologue
    .line 789
    const-string v4, "VivoPasswordView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "gIsUpper = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/keyguard/VivoPasswordView;->gIsUpper:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-gt v0, v4, :cond_3

    .line 791
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 792
    .local v3, "vivomixkey":Landroid/view/View;
    instance-of v4, v3, Lcom/android/keyguard/VivoMixKey;

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v4

    sget v5, Lcom/android/keyguard/R$id;->vivo_mix_ok:I

    if-eq v4, v5, :cond_2

    move-object v4, v3

    .line 793
    check-cast v4, Lcom/android/keyguard/VivoMixKey;

    invoke-virtual {v4}, Lcom/android/keyguard/VivoMixKey;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 794
    .local v1, "txt":Ljava/lang/String;
    iget-boolean v4, p0, Lcom/android/keyguard/VivoPasswordView;->gIsUpper:Z

    if-eqz v4, :cond_1

    .line 795
    check-cast v3, Lcom/android/keyguard/VivoMixKey;

    .end local v3    # "vivomixkey":Landroid/view/View;
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/keyguard/VivoMixKey;->setText(Ljava/lang/CharSequence;)V

    .line 796
    const-string v4, "VivoPasswordView"

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

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    .end local v1    # "txt":Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 798
    .restart local v1    # "txt":Ljava/lang/String;
    .restart local v3    # "vivomixkey":Landroid/view/View;
    :cond_1
    check-cast v3, Lcom/android/keyguard/VivoMixKey;

    .end local v3    # "vivomixkey":Landroid/view/View;
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/keyguard/VivoMixKey;->setText(Ljava/lang/CharSequence;)V

    .line 799
    const-string v4, "VivoPasswordView"

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

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 802
    .end local v1    # "txt":Ljava/lang/String;
    .restart local v3    # "vivomixkey":Landroid/view/View;
    :cond_2
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    move-object v2, v3

    .line 803
    check-cast v2, Landroid/view/ViewGroup;

    .line 804
    .local v2, "vg":Landroid/view/ViewGroup;
    invoke-direct {p0, v2}, Lcom/android/keyguard/VivoPasswordView;->setMixText(Landroid/view/ViewGroup;)V

    goto :goto_1

    .line 807
    .end local v2    # "vg":Landroid/view/ViewGroup;
    .end local v3    # "vivomixkey":Landroid/view/View;
    :cond_3
    return-void
.end method

.method private showDefautMessage()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 165
    invoke-static {}, Lcom/android/keyguard/KeyguardUtils;->getFingerMessageShow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mContext:Landroid/content/Context;

    const-string v1, "finger_unlock_open"

    invoke-static {v0, v1, v2}, Lcom/android/keyguard/KeyguardUtils;->settingsGetInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mSecurityMessageTitle:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v1, Lcom/android/keyguard/R$string;->use_fingerprint_or_password:I

    invoke-interface {v0, v1, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-virtual {p0}, Lcom/android/keyguard/VivoPasswordView;->getWrongPasswordStringId()I

    move-result v1

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 171
    :cond_1
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 767
    iget-object v1, p0, Lcom/android/keyguard/VivoPasswordView;->mMixPwEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 768
    .local v0, "mixlen":I
    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 771
    iget-object v1, p0, Lcom/android/keyguard/VivoPasswordView;->mMixOk:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/keyguard/VivoPasswordView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->keyboardview_keycode_done:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 778
    :goto_0
    return-void

    .line 775
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/VivoPasswordView;->mMixOk:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/keyguard/VivoPasswordView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->back:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public bridge synthetic animatorIsRuning()Z
    .locals 1

    .prologue
    .line 91
    invoke-super {p0}, Lcom/android/keyguard/VivoBaseView;->animatorIsRuning()Z

    move-result v0

    return v0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 782
    return-void
.end method

.method public bridge synthetic clickResume(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/View;
    .param p2, "x1"    # Landroid/view/View;
    .param p3, "x2"    # Landroid/view/View;
    .param p4, "x3"    # Landroid/view/View;
    .param p5, "x4"    # Landroid/view/View;

    .prologue
    .line 91
    invoke-super/range {p0 .. p5}, Lcom/android/keyguard/VivoBaseView;->clickResume(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic getAnin()Landroid/animation/AnimatorSet;
    .locals 1

    .prologue
    .line 91
    invoke-super {p0}, Lcom/android/keyguard/VivoBaseView;->getAnin()Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAutoStatus()Z
    .locals 1

    .prologue
    .line 91
    invoke-super {p0}, Lcom/android/keyguard/VivoBaseView;->getAutoStatus()Z

    move-result v0

    return v0
.end method

.method public getCallback()Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method public bridge synthetic getEyeStatus()Z
    .locals 1

    .prologue
    .line 91
    invoke-super {p0}, Lcom/android/keyguard/VivoBaseView;->getEyeStatus()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getFinger()Z
    .locals 1

    .prologue
    .line 91
    invoke-super {p0}, Lcom/android/keyguard/VivoBaseView;->getFinger()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getGesture()I
    .locals 1

    .prologue
    .line 91
    invoke-super {p0}, Lcom/android/keyguard/VivoBaseView;->getGesture()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getOnehandStatus()Z
    .locals 1

    .prologue
    .line 91
    invoke-super {p0}, Lcom/android/keyguard/VivoBaseView;->getOnehandStatus()Z

    move-result v0

    return v0
.end method

.method protected getPasswordTextViewId()I
    .locals 1

    .prologue
    .line 175
    sget v0, Lcom/android/keyguard/R$id;->pinEntry:I

    return v0
.end method

.method public bridge synthetic getPinStatus()Z
    .locals 1

    .prologue
    .line 91
    invoke-super {p0}, Lcom/android/keyguard/VivoBaseView;->getPinStatus()Z

    move-result v0

    return v0
.end method

.method protected getWrongPasswordStringId()I
    .locals 1

    .prologue
    .line 625
    sget v0, Lcom/android/keyguard/R$string;->kg_wrong_password:I

    return v0
.end method

.method protected handleAttemptLockout(J)V
    .locals 9
    .param p1, "elapsedRealtimeDeadline"    # J

    .prologue
    .line 461
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 462
    .local v6, "elapsedRealtime":J
    new-instance v0, Lcom/android/keyguard/VivoPasswordView$3;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/VivoPasswordView$3;-><init>(Lcom/android/keyguard/VivoPasswordView;JJ)V

    invoke-virtual {v0}, Lcom/android/keyguard/VivoPasswordView$3;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 481
    return-void
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 357
    const/4 v0, 0x0

    return v0
.end method

.method public hideBouncer(I)V
    .locals 3
    .param p1, "duration"    # I

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/keyguard/VivoPasswordView;->mEcaView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/VivoPasswordView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->hideBouncer(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 370
    return-void
.end method

.method public bridge synthetic hideView(Landroid/view/View;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/View;

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/android/keyguard/VivoBaseView;->hideView(Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic isFingerprintAuthAvailable()Z
    .locals 1

    .prologue
    .line 91
    invoke-super {p0}, Lcom/android/keyguard/VivoBaseView;->isFingerprintAuthAvailable()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic moveLefOrRight(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;I)V
    .locals 0
    .param p1, "x0"    # Landroid/view/View;
    .param p2, "x1"    # Landroid/view/View;
    .param p3, "x2"    # Landroid/view/View;
    .param p4, "x3"    # Landroid/view/View;
    .param p5, "x4"    # Landroid/view/View;
    .param p6, "x5"    # Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .param p7, "x6"    # I

    .prologue
    .line 91
    invoke-super/range {p0 .. p7}, Lcom/android/keyguard/VivoBaseView;->moveLefOrRight(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;I)V

    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 379
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 485
    const-string v0, "VivoPasswordView"

    const-string v1, "onAttachedToWindow "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/VivoPasswordView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 487
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUtils;->getEyeLock(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    invoke-virtual {p0}, Lcom/android/keyguard/VivoPasswordView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "EyeIdentify_VerifyResult"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/keyguard/VivoPasswordView;->mSpeedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 490
    :cond_0
    invoke-super {p0}, Lcom/android/keyguard/VivoBaseView;->onAttachedToWindow()V

    .line 491
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v7, 0x12c

    const/16 v6, 0x8

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 679
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 680
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v8

    .line 682
    .local v8, "getid":I
    sget v0, Lcom/android/keyguard/R$id;->vivo_password_resume_left:I

    if-eq v8, v0, :cond_0

    sget v0, Lcom/android/keyguard/R$id;->vivo_password_resume_right:I

    if-ne v8, v0, :cond_4

    .line 683
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/VivoPasswordView;->mMix_keyboard:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/keyguard/VivoPasswordView;->mPadResumeLeftBtn:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/android/keyguard/VivoPasswordView;->mPadDirectionLeftBtn:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/android/keyguard/VivoPasswordView;->mPadResumeRightBtn:Landroid/widget/ImageButton;

    iget-object v5, p0, Lcom/android/keyguard/VivoPasswordView;->mPadDirectionRightBtn:Landroid/widget/ImageButton;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/keyguard/VivoPasswordView;->clickResume(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 684
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mPadResumeLeftBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 685
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mPadDirectionLeftBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 687
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mPadResumeRightBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 688
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mPadDirectionRightBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 690
    sput-boolean v10, Lcom/android/keyguard/VivoPasswordView;->mCurPadNormal:Z

    .line 692
    invoke-virtual {p0, v11}, Lcom/android/keyguard/VivoPasswordView;->setPinStatus(Z)V

    .line 710
    :cond_1
    :goto_0
    sget v0, Lcom/android/keyguard/R$id;->mix_del:I

    if-ne v8, v0, :cond_6

    .line 711
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mMixPwEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v9

    .line 712
    .local v9, "mixlen":I
    if-lez v9, :cond_2

    .line 713
    const-string v0, "VivoPasswordView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMixPwEntry.getText().length() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/VivoPasswordView;->mMixPwEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mMixPwEntry:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/VivoPasswordView;->mMixPwEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    add-int/lit8 v2, v9, -0x1

    invoke-interface {v1, v11, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 716
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mMixPwEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Lcom/android/keyguard/VivoPasswordView;->mMixPwEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 736
    .end local v9    # "mixlen":I
    :cond_3
    :goto_1
    return-void

    .line 694
    :cond_4
    sget v0, Lcom/android/keyguard/R$id;->vivo_password_direction_left:I

    if-ne v8, v0, :cond_5

    .line 695
    const-string v0, "VivoPasswordView"

    const-string v1, "onclick bbk_pattern_pad_direction_left"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    iput v10, p0, Lcom/android/keyguard/VivoPasswordView;->mDragDirection:I

    .line 697
    iget v0, p0, Lcom/android/keyguard/VivoPasswordView;->mDragDirection:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/VivoPasswordView;->setGesture(I)V

    .line 698
    iget-object v1, p0, Lcom/android/keyguard/VivoPasswordView;->mMix_keyboard:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/keyguard/VivoPasswordView;->mPadResumeLeftBtn:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/android/keyguard/VivoPasswordView;->mPadDirectionLeftBtn:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/android/keyguard/VivoPasswordView;->mPadResumeRightBtn:Landroid/widget/ImageButton;

    iget-object v5, p0, Lcom/android/keyguard/VivoPasswordView;->mPadDirectionRightBtn:Landroid/widget/ImageButton;

    sget-object v6, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/keyguard/VivoPasswordView;->moveLefOrRight(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;I)V

    .line 701
    invoke-virtual {p0, v10}, Lcom/android/keyguard/VivoPasswordView;->setPinStatus(Z)V

    goto :goto_0

    .line 702
    :cond_5
    sget v0, Lcom/android/keyguard/R$id;->vivo_password_direction_right:I

    if-ne v8, v0, :cond_1

    .line 703
    const-string v0, "VivoPasswordView"

    const-string v1, "onclick bbk_pattern_pad_direction_right"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/keyguard/VivoPasswordView;->mDragDirection:I

    .line 705
    iget v0, p0, Lcom/android/keyguard/VivoPasswordView;->mDragDirection:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/VivoPasswordView;->setGesture(I)V

    .line 706
    iget-object v1, p0, Lcom/android/keyguard/VivoPasswordView;->mMix_keyboard:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/keyguard/VivoPasswordView;->mPadResumeLeftBtn:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/android/keyguard/VivoPasswordView;->mPadDirectionLeftBtn:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/android/keyguard/VivoPasswordView;->mPadResumeRightBtn:Landroid/widget/ImageButton;

    iget-object v5, p0, Lcom/android/keyguard/VivoPasswordView;->mPadDirectionRightBtn:Landroid/widget/ImageButton;

    sget-object v6, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/keyguard/VivoPasswordView;->moveLefOrRight(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;I)V

    .line 709
    invoke-virtual {p0, v10}, Lcom/android/keyguard/VivoPasswordView;->setPinStatus(Z)V

    goto/16 :goto_0

    .line 717
    :cond_6
    sget v0, Lcom/android/keyguard/R$id;->vivo_mix_ok:I

    if-ne v8, v0, :cond_8

    .line 718
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mMixPwEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lt v0, v10, :cond_7

    .line 719
    invoke-virtual {p0}, Lcom/android/keyguard/VivoPasswordView;->verifyPasswordAndUnlock()V

    goto :goto_1

    .line 721
    :cond_7
    const-string v0, "VivoPasswordView"

    const-string v1, "onclick ok mCallback.showLockScreen()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->showLockScreen()V

    goto :goto_1

    .line 724
    :cond_8
    sget v0, Lcom/android/keyguard/R$id;->key_up:I

    if-ne v8, v0, :cond_3

    .line 725
    iget-boolean v0, p0, Lcom/android/keyguard/VivoPasswordView;->gIsUpper:Z

    if-nez v0, :cond_9

    move v0, v10

    :goto_2
    iput-boolean v0, p0, Lcom/android/keyguard/VivoPasswordView;->gIsUpper:Z

    .line 726
    iget-boolean v0, p0, Lcom/android/keyguard/VivoPasswordView;->gIsUpper:Z

    if-eqz v0, :cond_a

    .line 727
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mUpper:Landroid/widget/ImageButton;

    sget v1, Lcom/android/keyguard/R$drawable;->vivo_pin_upper:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 728
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "vivo_mix_password_keyguard_upper"

    invoke-static {v0, v1, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_9
    move v0, v11

    .line 725
    goto :goto_2

    .line 730
    :cond_a
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mUpper:Landroid/widget/ImageButton;

    sget v1, Lcom/android/keyguard/R$drawable;->vivo_pin_lower:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 731
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "vivo_mix_password_keyguard_upper"

    invoke-static {v0, v1, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 495
    const-string v0, "VivoPasswordView"

    const-string v1, "onDetachedFromWindow "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/VivoPasswordView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 497
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUtils;->getEyeLock(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 498
    invoke-virtual {p0}, Lcom/android/keyguard/VivoPasswordView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/VivoPasswordView;->mSpeedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 500
    :cond_0
    invoke-super {p0}, Lcom/android/keyguard/VivoBaseView;->onDetachedFromWindow()V

    .line 501
    return-void
.end method

.method protected onFinishInflate()V
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 180
    invoke-super {p0}, Lcom/android/keyguard/VivoBaseView;->onFinishInflate()V

    .line 181
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/keyguard/VivoPasswordView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 182
    new-instance v0, Lcom/android/keyguard/KeyguardMessageArea$Helper;

    sget v1, Lcom/android/keyguard/R$id;->keyguard_message_area:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/VivoPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    .line 183
    new-instance v0, Lcom/android/keyguard/KeyguardMessageArea$Helper;

    sget v1, Lcom/android/keyguard/R$id;->vivo_message_title:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/VivoPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mSecurityMessageTitle:Lcom/android/keyguard/SecurityMessageDisplay;

    .line 184
    sget v0, Lcom/android/keyguard/R$id;->keyguard_selector_fade_container:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/VivoPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mEcaView:Landroid/view/View;

    .line 186
    sget v0, Lcom/android/keyguard/R$id;->date:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/VivoPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mDateView:Landroid/widget/TextView;

    .line 187
    sget v0, Lcom/android/keyguard/R$id;->Week:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/VivoPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mWeekView:Landroid/widget/TextView;

    .line 188
    sget v0, Lcom/android/keyguard/R$id;->vivo_password_view:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/VivoPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/VivoPasswordView;

    iput-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mVivoPasswordView:Lcom/android/keyguard/VivoPasswordView;

    .line 192
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mVivoPasswordView:Lcom/android/keyguard/VivoPasswordView;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/VivoPasswordView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 198
    sget v0, Lcom/android/keyguard/R$id;->password_emergency:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/VivoPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mEmergency:Landroid/widget/Button;

    .line 199
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mEmergency:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 201
    sget v0, Lcom/android/keyguard/R$id;->num0:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/VivoPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mNum0:Landroid/widget/Button;

    .line 202
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mNum0:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 204
    sget v0, Lcom/android/keyguard/R$id;->num1:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/VivoPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mNum1:Landroid/widget/Button;

    .line 205
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mNum1:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 207
    sget v0, Lcom/android/keyguard/R$id;->char_q:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/VivoPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mCharQ:Landroid/widget/Button;

    .line 208
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mCharQ:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 210
    sget v0, Lcom/android/keyguard/R$id;->char_p:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/VivoPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mCharP:Landroid/widget/Button;

    .line 211
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mCharP:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 213
    sget v0, Lcom/android/keyguard/R$id;->MixPwEntry:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/VivoPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mMixPwEntry:Landroid/widget/TextView;

    .line 214
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mMixPwEntry:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 215
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mMixPwEntry:Landroid/widget/TextView;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 217
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mMixPwEntry:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 218
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mMixPwEntry:Landroid/widget/TextView;

    new-instance v1, Lcom/android/keyguard/VivoPasswordView$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/VivoPasswordView$1;-><init>(Lcom/android/keyguard/VivoPasswordView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 225
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mMixPwEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 226
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "vivo_mix_password_keyguard_upper"

    invoke-static {v0, v1, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    move v0, v9

    :goto_0
    iput-boolean v0, p0, Lcom/android/keyguard/VivoPasswordView;->gIsUpper:Z

    .line 228
    sget v0, Lcom/android/keyguard/R$id;->mix_keyboard:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/VivoPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mMix_keyboard:Landroid/view/ViewGroup;

    .line 230
    sget v0, Lcom/android/keyguard/R$id;->key_up:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/VivoPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mUpper:Landroid/widget/ImageButton;

    .line 231
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mUpper:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mUpper:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 233
    iget-boolean v0, p0, Lcom/android/keyguard/VivoPasswordView;->gIsUpper:Z

    if-eqz v0, :cond_2

    .line 234
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mUpper:Landroid/widget/ImageButton;

    sget v1, Lcom/android/keyguard/R$drawable;->vivo_pin_upper:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 238
    :goto_1
    sget v0, Lcom/android/keyguard/R$id;->vivo_mix_ok:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/VivoPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mMixOk:Landroid/widget/Button;

    .line 239
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mMixOk:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mMixOk:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 242
    sget v0, Lcom/android/keyguard/R$id;->mix_del:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/VivoPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mDelete:Landroid/widget/ImageButton;

    .line 243
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mDelete:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mDelete:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 245
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mDelete:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mDelete:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/keyguard/VivoPasswordView$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/VivoPasswordView$2;-><init>(Lcom/android/keyguard/VivoPasswordView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 254
    sget v0, Lcom/android/keyguard/R$id;->vivo_password_resume_left:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/VivoPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mPadResumeLeftBtn:Landroid/widget/ImageButton;

    .line 255
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mPadResumeLeftBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    sget v0, Lcom/android/keyguard/R$id;->vivo_password_direction_left:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/VivoPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mPadDirectionLeftBtn:Landroid/widget/ImageButton;

    .line 258
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mPadDirectionLeftBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    sget v0, Lcom/android/keyguard/R$id;->vivo_password_resume_right:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/VivoPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mPadResumeRightBtn:Landroid/widget/ImageButton;

    .line 261
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mPadResumeRightBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    sget v0, Lcom/android/keyguard/R$id;->vivo_password_direction_right:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/VivoPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mPadDirectionRightBtn:Landroid/widget/ImageButton;

    .line 264
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mPadDirectionRightBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    invoke-virtual {p0}, Lcom/android/keyguard/VivoPasswordView;->getGesture()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/VivoPasswordView;->mDragDirection:I

    .line 267
    const-string v0, "VivoPasswordView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFinishInflate MINIFICATION = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/VivoPasswordView;->MINIFICATION:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget v0, p0, Lcom/android/keyguard/VivoPasswordView;->mDragDirection:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/VivoPasswordView;->getPinStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/VivoPasswordView;->mPinVewDirection:I

    iget v1, p0, Lcom/android/keyguard/VivoPasswordView;->mDragDirection:I

    if-eq v0, v1, :cond_0

    .line 270
    iget-object v1, p0, Lcom/android/keyguard/VivoPasswordView;->mMix_keyboard:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/keyguard/VivoPasswordView;->mPadResumeLeftBtn:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/android/keyguard/VivoPasswordView;->mPadDirectionLeftBtn:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/android/keyguard/VivoPasswordView;->mPadResumeRightBtn:Landroid/widget/ImageButton;

    iget-object v5, p0, Lcom/android/keyguard/VivoPasswordView;->mPadDirectionRightBtn:Landroid/widget/ImageButton;

    sget-object v6, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const/16 v7, 0x12c

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/keyguard/VivoPasswordView;->moveLefOrRight(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;I)V

    .line 275
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/VivoPasswordView;->getPinStatus()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 276
    sput-boolean v9, Lcom/android/keyguard/VivoPasswordView;->mCurPadNormal:Z

    .line 281
    :goto_2
    const-string v0, "persist.vivo.netlock"

    const-string v1, "no"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 282
    .local v8, "netlock":Ljava/lang/String;
    const-string v0, "ro.vivo.op.entry"

    const-string v1, "no"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/VivoPasswordView;->mOpEntry:Ljava/lang/String;

    .line 283
    const-string v0, "VivoPasswordView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshNetlock mOpEntry:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/VivoPasswordView;->mOpEntry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " netlock:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const-string v0, "no"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 286
    sget-object v0, Lcom/android/keyguard/VivoPasswordView;->mOpEntry:Ljava/lang/String;

    const-string v1, "CMCC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mEntry_cmcc:Ljava/lang/Boolean;

    .line 290
    :goto_3
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mKeyguardUtils:Lcom/android/keyguard/KeyguardUtils;

    iget-object v1, p0, Lcom/android/keyguard/VivoPasswordView;->mVivoPasswordView:Lcom/android/keyguard/VivoPasswordView;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUtils;->setBackDrawable(Landroid/view/View;)V

    .line 291
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mKeyguardUtils:Lcom/android/keyguard/KeyguardUtils;

    iget-object v1, p0, Lcom/android/keyguard/VivoPasswordView;->mWeekView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUtils;->updateWeekInfo(Landroid/widget/TextView;)V

    .line 292
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mKeyguardUtils:Lcom/android/keyguard/KeyguardUtils;

    iget-object v1, p0, Lcom/android/keyguard/VivoPasswordView;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUtils;->refreshDate(Landroid/widget/TextView;)V

    .line 294
    sget v0, Lcom/android/keyguard/R$id;->time:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/VivoPasswordView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;

    iput-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mDigitalClock:Lcom/android/keyguard/vivo/widget/ImageDigitalClock;

    .line 295
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mDigitalClock:Lcom/android/keyguard/vivo/widget/ImageDigitalClock;

    invoke-virtual {v0, v11}, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->setVisibility(I)V

    .line 296
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 297
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mWeekView:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 298
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 299
    return-void

    .end local v8    # "netlock":Ljava/lang/String;
    :cond_1
    move v0, v10

    .line 226
    goto/16 :goto_0

    .line 236
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mUpper:Landroid/widget/ImageButton;

    sget v1, Lcom/android/keyguard/R$drawable;->vivo_pin_lower:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_1

    .line 278
    :cond_3
    sput-boolean v10, Lcom/android/keyguard/VivoPasswordView;->mCurPadNormal:Z

    goto/16 :goto_2

    .line 288
    .restart local v8    # "netlock":Ljava/lang/String;
    :cond_4
    sget-object v0, Lcom/android/keyguard/VivoPasswordView;->mOpEntry:Ljava/lang/String;

    const-string v1, "CMCC_RW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/android/keyguard/VivoPasswordView;->mOpEntry:Ljava/lang/String;

    const-string v1, "CMCC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    move v9, v10

    :cond_6
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mEntry_cmcc:Ljava/lang/Boolean;

    goto :goto_3
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 384
    const-string v0, "VivoPasswordView"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 387
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 389
    :cond_0
    return-void
.end method

.method public onResume(I)V
    .locals 2
    .param p1, "reason"    # I

    .prologue
    .line 393
    const-string v0, "VivoPasswordView"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mMixPwEntry:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    invoke-virtual {p0}, Lcom/android/keyguard/VivoPasswordView;->reset()V

    .line 397
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 786
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 739
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 740
    iget-object v1, p0, Lcom/android/keyguard/VivoPasswordView;->mMix_keyboard:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/keyguard/VivoPasswordView;->mPadResumeLeftBtn:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/android/keyguard/VivoPasswordView;->mPadDirectionLeftBtn:Landroid/widget/ImageButton;

    iget-object v5, p0, Lcom/android/keyguard/VivoPasswordView;->mPadResumeRightBtn:Landroid/widget/ImageButton;

    iget-object v6, p0, Lcom/android/keyguard/VivoPasswordView;->mPadDirectionRightBtn:Landroid/widget/ImageButton;

    iget-object v7, p0, Lcom/android/keyguard/VivoPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    sget-object v8, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-object v0, p0

    move-object v2, p2

    invoke-virtual/range {v0 .. v8}, Lcom/android/keyguard/VivoPasswordView;->onVivoTouch(Landroid/view/View;Landroid/view/MotionEvent;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 743
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v9

    .line 744
    .local v9, "getid":I
    sget v0, Lcom/android/keyguard/R$id;->num1:I

    if-eq v9, v0, :cond_0

    sget v0, Lcom/android/keyguard/R$id;->num0:I

    if-eq v9, v0, :cond_0

    sget v0, Lcom/android/keyguard/R$id;->char_q:I

    if-eq v9, v0, :cond_0

    sget v0, Lcom/android/keyguard/R$id;->char_p:I

    if-eq v9, v0, :cond_0

    sget v0, Lcom/android/keyguard/R$id;->mix_del:I

    if-eq v9, v0, :cond_0

    sget v0, Lcom/android/keyguard/R$id;->key_up:I

    if-eq v9, v0, :cond_0

    sget v0, Lcom/android/keyguard/R$id;->password_emergency:I

    if-eq v9, v0, :cond_0

    sget v0, Lcom/android/keyguard/R$id;->vivo_mix_ok:I

    if-ne v9, v0, :cond_1

    .line 748
    :cond_0
    const/4 v0, 0x0

    .line 763
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic onVivoTouch(Landroid/view/View;Landroid/view/MotionEvent;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/View;
    .param p2, "x1"    # Landroid/view/MotionEvent;
    .param p3, "x2"    # Landroid/widget/Button;
    .param p4, "x3"    # Landroid/widget/Button;
    .param p5, "x4"    # Landroid/widget/Button;
    .param p6, "x5"    # Landroid/widget/Button;
    .param p7, "x6"    # Lcom/android/keyguard/KeyguardSecurityCallback;
    .param p8, "x7"    # Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .prologue
    .line 91
    invoke-super/range {p0 .. p8}, Lcom/android/keyguard/VivoBaseView;->onVivoTouch(Landroid/view/View;Landroid/view/MotionEvent;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    return-void
.end method

.method public bridge synthetic onVivoTouch(Landroid/view/View;Landroid/view/MotionEvent;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/View;
    .param p2, "x1"    # Landroid/view/MotionEvent;
    .param p3, "x2"    # Landroid/widget/ImageButton;
    .param p4, "x3"    # Landroid/widget/ImageButton;
    .param p5, "x4"    # Landroid/widget/ImageButton;
    .param p6, "x5"    # Landroid/widget/ImageButton;
    .param p7, "x6"    # Lcom/android/keyguard/KeyguardSecurityCallback;
    .param p8, "x7"    # Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .prologue
    .line 91
    invoke-super/range {p0 .. p8}, Lcom/android/keyguard/VivoBaseView;->onVivoTouch(Landroid/view/View;Landroid/view/MotionEvent;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 8
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 401
    invoke-super {p0, p1}, Lcom/android/keyguard/VivoBaseView;->onWindowFocusChanged(Z)V

    .line 402
    const-string v0, "VivoPasswordView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged hasWindowFocus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mMixPwEntry:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    if-eqz p1, :cond_2

    .line 408
    invoke-virtual {p0}, Lcom/android/keyguard/VivoPasswordView;->reset()V

    .line 409
    const-string v0, "VivoPasswordView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged mDragDirection = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/VivoPasswordView;->mDragDirection:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    invoke-virtual {p0}, Lcom/android/keyguard/VivoPasswordView;->getGesture()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/VivoPasswordView;->mDragDirection:I

    .line 411
    iget v0, p0, Lcom/android/keyguard/VivoPasswordView;->mDragDirection:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/VivoPasswordView;->getPinStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/VivoPasswordView;->mPinVewDirection:I

    iget v1, p0, Lcom/android/keyguard/VivoPasswordView;->mDragDirection:I

    if-eq v0, v1, :cond_0

    .line 412
    iget-object v1, p0, Lcom/android/keyguard/VivoPasswordView;->mMix_keyboard:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/keyguard/VivoPasswordView;->mPadResumeLeftBtn:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/android/keyguard/VivoPasswordView;->mPadDirectionLeftBtn:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/android/keyguard/VivoPasswordView;->mPadResumeRightBtn:Landroid/widget/ImageButton;

    iget-object v5, p0, Lcom/android/keyguard/VivoPasswordView;->mPadDirectionRightBtn:Landroid/widget/ImageButton;

    sget-object v6, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const/16 v7, 0x12c

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/keyguard/VivoPasswordView;->moveLefOrRight(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;I)V

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUtils;->getEyeLock(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 418
    const-string v0, "VivoPasswordView"

    const-string v1, "showView((View)mVivoPasswordView) "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mVivoPasswordView:Lcom/android/keyguard/VivoPasswordView;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/VivoPasswordView;->showView(Landroid/view/View;)V

    .line 422
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUtils;->getEyeLock(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/VivoPasswordView;->getAutoStatus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 423
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->showSecurity()V

    .line 424
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/VivoPasswordView;->setAutoStatus(Z)V

    .line 427
    :cond_2
    return-void
.end method

.method public bridge synthetic onZoomPrepared(ILandroid/view/MotionEvent;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 91
    invoke-super {p0, p1, p2}, Lcom/android/keyguard/VivoBaseView;->onZoomPrepared(ILandroid/view/MotionEvent;)V

    return-void
.end method

.method public reset()V
    .locals 5

    .prologue
    .line 432
    iget-object v2, p0, Lcom/android/keyguard/VivoPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v0

    .line 433
    .local v0, "deadline":J
    const-string v2, "VivoPasswordView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deadline = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/VivoPasswordView;->shouldLockout(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 435
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/VivoPasswordView;->handleAttemptLockout(J)V

    .line 440
    :goto_0
    return-void

    .line 437
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/VivoPasswordView;->resetState()V

    .line 438
    iget-object v2, p0, Lcom/android/keyguard/VivoPasswordView;->mMixPwEntry:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected resetState()V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/android/keyguard/VivoPasswordView;->showDefautMessage()V

    .line 148
    return-void
.end method

.method public bridge synthetic setAutoStatus(Z)V
    .locals 0
    .param p1, "x0"    # Z

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/android/keyguard/VivoBaseView;->setAutoStatus(Z)V

    return-void
.end method

.method public bridge synthetic setEyeStatus(Z)V
    .locals 0
    .param p1, "x0"    # Z

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/android/keyguard/VivoBaseView;->setEyeStatus(Z)V

    return-void
.end method

.method public bridge synthetic setGesture(I)V
    .locals 0
    .param p1, "x0"    # I

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/android/keyguard/VivoBaseView;->setGesture(I)V

    return-void
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 447
    iput-object p1, p0, Lcom/android/keyguard/VivoPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 448
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 443
    iput-object p1, p0, Lcom/android/keyguard/VivoPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 444
    return-void
.end method

.method public bridge synthetic setPinStatus(Z)V
    .locals 0
    .param p1, "x0"    # Z

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/android/keyguard/VivoBaseView;->setPinStatus(Z)V

    return-void
.end method

.method protected shouldLockout(J)Z
    .locals 3
    .param p1, "deadline"    # J

    .prologue
    .line 456
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showBouncer(I)V
    .locals 3
    .param p1, "duration"    # I

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/keyguard/VivoPasswordView;->mEcaView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/VivoPasswordView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->showBouncer(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 364
    return-void
.end method

.method public showSecurity(Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 831
    const-string v1, "VivoPasswordView"

    const-string v2, "showSecurity"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    iget-object v1, p0, Lcom/android/keyguard/VivoPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 833
    iget-object v1, p0, Lcom/android/keyguard/VivoPasswordView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 834
    .local v0, "mesg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 835
    iget-object v1, p0, Lcom/android/keyguard/VivoPasswordView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 836
    iget-object v1, p0, Lcom/android/keyguard/VivoPasswordView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 837
    return-void
.end method

.method public showUsabilityHint()V
    .locals 0

    .prologue
    .line 303
    return-void
.end method

.method public bridge synthetic showView(Landroid/view/View;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/View;

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/android/keyguard/VivoBaseView;->showView(Landroid/view/View;)V

    return-void
.end method

.method public startAppearAnimation()V
    .locals 5

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 307
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUtils;->getEyeLock(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/VivoPasswordView;->getEyeStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/VivoPasswordView;->mBatteryLevel:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 308
    const-string v0, "VivoPasswordView"

    const-string v1, "startAppearAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mVivoPasswordView:Lcom/android/keyguard/VivoPasswordView;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/VivoPasswordView;->hideView(Landroid/view/View;)V

    .line 310
    invoke-virtual {p0}, Lcom/android/keyguard/VivoPasswordView;->startVerifyEye()V

    .line 314
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/VivoPasswordView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUtils;->getNatureType(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 315
    invoke-virtual {p0, v4}, Lcom/android/keyguard/VivoPasswordView;->setAlpha(F)V

    .line 316
    invoke-virtual {p0}, Lcom/android/keyguard/VivoPasswordView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/VivoPasswordView;->mContext:Landroid/content/Context;

    const v2, 0x10c000f

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 330
    :goto_0
    return-void

    .line 323
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/keyguard/VivoPasswordView;->setAlpha(F)V

    .line 324
    iget-object v0, p0, Lcom/android/keyguard/VivoPasswordView;->mAppearAnimationUtils:Lcom/android/keyguard/AppearAnimationUtils;

    invoke-virtual {v0}, Lcom/android/keyguard/AppearAnimationUtils;->getStartTranslation()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/VivoPasswordView;->setTranslationY(F)V

    .line 325
    invoke-virtual {p0}, Lcom/android/keyguard/VivoPasswordView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/VivoPasswordView;->mAppearAnimationUtils:Lcom/android/keyguard/AppearAnimationUtils;

    invoke-virtual {v1}, Lcom/android/keyguard/AppearAnimationUtils;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 5
    .param p1, "finishRunnable"    # Ljava/lang/Runnable;

    .prologue
    const/4 v4, 0x0

    .line 334
    const-string v1, "sys.fingerprint.keguard"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, "finger":Ljava/lang/String;
    const-string v1, "VivoPasswordView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startDisappearAnimation finger:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 337
    iget-object v1, p0, Lcom/android/keyguard/VivoPasswordView;->mVivoPasswordView:Lcom/android/keyguard/VivoPasswordView;

    invoke-virtual {v1, v4}, Lcom/android/keyguard/VivoPasswordView;->setAlpha(F)V

    .line 339
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/VivoPasswordView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/VivoPasswordView;->mDisappearYTranslation:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/VivoPasswordView;->mContext:Landroid/content/Context;

    const v3, 0x10c000f

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 346
    const/4 v1, 0x1

    return v1
.end method

.method public bridge synthetic startVerifyEye()V
    .locals 0

    .prologue
    .line 91
    invoke-super {p0}, Lcom/android/keyguard/VivoBaseView;->startVerifyEye()V

    return-void
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 585
    iget-object v6, p0, Lcom/android/keyguard/VivoPasswordView;->mMixPwEntry:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 588
    .local v5, "entry":Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/android/keyguard/VivoPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v5}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 594
    .local v1, "checkPassword":Z
    :goto_0
    const-string v6, "VivoPasswordView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkPassword = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    if-eqz v1, :cond_1

    .line 596
    iget-object v6, p0, Lcom/android/keyguard/VivoPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v6, v9}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(Z)V

    .line 597
    iget-object v6, p0, Lcom/android/keyguard/VivoPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v6, v9}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 600
    invoke-static {v10}, Lcom/android/keyguard/KeyguardUtils;->setFingerMessageShow(Z)V

    .line 621
    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/android/keyguard/VivoPasswordView;->mMixPwEntry:Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 622
    return-void

    .line 589
    .end local v1    # "checkPassword":Z
    :catch_0
    move-exception v4

    .line 590
    .local v4, "e":Ljava/lang/Exception;
    const-string v6, "VivoPasswordView"

    const-string v7, "try  catch"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    const/4 v1, 0x0

    .restart local v1    # "checkPassword":Z
    goto :goto_0

    .line 603
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v9, :cond_0

    .line 606
    invoke-direct {p0}, Lcom/android/keyguard/VivoPasswordView;->passwordbgAnim()V

    .line 607
    invoke-virtual {p0}, Lcom/android/keyguard/VivoPasswordView;->vibrate()V

    .line 608
    iget-object v6, p0, Lcom/android/keyguard/VivoPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v6, v10}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(Z)V

    .line 609
    iget-object v6, p0, Lcom/android/keyguard/VivoPasswordView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v0

    .line 610
    .local v0, "attempts":I
    rem-int/lit8 v6, v0, 0x5

    if-nez v6, :cond_2

    .line 612
    iget-object v6, p0, Lcom/android/keyguard/VivoPasswordView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline()J

    move-result-wide v2

    .line 613
    .local v2, "deadline":J
    invoke-virtual {p0, v2, v3}, Lcom/android/keyguard/VivoPasswordView;->handleAttemptLockout(J)V

    goto :goto_1

    .line 615
    .end local v2    # "deadline":J
    :cond_2
    iget-object v6, p0, Lcom/android/keyguard/VivoPasswordView;->mEntry_cmcc:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 616
    iget-object v6, p0, Lcom/android/keyguard/VivoPasswordView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-virtual {p0}, Lcom/android/keyguard/VivoPasswordView;->getWrongPasswordStringId()I

    move-result v7

    invoke-interface {v6, v7, v9}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    goto :goto_1
.end method

.method public bridge synthetic vibrate()V
    .locals 0

    .prologue
    .line 91
    invoke-super {p0}, Lcom/android/keyguard/VivoBaseView;->vibrate()V

    return-void
.end method
