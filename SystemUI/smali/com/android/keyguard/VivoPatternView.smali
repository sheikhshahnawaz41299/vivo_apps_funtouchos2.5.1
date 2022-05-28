.class public Lcom/android/keyguard/VivoPatternView;
.super Lcom/android/keyguard/VivoBaseView;
.source "VivoPatternView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/keyguard/AppearAnimationCreator;
.implements Lcom/android/keyguard/KeyguardSecurityView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/VivoPatternView$UnlockPatternListener;,
        Lcom/android/keyguard/VivoPatternView$FooterMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/keyguard/VivoBaseView;",
        "Lcom/android/keyguard/KeyguardSecurityView;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/android/keyguard/AppearAnimationCreator",
        "<",
        "Lcom/android/internal/widget/LockPatternView$CellState;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final FINGERFAIL:I = 0x0

.field private static final MIN_PATTERN_BEFORE_POKE_WAKELOCK:I = 0x2

.field private static final PATTERN_CLEAR:I = 0x5

.field private static final PATTERN_CLEAR_TIMEOUT_MS:I = 0x7d0

.field private static final SETCLOCK_CENTER:I = 0x3

.field private static final SHOW_LOCKSCREEN:I = 0x4

.field private static final TAG:Ljava/lang/String; = "VivoPatternView"

.field private static final UNLOCK_PATTERN_WAKE_INTERVAL_MS:I = 0x1b58

.field private static final UPDATE_MESSAGE_AREA:I = 0x2

.field private static mOpEntry:Ljava/lang/String;


# instance fields
.field private final mAppearAnimationUtils:Lcom/android/keyguard/AppearAnimationUtils;

.field mBatteryLevel:I

.field private mBouncerFrame:Landroid/graphics/drawable/Drawable;

.field private mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mCancelPatternRunnable:Ljava/lang/Runnable;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mDateView:Landroid/widget/TextView;

.field private mDigitalClock:Lcom/android/keyguard/vivo/widget/ImageDigitalClock;

.field private mDisappearYTranslation:I

.field private mEcaView:Landroid/view/View;

.field private mEntry_cmcc:Ljava/lang/Boolean;

.field private mHandler:Landroid/os/Handler;

.field private mHelpMessage:Lcom/android/keyguard/KeyguardMessageArea;

.field private mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mKeyguardBouncerFrame:Landroid/view/ViewGroup;

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mKeyguardUtils:Lcom/android/keyguard/KeyguardUtils;

.field private mLastPokeTime:J

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockPattern_eca:Landroid/view/View;

.field private mPadDirectionLeftBtn:Landroid/widget/Button;

.field private mPadDirectionRightBtn:Landroid/widget/Button;

.field private mPadResumeLeftBtn:Landroid/widget/Button;

.field private mPadResumeRightBtn:Landroid/widget/Button;

.field protected mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

.field protected mSecurityMessageTitle:Lcom/android/keyguard/SecurityMessageDisplay;

.field private mSpeedObserver:Landroid/database/ContentObserver;

.field private mTempRect:Landroid/graphics/Rect;

.field private mTempState:I

.field private mUnlockPatternView:Lcom/android/keyguard/UnLockPatternView;

.field private mVivo_pattern_view:Lcom/android/keyguard/VivoPatternView;

.field private mWeekView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 158
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/VivoPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 159
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 162
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/VivoBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 113
    const-wide/16 v0, -0x1b58

    iput-wide v0, p0, Lcom/android/keyguard/VivoPatternView;->mLastPokeTime:J

    .line 118
    new-instance v0, Lcom/android/keyguard/VivoPatternView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/VivoPatternView$1;-><init>(Lcom/android/keyguard/VivoPatternView;)V

    iput-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mCancelPatternRunnable:Ljava/lang/Runnable;

    .line 123
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mTempRect:Landroid/graphics/Rect;

    .line 137
    iput v2, p0, Lcom/android/keyguard/VivoPatternView;->mTempState:I

    .line 147
    iput v2, p0, Lcom/android/keyguard/VivoPatternView;->mBatteryLevel:I

    .line 148
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mEntry_cmcc:Ljava/lang/Boolean;

    .line 692
    new-instance v0, Lcom/android/keyguard/VivoPatternView$6;

    invoke-direct {v0, p0}, Lcom/android/keyguard/VivoPatternView$6;-><init>(Lcom/android/keyguard/VivoPatternView;)V

    iput-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 720
    new-instance v0, Lcom/android/keyguard/VivoPatternView$7;

    invoke-direct {v0, p0}, Lcom/android/keyguard/VivoPatternView$7;-><init>(Lcom/android/keyguard/VivoPatternView;)V

    iput-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mHandler:Landroid/os/Handler;

    .line 835
    new-instance v0, Lcom/android/keyguard/VivoPatternView$8;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/VivoPatternView$8;-><init>(Lcom/android/keyguard/VivoPatternView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mSpeedObserver:Landroid/database/ContentObserver;

    .line 163
    iget-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 166
    new-instance v0, Lcom/android/keyguard/AppearAnimationUtils;

    const-wide/16 v2, 0xdc

    const/high16 v4, 0x3fc00000    # 1.5f

    const/high16 v5, 0x40000000    # 2.0f

    iget-object v1, p0, Lcom/android/keyguard/VivoPatternView;->mContext:Landroid/content/Context;

    const v6, 0x10c000e

    invoke-static {v1, v6}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v6

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/AppearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mAppearAnimationUtils:Lcom/android/keyguard/AppearAnimationUtils;

    .line 170
    invoke-virtual {p0}, Lcom/android/keyguard/VivoPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$dimen;->disappear_y_translation:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/VivoPatternView;->mDisappearYTranslation:I

    .line 172
    new-instance v0, Lcom/android/keyguard/KeyguardUtils;

    invoke-direct {v0, p1}, Lcom/android/keyguard/KeyguardUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mKeyguardUtils:Lcom/android/keyguard/KeyguardUtils;

    .line 173
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/VivoPatternView;)Lcom/android/keyguard/UnLockPatternView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/VivoPatternView;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mUnlockPatternView:Lcom/android/keyguard/UnLockPatternView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/keyguard/VivoPatternView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/VivoPatternView;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mWeekView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/keyguard/VivoPatternView;)Lcom/android/keyguard/KeyguardUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/VivoPatternView;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mKeyguardUtils:Lcom/android/keyguard/KeyguardUtils;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/keyguard/VivoPatternView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/VivoPatternView;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mDateView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/keyguard/VivoPatternView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/VivoPatternView;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/keyguard/VivoPatternView;)Lcom/android/keyguard/vivo/widget/ImageDigitalClock;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/VivoPatternView;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mDigitalClock:Lcom/android/keyguard/vivo/widget/ImageDigitalClock;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/keyguard/VivoPatternView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/VivoPatternView;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/keyguard/VivoPatternView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/VivoPatternView;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/VivoPatternView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/VivoPatternView;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mCancelPatternRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/VivoPatternView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/VivoPatternView;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/keyguard/VivoPatternView;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/VivoPatternView;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/keyguard/VivoPatternView;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/VivoPatternView;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/keyguard/VivoPatternView;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/VivoPatternView;
    .param p1, "x1"    # J

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/VivoPatternView;->handleAttemptLockout(J)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/keyguard/VivoPatternView;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/VivoPatternView;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mEntry_cmcc:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/keyguard/VivoPatternView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/VivoPatternView;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/keyguard/VivoPatternView;->showWrongPassword()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/keyguard/VivoPatternView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/VivoPatternView;
    .param p1, "x1"    # Z

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/android/keyguard/VivoPatternView;->enableClipping(Z)V

    return-void
.end method

.method private displayDefaultSecurityMessage()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 329
    invoke-static {}, Lcom/android/keyguard/KeyguardUtils;->getFingerMessageShow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 330
    iget-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mContext:Landroid/content/Context;

    const-string v1, "finger_unlock_open"

    invoke-static {v0, v1, v2}, Lcom/android/keyguard/KeyguardUtils;->settingsGetInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 331
    iget-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mSecurityMessageTitle:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v1, Lcom/android/keyguard/R$string;->use_fingerprint_or_pattern:I

    invoke-interface {v0, v1, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-direct {p0}, Lcom/android/keyguard/VivoPatternView;->getWrongPasswordMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 335
    :cond_1
    return-void
.end method

.method private enableClipping(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 585
    invoke-virtual {p0, p1}, Lcom/android/keyguard/VivoPatternView;->setClipChildren(Z)V

    .line 586
    iget-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mKeyguardBouncerFrame:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 587
    iget-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mKeyguardBouncerFrame:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 588
    return-void
.end method

.method private getWrongPasswordMessage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 429
    invoke-virtual {p0}, Lcom/android/keyguard/VivoPatternView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->kg_wrong_pattern:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 434
    .local v0, "msg":Ljava/lang/String;
    return-object v0
.end method

.method private handleAttemptLockout(J)V
    .locals 9
    .param p1, "elapsedRealtimeDeadline"    # J

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mUnlockPatternView:Lcom/android/keyguard/UnLockPatternView;

    invoke-virtual {v0}, Lcom/android/keyguard/UnLockPatternView;->clearPattern()V

    .line 439
    iget-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mUnlockPatternView:Lcom/android/keyguard/UnLockPatternView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/UnLockPatternView;->setEnabled(Z)V

    .line 440
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 442
    .local v6, "elapsedRealtime":J
    new-instance v0, Lcom/android/keyguard/VivoPatternView$2;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/VivoPatternView$2;-><init>(Lcom/android/keyguard/VivoPatternView;JJ)V

    invoke-virtual {v0}, Lcom/android/keyguard/VivoPatternView$2;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 461
    return-void
.end method

.method private showWrongPassword()V
    .locals 3

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-direct {p0}, Lcom/android/keyguard/VivoPatternView;->getWrongPasswordMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 421
    return-void
.end method


# virtual methods
.method public bridge synthetic animatorIsRuning()Z
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Lcom/android/keyguard/VivoBaseView;->animatorIsRuning()Z

    move-result v0

    return v0
.end method

.method public cleanUp()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 350
    const-string v0, "VivoPatternView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cleanup() called on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iput-object v3, p0, Lcom/android/keyguard/VivoPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 352
    iget-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mUnlockPatternView:Lcom/android/keyguard/UnLockPatternView;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/UnLockPatternView;->setOnPatternListener(Lcom/android/keyguard/UnLockPatternView$OnPatternListener;)V

    .line 353
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
    .line 84
    invoke-super/range {p0 .. p5}, Lcom/android/keyguard/VivoBaseView;->clickResume(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public createAnimation(Lcom/android/internal/widget/LockPatternView$CellState;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 14
    .param p1, "animatedCell"    # Lcom/android/internal/widget/LockPatternView$CellState;
    .param p2, "delay"    # J
    .param p4, "duration"    # J
    .param p6, "translationY"    # F
    .param p7, "appearing"    # Z
    .param p8, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p9, "finishListener"    # Ljava/lang/Runnable;

    .prologue
    .line 595
    if-eqz p7, :cond_0

    .line 596
    const/4 v2, 0x0

    iput v2, p1, Lcom/android/internal/widget/LockPatternView$CellState;->scale:F

    .line 597
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p1, Lcom/android/internal/widget/LockPatternView$CellState;->alpha:F

    .line 599
    :cond_0
    if-eqz p7, :cond_2

    move/from16 v2, p6

    :goto_0
    iput v2, p1, Lcom/android/internal/widget/LockPatternView$CellState;->translateY:F

    .line 600
    const/4 v2, 0x2

    new-array v3, v2, [F

    const/4 v2, 0x0

    iget v4, p1, Lcom/android/internal/widget/LockPatternView$CellState;->translateY:F

    aput v4, v3, v2

    const/4 v4, 0x1

    if-eqz p7, :cond_3

    const/4 v2, 0x0

    :goto_1
    aput v2, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v12

    .line 602
    .local v12, "animator":Landroid/animation/ValueAnimator;
    move-object/from16 v0, p8

    invoke-virtual {v12, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 603
    move-wide/from16 v0, p4

    invoke-virtual {v12, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 604
    move-wide/from16 v0, p2

    invoke-virtual {v12, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 605
    new-instance v2, Lcom/android/keyguard/VivoPatternView$4;

    move/from16 v0, p7

    invoke-direct {v2, p0, v0, p1}, Lcom/android/keyguard/VivoPatternView$4;-><init>(Lcom/android/keyguard/VivoPatternView;ZLcom/android/internal/widget/LockPatternView$CellState;)V

    invoke-virtual {v12, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 618
    if-eqz p9, :cond_1

    .line 619
    new-instance v2, Lcom/android/keyguard/VivoPatternView$5;

    move-object/from16 v0, p9

    invoke-direct {v2, p0, v0}, Lcom/android/keyguard/VivoPatternView$5;-><init>(Lcom/android/keyguard/VivoPatternView;Ljava/lang/Runnable;)V

    invoke-virtual {v12, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 627
    iget-object v2, p0, Lcom/android/keyguard/VivoPatternView;->mAppearAnimationUtils:Lcom/android/keyguard/AppearAnimationUtils;

    iget-object v3, p0, Lcom/android/keyguard/VivoPatternView;->mEcaView:Landroid/view/View;

    const/4 v11, 0x0

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    invoke-virtual/range {v2 .. v11}, Lcom/android/keyguard/AppearAnimationUtils;->createAnimation(Landroid/view/View;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 630
    :cond_1
    invoke-virtual {v12}, Landroid/animation/ValueAnimator;->start()V

    .line 631
    iget-object v2, p0, Lcom/android/keyguard/VivoPatternView;->mUnlockPatternView:Lcom/android/keyguard/UnLockPatternView;

    invoke-virtual {v2}, Lcom/android/keyguard/UnLockPatternView;->invalidate()V

    .line 632
    return-void

    .line 599
    .end local v12    # "animator":Landroid/animation/ValueAnimator;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    move/from16 v2, p6

    .line 600
    goto :goto_1
.end method

.method public bridge synthetic createAnimation(Ljava/lang/Object;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 10
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # J
    .param p4, "x2"    # J
    .param p6, "x3"    # F
    .param p7, "x4"    # Z
    .param p8, "x5"    # Landroid/view/animation/Interpolator;
    .param p9, "x6"    # Ljava/lang/Runnable;

    .prologue
    .line 84
    move-object v1, p1

    check-cast v1, Lcom/android/internal/widget/LockPatternView$CellState;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/android/keyguard/VivoPatternView;->createAnimation(Lcom/android/internal/widget/LockPatternView$CellState;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic getAnin()Landroid/animation/AnimatorSet;
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Lcom/android/keyguard/VivoBaseView;->getAnin()Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAutoStatus()Z
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Lcom/android/keyguard/VivoBaseView;->getAutoStatus()Z

    move-result v0

    return v0
.end method

.method public getCallback()Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method public bridge synthetic getEyeStatus()Z
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Lcom/android/keyguard/VivoBaseView;->getEyeStatus()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getFinger()Z
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Lcom/android/keyguard/VivoBaseView;->getFinger()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getGesture()I
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Lcom/android/keyguard/VivoBaseView;->getGesture()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getOnehandStatus()Z
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Lcom/android/keyguard/VivoBaseView;->getOnehandStatus()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getPinStatus()Z
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Lcom/android/keyguard/VivoBaseView;->getPinStatus()Z

    move-result v0

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 636
    const/4 v0, 0x0

    return v0
.end method

.method public hideBouncer(I)V
    .locals 3
    .param p1, "duration"    # I

    .prologue
    .line 503
    const-string v0, "VivoPatternView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideBouncer duration:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    iget-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/keyguard/VivoPatternView;->mEcaView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/VivoPatternView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->hideBouncer(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 506
    return-void
.end method

.method public bridge synthetic hideView(Landroid/view/View;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/View;

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/android/keyguard/VivoBaseView;->hideView(Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic isFingerprintAuthAvailable()Z
    .locals 1

    .prologue
    .line 84
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
    .line 84
    invoke-super/range {p0 .. p7}, Lcom/android/keyguard/VivoBaseView;->moveLefOrRight(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;I)V

    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 465
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 674
    const-string v0, "VivoPatternView"

    const-string v1, "onAttachedToWindow "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    iget-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/VivoPatternView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 676
    iget-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUtils;->getEyeLock(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 677
    const-string v0, "VivoPatternView"

    const-string v1, "onAttachedToWindow "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    invoke-virtual {p0}, Lcom/android/keyguard/VivoPatternView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "EyeIdentify_VerifyResult"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/keyguard/VivoPatternView;->mSpeedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 680
    :cond_0
    invoke-super {p0}, Lcom/android/keyguard/VivoBaseView;->onAttachedToWindow()V

    .line 681
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v7, 0x12c

    const/4 v10, 0x1

    .line 802
    iget-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 803
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    int-to-long v8, v0

    .line 804
    .local v8, "getid":J
    sget v0, Lcom/android/keyguard/R$id;->vivo_pattern_pad_resume_left:I

    int-to-long v0, v0

    cmp-long v0, v8, v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/keyguard/R$id;->vivo_pattern_pad_resume_right:I

    int-to-long v0, v0

    cmp-long v0, v8, v0

    if-nez v0, :cond_2

    .line 806
    :cond_0
    const-string v0, "VivoPatternView"

    const-string v1, "onclick bbk_dialer_pad_resume_left"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    iget-object v1, p0, Lcom/android/keyguard/VivoPatternView;->mLockPattern_eca:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/VivoPatternView;->mPadResumeLeftBtn:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/keyguard/VivoPatternView;->mPadDirectionLeftBtn:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/keyguard/VivoPatternView;->mPadResumeRightBtn:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/keyguard/VivoPatternView;->mPadDirectionRightBtn:Landroid/widget/Button;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/keyguard/VivoPatternView;->clickResume(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 811
    sput-boolean v10, Lcom/android/keyguard/VivoPatternView;->mCurPadNormal:Z

    .line 812
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/VivoPatternView;->setPinStatus(Z)V

    .line 833
    :cond_1
    :goto_0
    return-void

    .line 813
    :cond_2
    sget v0, Lcom/android/keyguard/R$id;->vivo_pattern_pad_direction_left:I

    int-to-long v0, v0

    cmp-long v0, v8, v0

    if-nez v0, :cond_3

    .line 814
    const-string v0, "VivoPatternView"

    const-string v1, "onclick bbk_pattern_pad_direction_left"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    iput v10, p0, Lcom/android/keyguard/VivoPatternView;->mDragDirection:I

    .line 816
    iget v0, p0, Lcom/android/keyguard/VivoPatternView;->mDragDirection:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/VivoPatternView;->setGesture(I)V

    .line 818
    iget-object v1, p0, Lcom/android/keyguard/VivoPatternView;->mLockPattern_eca:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/VivoPatternView;->mPadResumeLeftBtn:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/keyguard/VivoPatternView;->mPadDirectionLeftBtn:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/keyguard/VivoPatternView;->mPadResumeRightBtn:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/keyguard/VivoPatternView;->mPadDirectionRightBtn:Landroid/widget/Button;

    sget-object v6, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/keyguard/VivoPatternView;->moveLefOrRight(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;I)V

    .line 821
    invoke-virtual {p0, v10}, Lcom/android/keyguard/VivoPatternView;->setPinStatus(Z)V

    goto :goto_0

    .line 822
    :cond_3
    sget v0, Lcom/android/keyguard/R$id;->vivo_pattern_pad_direction_right:I

    int-to-long v0, v0

    cmp-long v0, v8, v0

    if-nez v0, :cond_1

    .line 823
    const-string v0, "VivoPatternView"

    const-string v1, "onclick bbk_pattern_pad_direction_right"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/keyguard/VivoPatternView;->mDragDirection:I

    .line 825
    iget v0, p0, Lcom/android/keyguard/VivoPatternView;->mDragDirection:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/VivoPatternView;->setGesture(I)V

    .line 827
    iget-object v1, p0, Lcom/android/keyguard/VivoPatternView;->mLockPattern_eca:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/VivoPatternView;->mPadResumeLeftBtn:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/keyguard/VivoPatternView;->mPadDirectionLeftBtn:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/keyguard/VivoPatternView;->mPadResumeRightBtn:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/keyguard/VivoPatternView;->mPadDirectionRightBtn:Landroid/widget/Button;

    sget-object v6, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/keyguard/VivoPatternView;->moveLefOrRight(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;I)V

    .line 830
    invoke-virtual {p0, v10}, Lcom/android/keyguard/VivoPatternView;->setPinStatus(Z)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 685
    const-string v0, "VivoPatternView"

    const-string v1, "onDetachedFromWindow "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    iget-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/VivoPatternView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 687
    iget-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUtils;->getEyeLock(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 688
    invoke-virtual {p0}, Lcom/android/keyguard/VivoPatternView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/VivoPatternView;->mSpeedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 690
    :cond_0
    invoke-super {p0}, Lcom/android/keyguard/VivoBaseView;->onDetachedFromWindow()V

    .line 691
    return-void
.end method

.method protected onFinishInflate()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 185
    invoke-super {p0}, Lcom/android/keyguard/VivoBaseView;->onFinishInflate()V

    .line 186
    iget-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/keyguard/VivoPatternView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    :goto_0
    iput-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 189
    sget v0, Lcom/android/keyguard/R$id;->unlockPatternView:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/VivoPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/UnLockPatternView;

    iput-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mUnlockPatternView:Lcom/android/keyguard/UnLockPatternView;

    .line 190
    iget-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mUnlockPatternView:Lcom/android/keyguard/UnLockPatternView;

    invoke-virtual {v0, v11}, Lcom/android/keyguard/UnLockPatternView;->setSaveEnabled(Z)V

    .line 191
    iget-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mUnlockPatternView:Lcom/android/keyguard/UnLockPatternView;

    invoke-virtual {v0, v11}, Lcom/android/keyguard/UnLockPatternView;->setFocusable(Z)V

    .line 192
    iget-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mUnlockPatternView:Lcom/android/keyguard/UnLockPatternView;

    new-instance v1, Lcom/android/keyguard/VivoPatternView$UnlockPatternListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/VivoPatternView$UnlockPatternListener;-><init>(Lcom/android/keyguard/VivoPatternView;Lcom/android/keyguard/VivoPatternView$1;)V

    invoke-virtual {v0, v1}, Lcom/android/keyguard/UnLockPatternView;->setOnPatternListener(Lcom/android/keyguard/UnLockPatternView$OnPatternListener;)V

    .line 195
    iget-object v1, p0, Lcom/android/keyguard/VivoPatternView;->mUnlockPatternView:Lcom/android/keyguard/UnLockPatternView;

    iget-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v10

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/keyguard/UnLockPatternView;->setInStealthMode(Z)V

    .line 198
    iget-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mUnlockPatternView:Lcom/android/keyguard/UnLockPatternView;

    iget-object v1, p0, Lcom/android/keyguard/VivoPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/UnLockPatternView;->setTactileFeedbackEnabled(Z)V

    .line 200
    invoke-virtual {p0, v10}, Lcom/android/keyguard/VivoPatternView;->setFocusableInTouchMode(Z)V

    .line 202
    new-instance v0, Lcom/android/keyguard/KeyguardMessageArea$Helper;

    sget v1, Lcom/android/keyguard/R$id;->keyguard_message_area:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/VivoPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    .line 203
    new-instance v0, Lcom/android/keyguard/KeyguardMessageArea$Helper;

    sget v1, Lcom/android/keyguard/R$id;->vivo_message_title:I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/VivoPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/keyguard/KeyguardMessageArea$Helper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mSecurityMessageTitle:Lcom/android/keyguard/SecurityMessageDisplay;

    .line 204
    sget v0, Lcom/android/keyguard/R$id;->keyguard_selector_fade_container:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/VivoPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mEcaView:Landroid/view/View;

    .line 205
    sget v0, Lcom/android/keyguard/R$id;->keyguard_bouncer_frame:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/VivoPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 206
    .local v8, "bouncerFrameView":Landroid/view/View;
    if-eqz v8, :cond_0

    .line 207
    invoke-virtual {v8}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    .line 211
    :cond_0
    sget v0, Lcom/android/keyguard/R$id;->lockPattern_eca:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/VivoPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mLockPattern_eca:Landroid/view/View;

    .line 213
    sget v0, Lcom/android/keyguard/R$id;->vivo_pattern_pad_resume_left:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/VivoPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mPadResumeLeftBtn:Landroid/widget/Button;

    .line 214
    iget-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mPadResumeLeftBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    sget v0, Lcom/android/keyguard/R$id;->vivo_pattern_pad_direction_left:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/VivoPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mPadDirectionLeftBtn:Landroid/widget/Button;

    .line 217
    iget-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mPadDirectionLeftBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    sget v0, Lcom/android/keyguard/R$id;->vivo_pattern_pad_resume_right:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/VivoPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mPadResumeRightBtn:Landroid/widget/Button;

    .line 220
    iget-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mPadResumeRightBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    sget v0, Lcom/android/keyguard/R$id;->vivo_pattern_pad_direction_right:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/VivoPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mPadDirectionRightBtn:Landroid/widget/Button;

    .line 223
    iget-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mPadDirectionRightBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    invoke-virtual {p0}, Lcom/android/keyguard/VivoPatternView;->getPinStatus()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 226
    sput-boolean v11, Lcom/android/keyguard/VivoPatternView;->mCurPadNormal:Z

    .line 231
    :goto_2
    sget v0, Lcom/android/keyguard/R$id;->vivo_pattern_view:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/VivoPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/VivoPatternView;

    iput-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mVivo_pattern_view:Lcom/android/keyguard/VivoPatternView;

    .line 237
    sget v0, Lcom/android/keyguard/R$id;->date:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/VivoPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mDateView:Landroid/widget/TextView;

    .line 238
    sget v0, Lcom/android/keyguard/R$id;->Week:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/VivoPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mWeekView:Landroid/widget/TextView;

    .line 239
    invoke-virtual {p0}, Lcom/android/keyguard/VivoPatternView;->getGesture()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/VivoPatternView;->mDragDirection:I

    .line 240
    const-string v0, "VivoPatternView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFinishInflate mDragDirection = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/VivoPatternView;->mDragDirection:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-virtual {p0}, Lcom/android/keyguard/VivoPatternView;->getPinStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/keyguard/VivoPatternView;->mDragDirection:I

    if-eqz v0, :cond_1

    .line 243
    iget-object v1, p0, Lcom/android/keyguard/VivoPatternView;->mLockPattern_eca:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/VivoPatternView;->mPadResumeLeftBtn:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/keyguard/VivoPatternView;->mPadDirectionLeftBtn:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/keyguard/VivoPatternView;->mPadResumeRightBtn:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/keyguard/VivoPatternView;->mPadDirectionRightBtn:Landroid/widget/Button;

    sget-object v6, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const/16 v7, 0x12c

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/keyguard/VivoPatternView;->moveLefOrRight(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;I)V

    .line 247
    :cond_1
    invoke-virtual {p0, v10}, Lcom/android/keyguard/VivoPatternView;->setFocusableInTouchMode(Z)V

    .line 249
    iget-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mKeyguardUtils:Lcom/android/keyguard/KeyguardUtils;

    iget-object v1, p0, Lcom/android/keyguard/VivoPatternView;->mWeekView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUtils;->updateWeekInfo(Landroid/widget/TextView;)V

    .line 250
    iget-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mKeyguardUtils:Lcom/android/keyguard/KeyguardUtils;

    iget-object v1, p0, Lcom/android/keyguard/VivoPatternView;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUtils;->refreshDate(Landroid/widget/TextView;)V

    .line 252
    sget v0, Lcom/android/keyguard/R$id;->time:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/VivoPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;

    iput-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mDigitalClock:Lcom/android/keyguard/vivo/widget/ImageDigitalClock;

    .line 253
    iget-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mDigitalClock:Lcom/android/keyguard/vivo/widget/ImageDigitalClock;

    invoke-virtual {v0, v12}, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mWeekView:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 256
    iget-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 257
    const-string v0, "persist.vivo.netlock"

    const-string v1, "no"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 258
    .local v9, "netlock":Ljava/lang/String;
    const-string v0, "ro.vivo.op.entry"

    const-string v1, "no"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/VivoPatternView;->mOpEntry:Ljava/lang/String;

    .line 259
    const-string v0, "VivoPatternView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshNetlock mOpEntry:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/VivoPatternView;->mOpEntry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " netlock:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const-string v0, "no"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 262
    sget-object v0, Lcom/android/keyguard/VivoPatternView;->mOpEntry:Ljava/lang/String;

    const-string v1, "CMCC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mEntry_cmcc:Ljava/lang/Boolean;

    .line 269
    :goto_3
    sget v0, Lcom/android/keyguard/R$id;->keyguard_bouncer_frame:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/VivoPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mKeyguardBouncerFrame:Landroid/view/ViewGroup;

    .line 270
    sget v0, Lcom/android/keyguard/R$id;->keyguard_message_area:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/VivoPatternView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardMessageArea;

    iput-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mHelpMessage:Lcom/android/keyguard/KeyguardMessageArea;

    .line 271
    return-void

    .line 186
    .end local v8    # "bouncerFrameView":Landroid/view/View;
    .end local v9    # "netlock":Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    goto/16 :goto_0

    :cond_3
    move v0, v11

    .line 195
    goto/16 :goto_1

    .line 228
    .restart local v8    # "bouncerFrameView":Landroid/view/View;
    :cond_4
    sput-boolean v10, Lcom/android/keyguard/VivoPatternView;->mCurPadNormal:Z

    goto/16 :goto_2

    .line 264
    .restart local v9    # "netlock":Ljava/lang/String;
    :cond_5
    sget-object v0, Lcom/android/keyguard/VivoPatternView;->mOpEntry:Ljava/lang/String;

    const-string v1, "CMCC_RW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/android/keyguard/VivoPatternView;->mOpEntry:Ljava/lang/String;

    const-string v1, "CMCC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    move v11, v10

    :cond_7
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mEntry_cmcc:Ljava/lang/Boolean;

    goto :goto_3
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 470
    const-string v0, "VivoPatternView"

    const-string v1, "onPause  "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 474
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 476
    :cond_0
    return-void
.end method

.method public onResume(I)V
    .locals 2
    .param p1, "reason"    # I

    .prologue
    .line 483
    const-string v0, "VivoPatternView"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    invoke-virtual {p0}, Lcom/android/keyguard/VivoPatternView;->reset()V

    .line 487
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v12, 0x1

    const/4 v0, 0x0

    .line 275
    invoke-super {p0, p1}, Lcom/android/keyguard/VivoBaseView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    .line 278
    .local v9, "result":Z
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/keyguard/VivoPatternView;->mLastPokeTime:J

    sub-long v10, v2, v4

    .line 279
    .local v10, "elapsed":J
    if-eqz v9, :cond_0

    const-wide/16 v2, 0x1af4

    cmp-long v1, v10, v2

    if-lez v1, :cond_0

    .line 280
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/keyguard/VivoPatternView;->mLastPokeTime:J

    .line 284
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/VivoPatternView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 285
    iget-object v1, p0, Lcom/android/keyguard/VivoPatternView;->mUnlockPatternView:Lcom/android/keyguard/UnLockPatternView;

    iget-object v2, p0, Lcom/android/keyguard/VivoPatternView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v2}, Lcom/android/keyguard/VivoPatternView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 286
    iget-object v1, p0, Lcom/android/keyguard/VivoPatternView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/keyguard/VivoPatternView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 287
    iget-object v1, p0, Lcom/android/keyguard/VivoPatternView;->mUnlockPatternView:Lcom/android/keyguard/UnLockPatternView;

    invoke-virtual {v1, p1}, Lcom/android/keyguard/UnLockPatternView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v9, :cond_2

    :cond_1
    move v9, v12

    .line 288
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/keyguard/VivoPatternView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 295
    iget-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 296
    iget-object v1, p0, Lcom/android/keyguard/VivoPatternView;->mLockPattern_eca:Landroid/view/View;

    iget-object v3, p0, Lcom/android/keyguard/VivoPatternView;->mPadResumeLeftBtn:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/keyguard/VivoPatternView;->mPadDirectionLeftBtn:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/keyguard/VivoPatternView;->mPadResumeRightBtn:Landroid/widget/Button;

    iget-object v6, p0, Lcom/android/keyguard/VivoPatternView;->mPadDirectionRightBtn:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/keyguard/VivoPatternView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    sget-object v8, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/keyguard/VivoPatternView;->onVivoTouch(Landroid/view/View;Landroid/view/MotionEvent;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 299
    return v12

    :cond_2
    move v9, v0

    .line 287
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
    .line 84
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
    .line 84
    invoke-super/range {p0 .. p8}, Lcom/android/keyguard/VivoBaseView;->onVivoTouch(Landroid/view/View;Landroid/view/MotionEvent;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 8
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 642
    invoke-super {p0, p1}, Lcom/android/keyguard/VivoBaseView;->onWindowFocusChanged(Z)V

    .line 644
    invoke-virtual {p0}, Lcom/android/keyguard/VivoPatternView;->getGesture()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/VivoPatternView;->mDragDirection:I

    .line 645
    const-string v0, "VivoPatternView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged  hasWindowFocus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    if-eqz p1, :cond_3

    .line 650
    invoke-virtual {p0}, Lcom/android/keyguard/VivoPatternView;->reset()V

    .line 651
    invoke-virtual {p0}, Lcom/android/keyguard/VivoPatternView;->getPinStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/VivoPatternView;->mDragDirection:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/VivoPatternView;->mTempState:I

    iget v1, p0, Lcom/android/keyguard/VivoPatternView;->mDragDirection:I

    if-eq v0, v1, :cond_0

    .line 652
    iget-object v1, p0, Lcom/android/keyguard/VivoPatternView;->mLockPattern_eca:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/VivoPatternView;->mPadResumeLeftBtn:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/keyguard/VivoPatternView;->mPadDirectionLeftBtn:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/keyguard/VivoPatternView;->mPadResumeRightBtn:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/keyguard/VivoPatternView;->mPadDirectionRightBtn:Landroid/widget/Button;

    sget-object v6, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const/16 v7, 0x12c

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/keyguard/VivoPatternView;->moveLefOrRight(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;I)V

    .line 657
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUtils;->getEyeLock(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 658
    iget-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mVivo_pattern_view:Lcom/android/keyguard/VivoPatternView;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/VivoPatternView;->showView(Landroid/view/View;)V

    .line 661
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUtils;->getEyeLock(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/VivoPatternView;->getAutoStatus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 662
    const-string v0, "VivoPatternView"

    const-string v1, "onWindowFocusChanged  showSecurity "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    iget-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->showSecurity()V

    .line 664
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/VivoPatternView;->setAutoStatus(Z)V

    .line 670
    :cond_2
    :goto_0
    return-void

    .line 668
    :cond_3
    iget v0, p0, Lcom/android/keyguard/VivoPatternView;->mDragDirection:I

    iput v0, p0, Lcom/android/keyguard/VivoPatternView;->mTempState:I

    goto :goto_0
.end method

.method public bridge synthetic onZoomPrepared(ILandroid/view/MotionEvent;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 84
    invoke-super {p0, p1, p2}, Lcom/android/keyguard/VivoBaseView;->onZoomPrepared(ILandroid/view/MotionEvent;)V

    return-void
.end method

.method public reset()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 308
    iget-object v2, p0, Lcom/android/keyguard/VivoPatternView;->mUnlockPatternView:Lcom/android/keyguard/UnLockPatternView;

    invoke-virtual {v2}, Lcom/android/keyguard/UnLockPatternView;->enableInput()V

    .line 309
    iget-object v2, p0, Lcom/android/keyguard/VivoPatternView;->mUnlockPatternView:Lcom/android/keyguard/UnLockPatternView;

    invoke-virtual {v2, v4}, Lcom/android/keyguard/UnLockPatternView;->setEnabled(Z)V

    .line 310
    iget-object v2, p0, Lcom/android/keyguard/VivoPatternView;->mUnlockPatternView:Lcom/android/keyguard/UnLockPatternView;

    invoke-virtual {v2}, Lcom/android/keyguard/UnLockPatternView;->clearPattern()V

    .line 311
    iget-object v2, p0, Lcom/android/keyguard/VivoPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const-string v3, " "

    invoke-interface {v2, v3, v4}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 313
    iget-object v2, p0, Lcom/android/keyguard/VivoPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v0

    .line 314
    .local v0, "deadline":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 315
    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/VivoPatternView;->handleAttemptLockout(J)V

    .line 319
    :goto_0
    return-void

    .line 317
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/VivoPatternView;->displayDefaultSecurityMessage()V

    goto :goto_0
.end method

.method public bridge synthetic setAutoStatus(Z)V
    .locals 0
    .param p1, "x0"    # Z

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/android/keyguard/VivoBaseView;->setAutoStatus(Z)V

    return-void
.end method

.method public bridge synthetic setEyeStatus(Z)V
    .locals 0
    .param p1, "x0"    # Z

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/android/keyguard/VivoBaseView;->setEyeStatus(Z)V

    return-void
.end method

.method public bridge synthetic setGesture(I)V
    .locals 0
    .param p1, "x0"    # I

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/android/keyguard/VivoBaseView;->setGesture(I)V

    return-void
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/keyguard/KeyguardSecurityCallback;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/keyguard/VivoPatternView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 177
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/keyguard/VivoPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 181
    return-void
.end method

.method public bridge synthetic setPinStatus(Z)V
    .locals 0
    .param p1, "x0"    # Z

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/android/keyguard/VivoBaseView;->setPinStatus(Z)V

    return-void
.end method

.method public showBouncer(I)V
    .locals 3
    .param p1, "duration"    # I

    .prologue
    .line 496
    const-string v0, "VivoPatternView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showBouncer duration:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    iget-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/keyguard/VivoPatternView;->mEcaView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/keyguard/VivoPatternView;->mBouncerFrame:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2, p1}, Lcom/android/keyguard/KeyguardSecurityViewHelper;->showBouncer(Lcom/android/keyguard/SecurityMessageDisplay;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V

    .line 499
    return-void
.end method

.method public showSecurity(Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 859
    const-string v1, "VivoPatternView"

    const-string v2, "showSecurity"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    iget-object v1, p0, Lcom/android/keyguard/VivoPatternView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 861
    iget-object v1, p0, Lcom/android/keyguard/VivoPatternView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 862
    .local v0, "mesg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 863
    iget-object v1, p0, Lcom/android/keyguard/VivoPatternView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 864
    iget-object v1, p0, Lcom/android/keyguard/VivoPatternView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 865
    return-void
.end method

.method public showUsabilityHint()V
    .locals 0

    .prologue
    .line 346
    return-void
.end method

.method public bridge synthetic showView(Landroid/view/View;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/View;

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/android/keyguard/VivoBaseView;->showView(Landroid/view/View;)V

    return-void
.end method

.method public startAppearAnimation()V
    .locals 5

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 511
    iget-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUtils;->getEyeLock(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/VivoPatternView;->getEyeStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/VivoPatternView;->mBatteryLevel:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 512
    const-string v0, "VivoPatternView"

    const-string v1, "startVerifyEye"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    invoke-virtual {p0}, Lcom/android/keyguard/VivoPatternView;->startVerifyEye()V

    .line 514
    iget-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mVivo_pattern_view:Lcom/android/keyguard/VivoPatternView;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/VivoPatternView;->hideView(Landroid/view/View;)V

    .line 518
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/VivoPatternView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUtils;->getNatureType(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 519
    invoke-virtual {p0, v4}, Lcom/android/keyguard/VivoPatternView;->setAlpha(F)V

    .line 520
    invoke-virtual {p0}, Lcom/android/keyguard/VivoPatternView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/VivoPatternView;->mContext:Landroid/content/Context;

    const v2, 0x10c000f

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 545
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mHelpMessage:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardMessageArea;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 553
    :cond_1
    return-void

    .line 527
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keyguard/VivoPatternView;->enableClipping(Z)V

    .line 528
    invoke-virtual {p0, v2}, Lcom/android/keyguard/VivoPatternView;->setAlpha(F)V

    .line 529
    iget-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mAppearAnimationUtils:Lcom/android/keyguard/AppearAnimationUtils;

    invoke-virtual {v0}, Lcom/android/keyguard/AppearAnimationUtils;->getStartTranslation()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/VivoPatternView;->setTranslationY(F)V

    .line 530
    invoke-virtual {p0}, Lcom/android/keyguard/VivoPatternView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/VivoPatternView;->mAppearAnimationUtils:Lcom/android/keyguard/AppearAnimationUtils;

    invoke-virtual {v1}, Lcom/android/keyguard/AppearAnimationUtils;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    .line 534
    iget-object v0, p0, Lcom/android/keyguard/VivoPatternView;->mAppearAnimationUtils:Lcom/android/keyguard/AppearAnimationUtils;

    iget-object v1, p0, Lcom/android/keyguard/VivoPatternView;->mUnlockPatternView:Lcom/android/keyguard/UnLockPatternView;

    invoke-virtual {v1}, Lcom/android/keyguard/UnLockPatternView;->getCellStates()[[Lcom/android/internal/widget/LockPatternView$CellState;

    move-result-object v1

    new-instance v2, Lcom/android/keyguard/VivoPatternView$3;

    invoke-direct {v2, p0}, Lcom/android/keyguard/VivoPatternView$3;-><init>(Lcom/android/keyguard/VivoPatternView;)V

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/keyguard/AppearAnimationUtils;->startAnimation([[Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/keyguard/AppearAnimationCreator;)V

    goto :goto_0
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 8
    .param p1, "finishRunnable"    # Ljava/lang/Runnable;

    .prologue
    const-wide/16 v6, 0x64

    const v5, 0x10c000f

    const/4 v4, 0x0

    .line 557
    const-string v1, "VivoPatternView"

    const-string v2, "startDisappearAnimation"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    iget-object v1, p0, Lcom/android/keyguard/VivoPatternView;->mUnlockPatternView:Lcom/android/keyguard/UnLockPatternView;

    invoke-virtual {v1}, Lcom/android/keyguard/UnLockPatternView;->clearPattern()V

    .line 559
    const-string v1, "sys.fingerprint.keguard"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 560
    .local v0, "finger":Ljava/lang/String;
    const-string v1, "VivoPatternView"

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

    .line 561
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 562
    iget-object v1, p0, Lcom/android/keyguard/VivoPatternView;->mVivo_pattern_view:Lcom/android/keyguard/VivoPatternView;

    invoke-virtual {v1, v4}, Lcom/android/keyguard/VivoPatternView;->setAlpha(F)V

    .line 564
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/VivoPatternView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUtils;->getNatureType(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 565
    invoke-virtual {p0}, Lcom/android/keyguard/VivoPatternView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/VivoPatternView;->mContext:Landroid/content/Context;

    invoke-static {v2, v5}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 581
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 573
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/VivoPatternView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/VivoPatternView;->mDisappearYTranslation:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/VivoPatternView;->mContext:Landroid/content/Context;

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
    .line 84
    invoke-super {p0}, Lcom/android/keyguard/VivoBaseView;->startVerifyEye()V

    return-void
.end method

.method public bridge synthetic vibrate()V
    .locals 0

    .prologue
    .line 84
    invoke-super {p0}, Lcom/android/keyguard/VivoBaseView;->vibrate()V

    return-void
.end method
