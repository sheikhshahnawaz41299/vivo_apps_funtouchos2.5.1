.class public Lcom/android/keyguard/VivoPinView;
.super Lcom/android/keyguard/VivoBaseView;
.source "VivoPinView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/keyguard/KeyguardSecurityView;


# static fields
.field private static final FINGERFAIL:I = 0x0

.field protected static final MINIMUM_PASSWORD_LENGTH_BEFORE_REPORT:I = 0x4

.field private static final SETCLOCK_CENTER:I = 0x4

.field private static final SHOW_LOCKSCREEN:I = 0x5

.field private static final TAG:Ljava/lang/String; = "VivoPinView"

.field private static final UPDATA_CMCC:I = 0x6

.field private static final UPDATE_MESSAGE_AREA:I = 0x3

.field private static final UPDATE_UI:I = 0x2

.field private static mOpEntry:Ljava/lang/String;


# instance fields
.field private final ADD:I

.field private final SUB:I

.field private final mAppearAnimationUtils:Lcom/android/keyguard/AppearAnimationUtils;

.field mBatteryLevel:I

.field private mBouncerFrame:Landroid/graphics/drawable/Drawable;

.field protected mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mDateView:Landroid/widget/TextView;

.field private mDelete:Landroid/widget/Button;

.field private mDigitalClock:Lcom/android/keyguard/vivo/widget/ImageDigitalClock;

.field private mDisappearYTranslation:I

.field protected mEcaView:Landroid/view/View;

.field private mEntry_cmcc:Ljava/lang/Boolean;

.field private mHandler:Landroid/os/Handler;

.field private mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

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

.field private mKeyguardBouncerFrame:Landroid/view/ViewGroup;

.field private mKeyguardPINKeyboard:Landroid/view/View;

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mKeyguardUtils:Lcom/android/keyguard/KeyguardUtils;

.field protected mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMessageArea:Landroid/view/View;

.field private mPadDirectionLeftBtn:Landroid/widget/Button;

.field private mPadDirectionRightBtn:Landroid/widget/Button;

.field private mPadResumeLeftBtn:Landroid/widget/Button;

.field private mPadResumeRightBtn:Landroid/widget/Button;

.field private mPassword1:Landroid/widget/ImageView;

.field private mPassword2:Landroid/widget/ImageView;

.field private mPassword3:Landroid/widget/ImageView;

.field private mPassword4:Landroid/widget/ImageView;

.field private mPasswordEnable:Z

.field private mPinVewDirection:I

.field protected mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

.field protected mSecurityMessageTitle:Lcom/android/keyguard/SecurityMessageDisplay;

.field private mSimple_group:Landroid/view/View;

.field private mSpeedObserver:Landroid/database/ContentObserver;

.field private mTimeRuning:Z

.field private mUserPassword:Ljava/lang/String;

.field private mVivoPinView:Lcom/android/keyguard/VivoPinView;

.field private mWeekView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/VivoPinView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 130
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/VivoBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 108
    const-string v0, " "

    iput-object v0, p0, Lcom/android/keyguard/VivoPinView;->mUserPassword:Ljava/lang/String;

    .line 113
    iput-boolean v2, p0, Lcom/android/keyguard/VivoPinView;->mPasswordEnable:Z

    .line 115
    iput v1, p0, Lcom/android/keyguard/VivoPinView;->ADD:I

    iput v2, p0, Lcom/android/keyguard/VivoPinView;->SUB:I

    .line 118
    iput v1, p0, Lcom/android/keyguard/VivoPinView;->mPinVewDirection:I

    .line 120
    iput v1, p0, Lcom/android/keyguard/VivoPinView;->mBatteryLevel:I

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/VivoPinView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 122
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/VivoPinView;->mEntry_cmcc:Ljava/lang/Boolean;

    .line 514
    new-instance v0, Lcom/android/keyguard/VivoPinView$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/VivoPinView$2;-><init>(Lcom/android/keyguard/VivoPinView;)V

    iput-object v0, p0, Lcom/android/keyguard/VivoPinView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 540
    new-instance v0, Lcom/android/keyguard/VivoPinView$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/VivoPinView$3;-><init>(Lcom/android/keyguard/VivoPinView;)V

    iput-object v0, p0, Lcom/android/keyguard/VivoPinView;->mHandler:Landroid/os/Handler;

    .line 893
    new-instance v0, Lcom/android/keyguard/VivoPinView$7;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/VivoPinView$7;-><init>(Lcom/android/keyguard/VivoPinView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/VivoPinView;->mSpeedObserver:Landroid/database/ContentObserver;

    .line 133
    new-instance v0, Lcom/android/keyguard/AppearAnimationUtils;

    invoke-direct {v0, p1}, Lcom/android/keyguard/AppearAnimationUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/VivoPinView;->mAppearAnimationUtils:Lcom/android/keyguard/AppearAnimationUtils;

    .line 134
    invoke-virtual {p0}, Lcom/android/keyguard/VivoPinView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$dimen;->disappear_y_translation:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/VivoPinView;->mDisappearYTranslation:I

    .line 136
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/VivoPinView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 137
    new-instance v0, Lcom/android/keyguard/KeyguardUtils;

    invoke-direct {v0, p1}, Lcom/android/keyguard/KeyguardUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/VivoPinView;->mKeyguardUtils:Lcom/android/keyguard/KeyguardUtils;

    .line 138
    return-void
.end method

.method static synthetic access$002(Lcom/android/keyguard/VivoPinView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/VivoPinView;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/android/keyguard/VivoPinView;->mPasswordEnable:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/keyguard/VivoPinView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/VivoPinView;

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/android/keyguard/VivoPinView;->mTimeRuning:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/keyguard/VivoPinView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/VivoPinView;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/keyguard/VivoPinView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/VivoPinView;
    .param p1, "x1"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/android/keyguard/VivoPinView;->mTimeRuning:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/keyguard/VivoPinView;)Lcom/android/keyguard/vivo/widget/ImageDigitalClock;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/VivoPinView;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mDigitalClock:Lcom/android/keyguard/vivo/widget/ImageDigitalClock;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/keyguard/VivoPinView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/VivoPinView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/keyguard/VivoPinView;->mUserPassword:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/keyguard/VivoPinView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/VivoPinView;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/keyguard/VivoPinView;->updateDelButtonText()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/keyguard/VivoPinView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/VivoPinView;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/keyguard/VivoPinView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/VivoPinView;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/VivoPinView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/VivoPinView;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mWeekView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/VivoPinView;)Lcom/android/keyguard/KeyguardUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/VivoPinView;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mKeyguardUtils:Lcom/android/keyguard/KeyguardUtils;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/VivoPinView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/VivoPinView;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mDateView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/VivoPinView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/VivoPinView;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mPassword1:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/VivoPinView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/VivoPinView;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mPassword2:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/keyguard/VivoPinView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/VivoPinView;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mPassword3:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/keyguard/VivoPinView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/VivoPinView;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mPassword4:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/keyguard/VivoPinView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/VivoPinView;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/keyguard/VivoPinView;->passwordbgAnim()V

    return-void
.end method

.method private enableClipping(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mKeyguardBouncerFrame:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 349
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mKeyguardBouncerFrame:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 350
    invoke-virtual {p0, p1}, Lcom/android/keyguard/VivoPinView;->setClipChildren(Z)V

    .line 351
    return-void
.end method

.method private passwordbgAnim()V
    .locals 4

    .prologue
    .line 654
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 655
    .local v0, "animator":Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 656
    new-instance v1, Lcom/android/keyguard/VivoPinView$4;

    invoke-direct {v1, p0}, Lcom/android/keyguard/VivoPinView$4;-><init>(Lcom/android/keyguard/VivoPinView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 665
    new-instance v1, Lcom/android/keyguard/VivoPinView$5;

    invoke-direct {v1, p0}, Lcom/android/keyguard/VivoPinView$5;-><init>(Lcom/android/keyguard/VivoPinView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 677
    new-instance v1, Lcom/android/keyguard/VivoPinView$6;

    invoke-direct {v1, p0}, Lcom/android/keyguard/VivoPinView$6;-><init>(Lcom/android/keyguard/VivoPinView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 728
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 729
    return-void

    .line 654
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private showDefautMessage()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 161
    invoke-static {}, Lcom/android/keyguard/KeyguardUtils;->getFingerMessageShow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mContext:Landroid/content/Context;

    const-string v1, "finger_unlock_open"

    invoke-static {v0, v1, v2}, Lcom/android/keyguard/KeyguardUtils;->settingsGetInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mSecurityMessageTitle:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v1, Lcom/android/keyguard/R$string;->use_fingerprint_or_pin:I

    invoke-interface {v0, v1, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-virtual {p0}, Lcom/android/keyguard/VivoPinView;->getWrongPasswordStringId()I

    move-result v1

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 167
    :cond_1
    return-void
.end method

.method private updateDelButtonText()V
    .locals 3

    .prologue
    .line 924
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mDelete:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 925
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mUserPassword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 926
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mDelete:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/keyguard/VivoPinView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->kg_reordering_delete_drop_target_text:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 931
    :cond_0
    :goto_0
    return-void

    .line 928
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mDelete:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/keyguard/VivoPinView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->back:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updatepasswordframe(II)V
    .locals 3
    .param p1, "num"    # I
    .param p2, "tag"    # I

    .prologue
    .line 839
    const-string v0, "VivoPinView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick num "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPasswordEnable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/VivoPinView;->mPasswordEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    iget-boolean v0, p0, Lcom/android/keyguard/VivoPinView;->mPasswordEnable:Z

    if-nez v0, :cond_1

    .line 842
    const-string v0, " "

    iput-object v0, p0, Lcom/android/keyguard/VivoPinView;->mUserPassword:Ljava/lang/String;

    .line 882
    :cond_0
    :goto_0
    return-void

    .line 845
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 875
    if-eqz p2, :cond_0

    .line 878
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mPassword4:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->vivo_pin_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 847
    :pswitch_0
    if-nez p2, :cond_2

    .line 848
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mPassword1:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->vivo_pin_scr:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 850
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mPassword1:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->vivo_pin_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 854
    :pswitch_1
    if-nez p2, :cond_3

    .line 855
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mPassword2:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->vivo_pin_scr:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 857
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mPassword1:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->vivo_pin_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 861
    :pswitch_2
    if-nez p2, :cond_4

    .line 862
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mPassword3:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->vivo_pin_scr:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 864
    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mPassword2:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->vivo_pin_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 868
    :pswitch_3
    if-nez p2, :cond_5

    .line 869
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mPassword4:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->vivo_pin_scr:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 871
    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mPassword3:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->vivo_pin_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 845
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public bridge synthetic animatorIsRuning()Z
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Lcom/android/keyguard/VivoBaseView;->animatorIsRuning()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic clickResume(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/View;
    .param p2, "x1"    # Landroid/view/View;
    .param p3, "x2"    # Landroid/view/View;
    .param p4, "x3"    # Landroid/view/View;
    .param p5, "x4"    # Landroid/view/View;

    .prologue
    .line 81
    invoke-super/range {p0 .. p5}, Lcom/android/keyguard/VivoBaseView;->clickResume(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic getAnin()Landroid/animation/AnimatorSet;
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Lcom/android/keyguard/VivoBaseView;->getAnin()Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAutoStatus()Z
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Lcom/android/keyguard/VivoBaseView;->getAutoStatus()Z

    move-result v0

    return v0
.end method

.method public getCallback()Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method public bridge synthetic getEyeStatus()Z
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Lcom/android/keyguard/VivoBaseView;->getEyeStatus()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getFinger()Z
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Lcom/android/keyguard/VivoBaseView;->getFinger()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getGesture()I
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Lcom/android/keyguard/VivoBaseView;->getGesture()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getOnehandStatus()Z
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Lcom/android/keyguard/VivoBaseView;->getOnehandStatus()Z

    move-result v0

    return v0
.end method

.method protected getPasswordTextViewId()I
    .locals 1

    .prologue
    .line 171
    sget v0, Lcom/android/keyguard/R$id;->pinEntry:I

    return v0
.end method

.method public bridge synthetic getPinStatus()Z
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Lcom/android/keyguard/VivoBaseView;->getPinStatus()Z

    move-result v0

    return v0
.end method

.method protected getWrongPasswordStringId()I
    .locals 1

    .prologue
    .line 651
    sget v0, Lcom/android/keyguard/R$string;->kg_wrong_password:I

    return v0
.end method

.method protected handleAttemptLockout(J)V
    .locals 9
    .param p1, "elapsedRealtimeDeadline"    # J

    .prologue
    .line 470
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 471
    .local v6, "elapsedRealtime":J
    new-instance v0, Lcom/android/keyguard/VivoPinView$1;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/VivoPinView$1;-><init>(Lcom/android/keyguard/VivoPinView;JJ)V

    invoke-virtual {v0}, Lcom/android/keyguard/VivoPinView$1;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/VivoPinView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 492
    return-void
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 355
    const/4 v0, 0x0

    return v0
.end method

.method public hideBouncer(I)V
    .locals 3
    .param p1, "duration"    # I

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/keyguard/VivoPinView;->mEcaView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/VivoPinView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->hideBouncer(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 368
    return-void
.end method

.method public bridge synthetic hideView(Landroid/view/View;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/View;

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/android/keyguard/VivoBaseView;->hideView(Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic isFingerprintAuthAvailable()Z
    .locals 1

    .prologue
    .line 81
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
    .line 81
    invoke-super/range {p0 .. p7}, Lcom/android/keyguard/VivoBaseView;->moveLefOrRight(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;I)V

    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 377
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 496
    const-string v0, "VivoPinView"

    const-string v1, "onAttachedToWindow "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/VivoPinView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 498
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUtils;->getEyeLock(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 499
    invoke-virtual {p0}, Lcom/android/keyguard/VivoPinView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "EyeIdentify_VerifyResult"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/keyguard/VivoPinView;->mSpeedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 501
    :cond_0
    invoke-super {p0}, Lcom/android/keyguard/VivoBaseView;->onAttachedToWindow()V

    .line 502
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 732
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 733
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mUserPassword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/VivoPinView;->mUserPassword:Ljava/lang/String;

    .line 734
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mUserPassword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    .line 735
    .local v10, "length":I
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    int-to-long v8, v0

    .line 736
    .local v8, "getid":J
    sget v0, Lcom/android/keyguard/R$id;->vivo_pin_resume_left:I

    int-to-long v0, v0

    cmp-long v0, v8, v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/keyguard/R$id;->vivo_pin_resume_right:I

    int-to-long v0, v0

    cmp-long v0, v8, v0

    if-nez v0, :cond_3

    .line 737
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/VivoPinView;->mKeyguardPINKeyboard:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/VivoPinView;->mPadResumeLeftBtn:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/keyguard/VivoPinView;->mPadDirectionLeftBtn:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/keyguard/VivoPinView;->mPadResumeRightBtn:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/keyguard/VivoPinView;->mPadDirectionRightBtn:Landroid/widget/Button;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/keyguard/VivoPinView;->clickResume(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 738
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mPadResumeLeftBtn:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 739
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mPadDirectionLeftBtn:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 741
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mPadResumeRightBtn:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 742
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mPadDirectionRightBtn:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 744
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/keyguard/VivoPinView;->mCurPadNormal:Z

    .line 746
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/VivoPinView;->setPinStatus(Z)V

    .line 829
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mUserPassword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 830
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    .line 831
    .local v11, "mesg":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 832
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v11, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 835
    .end local v11    # "mesg":Landroid/os/Message;
    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/VivoPinView;->updateDelButtonText()V

    .line 836
    return-void

    .line 748
    :cond_3
    sget v0, Lcom/android/keyguard/R$id;->vivo_pin_direction_left:I

    int-to-long v0, v0

    cmp-long v0, v8, v0

    if-nez v0, :cond_4

    .line 749
    const-string v0, "VivoPinView"

    const-string v1, "onclick bbk_pattern_pad_direction_left"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/keyguard/VivoPinView;->mDragDirection:I

    .line 751
    iget v0, p0, Lcom/android/keyguard/VivoPinView;->mDragDirection:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/VivoPinView;->setGesture(I)V

    .line 752
    iget-object v1, p0, Lcom/android/keyguard/VivoPinView;->mKeyguardPINKeyboard:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/VivoPinView;->mPadResumeLeftBtn:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/keyguard/VivoPinView;->mPadDirectionLeftBtn:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/keyguard/VivoPinView;->mPadResumeRightBtn:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/keyguard/VivoPinView;->mPadDirectionRightBtn:Landroid/widget/Button;

    sget-object v6, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const/16 v7, 0x12c

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/keyguard/VivoPinView;->moveLefOrRight(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;I)V

    .line 755
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/VivoPinView;->setPinStatus(Z)V

    goto :goto_0

    .line 756
    :cond_4
    sget v0, Lcom/android/keyguard/R$id;->bbk_pin_pad_direction_right:I

    int-to-long v0, v0

    cmp-long v0, v8, v0

    if-nez v0, :cond_5

    .line 757
    const-string v0, "VivoPinView"

    const-string v1, "onclick bbk_pattern_pad_direction_right"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/keyguard/VivoPinView;->mDragDirection:I

    .line 759
    iget v0, p0, Lcom/android/keyguard/VivoPinView;->mDragDirection:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/VivoPinView;->setGesture(I)V

    .line 760
    iget-object v1, p0, Lcom/android/keyguard/VivoPinView;->mKeyguardPINKeyboard:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/VivoPinView;->mPadResumeLeftBtn:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/keyguard/VivoPinView;->mPadDirectionLeftBtn:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/keyguard/VivoPinView;->mPadResumeRightBtn:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/keyguard/VivoPinView;->mPadDirectionRightBtn:Landroid/widget/Button;

    sget-object v6, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const/16 v7, 0x12c

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/keyguard/VivoPinView;->moveLefOrRight(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;I)V

    .line 763
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/VivoPinView;->setPinStatus(Z)V

    goto :goto_0

    .line 764
    :cond_5
    sget v0, Lcom/android/keyguard/R$id;->VivoPinkey1:I

    int-to-long v0, v0

    cmp-long v0, v8, v0

    if-nez v0, :cond_6

    .line 765
    const/4 v0, 0x4

    if-ge v10, v0, :cond_1

    .line 766
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/keyguard/VivoPinView;->mUserPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/VivoPinView;->mUserPassword:Ljava/lang/String;

    .line 767
    const/4 v0, 0x0

    invoke-direct {p0, v10, v0}, Lcom/android/keyguard/VivoPinView;->updatepasswordframe(II)V

    goto/16 :goto_0

    .line 769
    :cond_6
    sget v0, Lcom/android/keyguard/R$id;->VivoPinkey2:I

    int-to-long v0, v0

    cmp-long v0, v8, v0

    if-nez v0, :cond_7

    .line 770
    const/4 v0, 0x4

    if-ge v10, v0, :cond_1

    .line 771
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/keyguard/VivoPinView;->mUserPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/VivoPinView;->mUserPassword:Ljava/lang/String;

    .line 772
    const/4 v0, 0x0

    invoke-direct {p0, v10, v0}, Lcom/android/keyguard/VivoPinView;->updatepasswordframe(II)V

    goto/16 :goto_0

    .line 774
    :cond_7
    sget v0, Lcom/android/keyguard/R$id;->VivoPinkey3:I

    int-to-long v0, v0

    cmp-long v0, v8, v0

    if-nez v0, :cond_8

    .line 775
    const/4 v0, 0x4

    if-ge v10, v0, :cond_1

    .line 776
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/keyguard/VivoPinView;->mUserPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/VivoPinView;->mUserPassword:Ljava/lang/String;

    .line 777
    const/4 v0, 0x0

    invoke-direct {p0, v10, v0}, Lcom/android/keyguard/VivoPinView;->updatepasswordframe(II)V

    goto/16 :goto_0

    .line 779
    :cond_8
    sget v0, Lcom/android/keyguard/R$id;->VivoPinkey4:I

    int-to-long v0, v0

    cmp-long v0, v8, v0

    if-nez v0, :cond_9

    .line 780
    const/4 v0, 0x4

    if-ge v10, v0, :cond_1

    .line 781
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/keyguard/VivoPinView;->mUserPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/VivoPinView;->mUserPassword:Ljava/lang/String;

    .line 782
    const/4 v0, 0x0

    invoke-direct {p0, v10, v0}, Lcom/android/keyguard/VivoPinView;->updatepasswordframe(II)V

    goto/16 :goto_0

    .line 784
    :cond_9
    sget v0, Lcom/android/keyguard/R$id;->VivoPinkey5:I

    int-to-long v0, v0

    cmp-long v0, v8, v0

    if-nez v0, :cond_a

    .line 785
    const/4 v0, 0x4

    if-ge v10, v0, :cond_1

    .line 786
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/keyguard/VivoPinView;->mUserPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/VivoPinView;->mUserPassword:Ljava/lang/String;

    .line 787
    const/4 v0, 0x0

    invoke-direct {p0, v10, v0}, Lcom/android/keyguard/VivoPinView;->updatepasswordframe(II)V

    goto/16 :goto_0

    .line 789
    :cond_a
    sget v0, Lcom/android/keyguard/R$id;->VivoPinkey6:I

    int-to-long v0, v0

    cmp-long v0, v8, v0

    if-nez v0, :cond_b

    .line 790
    const/4 v0, 0x4

    if-ge v10, v0, :cond_1

    .line 791
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/keyguard/VivoPinView;->mUserPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "6"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/VivoPinView;->mUserPassword:Ljava/lang/String;

    .line 792
    const/4 v0, 0x0

    invoke-direct {p0, v10, v0}, Lcom/android/keyguard/VivoPinView;->updatepasswordframe(II)V

    goto/16 :goto_0

    .line 794
    :cond_b
    sget v0, Lcom/android/keyguard/R$id;->VivoPinkey7:I

    int-to-long v0, v0

    cmp-long v0, v8, v0

    if-nez v0, :cond_c

    .line 795
    const/4 v0, 0x4

    if-ge v10, v0, :cond_1

    .line 796
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/keyguard/VivoPinView;->mUserPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "7"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/VivoPinView;->mUserPassword:Ljava/lang/String;

    .line 797
    const/4 v0, 0x0

    invoke-direct {p0, v10, v0}, Lcom/android/keyguard/VivoPinView;->updatepasswordframe(II)V

    goto/16 :goto_0

    .line 799
    :cond_c
    sget v0, Lcom/android/keyguard/R$id;->VivoPinkey8:I

    int-to-long v0, v0

    cmp-long v0, v8, v0

    if-nez v0, :cond_d

    .line 800
    const/4 v0, 0x4

    if-ge v10, v0, :cond_1

    .line 801
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/keyguard/VivoPinView;->mUserPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "8"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/VivoPinView;->mUserPassword:Ljava/lang/String;

    .line 802
    const/4 v0, 0x0

    invoke-direct {p0, v10, v0}, Lcom/android/keyguard/VivoPinView;->updatepasswordframe(II)V

    goto/16 :goto_0

    .line 804
    :cond_d
    sget v0, Lcom/android/keyguard/R$id;->VivoPinkey9:I

    int-to-long v0, v0

    cmp-long v0, v8, v0

    if-nez v0, :cond_e

    .line 805
    const/4 v0, 0x4

    if-ge v10, v0, :cond_1

    .line 806
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/keyguard/VivoPinView;->mUserPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "9"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/VivoPinView;->mUserPassword:Ljava/lang/String;

    .line 807
    const/4 v0, 0x0

    invoke-direct {p0, v10, v0}, Lcom/android/keyguard/VivoPinView;->updatepasswordframe(II)V

    goto/16 :goto_0

    .line 809
    :cond_e
    sget v0, Lcom/android/keyguard/R$id;->VivoPinkey0:I

    int-to-long v0, v0

    cmp-long v0, v8, v0

    if-nez v0, :cond_f

    .line 810
    const/4 v0, 0x4

    if-ge v10, v0, :cond_1

    .line 811
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/keyguard/VivoPinView;->mUserPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/VivoPinView;->mUserPassword:Ljava/lang/String;

    .line 812
    const/4 v0, 0x0

    invoke-direct {p0, v10, v0}, Lcom/android/keyguard/VivoPinView;->updatepasswordframe(II)V

    goto/16 :goto_0

    .line 814
    :cond_f
    sget v0, Lcom/android/keyguard/R$id;->VivoPinkeydel:I

    int-to-long v0, v0

    cmp-long v0, v8, v0

    if-nez v0, :cond_1

    .line 815
    if-lez v10, :cond_11

    .line 816
    const/4 v0, 0x1

    if-ne v10, v0, :cond_10

    .line 817
    const-string v0, " "

    iput-object v0, p0, Lcom/android/keyguard/VivoPinView;->mUserPassword:Ljava/lang/String;

    .line 818
    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/VivoPinView;->updatepasswordframe(II)V

    goto/16 :goto_0

    .line 820
    :cond_10
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mUserPassword:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/keyguard/VivoPinView;->mUserPassword:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/VivoPinView;->mUserPassword:Ljava/lang/String;

    .line 821
    const/4 v0, 0x1

    invoke-direct {p0, v10, v0}, Lcom/android/keyguard/VivoPinView;->updatepasswordframe(II)V

    goto/16 :goto_0

    .line 824
    :cond_11
    const-string v0, "VivoPinView"

    const-string v1, "onclick ok mCallback.showLockScreen()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->showLockScreen()V

    goto/16 :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 506
    const-string v0, "VivoPinView"

    const-string v1, "onDetachedFromWindow "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/VivoPinView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 508
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUtils;->getEyeLock(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    invoke-virtual {p0}, Lcom/android/keyguard/VivoPinView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/VivoPinView;->mSpeedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 511
    :cond_0
    invoke-super {p0}, Lcom/android/keyguard/VivoBaseView;->onDetachedFromWindow()V

    .line 512
    return-void
.end method

.method protected onFinishInflate()V
    .locals 12

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v11, 0x4

    .line 176
    invoke-super {p0}, Lcom/android/keyguard/VivoBaseView;->onFinishInflate()V

    .line 177
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/keyguard/VivoPinView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/VivoPinView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 178
    new-instance v0, Lcom/android/keyguard/KeyguardMessageArea$Helper;

    sget v1, Lcom/android/keyguard/R$id;->keyguard_message_area:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/VivoPinView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/keyguard/VivoPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    .line 179
    new-instance v0, Lcom/android/keyguard/KeyguardMessageArea$Helper;

    sget v1, Lcom/android/keyguard/R$id;->vivo_message_title:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/VivoPinView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/keyguard/VivoPinView;->mSecurityMessageTitle:Lcom/android/keyguard/SecurityMessageDisplay;

    .line 180
    sget v0, Lcom/android/keyguard/R$id;->keyguard_selector_fade_container:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/VivoPinView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/VivoPinView;->mEcaView:Landroid/view/View;

    .line 182
    sget v0, Lcom/android/keyguard/R$id;->date:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/VivoPinView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/VivoPinView;->mDateView:Landroid/widget/TextView;

    .line 183
    sget v0, Lcom/android/keyguard/R$id;->Week:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/VivoPinView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/VivoPinView;->mWeekView:Landroid/widget/TextView;

    .line 184
    sget v0, Lcom/android/keyguard/R$id;->vivo_pin_view:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/VivoPinView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/VivoPinView;

    iput-object v0, p0, Lcom/android/keyguard/VivoPinView;->mVivoPinView:Lcom/android/keyguard/VivoPinView;

    .line 190
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mVivoPinView:Lcom/android/keyguard/VivoPinView;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/VivoPinView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 191
    sget v0, Lcom/android/keyguard/R$id;->keyguard_bouncer_frame:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/VivoPinView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/VivoPinView;->mKeyguardPINKeyboard:Landroid/view/View;

    .line 193
    sget v0, Lcom/android/keyguard/R$id;->vivo_pin_resume_left:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/VivoPinView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/keyguard/VivoPinView;->mPadResumeLeftBtn:Landroid/widget/Button;

    .line 194
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mPadResumeLeftBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    sget v0, Lcom/android/keyguard/R$id;->VivoPinkey1:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/VivoPinView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/keyguard/VivoPinView;->mKey1:Landroid/widget/ImageButton;

    .line 197
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mKey1:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    sget v0, Lcom/android/keyguard/R$id;->VivoPinkey4:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/VivoPinView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/keyguard/VivoPinView;->mKey4:Landroid/widget/ImageButton;

    .line 200
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mKey4:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    sget v0, Lcom/android/keyguard/R$id;->VivoPinkey7:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/VivoPinView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/keyguard/VivoPinView;->mKey7:Landroid/widget/ImageButton;

    .line 203
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mKey7:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    sget v0, Lcom/android/keyguard/R$id;->VivoPinkey3:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/VivoPinView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/keyguard/VivoPinView;->mKey3:Landroid/widget/ImageButton;

    .line 206
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mKey3:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    sget v0, Lcom/android/keyguard/R$id;->VivoPinkey6:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/VivoPinView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/keyguard/VivoPinView;->mKey6:Landroid/widget/ImageButton;

    .line 209
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mKey6:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    sget v0, Lcom/android/keyguard/R$id;->VivoPinkey9:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/VivoPinView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/keyguard/VivoPinView;->mKey9:Landroid/widget/ImageButton;

    .line 212
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mKey9:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    sget v0, Lcom/android/keyguard/R$id;->VivoPinkeydel:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/VivoPinView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/keyguard/VivoPinView;->mDelete:Landroid/widget/Button;

    .line 215
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mDelete:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mDelete:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 218
    sget v0, Lcom/android/keyguard/R$id;->VivoPinkey2:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/VivoPinView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/keyguard/VivoPinView;->mKey2:Landroid/widget/ImageButton;

    .line 219
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mKey2:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    sget v0, Lcom/android/keyguard/R$id;->VivoPinkey5:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/VivoPinView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/keyguard/VivoPinView;->mKey5:Landroid/widget/ImageButton;

    .line 222
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mKey5:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    sget v0, Lcom/android/keyguard/R$id;->VivoPinkey8:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/VivoPinView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/keyguard/VivoPinView;->mKey8:Landroid/widget/ImageButton;

    .line 225
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mKey8:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    sget v0, Lcom/android/keyguard/R$id;->VivoPinkey0:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/VivoPinView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/keyguard/VivoPinView;->mKey0:Landroid/widget/ImageButton;

    .line 228
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mKey0:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    sget v0, Lcom/android/keyguard/R$id;->password1:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/VivoPinView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/VivoPinView;->mPassword1:Landroid/widget/ImageView;

    .line 231
    sget v0, Lcom/android/keyguard/R$id;->password2:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/VivoPinView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/VivoPinView;->mPassword2:Landroid/widget/ImageView;

    .line 232
    sget v0, Lcom/android/keyguard/R$id;->password3:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/VivoPinView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/VivoPinView;->mPassword3:Landroid/widget/ImageView;

    .line 233
    sget v0, Lcom/android/keyguard/R$id;->password4:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/VivoPinView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/VivoPinView;->mPassword4:Landroid/widget/ImageView;

    .line 235
    sget v0, Lcom/android/keyguard/R$id;->vivo_pin_direction_left:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/VivoPinView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/keyguard/VivoPinView;->mPadDirectionLeftBtn:Landroid/widget/Button;

    .line 236
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mPadDirectionLeftBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    sget v0, Lcom/android/keyguard/R$id;->vivo_pin_resume_right:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/VivoPinView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/keyguard/VivoPinView;->mPadResumeRightBtn:Landroid/widget/Button;

    .line 239
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mPadResumeRightBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    sget v0, Lcom/android/keyguard/R$id;->bbk_pin_pad_direction_right:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/VivoPinView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/keyguard/VivoPinView;->mPadDirectionRightBtn:Landroid/widget/Button;

    .line 242
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mPadDirectionRightBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    invoke-virtual {p0}, Lcom/android/keyguard/VivoPinView;->getGesture()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/VivoPinView;->mDragDirection:I

    .line 245
    const-string v0, "VivoPinView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFinishInflate MINIFICATION = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/VivoPinView;->MINIFICATION:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget v0, p0, Lcom/android/keyguard/VivoPinView;->mDragDirection:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/VivoPinView;->getPinStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/VivoPinView;->mPinVewDirection:I

    iget v1, p0, Lcom/android/keyguard/VivoPinView;->mDragDirection:I

    if-eq v0, v1, :cond_0

    .line 248
    iget-object v1, p0, Lcom/android/keyguard/VivoPinView;->mKeyguardPINKeyboard:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/VivoPinView;->mPadResumeLeftBtn:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/keyguard/VivoPinView;->mPadDirectionLeftBtn:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/keyguard/VivoPinView;->mPadResumeRightBtn:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/keyguard/VivoPinView;->mPadDirectionRightBtn:Landroid/widget/Button;

    sget-object v6, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const/16 v7, 0x12c

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/keyguard/VivoPinView;->moveLefOrRight(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;I)V

    .line 253
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/VivoPinView;->getPinStatus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 254
    sput-boolean v9, Lcom/android/keyguard/VivoPinView;->mCurPadNormal:Z

    .line 260
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mKeyguardUtils:Lcom/android/keyguard/KeyguardUtils;

    iget-object v1, p0, Lcom/android/keyguard/VivoPinView;->mVivoPinView:Lcom/android/keyguard/VivoPinView;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUtils;->setBackDrawable(Landroid/view/View;)V

    .line 261
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mKeyguardUtils:Lcom/android/keyguard/KeyguardUtils;

    iget-object v1, p0, Lcom/android/keyguard/VivoPinView;->mWeekView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUtils;->updateWeekInfo(Landroid/widget/TextView;)V

    .line 262
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mKeyguardUtils:Lcom/android/keyguard/KeyguardUtils;

    iget-object v1, p0, Lcom/android/keyguard/VivoPinView;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUtils;->refreshDate(Landroid/widget/TextView;)V

    .line 264
    sget v0, Lcom/android/keyguard/R$id;->time:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/VivoPinView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;

    iput-object v0, p0, Lcom/android/keyguard/VivoPinView;->mDigitalClock:Lcom/android/keyguard/vivo/widget/ImageDigitalClock;

    .line 265
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mDigitalClock:Lcom/android/keyguard/vivo/widget/ImageDigitalClock;

    invoke-virtual {v0, v11}, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 267
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mWeekView:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 268
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 270
    sget v0, Lcom/android/keyguard/R$id;->keyguard_message_area:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/VivoPinView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/VivoPinView;->mMessageArea:Landroid/view/View;

    .line 272
    sget v0, Lcom/android/keyguard/R$id;->simple_group:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/VivoPinView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/VivoPinView;->mSimple_group:Landroid/view/View;

    .line 273
    const-string v0, "persist.vivo.netlock"

    const-string v1, "no"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 274
    .local v8, "netlock":Ljava/lang/String;
    const-string v0, "ro.vivo.op.entry"

    const-string v1, "no"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/VivoPinView;->mOpEntry:Ljava/lang/String;

    .line 275
    const-string v0, "VivoPinView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshNetlock mOpEntry:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/VivoPinView;->mOpEntry:Ljava/lang/String;

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

    .line 277
    const-string v0, "no"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 278
    sget-object v0, Lcom/android/keyguard/VivoPinView;->mOpEntry:Ljava/lang/String;

    const-string v1, "CMCC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/VivoPinView;->mEntry_cmcc:Ljava/lang/Boolean;

    .line 283
    :goto_1
    sget v0, Lcom/android/keyguard/R$id;->keyguard_bouncer_frame:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/VivoPinView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/VivoPinView;->mKeyguardBouncerFrame:Landroid/view/ViewGroup;

    .line 285
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mKeyguardBouncerFrame:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 286
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mKeyguardBouncerFrame:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/VivoPinView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    .line 288
    :cond_1
    return-void

    .line 256
    .end local v8    # "netlock":Ljava/lang/String;
    :cond_2
    sput-boolean v10, Lcom/android/keyguard/VivoPinView;->mCurPadNormal:Z

    goto/16 :goto_0

    .line 280
    .restart local v8    # "netlock":Ljava/lang/String;
    :cond_3
    sget-object v0, Lcom/android/keyguard/VivoPinView;->mOpEntry:Ljava/lang/String;

    const-string v1, "CMCC_RW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/android/keyguard/VivoPinView;->mOpEntry:Ljava/lang/String;

    const-string v1, "CMCC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    move v0, v10

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/VivoPinView;->mEntry_cmcc:Ljava/lang/Boolean;

    goto :goto_1

    :cond_5
    move v0, v9

    goto :goto_2
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 383
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 384
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 386
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/VivoPinView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 388
    :cond_0
    return-void
.end method

.method public onResume(I)V
    .locals 2
    .param p1, "reason"    # I

    .prologue
    .line 392
    const-string v0, " "

    iput-object v0, p0, Lcom/android/keyguard/VivoPinView;->mUserPassword:Ljava/lang/String;

    .line 393
    invoke-direct {p0}, Lcom/android/keyguard/VivoPinView;->updateDelButtonText()V

    .line 394
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mPassword1:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->vivo_pin_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 395
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mPassword2:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->vivo_pin_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 396
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mPassword3:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->vivo_pin_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 397
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mPassword4:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->vivo_pin_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 399
    invoke-virtual {p0}, Lcom/android/keyguard/VivoPinView;->reset()V

    .line 400
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 885
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 886
    iget-object v1, p0, Lcom/android/keyguard/VivoPinView;->mKeyguardPINKeyboard:Landroid/view/View;

    iget-object v3, p0, Lcom/android/keyguard/VivoPinView;->mPadResumeLeftBtn:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/keyguard/VivoPinView;->mPadDirectionLeftBtn:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/keyguard/VivoPinView;->mPadResumeRightBtn:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/keyguard/VivoPinView;->mPadDirectionRightBtn:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/keyguard/VivoPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    sget-object v8, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-object v0, p0

    move-object v2, p2

    invoke-virtual/range {v0 .. v8}, Lcom/android/keyguard/VivoPinView;->onVivoTouch(Landroid/view/View;Landroid/view/MotionEvent;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 890
    const/4 v0, 0x1

    return v0
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
    .line 81
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
    .line 81
    invoke-super/range {p0 .. p8}, Lcom/android/keyguard/VivoBaseView;->onVivoTouch(Landroid/view/View;Landroid/view/MotionEvent;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 8
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 404
    invoke-super {p0, p1}, Lcom/android/keyguard/VivoBaseView;->onWindowFocusChanged(Z)V

    .line 405
    const-string v0, "VivoPinView"

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

    .line 407
    const-string v0, " "

    iput-object v0, p0, Lcom/android/keyguard/VivoPinView;->mUserPassword:Ljava/lang/String;

    .line 408
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mPassword1:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->vivo_pin_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 409
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mPassword2:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->vivo_pin_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 410
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mPassword3:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->vivo_pin_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 411
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mPassword4:Landroid/widget/ImageView;

    sget v1, Lcom/android/keyguard/R$drawable;->vivo_pin_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 413
    if-eqz p1, :cond_2

    .line 415
    invoke-virtual {p0}, Lcom/android/keyguard/VivoPinView;->reset()V

    .line 416
    const-string v0, "VivoPinView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged mDragDirection = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/VivoPinView;->mDragDirection:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-virtual {p0}, Lcom/android/keyguard/VivoPinView;->getGesture()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/VivoPinView;->mDragDirection:I

    .line 418
    iget v0, p0, Lcom/android/keyguard/VivoPinView;->mDragDirection:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/VivoPinView;->getPinStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/VivoPinView;->mPinVewDirection:I

    iget v1, p0, Lcom/android/keyguard/VivoPinView;->mDragDirection:I

    if-eq v0, v1, :cond_0

    .line 419
    iget-object v1, p0, Lcom/android/keyguard/VivoPinView;->mKeyguardPINKeyboard:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/VivoPinView;->mPadResumeLeftBtn:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/keyguard/VivoPinView;->mPadDirectionLeftBtn:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/keyguard/VivoPinView;->mPadResumeRightBtn:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/keyguard/VivoPinView;->mPadDirectionRightBtn:Landroid/widget/Button;

    sget-object v6, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const/16 v7, 0x12c

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/keyguard/VivoPinView;->moveLefOrRight(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;I)V

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUtils;->getEyeLock(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 425
    const-string v0, "VivoPinView"

    const-string v1, "showView((View)mVivoPinView) "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mVivoPinView:Lcom/android/keyguard/VivoPinView;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/VivoPinView;->showView(Landroid/view/View;)V

    .line 429
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUtils;->getEyeLock(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/VivoPinView;->getAutoStatus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 430
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->showSecurity()V

    .line 431
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/VivoPinView;->setAutoStatus(Z)V

    .line 434
    :cond_2
    return-void
.end method

.method public bridge synthetic onZoomPrepared(ILandroid/view/MotionEvent;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 81
    invoke-super {p0, p1, p2}, Lcom/android/keyguard/VivoBaseView;->onZoomPrepared(ILandroid/view/MotionEvent;)V

    return-void
.end method

.method public reset()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 439
    iget-object v2, p0, Lcom/android/keyguard/VivoPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const-string v3, " "

    invoke-interface {v2, v3, v5}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 440
    iget-object v2, p0, Lcom/android/keyguard/VivoPinView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v0

    .line 441
    .local v0, "deadline":J
    const-string v2, "VivoPinView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reset deadline = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/VivoPinView;->shouldLockout(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 443
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/VivoPinView;->handleAttemptLockout(J)V

    .line 449
    :goto_0
    return-void

    .line 445
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/VivoPinView;->resetState()V

    .line 446
    iput-boolean v5, p0, Lcom/android/keyguard/VivoPinView;->mPasswordEnable:Z

    .line 447
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/keyguard/VivoPinView;->mTimeRuning:Z

    goto :goto_0
.end method

.method protected resetState()V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/android/keyguard/VivoPinView;->showDefautMessage()V

    .line 142
    return-void
.end method

.method public bridge synthetic setAutoStatus(Z)V
    .locals 0
    .param p1, "x0"    # Z

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/android/keyguard/VivoBaseView;->setAutoStatus(Z)V

    return-void
.end method

.method public bridge synthetic setEyeStatus(Z)V
    .locals 0
    .param p1, "x0"    # Z

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/android/keyguard/VivoBaseView;->setEyeStatus(Z)V

    return-void
.end method

.method public bridge synthetic setGesture(I)V
    .locals 0
    .param p1, "x0"    # I

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/android/keyguard/VivoBaseView;->setGesture(I)V

    return-void
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 456
    iput-object p1, p0, Lcom/android/keyguard/VivoPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 457
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 452
    iput-object p1, p0, Lcom/android/keyguard/VivoPinView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 453
    return-void
.end method

.method public bridge synthetic setPinStatus(Z)V
    .locals 0
    .param p1, "x0"    # Z

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/android/keyguard/VivoBaseView;->setPinStatus(Z)V

    return-void
.end method

.method protected shouldLockout(J)Z
    .locals 3
    .param p1, "deadline"    # J

    .prologue
    .line 465
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
    .line 360
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/keyguard/VivoPinView;->mEcaView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/VivoPinView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->showBouncer(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 362
    return-void
.end method

.method public showSecurity(Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 915
    const-string v1, "VivoPinView"

    const-string v2, "showSecurity"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    iget-object v1, p0, Lcom/android/keyguard/VivoPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 917
    iget-object v1, p0, Lcom/android/keyguard/VivoPinView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 918
    .local v0, "mesg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 919
    iget-object v1, p0, Lcom/android/keyguard/VivoPinView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 920
    iget-object v1, p0, Lcom/android/keyguard/VivoPinView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 921
    return-void
.end method

.method public showUsabilityHint()V
    .locals 0

    .prologue
    .line 292
    return-void
.end method

.method public bridge synthetic showView(Landroid/view/View;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/View;

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/android/keyguard/VivoBaseView;->showView(Landroid/view/View;)V

    return-void
.end method

.method public startAppearAnimation()V
    .locals 5

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 296
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUtils;->getEyeLock(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/VivoPinView;->getEyeStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/VivoPinView;->mBatteryLevel:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 297
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mVivoPinView:Lcom/android/keyguard/VivoPinView;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/VivoPinView;->hideView(Landroid/view/View;)V

    .line 298
    invoke-virtual {p0}, Lcom/android/keyguard/VivoPinView;->startVerifyEye()V

    .line 300
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keyguard/VivoPinView;->enableClipping(Z)V

    .line 302
    invoke-virtual {p0}, Lcom/android/keyguard/VivoPinView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUtils;->getNatureType(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 303
    invoke-virtual {p0, v4}, Lcom/android/keyguard/VivoPinView;->setAlpha(F)V

    .line 304
    invoke-virtual {p0}, Lcom/android/keyguard/VivoPinView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/VivoPinView;->mContext:Landroid/content/Context;

    const v2, 0x10c000f

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 318
    :goto_0
    return-void

    .line 311
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/keyguard/VivoPinView;->setAlpha(F)V

    .line 312
    iget-object v0, p0, Lcom/android/keyguard/VivoPinView;->mAppearAnimationUtils:Lcom/android/keyguard/AppearAnimationUtils;

    invoke-virtual {v0}, Lcom/android/keyguard/AppearAnimationUtils;->getStartTranslation()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/VivoPinView;->setTranslationY(F)V

    .line 313
    invoke-virtual {p0}, Lcom/android/keyguard/VivoPinView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/VivoPinView;->mAppearAnimationUtils:Lcom/android/keyguard/AppearAnimationUtils;

    invoke-virtual {v1}, Lcom/android/keyguard/AppearAnimationUtils;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 8
    .param p1, "finishRunnable"    # Ljava/lang/Runnable;

    .prologue
    const-wide/16 v6, 0x64

    const v5, 0x10c000f

    const/4 v4, 0x0

    .line 322
    const-string v1, "sys.fingerprint.keguard"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, "finger":Ljava/lang/String;
    const-string v1, "VivoPinView"

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

    .line 324
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 325
    iget-object v1, p0, Lcom/android/keyguard/VivoPinView;->mVivoPinView:Lcom/android/keyguard/VivoPinView;

    invoke-virtual {v1, v4}, Lcom/android/keyguard/VivoPinView;->setAlpha(F)V

    .line 327
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/VivoPinView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUtils;->getNatureType(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 328
    invoke-virtual {p0}, Lcom/android/keyguard/VivoPinView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/VivoPinView;->mContext:Landroid/content/Context;

    invoke-static {v2, v5}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 344
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 336
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/VivoPinView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/VivoPinView;->mDisappearYTranslation:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/VivoPinView;->mContext:Landroid/content/Context;

    invoke-static {v2, v5}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method public bridge synthetic startVerifyEye()V
    .locals 0

    .prologue
    .line 81
    invoke-super {p0}, Lcom/android/keyguard/VivoBaseView;->startVerifyEye()V

    return-void
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 605
    iget-object v5, p0, Lcom/android/keyguard/VivoPinView;->mUserPassword:Ljava/lang/String;

    .line 608
    .local v5, "entry":Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/android/keyguard/VivoPinView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6, v5}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 614
    .local v1, "checkPassword":Z
    :goto_0
    const-string v6, "VivoPinView"

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

    .line 615
    if-eqz v1, :cond_1

    .line 616
    iget-object v6, p0, Lcom/android/keyguard/VivoPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v6, v10}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(Z)V

    .line 617
    iget-object v6, p0, Lcom/android/keyguard/VivoPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v6, v10}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 620
    invoke-static {v11}, Lcom/android/keyguard/KeyguardUtils;->setFingerMessageShow(Z)V

    .line 647
    :cond_0
    :goto_1
    const-string v6, " "

    iput-object v6, p0, Lcom/android/keyguard/VivoPinView;->mUserPassword:Ljava/lang/String;

    .line 648
    return-void

    .line 609
    .end local v1    # "checkPassword":Z
    :catch_0
    move-exception v4

    .line 610
    .local v4, "e":Ljava/lang/Exception;
    const-string v6, "VivoPinView"

    const-string v7, "try  catch"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    const/4 v1, 0x0

    .restart local v1    # "checkPassword":Z
    goto :goto_0

    .line 623
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x4

    if-lt v6, v7, :cond_0

    .line 627
    iget-object v6, p0, Lcom/android/keyguard/VivoPinView;->mEntry_cmcc:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 628
    iput-boolean v11, p0, Lcom/android/keyguard/VivoPinView;->mPasswordEnable:Z

    .line 629
    iget-object v6, p0, Lcom/android/keyguard/VivoPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-virtual {p0}, Lcom/android/keyguard/VivoPinView;->getWrongPasswordStringId()I

    move-result v7

    invoke-interface {v6, v7, v10}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 630
    iget-object v6, p0, Lcom/android/keyguard/VivoPinView;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x6

    const-wide/16 v8, 0x7d0

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 635
    :goto_2
    invoke-virtual {p0}, Lcom/android/keyguard/VivoPinView;->vibrate()V

    .line 636
    iget-object v6, p0, Lcom/android/keyguard/VivoPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v6, v11}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(Z)V

    .line 637
    iget-object v6, p0, Lcom/android/keyguard/VivoPinView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFailedUnlockAttempts()I

    move-result v0

    .line 638
    .local v0, "attempts":I
    rem-int/lit8 v6, v0, 0x5

    if-nez v6, :cond_0

    .line 640
    iput-boolean v10, p0, Lcom/android/keyguard/VivoPinView;->mTimeRuning:Z

    .line 641
    iget-object v6, p0, Lcom/android/keyguard/VivoPinView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline()J

    move-result-wide v2

    .line 642
    .local v2, "deadline":J
    invoke-virtual {p0, v2, v3}, Lcom/android/keyguard/VivoPinView;->handleAttemptLockout(J)V

    goto :goto_1

    .line 632
    .end local v0    # "attempts":I
    .end local v2    # "deadline":J
    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/VivoPinView;->passwordbgAnim()V

    goto :goto_2
.end method

.method public bridge synthetic vibrate()V
    .locals 0

    .prologue
    .line 81
    invoke-super {p0}, Lcom/android/keyguard/VivoBaseView;->vibrate()V

    return-void
.end method
