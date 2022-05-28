.class public Lcom/android/keyguard/KeyguardHostView;
.super Landroid/widget/FrameLayout;
.source "KeyguardHostView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardHostView$OnDismissAction;,
        Lcom/android/keyguard/KeyguardHostView$UserSwitcherCallback;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = true

.field private static final ENABLE_MENU_KEY_FILE:Ljava/lang/String; = "/data/local/enable_menu_key"

.field private static final KEYGUARD_MANAGES_VOLUME:Z = false

.field private static final TAG:Ljava/lang/String; = "KeyguardHostView"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mDismissAction:Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

.field private mKeyguardMultiUserSelectorView:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

.field protected mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mUserId:I

.field protected mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardHostView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    new-instance v0, Lcom/android/keyguard/KeyguardHostView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardHostView$1;-><init>(Lcom/android/keyguard/KeyguardHostView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 116
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 117
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardHostView;->mUserId:I

    .line 119
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/KeyguardMultiUserSelectorView;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/KeyguardHostView;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mKeyguardMultiUserSelectorView:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    return-object v0
.end method

.method private enableUserSelectorIfNecessary()V
    .locals 6

    .prologue
    .line 474
    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    const-string v5, "user"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 475
    .local v3, "um":Landroid/os/UserManager;
    if-nez v3, :cond_1

    .line 476
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    .line 477
    .local v2, "t":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 478
    const-string v4, "KeyguardHostView"

    const-string v5, "user service is null."

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 532
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void

    .line 483
    :cond_1
    invoke-virtual {v3}, Landroid/os/UserManager;->isUserSwitcherEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 487
    sget v4, Lcom/android/keyguard/R$id;->keyguard_user_selector:I

    invoke-virtual {p0, v4}, Lcom/android/keyguard/KeyguardHostView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 488
    .local v1, "multiUserView":Landroid/view/View;
    if-nez v1, :cond_2

    .line 489
    const-string v4, "KeyguardHostView"

    const-string v5, "can\'t find user_selector in layout."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 493
    :cond_2
    instance-of v4, v1, Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    if-eqz v4, :cond_3

    .line 494
    check-cast v1, Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    .end local v1    # "multiUserView":Landroid/view/View;
    iput-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mKeyguardMultiUserSelectorView:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    .line 495
    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView;->mKeyguardMultiUserSelectorView:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->setVisibility(I)V

    .line 496
    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView;->mKeyguardMultiUserSelectorView:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->addUsers(Ljava/util/Collection;)V

    .line 497
    new-instance v0, Lcom/android/keyguard/KeyguardHostView$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardHostView$2;-><init>(Lcom/android/keyguard/KeyguardHostView;)V

    .line 522
    .local v0, "callback":Lcom/android/keyguard/KeyguardHostView$UserSwitcherCallback;
    iget-object v4, p0, Lcom/android/keyguard/KeyguardHostView;->mKeyguardMultiUserSelectorView:Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    invoke-virtual {v4, v0}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->setCallback(Lcom/android/keyguard/KeyguardHostView$UserSwitcherCallback;)V

    goto :goto_0

    .line 524
    .end local v0    # "callback":Lcom/android/keyguard/KeyguardHostView$UserSwitcherCallback;
    .restart local v1    # "multiUserView":Landroid/view/View;
    :cond_3
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    .line 525
    .restart local v2    # "t":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 526
    if-nez v1, :cond_4

    .line 527
    const-string v4, "KeyguardHostView"

    const-string v5, "could not find the user_selector."

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 529
    :cond_4
    const-string v4, "KeyguardHostView"

    const-string v5, "user_selector is the wrong type."

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private handleMediaKeyEvent(Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 392
    monitor-enter p0

    .line 393
    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 394
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAudioManager:Landroid/media/AudioManager;

    .line 397
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    .line 399
    return-void

    .line 397
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private shouldEnableMenuKey()Z
    .locals 6

    .prologue
    .line 419
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 420
    .local v3, "res":Landroid/content/res/Resources;
    sget v4, Lcom/android/keyguard/R$bool;->config_disableMenuKeyInLockScreen:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 421
    .local v0, "configDisabled":Z
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v2

    .line 422
    .local v2, "isTestHarness":Z
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/local/enable_menu_key"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    .line 423
    .local v1, "fileOverride":Z
    if-eqz v0, :cond_0

    if-nez v2, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 296
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->getSecurityContainer()Lcom/android/keyguard/KeyguardSecurityContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->onPause()V

    .line 298
    return-void
.end method

.method public dismiss()Z
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardHostView;->dismiss(Z)Z

    move-result v0

    return v0
.end method

.method public dismiss(Z)Z
    .locals 1
    .param p1, "authenticated"    # Z

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showNextSecurityScreenOrFinish(Z)Z

    move-result v0

    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 123
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 124
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/keyguard/ViewMediatorCallback;->keyguardDoneDrawing()V

    .line 127
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 302
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardHostView;->interceptMediaKey(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    const/4 v0, 0x1

    .line 305
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 176
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 177
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->getCurrentSecurityModeContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    const/4 v0, 0x1

    .line 180
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchSystemUiVisibilityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 403
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchSystemUiVisibilityChanged(I)V

    .line 405
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 406
    const/high16 v0, 0x400000

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardHostView;->setSystemUiVisibility(I)V

    .line 408
    :cond_0
    return-void
.end method

.method public finish()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 201
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    .line 205
    const/4 v0, 0x0

    .line 206
    .local v0, "deferKeyguardDone":Z
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mDismissAction:Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

    if-eqz v1, :cond_0

    .line 207
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mDismissAction:Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardHostView$OnDismissAction;->onDismiss()Z

    move-result v0

    .line 208
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mDismissAction:Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

    .line 210
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    if-eqz v1, :cond_1

    .line 211
    if-eqz v0, :cond_2

    .line 212
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v1}, Lcom/android/keyguard/ViewMediatorCallback;->keyguardDonePending()V

    .line 217
    :cond_1
    :goto_0
    return-void

    .line 214
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v1, v2}, Lcom/android/keyguard/ViewMediatorCallback;->keyguardDone(Z)V

    goto :goto_0
.end method

.method public getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    return-object v0
.end method

.method protected getSecurityContainer()Lcom/android/keyguard/KeyguardSecurityContainer;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    return-object v0
.end method

.method public getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    return-object v0
.end method

.method public handleBackKey()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 167
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->getCurrentSecuritySelection()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v1, v2, :cond_0

    .line 168
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->dismiss(Z)V

    .line 169
    const/4 v0, 0x1

    .line 171
    :cond_0
    return v0
.end method

.method public handleMenuKey()Z
    .locals 1

    .prologue
    .line 428
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardHostView;->shouldEnableMenuKey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->dismiss()Z

    .line 430
    const/4 v0, 0x1

    .line 432
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public interceptMediaKey(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 316
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 317
    .local v0, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_3

    .line 318
    sparse-switch v0, :sswitch_data_0

    .line 388
    :cond_0
    :goto_0
    :sswitch_0
    return v1

    .line 324
    :sswitch_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_1

    .line 325
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "phone"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 328
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    .line 330
    goto :goto_0

    .line 341
    :cond_2
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardHostView;->handleMediaKeyEvent(Landroid/view/KeyEvent;)V

    move v1, v2

    .line 342
    goto :goto_0

    .line 369
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 370
    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    .line 383
    :sswitch_3
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardHostView;->handleMediaKeyEvent(Landroid/view/KeyEvent;)V

    move v1, v2

    .line 384
    goto :goto_0

    .line 318
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x4f -> :sswitch_2
        0x55 -> :sswitch_1
        0x56 -> :sswitch_2
        0x57 -> :sswitch_2
        0x58 -> :sswitch_2
        0x59 -> :sswitch_2
        0x5a -> :sswitch_2
        0x5b -> :sswitch_2
        0x7e -> :sswitch_1
        0x7f -> :sswitch_1
        0x82 -> :sswitch_2
        0xa4 -> :sswitch_0
        0xde -> :sswitch_2
    .end sparse-switch

    .line 370
    :sswitch_data_1
    .sparse-switch
        0x4f -> :sswitch_3
        0x55 -> :sswitch_3
        0x56 -> :sswitch_3
        0x57 -> :sswitch_3
        0x58 -> :sswitch_3
        0x59 -> :sswitch_3
        0x5a -> :sswitch_3
        0x5b -> :sswitch_3
        0x7e -> :sswitch_3
        0x7f -> :sswitch_3
        0x82 -> :sswitch_3
        0xde -> :sswitch_3
    .end sparse-switch
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 457
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 461
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 462
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 466
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 470
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mUpdateMonitorCallbacks:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 471
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 140
    sget v0, Lcom/android/keyguard/R$id;->keyguard_security_container:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardHostView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardSecurityContainer;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    .line 142
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 143
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->setSecurityCallback(Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;)V

    .line 144
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showPrimarySecurityScreen(Z)V

    .line 146
    return-void
.end method

.method public onPause()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 236
    const-string v0, "KeyguardHostView"

    const-string v1, "screen off, instance %s at %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0, v6}, Lcom/android/keyguard/KeyguardSecurityContainer;->showPrimarySecurityScreen(Z)V

    .line 239
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->onPause()V

    .line 240
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->clearFocus()V

    .line 241
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 247
    const-string v0, "KeyguardHostView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "screen on, instance "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->onResume(I)V

    .line 249
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostView;->requestFocus()Z

    .line 250
    return-void
.end method

.method public onSecurityModeChanged(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Z)V
    .locals 1
    .param p1, "securityMode"    # Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .param p2, "needsInput"    # Z

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v0, p2}, Lcom/android/keyguard/ViewMediatorCallback;->setNeedsInput(Z)V

    .line 224
    :cond_0
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 1
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 442
    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 443
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 444
    return-void
.end method

.method public setOnDismissAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;)V
    .locals 0
    .param p1, "action"    # Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostView;->mDismissAction:Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

    .line 136
    return-void
.end method

.method public setViewMediatorCallback(Lcom/android/keyguard/ViewMediatorCallback;)V
    .locals 2
    .param p1, "viewMediatorCallback"    # Lcom/android/keyguard/ViewMediatorCallback;

    .prologue
    .line 436
    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    .line 438
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->needsInput()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/keyguard/ViewMediatorCallback;->setNeedsInput(Z)V

    .line 439
    return-void
.end method

.method public showLockScreen()V
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/keyguard/ViewMediatorCallback;->showLockScreen()V

    .line 540
    :cond_0
    return-void
.end method

.method public showPrimarySecurityScreen()V
    .locals 2

    .prologue
    .line 152
    const-string v0, "KeyguardHostView"

    const-string v1, "show()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showPrimarySecurityScreen(Z)V

    .line 154
    return-void
.end method

.method public showSecurity()V
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/keyguard/ViewMediatorCallback;->showSecurity()V

    .line 546
    :cond_0
    return-void
.end method

.method public startAppearAnimation()V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->startAppearAnimation()V

    .line 257
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "finishRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->startDisappearAnimation(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 261
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 263
    :cond_0
    return-void
.end method

.method public userActivity()V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/keyguard/ViewMediatorCallback;->userActivity()V

    .line 230
    :cond_0
    return-void
.end method

.method public verifyUnlock()V
    .locals 3

    .prologue
    .line 273
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 274
    .local v0, "securityMode":Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v0, v1, :cond_1

    .line 275
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    if-eqz v1, :cond_0

    .line 276
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/keyguard/ViewMediatorCallback;->keyguardDone(Z)V

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_2

    .line 282
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    if-eqz v1, :cond_0

    .line 283
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/keyguard/ViewMediatorCallback;->keyguardDone(Z)V

    goto :goto_0

    .line 287
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->verifyUnlock()V

    goto :goto_0
.end method
