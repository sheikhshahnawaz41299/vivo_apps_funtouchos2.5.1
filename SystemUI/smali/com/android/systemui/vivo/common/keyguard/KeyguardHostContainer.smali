.class public Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;
.super Landroid/widget/FrameLayout;
.source "KeyguardHostContainer.java"


# static fields
.field public static final AWAKE_INTERVAL_DEFAULT_MS:I = 0x1388

.field public static final AWAKE_INTERVAL_HALL_MS:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "KeyguardHostContainer"


# instance fields
.field private mCallback:Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;

.field private mContext:Landroid/content/Context;

.field private mDismissWithAnim:Z

.field private mDoubleClickHelper:Lcom/android/systemui/vivo/common/keyguard/KeyguardDoubleClickHelper;

.field private mHallView:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

.field private mKeyguardView:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

.field private mMainContainer:Landroid/view/ViewGroup;

.field private mMonitor:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

.field private mShortcutView:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;

.field private mShortcutWidth:I

.field private mSmartWakeView:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mDismissWithAnim:Z

    .line 41
    const/16 v0, 0x20

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mShortcutWidth:I

    .line 45
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mContext:Landroid/content/Context;

    .line 46
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mShortcutWidth:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mShortcutWidth:I

    .line 47
    return-void
.end method

.method private getHallWindowView()Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardViewFactory;->getHallWindowView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    return-object v0
.end method

.method private getMainView(I)Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardViewFactory;->getView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    return-object v0
.end method

.method private getSmartWakeView()Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardViewFactory;->getSmartWakeView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    return-object v0
.end method

.method private updateUserActivityTimeout(J)V
    .locals 1
    .param p1, "timeout"    # J

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mCallback:Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mCallback:Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;->updateUserActivityTimeout(J)V

    .line 305
    :cond_0
    return-void
.end method


# virtual methods
.method public dismissWithAnim()Z
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mDismissWithAnim:Z

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 64
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/StateUtils;->getInstance()Lcom/android/systemui/vivo/common/utils/StateUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/utils/StateUtils;->isKeyguardShowingWithShade()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    const/4 v0, 0x0

    .line 67
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public getShortcutWidth()I
    .locals 1

    .prologue
    .line 326
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mShortcutWidth:I

    return v0
.end method

.method public hide(Z)V
    .locals 2
    .param p1, "bouncer"    # Z

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardStateManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/keyguard/KeyguardStateManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardStateManager;->setHideFromFingerprint(Z)V

    .line 287
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mKeyguardView:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mKeyguardView:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->onHide(Z)V

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mShortcutView:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;

    if-eqz v0, :cond_1

    .line 291
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mShortcutView:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->onHide(Z)V

    .line 293
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mSmartWakeView:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    if-eqz v0, :cond_2

    .line 294
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mSmartWakeView:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->onHide(Z)V

    .line 296
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mHallView:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    if-eqz v0, :cond_3

    .line 297
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mHallView:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->onHide(Z)V

    .line 299
    :cond_3
    return-void
.end method

.method public notificationClicked(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "clickRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mKeyguardView:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->onNotificationClicked(Ljava/lang/Runnable;)V

    .line 246
    return-void
.end method

.method public onCarrierInfoChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mKeyguardView:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mKeyguardView:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->onCarrierInfoChanged(Ljava/lang/String;)V

    .line 333
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 55
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 57
    const v0, 0x7f110163

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mMainContainer:Landroid/view/ViewGroup;

    .line 58
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/KeyguardDoubleClickHelper;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardDoubleClickHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mDoubleClickHelper:Lcom/android/systemui/vivo/common/keyguard/KeyguardDoubleClickHelper;

    .line 59
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mCallback:Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mCallback:Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mCallback:Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;->isOccluded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    :cond_0
    const-string v0, "KeyguardHostContainer"

    const-string v1, "keyguard is not showing, ignore touch event."

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const/4 v0, 0x1

    .line 91
    :goto_0
    return v0

    .line 78
    :cond_1
    invoke-static {}, Lcom/android/systemui/vivo/common/keyguard/KeyguardTheme;->enableDoubleClick()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 79
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mDoubleClickHelper:Lcom/android/systemui/vivo/common/keyguard/KeyguardDoubleClickHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardDoubleClickHelper;->onDoubleClick(Landroid/view/MotionEvent;)V

    .line 82
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 87
    const-string v0, "KeyguardHostContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keygurad touch event : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 84
    :pswitch_0
    const-string v0, "KeyguardHostContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keygurad touch event : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyPressed(Landroid/view/KeyEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mShortcutView:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mShortcutView:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->onKeyPressed(Landroid/view/KeyEvent;)Z

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mKeyguardView:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    if-eqz v0, :cond_1

    .line 273
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mKeyguardView:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->onKeyPressed(Landroid/view/KeyEvent;)Z

    .line 275
    :cond_1
    return-void
.end method

.method public onThemeChanged()V
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mKeyguardView:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mKeyguardView:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->onThemeChanged()V

    .line 317
    :cond_0
    return-void
.end method

.method public onTransparent()V
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mKeyguardView:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mKeyguardView:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->onTransparent()V

    .line 323
    :cond_0
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;

    .prologue
    .line 261
    if-eqz p1, :cond_0

    .line 262
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mCallback:Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;

    .line 263
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mCallback:Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;-><init>(Landroid/content/Context;Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mMonitor:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    .line 264
    const-wide/16 v0, 0x1388

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->updateUserActivityTimeout(J)V

    .line 266
    :cond_0
    return-void
.end method

.method public updateChargingMode(Z)V
    .locals 1
    .param p1, "quick"    # Z

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mKeyguardView:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mKeyguardView:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->onChargingModeChanged(Z)V

    .line 311
    :cond_0
    return-void
.end method

.method public updateHallView(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    const/4 v1, 0x0

    .line 167
    if-eqz p1, :cond_1

    .line 168
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->getHallWindowView()Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mHallView:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    .line 169
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mHallView:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mCallback:Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->setKeyguardCallback(Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;)V

    .line 170
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mHallView:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mHallView:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->getChildCount()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->addView(Landroid/view/View;I)V

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mHallView:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mHallView:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->removeView(Landroid/view/View;)V

    .line 175
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mHallView:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->onCleanup()V

    .line 176
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mHallView:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->setKeyguardCallback(Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;)V

    .line 177
    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mHallView:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    goto :goto_0
.end method

.method public updateHallWindowVisibility(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    const-wide/16 v0, 0x1388

    .line 195
    if-eqz p1, :cond_0

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->updateUserActivityTimeout(J)V

    .line 196
    if-eqz p1, :cond_2

    .line 197
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mHallView:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mHallView:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->setVisibility(I)V

    .line 203
    :cond_1
    :goto_0
    return-void

    .line 201
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mHallView:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateMainView(I)V
    .locals 6
    .param p1, "id"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 96
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mShortcutView:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mMainContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mShortcutView:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 98
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mShortcutView:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->onPause()V

    .line 99
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mShortcutView:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->onCleanup()V

    .line 100
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mShortcutView:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;

    invoke-virtual {v1, v3}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->setKeyguardCallback(Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;)V

    .line 101
    iput-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mShortcutView:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;

    .line 104
    :cond_0
    invoke-static {p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardTheme;->shouldEnableShortcut(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/systemui/vivo/common/keyguard/utils/KeyguardUtils;->isSupportHomeShortCut()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mShortcutView:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;

    .line 107
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mShortcutView:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mCallback:Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;

    invoke-virtual {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->setKeyguardCallback(Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;)V

    .line 108
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 110
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x50

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 111
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mMainContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mShortcutView:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;

    invoke-virtual {v1, v2, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 112
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mShortcutView:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->onWallpaperChanged()V

    .line 116
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mKeyguardView:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    if-eqz v1, :cond_2

    .line 117
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mMainContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mKeyguardView:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 118
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mKeyguardView:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->onPause()V

    .line 119
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mKeyguardView:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->onCleanup()V

    .line 120
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mKeyguardView:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    invoke-virtual {v1, v3}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->setKeyguardCallback(Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;)V

    .line 121
    iput-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mKeyguardView:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    .line 123
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->getMainView(I)Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mKeyguardView:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    .line 124
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mKeyguardView:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mCallback:Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;

    invoke-virtual {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->setKeyguardCallback(Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;)V

    .line 125
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mKeyguardView:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->dismissWithAnim()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mDismissWithAnim:Z

    .line 126
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mMainContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mKeyguardView:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 127
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mKeyguardView:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->onWallpaperChanged()V

    .line 129
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mShortcutView:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;

    if-eqz v1, :cond_3

    .line 130
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mShortcutView:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mKeyguardView:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    invoke-virtual {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->setMoveView(Landroid/view/ViewGroup;)V

    .line 134
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mSmartWakeView:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    if-eqz v1, :cond_4

    .line 135
    invoke-virtual {p0, v4}, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->updateSmartWakeView(Z)V

    .line 136
    invoke-virtual {p0, v5}, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->updateSmartWakeView(Z)V

    .line 140
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mHallView:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    if-eqz v1, :cond_5

    .line 141
    invoke-virtual {p0, v4}, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->updateHallView(Z)V

    .line 142
    invoke-virtual {p0, v5}, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->updateHallView(Z)V

    .line 144
    :cond_5
    return-void
.end method

.method public updateNotification(ZZ)V
    .locals 1
    .param p1, "empty"    # Z
    .param p2, "retain"    # Z

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mKeyguardView:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardStateManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/keyguard/KeyguardStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardStateManager;->getHideFromFingerprint()Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mKeyguardView:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->onNotificationChanged(ZZ)V

    .line 227
    :cond_0
    return-void
.end method

.method public updateSkin()V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mKeyguardView:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mKeyguardView:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->onSkinChanged()V

    .line 221
    :cond_0
    return-void
.end method

.method public updateSmartWakeView(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    const/4 v1, 0x0

    .line 151
    if-eqz p1, :cond_1

    .line 152
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->getSmartWakeView()Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mSmartWakeView:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    .line 153
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mSmartWakeView:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mCallback:Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->setKeyguardCallback(Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;)V

    .line 154
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mSmartWakeView:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mSmartWakeView:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->addView(Landroid/view/View;I)V

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mSmartWakeView:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mSmartWakeView:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->removeView(Landroid/view/View;)V

    .line 159
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mSmartWakeView:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->onCleanup()V

    .line 160
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mSmartWakeView:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->setKeyguardCallback(Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;)V

    .line 161
    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mSmartWakeView:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    goto :goto_0
.end method

.method public updateSmartWakeVisibility(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mSmartWakeView:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    if-eqz v0, :cond_0

    .line 184
    if-eqz p1, :cond_1

    .line 185
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mSmartWakeView:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mSmartWakeView:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->setVisibility(I)V

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mSmartWakeView:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateUnreadInfo(II)V
    .locals 1
    .param p1, "msg"    # I
    .param p2, "call"    # I

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mKeyguardView:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mKeyguardView:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->onRefreshInfo(II)V

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mShortcutView:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mShortcutView:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->onRefreshInfo(II)V

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mSmartWakeView:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    if-eqz v0, :cond_2

    .line 237
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mSmartWakeView:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->onRefreshInfo(II)V

    .line 239
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mHallView:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    if-eqz v0, :cond_3

    .line 240
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mHallView:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->onRefreshInfo(II)V

    .line 242
    :cond_3
    return-void
.end method

.method public updateWallpaper()V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mKeyguardView:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mKeyguardView:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->onWallpaperChanged()V

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mShortcutView:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mShortcutView:Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/extra/KeyguardShortcut;->onWallpaperChanged()V

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mCallback:Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;

    if-eqz v0, :cond_2

    .line 213
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mCallback:Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;->updateStatusbarWindowState()V

    .line 215
    :cond_2
    return-void
.end method

.method public userActivityFromStatusBar()V
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mCallback:Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->mCallback:Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;->userActivity()V

    .line 282
    :cond_0
    return-void
.end method
