.class public Lcom/android/systemui/statusbar/phone/DozeScrimController;
.super Ljava/lang/Object;
.source "DozeScrimController.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "DozeScrimController"


# instance fields
.field private mBehindAnimator:Landroid/animation/Animator;

.field private mBehindTarget:F

.field private final mDozeAnimationInterpolator:Landroid/view/animation/Interpolator;

.field private final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field private mDozing:Z

.field private final mHandler:Landroid/os/Handler;

.field private mInFrontAnimator:Landroid/animation/Animator;

.field private mInFrontTarget:F

.field private mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

.field private final mPulseIn:Ljava/lang/Runnable;

.field private final mPulseInFinished:Ljava/lang/Runnable;

.field private final mPulseInInterpolator:Landroid/view/animation/Interpolator;

.field private final mPulseInInterpolatorPickup:Landroid/view/animation/Interpolator;

.field private final mPulseOut:Ljava/lang/Runnable;

.field private final mPulseOutFinished:Ljava/lang/Runnable;

.field private final mPulseOutInterpolator:Landroid/view/animation/Interpolator;

.field private mPulseReason:I

.field private final mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    const-string v0, "DozeScrimController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/ScrimController;Landroid/content/Context;)V
    .locals 1
    .param p1, "scrimController"    # Lcom/android/systemui/statusbar/phone/ScrimController;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    sget-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseInInterpolator:Landroid/view/animation/Interpolator;

    .line 42
    sget-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ALPHA_IN:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOutInterpolator:Landroid/view/animation/Interpolator;

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mHandler:Landroid/os/Handler;

    .line 218
    new-instance v0, Lcom/android/systemui/statusbar/phone/DozeScrimController$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController$3;-><init>(Lcom/android/systemui/statusbar/phone/DozeScrimController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseIn:Ljava/lang/Runnable;

    .line 237
    new-instance v0, Lcom/android/systemui/statusbar/phone/DozeScrimController$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController$4;-><init>(Lcom/android/systemui/statusbar/phone/DozeScrimController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseInFinished:Ljava/lang/Runnable;

    .line 246
    new-instance v0, Lcom/android/systemui/statusbar/phone/DozeScrimController$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController$5;-><init>(Lcom/android/systemui/statusbar/phone/DozeScrimController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOut:Ljava/lang/Runnable;

    .line 256
    new-instance v0, Lcom/android/systemui/statusbar/phone/DozeScrimController$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController$6;-><init>(Lcom/android/systemui/statusbar/phone/DozeScrimController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOutFinished:Ljava/lang/Runnable;

    .line 56
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 57
    new-instance v0, Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-direct {v0, p2}, Lcom/android/systemui/statusbar/phone/DozeParameters;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 58
    const v0, 0x10c000e

    invoke-static {p2, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseInInterpolatorPickup:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozeAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 60
    return-void
.end method

.method private abortAnimations()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mInFrontAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mInFrontAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mBehindAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mBehindAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 137
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/DozeScrimController;ZF)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/DozeScrimController;
    .param p1, "x1"    # Z
    .param p2, "x2"    # F

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->setDozeAlpha(ZF)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/DozeScrimController;ZLandroid/animation/Animator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/DozeScrimController;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Landroid/animation/Animator;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->setCurrentAnimator(ZLandroid/animation/Animator;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/DozeScrimController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/DozeScrimController;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->pulseStarted()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/DozeScrimController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/DozeScrimController;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOut:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/DozeScrimController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/DozeScrimController;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/phone/DozeScrimController;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/DozeScrimController;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOutInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/phone/DozeScrimController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/DozeScrimController;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOutFinished:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/phone/DozeScrimController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/DozeScrimController;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->pulseFinished()V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 35
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->DEBUG:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/DozeScrimController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/DozeScrimController;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozing:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/DozeScrimController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/DozeScrimController;

    .prologue
    .line 35
    iget v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseReason:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/DozeScrimController;)Lcom/android/systemui/statusbar/phone/DozeParameters;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/DozeScrimController;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/DozeScrimController;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/DozeScrimController;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseInInterpolatorPickup:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/DozeScrimController;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/DozeScrimController;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseInInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/DozeScrimController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/DozeScrimController;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseInFinished:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/DozeScrimController;ZFJLandroid/view/animation/Interpolator;JLjava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/DozeScrimController;
    .param p1, "x1"    # Z
    .param p2, "x2"    # F
    .param p3, "x3"    # J
    .param p5, "x4"    # Landroid/view/animation/Interpolator;
    .param p6, "x5"    # J
    .param p8, "x6"    # Ljava/lang/Runnable;

    .prologue
    .line 35
    invoke-direct/range {p0 .. p8}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->startScrimAnimation(ZFJLandroid/view/animation/Interpolator;JLjava/lang/Runnable;)V

    return-void
.end method

.method private cancelPulsing()V
    .locals 2

    .prologue
    .line 108
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DozeScrimController"

    const-string v1, "Cancel pulsing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseIn:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 112
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 113
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->pulseFinished()V

    .line 115
    :cond_1
    return-void
.end method

.method private getCurrentAnimator(Z)Landroid/animation/Animator;
    .locals 1
    .param p1, "inFront"    # Z

    .prologue
    .line 193
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mInFrontAnimator:Landroid/animation/Animator;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mBehindAnimator:Landroid/animation/Animator;

    goto :goto_0
.end method

.method private getCurrentTarget(Z)F
    .locals 1
    .param p1, "inFront"    # Z

    .prologue
    .line 181
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mInFrontTarget:F

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mBehindTarget:F

    goto :goto_0
.end method

.method private getDozeAlpha(Z)F
    .locals 1
    .param p1, "inFront"    # Z

    .prologue
    .line 213
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->getDozeInFrontAlpha()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->getDozeBehindAlpha()F

    move-result v0

    goto :goto_0
.end method

.method private pulseFinished()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost$PulseCallback;->onPulseFinished()V

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    .line 128
    :cond_0
    return-void
.end method

.method private pulseStarted()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost$PulseCallback;->onPulseStarted()V

    .line 121
    :cond_0
    return-void
.end method

.method private setCurrentAnimator(ZLandroid/animation/Animator;)V
    .locals 0
    .param p1, "inFront"    # Z
    .param p2, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 197
    if-eqz p1, :cond_0

    .line 198
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mInFrontAnimator:Landroid/animation/Animator;

    .line 202
    :goto_0
    return-void

    .line 200
    :cond_0
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mBehindAnimator:Landroid/animation/Animator;

    goto :goto_0
.end method

.method private setCurrentTarget(ZF)V
    .locals 0
    .param p1, "inFront"    # Z
    .param p2, "target"    # F

    .prologue
    .line 185
    if-eqz p1, :cond_0

    .line 186
    iput p2, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mInFrontTarget:F

    .line 190
    :goto_0
    return-void

    .line 188
    :cond_0
    iput p2, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mBehindTarget:F

    goto :goto_0
.end method

.method private setDozeAlpha(ZF)V
    .locals 1
    .param p1, "inFront"    # Z
    .param p2, "alpha"    # F

    .prologue
    .line 205
    if-eqz p1, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/ScrimController;->setDozeInFrontAlpha(F)V

    .line 210
    :goto_0
    return-void

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/ScrimController;->setDozeBehindAlpha(F)V

    goto :goto_0
.end method

.method private startScrimAnimation(ZFJLandroid/view/animation/Interpolator;)V
    .locals 9
    .param p1, "inFront"    # Z
    .param p2, "target"    # F
    .param p3, "duration"    # J
    .param p5, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 141
    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->startScrimAnimation(ZFJLandroid/view/animation/Interpolator;JLjava/lang/Runnable;)V

    .line 143
    return-void
.end method

.method private startScrimAnimation(ZFJLandroid/view/animation/Interpolator;JLjava/lang/Runnable;)V
    .locals 6
    .param p1, "inFront"    # Z
    .param p2, "target"    # F
    .param p3, "duration"    # J
    .param p5, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p6, "delay"    # J
    .param p8, "endRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->getCurrentAnimator(Z)Landroid/animation/Animator;

    move-result-object v1

    .line 148
    .local v1, "current":Landroid/animation/Animator;
    if-eqz v1, :cond_1

    .line 149
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->getCurrentTarget(Z)F

    move-result v2

    .line 150
    .local v2, "currentTarget":F
    cmpl-float v3, v2, p2

    if-nez v3, :cond_0

    .line 178
    .end local v2    # "currentTarget":F
    :goto_0
    return-void

    .line 153
    .restart local v2    # "currentTarget":F
    :cond_0
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 155
    .end local v2    # "currentTarget":F
    :cond_1
    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->getDozeAlpha(Z)F

    move-result v5

    aput v5, v3, v4

    const/4 v4, 0x1

    aput p2, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 156
    .local v0, "anim":Landroid/animation/ValueAnimator;
    new-instance v3, Lcom/android/systemui/statusbar/phone/DozeScrimController$1;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/statusbar/phone/DozeScrimController$1;-><init>(Lcom/android/systemui/statusbar/phone/DozeScrimController;Z)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 163
    invoke-virtual {v0, p5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 164
    invoke-virtual {v0, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 165
    invoke-virtual {v0, p6, p7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 166
    new-instance v3, Lcom/android/systemui/statusbar/phone/DozeScrimController$2;

    invoke-direct {v3, p0, p1, p8}, Lcom/android/systemui/statusbar/phone/DozeScrimController$2;-><init>(Lcom/android/systemui/statusbar/phone/DozeScrimController;ZLjava/lang/Runnable;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 175
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 176
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->setCurrentAnimator(ZLandroid/animation/Animator;)V

    .line 177
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->setCurrentTarget(ZF)V

    goto :goto_0
.end method


# virtual methods
.method public isPulsing()Z
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pulse(Lcom/android/systemui/doze/DozeHost$PulseCallback;I)V
    .locals 2
    .param p1, "callback"    # Lcom/android/systemui/doze/DozeHost$PulseCallback;
    .param p2, "reason"    # I

    .prologue
    .line 86
    if-nez p1, :cond_0

    .line 87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozing:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    if-eqz v0, :cond_2

    .line 92
    :cond_1
    invoke-interface {p1}, Lcom/android/systemui/doze/DozeHost$PulseCallback;->onPulseFinished()V

    .line 101
    :goto_0
    return-void

    .line 98
    :cond_2
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    .line 99
    iput p2, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseReason:I

    .line 100
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseIn:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setDozing(ZZ)V
    .locals 7
    .param p1, "dozing"    # Z
    .param p2, "animate"    # Z

    .prologue
    const-wide/16 v4, 0x2bc

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 63
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozing:Z

    if-ne v0, p1, :cond_0

    .line 82
    :goto_0
    return-void

    .line 64
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozing:Z

    .line 65
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozing:Z

    if-eqz v0, :cond_1

    .line 66
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->abortAnimations()V

    .line 67
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setDozeBehindAlpha(F)V

    .line 68
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setDozeInFrontAlpha(F)V

    goto :goto_0

    .line 70
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->cancelPulsing()V

    .line 71
    if-eqz p2, :cond_2

    .line 72
    const/4 v2, 0x0

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozeAnimationInterpolator:Landroid/view/animation/Interpolator;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->startScrimAnimation(ZFJLandroid/view/animation/Interpolator;)V

    .line 74
    const/4 v2, 0x1

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozeAnimationInterpolator:Landroid/view/animation/Interpolator;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->startScrimAnimation(ZFJLandroid/view/animation/Interpolator;)V

    goto :goto_0

    .line 77
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->abortAnimations()V

    .line 78
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/ScrimController;->setDozeBehindAlpha(F)V

    .line 79
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/ScrimController;->setDozeInFrontAlpha(F)V

    goto :goto_0
.end method
