.class public Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;
.super Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;
.source "KeyguardSmartWakeView.java"


# static fields
.field private static final ACTION_VOICEONESHOT:Ljava/lang/String; = "vivo.intent.action.VOICEONESHOT_RESULT"

.field private static final BG_ANIMATION_DURING:I = 0x7d0

.field private static final DEBUG:Z

.field private static final DURING_DO_ANIMATION_BEFORE_SLEEP:I = 0xfa0

.field private static final DURING_GO_TO_SLEEP:I = 0x0

.field private static final DURING_VIEW_BG_ALPHA:I = 0x5dc

.field private static final MSG_DO_ANIMATION_BEFORE_SLEEP:I = 0x2

.field private static final MSG_GO_TO_SLEEP:I = 0x1

.field private static final SHOW_CHARGE_VIEW:Z = false

.field private static final STYLE_CALL:I = 0x2

.field private static final STYLE_MSG:I = 0x1

.field private static final STYLE_NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "KeyguardSmartWakeView"


# instance fields
.field private mBackgroundAnimView:Landroid/widget/TextView;

.field private mBackgroundAnimView2:Landroid/widget/TextView;

.field private mBackgroundAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mBackgroundAnimation2:Landroid/graphics/drawable/AnimationDrawable;

.field private mBackgroundAnimation2During:I

.field private mBackgroundAnimationDuring:I

.field private mBgAnimator:Landroid/animation/ObjectAnimator;

.field private mCancelGoToSleep:Z

.field private mClock:Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDate:Landroid/widget/TextView;

.field private mDateFormatString:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mOnResume:Z

.field private mPhoneState:I

.field mPhoneStateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mPowerManager:Landroid/os/PowerManager;

.field mReceiver:Landroid/content/BroadcastReceiver;

.field private mUnreadCall:Landroid/widget/TextView;

.field private mUnreadMsg:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->DEBUG:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 105
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mContext:Landroid/content/Context;

    .line 46
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mOnResume:Z

    .line 48
    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mBackgroundAnimView:Landroid/widget/TextView;

    .line 49
    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mBackgroundAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 50
    iput v1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mBackgroundAnimationDuring:I

    .line 51
    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mBackgroundAnimView2:Landroid/widget/TextView;

    .line 52
    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mBackgroundAnimation2:Landroid/graphics/drawable/AnimationDrawable;

    .line 53
    iput v1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mBackgroundAnimation2During:I

    .line 68
    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mBgAnimator:Landroid/animation/ObjectAnimator;

    .line 75
    iput v1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mPhoneState:I

    .line 76
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mCancelGoToSleep:Z

    .line 81
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView$1;-><init>(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mHandler:Landroid/os/Handler;

    .line 115
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView$2;-><init>(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 295
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView$8;-><init>(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mPhoneStateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 107
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mContext:Landroid/content/Context;

    .line 108
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mPowerManager:Landroid/os/PowerManager;

    .line 109
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mCancelGoToSleep:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mCancelGoToSleep:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;)Landroid/os/PowerManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mBackgroundAnimView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mBackgroundAnimation2:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;Landroid/graphics/drawable/AnimationDrawable;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;
    .param p1, "x1"    # Landroid/graphics/drawable/AnimationDrawable;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mBackgroundAnimation2:Landroid/graphics/drawable/AnimationDrawable;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;

    .prologue
    .line 39
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mPhoneState:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mPhoneState:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->startAnimation(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mNotificationView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mNotificationView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->unlockDevice()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;
    .param p1, "x1"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->startActivityLocked(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mBackgroundAnimView2:Landroid/widget/TextView;

    return-object v0
.end method

.method private refreshDate()V
    .locals 3

    .prologue
    .line 221
    const-string v0, "KeyguardSmartWakeView"

    const-string v1, "refreshDate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mDate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mDateFormatString:Ljava/lang/String;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    return-void
.end method

.method private startActivityLocked(I)V
    .locals 2
    .param p1, "style"    # I

    .prologue
    .line 204
    const/4 v0, 0x0

    .line 205
    .local v0, "intent":Landroid/content/Intent;
    packed-switch p1, :pswitch_data_0

    .line 218
    :goto_0
    :pswitch_0
    return-void

    .line 210
    :pswitch_1
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/utils/KeyguardUtils;->getIntent(I)Landroid/content/Intent;

    move-result-object v0

    .line 211
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 214
    :pswitch_2
    const/4 v1, 0x3

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/utils/KeyguardUtils;->getIntent(I)Landroid/content/Intent;

    move-result-object v0

    .line 215
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 205
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private startAnimation(Z)V
    .locals 11
    .param p1, "turningOff"    # Z

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 260
    if-eqz p1, :cond_1

    move v0, v5

    .line 261
    .local v0, "beginValue":F
    :goto_0
    if-eqz p1, :cond_2

    .line 263
    .local v2, "endValue":F
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mContentView:Landroid/view/View;

    const-string v6, "alpha"

    new-array v7, v10, [F

    aput v0, v7, v8

    aput v2, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 264
    .local v4, "timeAnimator":Landroid/animation/ObjectAnimator;
    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mBackgroundAnimView:Landroid/widget/TextView;

    const-string v6, "alpha"

    new-array v7, v10, [F

    aput v0, v7, v8

    aput v2, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 266
    .local v1, "bgViewAnimator":Landroid/animation/ObjectAnimator;
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 267
    .local v3, "set":Landroid/animation/AnimatorSet;
    if-eqz p1, :cond_0

    .line 268
    new-instance v5, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView$7;

    invoke-direct {v5, p0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView$7;-><init>(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;)V

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 290
    :cond_0
    new-array v5, v10, [Landroid/animation/Animator;

    aput-object v4, v5, v8

    aput-object v1, v5, v9

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 291
    const-wide/16 v6, 0x5dc

    invoke-virtual {v3, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 292
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 293
    return-void

    .end local v0    # "beginValue":F
    .end local v1    # "bgViewAnimator":Landroid/animation/ObjectAnimator;
    .end local v2    # "endValue":F
    .end local v3    # "set":Landroid/animation/AnimatorSet;
    .end local v4    # "timeAnimator":Landroid/animation/ObjectAnimator;
    :cond_1
    move v0, v2

    .line 260
    goto :goto_0

    .restart local v0    # "beginValue":F
    :cond_2
    move v2, v5

    .line 261
    goto :goto_1
.end method

.method private startBackgroundAnimation()V
    .locals 4

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->stopBackgroundAnimation()V

    .line 227
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mBackgroundAnimView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mBackgroundAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 228
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mBackgroundAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 229
    const-string v0, "KeyguardSmartWakeView"

    const-string v1, "background animation 1 start..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mBackgroundAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 231
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView$6;-><init>(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;)V

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mBackgroundAnimationDuring:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 243
    :goto_0
    return-void

    .line 241
    :cond_0
    const-string v0, "KeyguardSmartWakeView"

    const-string v1, "background animation is null..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private stopBackgroundAnimation()V
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mBackgroundAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mBackgroundAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mBackgroundAnimation2:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_1

    .line 251
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mBackgroundAnimation2:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mBackgroundAnimView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mBackgroundAnimView2:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 257
    return-void
.end method

.method private unlockDevice()V
    .locals 0

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->dismiss()V

    .line 201
    return-void
.end method

.method private updateUnreadInfo(II)V
    .locals 4
    .param p1, "msg"    # I
    .param p2, "call"    # I

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 302
    if-lez p1, :cond_0

    .line 303
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mUnreadMsg:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 304
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mUnreadMsg:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    :goto_0
    if-lez p2, :cond_1

    .line 311
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mUnreadCall:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 312
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mUnreadCall:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    :goto_1
    return-void

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mUnreadMsg:Landroid/widget/TextView;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mUnreadMsg:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mUnreadCall:Landroid/widget/TextView;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mUnreadCall:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 321
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mPhoneStateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 322
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 323
    .local v0, "mIntentFilter":Landroid/content/IntentFilter;
    const-string v1, "vivo.intent.action.VOICEONESHOT_RESULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 324
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 325
    invoke-super {p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->onAttachedToWindow()V

    .line 326
    return-void
.end method

.method public onCleanup()V
    .locals 0

    .prologue
    .line 395
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 193
    invoke-super {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 195
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mContext:Landroid/content/Context;

    const v1, 0x7f0e000d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mDateFormatString:Ljava/lang/String;

    .line 196
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->refreshDate()V

    .line 197
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mPhoneStateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 331
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 332
    invoke-super {p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->onDetachedFromWindow()V

    .line 333
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 132
    invoke-super {p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->onFinishInflate()V

    .line 134
    const v0, 0x7f11005b

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mClock:Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;

    .line 135
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mContext:Landroid/content/Context;

    const v1, 0x7f0e000d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mDateFormatString:Ljava/lang/String;

    .line 136
    const v0, 0x7f1101c1

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mBackgroundAnimView:Landroid/widget/TextView;

    .line 137
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mBackgroundAnimView:Landroid/widget/TextView;

    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView$3;-><init>(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    const v0, 0x7f1101c2

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mContentView:Landroid/view/View;

    .line 152
    const v0, 0x7f110062

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mDate:Landroid/widget/TextView;

    .line 155
    const v0, 0x7f1101c3

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mUnreadCall:Landroid/widget/TextView;

    .line 156
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mUnreadCall:Landroid/widget/TextView;

    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView$4;-><init>(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    const v0, 0x7f1101c4

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mUnreadMsg:Landroid/widget/TextView;

    .line 174
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mUnreadMsg:Landroid/widget/TextView;

    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView$5;-><init>(Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    return-void
.end method

.method public onHide(Z)V
    .locals 0
    .param p1, "bouncer"    # Z

    .prologue
    .line 389
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->onPause()V

    .line 390
    return-void
.end method

.method public onNotificationChanged(ZZ)V
    .locals 2
    .param p1, "empty"    # Z
    .param p2, "retain"    # Z

    .prologue
    .line 399
    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 400
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mNotificationView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 401
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mNotificationView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 403
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 361
    const-string v0, "KeyguardSmartWakeView"

    const-string v1, "onPause."

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mBackgroundAnimView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 363
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mCancelGoToSleep:Z

    .line 364
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 365
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 366
    return-void
.end method

.method public onRefreshInfo(II)V
    .locals 3
    .param p1, "msgNum"    # I
    .param p2, "callNum"    # I

    .prologue
    .line 376
    const-string v0, "KeyguardSmartWakeView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRefreshInfo, msgNum = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", callNum = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->updateUnreadInfo(II)V

    .line 378
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 345
    const-string v0, "KeyguardSmartWakeView"

    const-string v1, "onResume."

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 357
    :goto_0
    return-void

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mNotificationView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 351
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mNotificationView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 352
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mBackgroundAnimView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 353
    invoke-direct {p0, v2}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->startAnimation(Z)V

    .line 354
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mCancelGoToSleep:Z

    .line 355
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 356
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->refreshDate()V

    goto :goto_0
.end method

.method public onTimeChanged()V
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->mClock:Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/ImageDigitalClock;->updateTime()V

    .line 371
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->refreshDate()V

    .line 372
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 384
    const/4 v0, 0x1

    return v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 337
    invoke-super {p0, p1, p2}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->onVisibilityChanged(Landroid/view/View;I)V

    .line 338
    const/16 v0, 0x8

    if-ne p2, v0, :cond_0

    .line 339
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardSmartWakeView;->onPause()V

    .line 341
    :cond_0
    return-void
.end method
