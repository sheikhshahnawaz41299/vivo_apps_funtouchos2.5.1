.class public Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;
.super Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;
.source "KeyguardClassical.java"


# static fields
.field private static final DURATION_MEDIUM:I = 0x1f4

.field private static final HIDE_CHARGING_INFO_DELAY:I = 0xbb8

.field private static final MSG_UPDATE_WALLPAPER:I


# instance fields
.field private TAG:Ljava/lang/String;

.field private isResume:Z

.field private mBatteryLevel:I

.field private mBlurCover:Landroid/view/View;

.field private mBlurWallpaper:Landroid/graphics/Bitmap;

.field private mBouncerChangedAnim:Landroid/animation/AnimatorSet;

.field private mCarrierInfoView:Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;

.field private mChargingInfoAnim:Landroid/animation/ObjectAnimator;

.field private mChargingInfoView:Landroid/widget/TextView;

.field private mClock:Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;

.field private mDate:Landroid/widget/TextView;

.field private mDateString:Ljava/lang/String;

.field private mDay:Landroid/widget/TextView;

.field private mDayString:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mIsBouncer:Z

.field private mIsCharged:Z

.field private mIsNotificationEmpty:Z

.field private mIsRetain:Z

.field private mLocale:Ljava/util/Locale;

.field private mLockColorCount:I

.field private mNotificationAnim:Landroid/animation/AnimatorSet;

.field private mPluggedIn:Z

.field private mTimeDateView:Landroid/view/View;

.field private mWallpaper:Landroid/graphics/Bitmap;

.field private slideView:Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    const-string v0, "KeyguardClassical"

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->TAG:Ljava/lang/String;

    .line 50
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mPluggedIn:Z

    .line 51
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mIsCharged:Z

    .line 52
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->isResume:Z

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mLockColorCount:I

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mIsNotificationEmpty:Z

    .line 66
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical$1;-><init>(Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mHandler:Landroid/os/Handler;

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->handleUpdateWallpaper()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mBlurCover:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mNotificationView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mNotificationView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mNotificationView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mNotificationView:Landroid/view/View;

    return-object v0
.end method

.method private bouncerChangedAnim(Z)V
    .locals 10
    .param p1, "bouncer"    # Z

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 340
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mBouncerChangedAnim:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mBouncerChangedAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mBouncerChangedAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 342
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mBouncerChangedAnim:Landroid/animation/AnimatorSet;

    .line 345
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mBouncerChangedAnim:Landroid/animation/AnimatorSet;

    .line 346
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mBouncerChangedAnim:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 347
    if-eqz p1, :cond_3

    .line 348
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mBouncerChangedAnim:Landroid/animation/AnimatorSet;

    new-array v1, v7, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->slideView:Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;

    const-string v3, "alpha"

    new-array v4, v6, [F

    aput v8, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mTimeDateView:Landroid/view/View;

    const-string v3, "alpha"

    new-array v4, v6, [F

    aput v8, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 350
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mPluggedIn:Z

    if-eqz v0, :cond_1

    .line 351
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mBouncerChangedAnim:Landroid/animation/AnimatorSet;

    new-array v1, v6, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mChargingInfoView:Landroid/widget/TextView;

    const-string v3, "alpha"

    new-array v4, v6, [F

    aput v8, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 353
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mIsNotificationEmpty:Z

    if-eqz v0, :cond_2

    .line 354
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mBouncerChangedAnim:Landroid/animation/AnimatorSet;

    new-array v1, v7, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mBlurCover:Landroid/view/View;

    const-string v3, "alpha"

    new-array v4, v7, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mNotificationView:Landroid/view/View;

    const-string v3, "alpha"

    new-array v4, v6, [F

    aput v8, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 356
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mBouncerChangedAnim:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical$2;-><init>(Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 398
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mBouncerChangedAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 399
    return-void

    .line 365
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mBouncerChangedAnim:Landroid/animation/AnimatorSet;

    new-array v1, v6, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mNotificationView:Landroid/view/View;

    const-string v3, "alpha"

    new-array v4, v6, [F

    aput v8, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 366
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mBouncerChangedAnim:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical$3;-><init>(Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 374
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mBouncerChangedAnim:Landroid/animation/AnimatorSet;

    new-array v1, v7, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->slideView:Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;

    const-string v3, "alpha"

    new-array v4, v6, [F

    aput v9, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mTimeDateView:Landroid/view/View;

    const-string v3, "alpha"

    new-array v4, v6, [F

    aput v9, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 376
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mIsNotificationEmpty:Z

    if-eqz v0, :cond_4

    .line 377
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mBouncerChangedAnim:Landroid/animation/AnimatorSet;

    new-array v1, v7, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mBlurCover:Landroid/view/View;

    const-string v3, "alpha"

    new-array v4, v7, [F

    fill-array-data v4, :array_1

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mNotificationView:Landroid/view/View;

    const-string v3, "alpha"

    new-array v4, v6, [F

    aput v9, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 379
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mBouncerChangedAnim:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical$4;-><init>(Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 388
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mBouncerChangedAnim:Landroid/animation/AnimatorSet;

    new-array v1, v6, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mNotificationView:Landroid/view/View;

    const-string v3, "alpha"

    new-array v4, v6, [F

    aput v9, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 389
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mBouncerChangedAnim:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical$5;-><init>(Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/16 :goto_0

    .line 354
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 377
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private cancelChargingInfoAnim()V
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mChargingInfoAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mChargingInfoAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mChargingInfoAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 471
    :cond_0
    return-void
.end method

.method private cancelNotificationAnim()V
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mNotificationAnim:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mNotificationAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mNotificationAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 440
    :cond_0
    return-void
.end method

.method private chargingInfoAnim()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 452
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->cancelChargingInfoAnim()V

    .line 454
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mIsBouncer:Z

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mChargingInfoView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 465
    :goto_0
    return-void

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mChargingInfoView:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 458
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mChargingInfoAnim:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_1

    .line 459
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mChargingInfoView:Landroid/widget/TextView;

    const-string v1, "alpha"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mChargingInfoAnim:Landroid/animation/ObjectAnimator;

    .line 460
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mChargingInfoAnim:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 461
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mChargingInfoAnim:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 463
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mChargingInfoAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method private handleUpdateWallpaper()V
    .locals 5

    .prologue
    .line 282
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;

    move-result-object v0

    .line 283
    .local v0, "kwm":Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;
    invoke-virtual {v0}, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->getWallpaper()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mWallpaper:Landroid/graphics/Bitmap;

    .line 284
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mWallpaper:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 285
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->getBlurWallpaper(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mBlurWallpaper:Landroid/graphics/Bitmap;

    .line 286
    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mIsNotificationEmpty:Z

    if-eqz v1, :cond_1

    .line 287
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->updateBgView(Z)V

    .line 291
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mBlurCover:Landroid/view/View;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mBlurWallpaper:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 293
    :cond_0
    return-void

    .line 289
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->updateBgView(Z)V

    goto :goto_0
.end method

.method private notificationAnim(ZZ)V
    .locals 9
    .param p1, "empty"    # Z
    .param p2, "retain"    # Z

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 402
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->cancelNotificationAnim()V

    .line 404
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mNotificationAnim:Landroid/animation/AnimatorSet;

    .line 405
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mNotificationAnim:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 406
    if-eqz p1, :cond_1

    .line 407
    if-nez p2, :cond_0

    .line 408
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mNotificationAnim:Landroid/animation/AnimatorSet;

    new-array v1, v7, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mBlurCover:Landroid/view/View;

    const-string v3, "alpha"

    new-array v4, v8, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 409
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mNotificationAnim:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical$6;-><init>(Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 433
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mNotificationAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 434
    return-void

    .line 418
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardStateManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/keyguard/KeyguardStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardStateManager;->statusBarDisabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 419
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mNotificationAnim:Landroid/animation/AnimatorSet;

    new-array v1, v7, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mNotificationView:Landroid/view/View;

    const-string v3, "alpha"

    new-array v4, v7, [F

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 421
    :cond_2
    if-nez p2, :cond_0

    .line 422
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mNotificationAnim:Landroid/animation/AnimatorSet;

    new-array v1, v7, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mBlurCover:Landroid/view/View;

    const-string v3, "alpha"

    new-array v4, v8, [F

    fill-array-data v4, :array_1

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 423
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mNotificationAnim:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical$7;-><init>(Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 408
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 422
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private refreshDayDate()V
    .locals 3

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mDay:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mDayString:Ljava/lang/String;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mDate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mDateString:Ljava/lang/String;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    return-void
.end method

.method private resetViews()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 443
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->slideView:Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->setAlpha(F)V

    .line 444
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mTimeDateView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 445
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mIsNotificationEmpty:Z

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mBlurCover:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 447
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->updateBgView(Z)V

    .line 449
    :cond_0
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mIsNotificationEmpty:Z

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mNotificationView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 201
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mNotificationView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 203
    :cond_0
    invoke-super {p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->dismiss()V

    .line 204
    return-void
.end method

.method public log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    return-void
.end method

.method public onBatteryChanged(ZZIZ)V
    .locals 7
    .param p1, "pluggedIn"    # Z
    .param p2, "isCharged"    # Z
    .param p3, "batteryLevel"    # I
    .param p4, "isBatteryLow"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refresh battery info, pluggedIn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isCharged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", batteryLevel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->log(Ljava/lang/String;)V

    .line 217
    iput-boolean p2, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mIsCharged:Z

    .line 218
    iput p3, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mBatteryLevel:I

    .line 220
    if-eqz p1, :cond_6

    .line 221
    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mBatteryLevel:I

    div-int/lit8 v0, v1, 0xa

    .line 222
    .local v0, "leve":I
    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mIsCharged:Z

    if-eqz v1, :cond_2

    .line 223
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->slideView:Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;

    invoke-virtual {v1, v0}, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->setLevel(I)V

    .line 224
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->slideView:Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->handleCharge()V

    .line 225
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mChargingInfoView:Landroid/widget/TextView;

    const v2, 0x7f0e0179

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 249
    .end local v0    # "leve":I
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mPluggedIn:Z

    if-eq v1, p1, :cond_0

    .line 250
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mPluggedIn:Z

    .line 251
    if-eqz p1, :cond_7

    .line 252
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mChargingInfoView:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 253
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->chargingInfoAnim()V

    .line 259
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->slideView:Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;

    iget-boolean v1, v1, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->isOnTouch:Z

    if-nez v1, :cond_1

    .line 260
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->slideView:Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;

    invoke-virtual {v1, p1}, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->setBg(Z)V

    .line 262
    :cond_1
    return-void

    .line 227
    .restart local v0    # "leve":I
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 228
    if-gez v0, :cond_3

    .line 229
    const/4 v0, 0x0

    .line 231
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->slideView:Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;

    invoke-virtual {v1, v0}, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->setLevel(I)V

    .line 232
    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->isResume:Z

    if-eqz v1, :cond_4

    .line 233
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->slideView:Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->startChargeAnim()V

    .line 235
    :cond_4
    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mIsQuickCharging:Z

    if-eqz v1, :cond_5

    .line 236
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mChargingInfoView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mContext:Landroid/content/Context;

    const v3, 0x7f0e01a8

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mBatteryLevel:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 239
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mChargingInfoView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mContext:Landroid/content/Context;

    const v3, 0x7f0e0178

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mBatteryLevel:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 244
    .end local v0    # "leve":I
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->slideView:Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->stopChargeAnim()V

    .line 245
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->slideView:Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;

    invoke-virtual {v1, p1}, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->updateChargeState(Z)V

    .line 246
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->slideView:Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->setLevel(I)V

    goto :goto_0

    .line 255
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mChargingInfoView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public onBouncerChanged(Z)V
    .locals 2
    .param p1, "bouncer"    # Z

    .prologue
    .line 318
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mIsBouncer:Z

    .line 319
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->cancelNotificationAnim()V

    .line 320
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->cancelChargingInfoAnim()V

    .line 321
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->bouncerChangedAnim(Z)V

    .line 323
    if-eqz p1, :cond_1

    .line 324
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->slideView:Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->stopArrowAnim()V

    .line 325
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->slideView:Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->stopChargeAnim()V

    .line 326
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->slideView:Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->stopColorChangeAni()V

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 328
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->slideView:Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->reset()V

    .line 329
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->slideView:Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->startArrowAnim()V

    .line 330
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mPluggedIn:Z

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->slideView:Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->setBg(Z)V

    .line 332
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mIsCharged:Z

    if-nez v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->slideView:Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->startChargeAnim()V

    goto :goto_0
.end method

.method public onChargingModeChanged(Z)V
    .locals 6
    .param p1, "quick"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 482
    invoke-super {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->onChargingModeChanged(Z)V

    .line 484
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is quick = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mPluggedIn:Z

    if-eqz v0, :cond_0

    .line 486
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mIsCharged:Z

    if-eqz v0, :cond_1

    .line 487
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mChargingInfoView:Landroid/widget/TextView;

    const v1, 0x7f0e0179

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 493
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->chargingInfoAnim()V

    .line 495
    :cond_0
    return-void

    .line 488
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mIsQuickCharging:Z

    if-eqz v0, :cond_2

    .line 489
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mChargingInfoView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mContext:Landroid/content/Context;

    const v2, 0x7f0e01a8

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mBatteryLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 491
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mChargingInfoView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0178

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mBatteryLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onCleanup()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 266
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mWallpaper:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 268
    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mWallpaper:Landroid/graphics/Bitmap;

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mBlurWallpaper:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mBlurWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mBlurWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 272
    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mBlurWallpaper:Landroid/graphics/Bitmap;

    .line 274
    :cond_1
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 105
    invoke-super {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 106
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mLocale:Ljava/util/Locale;

    .line 107
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mDay:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextLocale(Ljava/util/Locale;)V

    .line 108
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mDate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextLocale(Ljava/util/Locale;)V

    .line 109
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mChargingInfoView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextLocale(Ljava/util/Locale;)V

    .line 110
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mContext:Landroid/content/Context;

    const v1, 0x7f0e000b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mDayString:Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mContext:Landroid/content/Context;

    const v1, 0x7f0e000a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mDateString:Ljava/lang/String;

    .line 112
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->refreshDayDate()V

    .line 113
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mPluggedIn:Z

    if-eqz v0, :cond_0

    .line 114
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mIsCharged:Z

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mChargingInfoView:Landroid/widget/TextView;

    const v1, 0x7f0e0179

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mIsQuickCharging:Z

    if-eqz v0, :cond_2

    .line 118
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mChargingInfoView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mContext:Landroid/content/Context;

    const v2, 0x7f0e01a8

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mBatteryLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 121
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mChargingInfoView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0178

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mBatteryLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 83
    invoke-super {p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->onFinishInflate()V

    .line 84
    const v0, 0x7f110149

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mBlurCover:Landroid/view/View;

    .line 85
    const v0, 0x7f11014d

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mChargingInfoView:Landroid/widget/TextView;

    .line 86
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mChargingInfoView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 87
    const v0, 0x7f11014b

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->slideView:Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;

    .line 88
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->slideView:Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;

    invoke-virtual {v0, p0}, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->setCallback(Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;)V

    .line 90
    const v0, 0x7f110082

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mClock:Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;

    .line 91
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mContext:Landroid/content/Context;

    const v1, 0x7f0e000b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mDayString:Ljava/lang/String;

    .line 92
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mContext:Landroid/content/Context;

    const v1, 0x7f0e000a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mDateString:Ljava/lang/String;

    .line 93
    const v0, 0x7f11014c

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mDay:Landroid/widget/TextView;

    .line 94
    const v0, 0x7f110062

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mDate:Landroid/widget/TextView;

    .line 95
    const v0, 0x7f11014a

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mTimeDateView:Landroid/view/View;

    .line 97
    invoke-static {}, Lcom/android/systemui/vivo/common/keyguard/utils/KeyguardUtils;->isCmccEntry()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/systemui/vivo/common/keyguard/utils/KeyguardUtils;->isUnicomEntry()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    :cond_0
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mCarrierInfoView:Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;

    .line 99
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mCarrierInfoView:Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->addView(Landroid/view/View;)V

    .line 101
    :cond_1
    return-void
.end method

.method public onHide(Z)V
    .locals 1
    .param p1, "bouncer"    # Z

    .prologue
    .line 170
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mIsBouncer:Z

    .line 171
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->onPause()V

    .line 172
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mIsBouncer:Z

    if-nez v0, :cond_0

    .line 173
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->resetViews()V

    .line 175
    :cond_0
    return-void
.end method

.method public onNotificationChanged(ZZ)V
    .locals 1
    .param p1, "empty"    # Z
    .param p2, "retain"    # Z

    .prologue
    .line 307
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mIsNotificationEmpty:Z

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mIsRetain:Z

    if-eq v0, p2, :cond_1

    .line 308
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mIsNotificationEmpty:Z

    .line 309
    iput-boolean p2, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mIsRetain:Z

    .line 310
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mIsBouncer:Z

    if-nez v0, :cond_1

    .line 311
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->notificationAnim(ZZ)V

    .line 314
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 158
    const-string v0, "onPause."

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->log(Ljava/lang/String;)V

    .line 159
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->isResume:Z

    if-eqz v0, :cond_0

    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->isResume:Z

    .line 161
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->slideView:Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->stopArrowAnim()V

    .line 162
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->slideView:Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->stopChargeAnim()V

    .line 163
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->slideView:Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->stopColorChangeAni()V

    .line 164
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->cancelChargingInfoAnim()V

    .line 166
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 134
    const-string v0, "onResume."

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->log(Ljava/lang/String;)V

    .line 136
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->isResume:Z

    if-nez v0, :cond_2

    .line 137
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->isResume:Z

    .line 138
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->refreshDayDate()V

    .line 139
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->slideView:Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->reset()V

    .line 140
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->slideView:Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->startArrowAnim()V

    .line 141
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mPluggedIn:Z

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->slideView:Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->setBg(Z)V

    .line 143
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mIsCharged:Z

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->slideView:Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->startChargeAnim()V

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mCarrierInfoView:Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mCarrierInfoView:Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/KeyguardCarrierInfoView;->onResume()V

    .line 150
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mIsNotificationEmpty:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mIsBouncer:Z

    if-nez v0, :cond_2

    .line 151
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mNotificationView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 152
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mNotificationView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 155
    :cond_2
    return-void
.end method

.method public onScreenStateChanged(I)V
    .locals 1
    .param p1, "screenState"    # I

    .prologue
    .line 475
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 476
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->chargingInfoAnim()V

    .line 478
    :cond_0
    return-void
.end method

.method public onTimeChanged()V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mClock:Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->updateTime()V

    .line 209
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->refreshDayDate()V

    .line 210
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 130
    const/4 v0, 0x1

    return v0
.end method

.method public onWallpaperChanged()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 301
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 302
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 303
    return-void
.end method

.method public touchDown()V
    .locals 2

    .prologue
    .line 178
    const-string v0, "on touch down"

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->log(Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->slideView:Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->setBg(Z)V

    .line 180
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->slideView:Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->stopArrowAnim()V

    .line 181
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->slideView:Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->stopChargeAnim()V

    .line 182
    sget v0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->mLockColorCount:I

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mLockColorCount:I

    .line 183
    return-void
.end method

.method public touchUp()V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->slideView:Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->slideView:Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;

    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mPluggedIn:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->setBg(Z)V

    .line 188
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->slideView:Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->startArrowAnim()V

    .line 189
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mPluggedIn:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mIsCharged:Z

    if-nez v0, :cond_1

    .line 190
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mLockColorCount:I

    sget v1, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->mLockColorCount:I

    if-eq v0, v1, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->slideView:Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->startColorChangeAni()V

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->slideView:Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->startChargeAnim()V

    .line 196
    :cond_1
    return-void
.end method

.method protected updateBgView(Z)V
    .locals 3
    .param p1, "isBlur"    # Z

    .prologue
    .line 499
    invoke-super {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->updateBgView(Z)V

    .line 500
    if-eqz p1, :cond_0

    .line 501
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mBlurWallpaper:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 505
    :goto_0
    return-void

    .line 503
    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->mWallpaper:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
