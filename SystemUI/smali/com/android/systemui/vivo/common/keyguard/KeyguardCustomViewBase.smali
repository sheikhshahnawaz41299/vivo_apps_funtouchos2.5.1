.class public abstract Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;
.super Landroid/widget/RelativeLayout;
.source "KeyguardCustomViewBase.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "KeyguardCustomViewBase"


# instance fields
.field public isPinPuk:Z

.field private mCallback:Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;

.field protected mIsMusicPlaying:Z

.field protected mIsQuickCharging:Z

.field protected mNotificationView:Landroid/view/View;

.field protected mQuickChargeView:Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;

.field private mScreenOn:Z

.field protected mShortcutWidth:I

.field private mShowing:Z

.field private final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    const/16 v0, 0x20

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->mShortcutWidth:I

    .line 38
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->isPinPuk:Z

    .line 263
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase$1;-><init>(Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 43
    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->setPadding(IIII)V

    .line 44
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->mShortcutWidth:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->mShortcutWidth:I

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;
    .param p1, "x1"    # Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->isPlugged(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;
    .param p1, "x1"    # Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->isCharged(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;
    .param p1, "x1"    # Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->isBatteryLow(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->mShowing:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;)Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->mCallback:Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private isBatteryLow(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)Z
    .locals 2
    .param p1, "status"    # Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .prologue
    .line 246
    iget v0, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    const/16 v1, 0xf

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCharged(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)Z
    .locals 2
    .param p1, "status"    # Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .prologue
    .line 242
    iget v0, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    iget v0, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPlugged(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)Z
    .locals 2
    .param p1, "status"    # Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .prologue
    .line 236
    iget v0, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->plugged:I

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->status:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected addQuickChargeView()V
    .locals 0

    .prologue
    .line 344
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v1, -0x1

    .line 258
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 260
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 261
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    const/4 v1, -0x1

    .line 251
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 253
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 254
    return-void
.end method

.method public dismiss()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->mCallback:Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;->dismiss(Z)V

    .line 180
    return-void
.end method

.method public dismissWithAnim()Z
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x1

    return v0
.end method

.method public getNotificationView()Landroid/view/View;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->mNotificationView:Landroid/view/View;

    return-object v0
.end method

.method protected isInKeyguardState()Z
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->mCallback:Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;->isShowing()Z

    move-result v0

    return v0
.end method

.method protected isOccluded()Z
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->mCallback:Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;->isOccluded()Z

    move-result v0

    return v0
.end method

.method protected isSecure()Z
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->mCallback:Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;->isSecure()Z

    move-result v0

    return v0
.end method

.method protected isShowing()Z
    .locals 1

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->mShowing:Z

    return v0
.end method

.method protected onAnimationToSideEnded()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->mCallback:Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;->onAnimationToSideEnded()V

    .line 217
    return-void
.end method

.method protected onAnimationToSideStarted()V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->mCallback:Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;->onAnimationToSideStarted()V

    .line 213
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 327
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 328
    return-void
.end method

.method public onBatteryChanged(ZZIZ)V
    .locals 0
    .param p1, "pluggedIn"    # Z
    .param p2, "isCharged"    # Z
    .param p3, "level"    # I
    .param p4, "isLowLevel"    # Z

    .prologue
    .line 90
    return-void
.end method

.method protected onBouncerChanged(Z)V
    .locals 0
    .param p1, "bouncer"    # Z

    .prologue
    .line 149
    return-void
.end method

.method public onCarrierInfoChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 157
    return-void
.end method

.method public onChargingModeChanged(Z)V
    .locals 0
    .param p1, "quick"    # Z

    .prologue
    .line 152
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->mIsQuickCharging:Z

    .line 153
    return-void
.end method

.method public abstract onCleanup()V
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 333
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 334
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 338
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 340
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->addQuickChargeView()V

    .line 341
    return-void
.end method

.method public abstract onHide(Z)V
.end method

.method public onKeyPressed(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 75
    const/4 v0, 0x1

    return v0
.end method

.method protected onKeyguardVisibilityChanged(Z)V
    .locals 3
    .param p1, "showing"    # Z

    .prologue
    .line 140
    const-string v0, "KeyguardCustomViewBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyguardVisibilityChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->mShowing:Z

    .line 142
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->mScreenOn:Z

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->onResume()V

    .line 145
    :cond_0
    return-void
.end method

.method public onMusicPanelVisibilityChanged(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->mCallback:Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;->onMusicPanelVisibilityChanged(Z)V

    .line 209
    return-void
.end method

.method public onMusicPlayingStateChanged(Z)V
    .locals 0
    .param p1, "play"    # Z

    .prologue
    .line 204
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->mIsMusicPlaying:Z

    .line 205
    return-void
.end method

.method public onNotificationChanged(ZZ)V
    .locals 0
    .param p1, "empty"    # Z
    .param p2, "retain"    # Z

    .prologue
    .line 130
    return-void
.end method

.method public onNotificationClicked(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "clickRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 133
    const-string v0, "KeyguardCustomViewBase"

    const-string v1, "Notification clicked."

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    if-eqz p1, :cond_0

    .line 135
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 137
    :cond_0
    return-void
.end method

.method public abstract onPause()V
.end method

.method public onRefreshInfo(II)V
    .locals 0
    .param p1, "msgNum"    # I
    .param p2, "callNum"    # I

    .prologue
    .line 102
    return-void
.end method

.method public abstract onResume()V
.end method

.method public onSkinChanged()V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method public onThemeChanged()V
    .locals 0

    .prologue
    .line 107
    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    .prologue
    .line 114
    return-void
.end method

.method public onTransparent()V
    .locals 0

    .prologue
    .line 347
    return-void
.end method

.method public onWallpaperChanged()V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method protected setBlurWallPaperShowing(Z)V
    .locals 1
    .param p1, "showing"    # Z

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->mCallback:Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->mCallback:Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;->setBlurWallPaperShowing(Z)V

    .line 353
    :cond_0
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->mCallback:Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;

    .line 168
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 169
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->mScreenOn:Z

    .line 170
    if-eqz p1, :cond_0

    .line 171
    invoke-virtual {p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;->getNotificationView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->mNotificationView:Landroid/view/View;

    .line 172
    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->mShowing:Z

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->onKeyguardVisibilityChanged(Z)V

    .line 176
    :cond_0
    return-void
.end method

.method public startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->mCallback:Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;

    invoke-virtual {v0, p2}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;->startActivity(Landroid/content/Intent;)V

    .line 194
    return-void
.end method

.method protected updateBgView(Z)V
    .locals 0
    .param p1, "isBlur"    # Z

    .prologue
    .line 356
    invoke-virtual {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->setBlurWallPaperShowing(Z)V

    .line 357
    return-void
.end method

.method public userActivity()V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->mCallback:Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;->userActivity()V

    .line 187
    return-void
.end method
