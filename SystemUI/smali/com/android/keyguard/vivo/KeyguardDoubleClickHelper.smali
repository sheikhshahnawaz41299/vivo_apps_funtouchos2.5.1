.class public Lcom/android/keyguard/vivo/KeyguardDoubleClickHelper;
.super Ljava/lang/Object;
.source "KeyguardDoubleClickHelper.java"


# static fields
.field private static final KEY:Ljava/lang/String; = "vivo_dblclick_to_off_screen"

.field private static final TAG:Ljava/lang/String; = "KeyguardDoubleClickHelper"


# instance fields
.field private mCanceled:Z

.field private mContext:Landroid/content/Context;

.field private mDownX:F

.field private mDownY:F

.field private mEnableDoubleClick:Z

.field private mObserver:Landroid/database/ContentObserver;

.field private mPM:Landroid/os/PowerManager;

.field private mTouchSlop:I

.field private mUpTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-boolean v4, p0, Lcom/android/keyguard/vivo/KeyguardDoubleClickHelper;->mEnableDoubleClick:Z

    .line 31
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/keyguard/vivo/KeyguardDoubleClickHelper;->mObserver:Landroid/database/ContentObserver;

    .line 34
    iput-object p1, p0, Lcom/android/keyguard/vivo/KeyguardDoubleClickHelper;->mContext:Landroid/content/Context;

    .line 36
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/keyguard/vivo/KeyguardDoubleClickHelper;->mPM:Landroid/os/PowerManager;

    .line 37
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 38
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/keyguard/vivo/KeyguardDoubleClickHelper;->mTouchSlop:I

    .line 39
    invoke-direct {p0}, Lcom/android/keyguard/vivo/KeyguardDoubleClickHelper;->updateSettings()V

    .line 41
    new-instance v1, Lcom/android/keyguard/vivo/KeyguardDoubleClickHelper$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/vivo/KeyguardDoubleClickHelper$1;-><init>(Lcom/android/keyguard/vivo/KeyguardDoubleClickHelper;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/keyguard/vivo/KeyguardDoubleClickHelper;->mObserver:Landroid/database/ContentObserver;

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "vivo_dblclick_to_off_screen"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/vivo/KeyguardDoubleClickHelper;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/vivo/KeyguardDoubleClickHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/vivo/KeyguardDoubleClickHelper;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/keyguard/vivo/KeyguardDoubleClickHelper;->updateSettings()V

    return-void
.end method

.method private handleDoubleClick(FF)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/high16 v3, 0x41200000    # 10.0f

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 83
    .local v0, "uptime":J
    iget v2, p0, Lcom/android/keyguard/vivo/KeyguardDoubleClickHelper;->mDownX:F

    sub-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    iget v2, p0, Lcom/android/keyguard/vivo/KeyguardDoubleClickHelper;->mDownY:F

    sub-float v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/keyguard/vivo/KeyguardDoubleClickHelper;->mCanceled:Z

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/android/keyguard/vivo/KeyguardDoubleClickHelper;->mUpTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    invoke-static {}, Lcom/android/keyguard/KeyguardUtils;->isPowerSaveMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 85
    const-string v2, "KeyguardDoubleClickHelper"

    const-string v3, "Double clicked."

    invoke-static {v2, v3}, Lcom/android/keyguard/vivo/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v2, p0, Lcom/android/keyguard/vivo/KeyguardDoubleClickHelper;->mPM:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 88
    :cond_0
    iput-wide v0, p0, Lcom/android/keyguard/vivo/KeyguardDoubleClickHelper;->mUpTime:J

    .line 89
    return-void
.end method

.method private shouldCancelDoubleClick(FF)Z
    .locals 4
    .param p1, "moveX"    # F
    .param p2, "moveY"    # F

    .prologue
    .line 92
    iget v2, p0, Lcom/android/keyguard/vivo/KeyguardDoubleClickHelper;->mDownX:F

    sub-float v0, v2, p1

    .line 93
    .local v0, "x":F
    iget v2, p0, Lcom/android/keyguard/vivo/KeyguardDoubleClickHelper;->mDownY:F

    sub-float v1, v2, p2

    .line 94
    .local v1, "y":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, p0, Lcom/android/keyguard/vivo/KeyguardDoubleClickHelper;->mTouchSlop:I

    shl-int/lit8 v3, v3, 0x2

    if-le v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateSettings()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 98
    iget-object v2, p0, Lcom/android/keyguard/vivo/KeyguardDoubleClickHelper;->mContext:Landroid/content/Context;

    const-string v3, "vivo_dblclick_to_off_screen"

    invoke-static {v2, v3, v1}, Lcom/android/keyguard/KeyguardUtils;->settingsGetInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/keyguard/vivo/KeyguardDoubleClickHelper;->mEnableDoubleClick:Z

    .line 99
    const-string v0, "KeyguardDoubleClickHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Double click enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/vivo/KeyguardDoubleClickHelper;->mEnableDoubleClick:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/keyguard/vivo/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void

    :cond_0
    move v0, v1

    .line 98
    goto :goto_0
.end method


# virtual methods
.method public DoubleClick(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 61
    iget-boolean v1, p0, Lcom/android/keyguard/vivo/KeyguardDoubleClickHelper;->mEnableDoubleClick:Z

    if-nez v1, :cond_0

    .line 62
    const-string v1, "KeyguardDoubleClickHelper"

    const-string v2, "Double click disable."

    invoke-static {v1, v2}, Lcom/android/keyguard/vivo/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 67
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 69
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/keyguard/vivo/KeyguardDoubleClickHelper;->shouldCancelDoubleClick(FF)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/keyguard/vivo/KeyguardDoubleClickHelper;->mCanceled:Z

    .line 70
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/android/keyguard/vivo/KeyguardDoubleClickHelper;->mDownX:F

    .line 71
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/android/keyguard/vivo/KeyguardDoubleClickHelper;->mDownY:F

    goto :goto_0

    .line 75
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/keyguard/vivo/KeyguardDoubleClickHelper;->handleDoubleClick(FF)V

    goto :goto_0

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public unRegisterContentObserver()V
    .locals 2

    .prologue
    .line 51
    const-string v0, "KeyguardDoubleClickHelper"

    const-string v1, "unRegisterContentObserver"

    invoke-static {v0, v1}, Lcom/android/keyguard/vivo/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/android/keyguard/vivo/KeyguardDoubleClickHelper;->mObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/android/keyguard/vivo/KeyguardDoubleClickHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/vivo/KeyguardDoubleClickHelper;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/vivo/KeyguardDoubleClickHelper;->mObserver:Landroid/database/ContentObserver;

    .line 57
    :cond_0
    return-void
.end method
