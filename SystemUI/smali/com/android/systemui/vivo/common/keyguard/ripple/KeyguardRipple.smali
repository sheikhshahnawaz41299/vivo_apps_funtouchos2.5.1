.class public Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;
.super Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;
.source "KeyguardRipple.java"


# static fields
.field private static final DURATION_LONG:I = 0x3e8

.field private static final DURATION_MEDIUM:I = 0x1f4

.field private static final HIDE_CHARGING_INFO_DELAY:I = 0xbb8

.field private static final TAG:Ljava/lang/String; = "KeyguardRipple"


# instance fields
.field private final MSG_DISMISS_KEYGUARD:I

.field private final MSG_DISMISS_KEYGUARD_DELAY:I

.field private final MSG_DISMISS_THIS:I

.field private final MSG_HIDE_WALLPAPER:I

.field private final MSG_REFLESH_MSG_CALL:I

.field private final MSG_UPDATE_WALLPAPER:I

.field private final REFRESH_STATE_PAUSE:I

.field private final REFRESH_STATE_RESUME:I

.field private SCREEN_HEIGHT:I

.field private SCREEN_WIDTH:I

.field private TEXT_COLOR:I

.field private clockView:Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;

.field private isRegistered:Z

.field private mBatteryLevel:I

.field private mBouncerChangedAnim:Landroid/animation/AnimatorSet;

.field private mCallNum:I

.field private mChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

.field private mChargingInfoAnim:Landroid/animation/ObjectAnimator;

.field private mChargingInfoView:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mDate:Landroid/widget/TextView;

.field private mDateString:Ljava/lang/String;

.field private mDigitalImages:[I

.field private mHandler:Landroid/os/Handler;

.field private mIsBouncer:Z

.field private mIsCharged:Z

.field private mIsResume:Z

.field private mLevel:I

.field private mMissedInfoView:Landroid/view/View;

.field private mMsgNum:I

.field private mPluggedIn:Z

.field private mRippleCoverView:Landroid/widget/ImageView;

.field private mRippleView:Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;

.field private mUnlockTips:Landroid/widget/TextView;

.field private mWallpaper:Landroid/graphics/Bitmap;

.field private missCallNumText:Landroid/widget/TextView;

.field private missMsgNumText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 110
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->isRegistered:Z

    .line 43
    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mIsResume:Z

    .line 45
    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->MSG_DISMISS_THIS:I

    .line 46
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->MSG_REFLESH_MSG_CALL:I

    .line 47
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->REFRESH_STATE_PAUSE:I

    .line 48
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->REFRESH_STATE_RESUME:I

    .line 49
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->MSG_UPDATE_WALLPAPER:I

    .line 50
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->MSG_HIDE_WALLPAPER:I

    .line 51
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->MSG_DISMISS_KEYGUARD:I

    .line 52
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->MSG_DISMISS_KEYGUARD_DELAY:I

    .line 68
    const/16 v0, 0x2d0

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->SCREEN_WIDTH:I

    .line 69
    const/16 v0, 0x500

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->SCREEN_HEIGHT:I

    .line 74
    const v0, -0x19000001

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->TEXT_COLOR:I

    .line 75
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mDigitalImages:[I

    .line 87
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple$1;-><init>(Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mHandler:Landroid/os/Handler;

    .line 111
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mContext:Landroid/content/Context;

    .line 112
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->adjustDimens(Landroid/content/Context;)V

    .line 113
    return-void

    .line 75
    :array_0
    .array-data 4
        0x7f0202dc
        0x7f0202dd
        0x7f0202de
        0x7f0202df
        0x7f0202e0
        0x7f0202e1
        0x7f0202e2
        0x7f0202e3
        0x7f0202e4
        0x7f0202e5
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->handleUpdateWallpaper()V

    return-void
.end method

.method static synthetic access$101(Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;

    .prologue
    .line 31
    invoke-super {p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->dismiss()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->handleHideWallpaper()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mRippleCoverView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->showChargeView()V

    return-void
.end method

.method private adjustDimens(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 370
    if-eqz p1, :cond_0

    .line 371
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->SCREEN_WIDTH:I

    .line 372
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->SCREEN_HEIGHT:I

    .line 375
    :cond_0
    return-void
.end method

.method private bouncerChangedAnim(Z)V
    .locals 10
    .param p1, "bouncer"    # Z

    .prologue
    const/4 v5, 0x2

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 410
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mBouncerChangedAnim:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mBouncerChangedAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mBouncerChangedAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 412
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mBouncerChangedAnim:Landroid/animation/AnimatorSet;

    .line 415
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mBouncerChangedAnim:Landroid/animation/AnimatorSet;

    .line 416
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mBouncerChangedAnim:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 417
    if-eqz p1, :cond_2

    .line 418
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mBouncerChangedAnim:Landroid/animation/AnimatorSet;

    const/4 v1, 0x5

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->clockView:Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;

    const-string v3, "alpha"

    new-array v4, v7, [F

    aput v8, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mDate:Landroid/widget/TextView;

    const-string v3, "alpha"

    new-array v4, v7, [F

    aput v8, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mMissedInfoView:Landroid/view/View;

    const-string v3, "alpha"

    new-array v4, v7, [F

    aput v8, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mUnlockTips:Landroid/widget/TextView;

    const-string v4, "alpha"

    new-array v5, v7, [F

    aput v8, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mRippleCoverView:Landroid/widget/ImageView;

    const-string v4, "alpha"

    new-array v5, v7, [F

    aput v9, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 424
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mPluggedIn:Z

    if-eqz v0, :cond_1

    .line 425
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mBouncerChangedAnim:Landroid/animation/AnimatorSet;

    new-array v1, v7, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mChargingInfoView:Landroid/widget/TextView;

    const-string v3, "alpha"

    new-array v4, v7, [F

    aput v8, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 428
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mBouncerChangedAnim:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple$2;-><init>(Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 452
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mBouncerChangedAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 453
    return-void

    .line 436
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mBouncerChangedAnim:Landroid/animation/AnimatorSet;

    const/4 v1, 0x5

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->clockView:Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;

    const-string v3, "alpha"

    new-array v4, v7, [F

    aput v9, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mDate:Landroid/widget/TextView;

    const-string v3, "alpha"

    new-array v4, v7, [F

    aput v9, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mMissedInfoView:Landroid/view/View;

    const-string v3, "alpha"

    new-array v4, v7, [F

    aput v9, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mUnlockTips:Landroid/widget/TextView;

    const-string v4, "alpha"

    new-array v5, v7, [F

    aput v9, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mRippleCoverView:Landroid/widget/ImageView;

    const-string v4, "alpha"

    new-array v5, v7, [F

    aput v8, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 442
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mBouncerChangedAnim:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple$3;-><init>(Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0
.end method

.method private cancelChargingInfoAnim()V
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mChargingInfoAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mChargingInfoAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mChargingInfoAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 486
    :cond_0
    return-void
.end method

.method private chargingInfoAnim()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 467
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->cancelChargingInfoAnim()V

    .line 469
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mIsBouncer:Z

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mChargingInfoView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 480
    :goto_0
    return-void

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mChargingInfoView:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 473
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mChargingInfoAnim:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_1

    .line 474
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mChargingInfoView:Landroid/widget/TextView;

    const-string v1, "alpha"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mChargingInfoAnim:Landroid/animation/ObjectAnimator;

    .line 475
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mChargingInfoAnim:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 476
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mChargingInfoAnim:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 478
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mChargingInfoAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method private handleHideWallpaper()V
    .locals 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mRippleCoverView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 365
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mRippleCoverView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 366
    return-void
.end method

.method private handleUpdateWallpaper()V
    .locals 3

    .prologue
    .line 353
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;

    move-result-object v0

    .line 354
    .local v0, "kwm":Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;
    invoke-virtual {v0}, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->getWallpaper()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mWallpaper:Landroid/graphics/Bitmap;

    .line 355
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mWallpaper:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 356
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mRippleCoverView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 357
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mRippleCoverView:Landroid/widget/ImageView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 358
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mRippleCoverView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 359
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mRippleView:Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->setBackgroundBitmap(Landroid/graphics/Bitmap;)V

    .line 361
    :cond_0
    return-void
.end method

.method private hideChargeView()V
    .locals 2

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->stopChargeAnimation()V

    .line 391
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->setVisibility(I)V

    .line 392
    return-void
.end method

.method private hideMainViews()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 218
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->clockView:Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->setVisibility(I)V

    .line 219
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mUnlockTips:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mDate:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 221
    return-void
.end method

.method private refreshDayDate()V
    .locals 3

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mDate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mDateString:Ljava/lang/String;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    return-void
.end method

.method private resetViews()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 456
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->clockView:Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;

    invoke-virtual {v0, v2}, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->setAlpha(F)V

    .line 457
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mDate:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 458
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mMissedInfoView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 459
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mUnlockTips:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 460
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mRippleCoverView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 461
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mRippleCoverView:Landroid/widget/ImageView;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 462
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mNotificationView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 463
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mNotificationView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 464
    return-void
.end method

.method private showChargeView()V
    .locals 2

    .prologue
    .line 378
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mIsResume:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mPluggedIn:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mIsBouncer:Z

    if-nez v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->setVisibility(I)V

    .line 380
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mIsCharged:Z

    if-eqz v0, :cond_1

    .line 381
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->stopChargeAnimation()V

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->startChargeAnimation()V

    goto :goto_0
.end method

.method private showMainViews()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 183
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->clockView:Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mUnlockTips:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mDate:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 186
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 199
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 200
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 201
    return-void
.end method

.method public onBatteryChanged(ZZIZ)V
    .locals 6
    .param p1, "pluggedIn"    # Z
    .param p2, "isCharged"    # Z
    .param p3, "level"    # I
    .param p4, "isLowLevel"    # Z

    .prologue
    const/4 v5, 0x0

    .line 267
    iput-boolean p2, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mIsCharged:Z

    .line 268
    iput p3, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mBatteryLevel:I

    .line 269
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

    invoke-virtual {v0, p3}, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->setLevel(I)V

    .line 271
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mIsCharged:Z

    if-eqz v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mChargingInfoView:Landroid/widget/TextView;

    const v1, 0x7f0e0179

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 277
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mPluggedIn:Z

    if-eq v0, p1, :cond_0

    .line 278
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mPluggedIn:Z

    .line 279
    if-eqz p1, :cond_2

    .line 280
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mChargingInfoView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 281
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->chargingInfoAnim()V

    .line 287
    :cond_0
    :goto_1
    if-eqz p1, :cond_3

    .line 288
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->showChargeView()V

    .line 292
    :goto_2
    return-void

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mChargingInfoView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0178

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mBatteryLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 283
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mChargingInfoView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 290
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->hideChargeView()V

    goto :goto_2
.end method

.method public onBouncerChanged(Z)V
    .locals 0
    .param p1, "bouncer"    # Z

    .prologue
    .line 404
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mIsBouncer:Z

    .line 406
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->bouncerChangedAnim(Z)V

    .line 407
    return-void
.end method

.method public onCleanup()V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mRippleView:Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mRippleView:Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->cleanUp()V

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mWallpaper:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 231
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mWallpaper:Landroid/graphics/Bitmap;

    .line 233
    :cond_1
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 139
    invoke-super {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 141
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mUnlockTips:Landroid/widget/TextView;

    const v1, 0x7f0e017c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 142
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mContext:Landroid/content/Context;

    const v1, 0x7f0e000d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mDateString:Ljava/lang/String;

    .line 143
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->refreshDayDate()V

    .line 144
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mPluggedIn:Z

    if-eqz v0, :cond_0

    .line 145
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mIsCharged:Z

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mChargingInfoView:Landroid/widget/TextView;

    const v1, 0x7f0e0179

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mChargingInfoView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0178

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mBatteryLevel:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 117
    invoke-super {p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->onFinishInflate()V

    .line 119
    const-string v0, "KeyguardRipple"

    const-string v1, "onFinishInflate"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const v0, 0x7f1101bb

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mRippleCoverView:Landroid/widget/ImageView;

    .line 121
    const v0, 0x7f110185

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

    .line 122
    const v0, 0x7f1101c0

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mChargingInfoView:Landroid/widget/TextView;

    .line 123
    const v0, 0x7f1101ba

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mRippleView:Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;

    .line 124
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mRippleView:Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->setKeyguardCallback(Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;)V

    .line 125
    const v0, 0x7f1101bc

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mMissedInfoView:Landroid/view/View;

    .line 126
    const v0, 0x7f1101bd

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->missCallNumText:Landroid/widget/TextView;

    .line 127
    const v0, 0x7f1101be

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->missMsgNumText:Landroid/widget/TextView;

    .line 128
    const v0, 0x7f110082

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->clockView:Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;

    .line 129
    const v0, 0x7f1101bf

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mUnlockTips:Landroid/widget/TextView;

    .line 130
    const v0, 0x7f110062

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mDate:Landroid/widget/TextView;

    .line 131
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mContext:Landroid/content/Context;

    const v1, 0x7f0e000d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mDateString:Ljava/lang/String;

    .line 132
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->clockView:Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mDigitalImages:[I

    const v2, 0x7f0202f2

    iget v3, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->TEXT_COLOR:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->updateViewsColor([III)V

    .line 134
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->clockView:Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;

    const/high16 v1, 0x19000000

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->setAmPmShadow(I)V

    .line 135
    return-void
.end method

.method public onHide(Z)V
    .locals 2
    .param p1, "bouncer"    # Z

    .prologue
    .line 236
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mIsBouncer:Z

    .line 237
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->onPause()V

    .line 238
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mRippleView:Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->setVisibility(I)V

    .line 239
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mIsBouncer:Z

    if-nez v0, :cond_0

    .line 240
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->resetViews()V

    .line 242
    :cond_0
    return-void
.end method

.method protected onKeyguardVisibilityChanged(Z)V
    .locals 2
    .param p1, "showing"    # Z

    .prologue
    .line 190
    invoke-super {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->onKeyguardVisibilityChanged(Z)V

    .line 191
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mRippleView:Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mRippleView:Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 192
    const-string v0, "KeyguardRipple"

    const-string v1, "onKeyguardVisibilityChanged rippleView gone"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mRippleView:Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->setVisibility(I)V

    .line 195
    :cond_0
    return-void
.end method

.method public onNotificationChanged(ZZ)V
    .locals 2
    .param p1, "empty"    # Z
    .param p2, "retain"    # Z

    .prologue
    .line 396
    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 397
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mNotificationView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 398
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mNotificationView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 400
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mIsResume:Z

    if-eqz v0, :cond_0

    .line 205
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mIsResume:Z

    .line 206
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mRippleView:Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;

    if-eqz v0, :cond_0

    .line 207
    const-string v0, "KeyguardRipple"

    const-string v1, "rippleView pause"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mRippleView:Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->onPause()V

    .line 209
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mRippleView:Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->pause()V

    .line 210
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->hideMainViews()V

    .line 214
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->hideChargeView()V

    .line 215
    return-void
.end method

.method public onRefreshInfo(II)V
    .locals 2
    .param p1, "msgNum"    # I
    .param p2, "callNum"    # I

    .prologue
    .line 346
    iput p2, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mCallNum:I

    .line 347
    iput p1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mMsgNum:I

    .line 348
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 350
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 162
    const-string v0, "KeyguardRipple"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mIsResume:Z

    .line 165
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mRippleView:Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mIsBouncer:Z

    if-nez v0, :cond_0

    .line 166
    const-string v0, "KeyguardRipple"

    const-string v1, "rippleView resume"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mRippleView:Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mRippleView:Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->resume()V

    .line 171
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->showMainViews()V

    .line 172
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->showChargeView()V

    .line 174
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mPluggedIn:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

    if-eqz v0, :cond_1

    .line 175
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->hideChargeView()V

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mNotificationView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 179
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mNotificationView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 180
    return-void
.end method

.method public onScreenStateChanged(I)V
    .locals 1
    .param p1, "screenState"    # I

    .prologue
    .line 490
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 491
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->chargingInfoAnim()V

    .line 493
    :cond_0
    return-void
.end method

.method public onTimeChanged()V
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->clockView:Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->updateTime()V

    .line 331
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->refreshDayDate()V

    .line 332
    return-void
.end method

.method public onTransparent()V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mRippleView:Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;

    if-eqz v0, :cond_0

    .line 156
    const-string v0, "KeyguardRipple"

    const-string v1, "onTransparent"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mRippleView:Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->setVisibility(I)V

    .line 159
    :cond_0
    return-void
.end method

.method public onWallpaperChanged()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 336
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 337
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 338
    return-void
.end method

.method public refreshInCallViews()V
    .locals 5

    .prologue
    .line 296
    :try_start_0
    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mCallNum:I

    .line 297
    .local v1, "n":I
    if-nez v1, :cond_0

    .line 298
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->missCallNumText:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 308
    .end local v1    # "n":I
    :goto_0
    return-void

    .line 301
    .restart local v1    # "n":I
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->missCallNumText:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 302
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->missCallNumText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 305
    .end local v1    # "n":I
    :catch_0
    move-exception v0

    .line 306
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public refreshMsgViews()V
    .locals 5

    .prologue
    .line 311
    const-string v2, "KeyguardRipple"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refreshMsgViews mMsgNum = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mMsgNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    :try_start_0
    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mMsgNum:I

    .line 314
    .local v1, "n":I
    if-nez v1, :cond_0

    .line 315
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->missMsgNumText:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 326
    .end local v1    # "n":I
    :goto_0
    return-void

    .line 318
    .restart local v1    # "n":I
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->missMsgNumText:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 319
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->missMsgNumText:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 322
    .end local v1    # "n":I
    :catch_0
    move-exception v0

    .line 323
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public touchDown()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 245
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mRippleCoverView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mRippleView:Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mRippleView:Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;

    invoke-virtual {v0, v4}, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mRippleView:Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/ripple/RippleView;->setVisibility(I)V

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 253
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mPluggedIn:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

    if-eqz v0, :cond_2

    .line 254
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

    invoke-virtual {v0, v4}, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->setVisibility(I)V

    .line 257
    :cond_2
    return-void
.end method

.method public touchUp()V
    .locals 2

    .prologue
    .line 260
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mPluggedIn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/ripple/KeyguardRipple;->mChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->setVisibility(I)V

    .line 263
    :cond_0
    return-void
.end method
