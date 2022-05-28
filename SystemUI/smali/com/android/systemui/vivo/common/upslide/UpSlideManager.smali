.class public Lcom/android/systemui/vivo/common/upslide/UpSlideManager;
.super Ljava/lang/Object;
.source "UpSlideManager.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

.field private mUpSlideUpdateMonitor:Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bar"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideManager;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    .line 20
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideManager;->mContext:Landroid/content/Context;

    .line 21
    iput-object p2, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideManager;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 23
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;

    invoke-direct {v0, p1}, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideManager;->mUpSlideUpdateMonitor:Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;

    .line 24
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideManager;->mUpSlideUpdateMonitor:Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;->setUpSlideManager(Lcom/android/systemui/vivo/common/upslide/UpSlideManager;)V

    .line 25
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-direct {v0, p1}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideManager;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    .line 26
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideManager;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-virtual {v0, p0}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->setUpSlideManager(Lcom/android/systemui/vivo/common/upslide/UpSlideManager;)V

    .line 27
    return-void
.end method


# virtual methods
.method public changeUpSlideState(ZZ)V
    .locals 1
    .param p1, "down"    # Z
    .param p2, "canceled"    # Z

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideManager;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideManager;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->changeUpSlideState(ZZ)V

    .line 125
    :cond_0
    return-void
.end method

.method public collapseNotificationPanel()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideManager;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideManager;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels(I)V

    .line 147
    :cond_0
    return-void
.end method

.method public dismissUpSlideDialogs()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideManager;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideManager;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->dismissUpSlideDialogs()V

    .line 119
    :cond_0
    return-void
.end method

.method public enableUpSlide(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideManager;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideManager;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->enableUpSlide(Z)V

    .line 95
    :cond_0
    return-void
.end method

.method public handleCloseSystemDialogs(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideManager;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideManager;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->handleCloseSystemDialogs(Landroid/content/Intent;)V

    .line 54
    :cond_0
    return-void
.end method

.method public handleSuperPower(Z)V
    .locals 1
    .param p1, "isSpsOn"    # Z

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideManager;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideManager;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->handleSuperPower(Z)V

    .line 66
    :cond_0
    return-void
.end method

.method public handleThemeChanged()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideManager;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideManager;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->handleThemeChanged()V

    .line 72
    :cond_0
    return-void
.end method

.method public handleVisitModeChanged(Z)V
    .locals 1
    .param p1, "isVisitModeOn"    # Z

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideManager;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideManager;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->handleVisitModeChanged(Z)V

    .line 78
    :cond_0
    return-void
.end method

.method public init()V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideManager;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->init()V

    .line 31
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideManager;->mUpSlideUpdateMonitor:Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;->init()V

    .line 32
    return-void
.end method

.method public isUpSlideDisabled(Z)Z
    .locals 1
    .param p1, "considerBarExpand"    # Z

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideManager;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-nez v0, :cond_0

    .line 138
    const/4 v0, 0x0

    .line 140
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideManager;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isUpSlideDisabled(Z)Z

    move-result v0

    goto :goto_0
.end method

.method public isUpSlideShowing()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideManager;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideManager;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->isUpSlided()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 131
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public onPhoneClearFinished()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideManager;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideManager;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->onPhoneClearFinished()V

    .line 84
    :cond_0
    return-void
.end method

.method public onScreenTurnOff()V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideManager;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideManager;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->onScreenTurnOff()V

    .line 48
    :cond_0
    return-void
.end method

.method public onScreenTurnOn()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideManager;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideManager;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->onScreenTurnOn()V

    .line 42
    :cond_0
    return-void
.end method

.method public registerStateCallBack(Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$StateCallBack;)V
    .locals 1
    .param p1, "callBack"    # Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$StateCallBack;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideManager;->mUpSlideUpdateMonitor:Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideManager;->mUpSlideUpdateMonitor:Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;->registerCallBack(Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor$StateCallBack;)V

    .line 60
    :cond_0
    return-void
.end method

.method public setEnableInApp(Z)V
    .locals 1
    .param p1, "enableInApp"    # Z

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideManager;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->setEnableInApp(Z)V

    .line 88
    return-void
.end method

.method public setHideKeyguard(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideManager;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideManager;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->setHideKeyguard(Z)V

    .line 113
    :cond_0
    return-void
.end method

.method public toggleUpSlideGuideView(ZZ)V
    .locals 1
    .param p1, "show"    # Z
    .param p2, "commit"    # Z

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideManager;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideManager;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->toggleUpSlideGuideView(ZZ)V

    .line 107
    :cond_0
    return-void
.end method

.method public toggleUpSlideView(ZZ)V
    .locals 1
    .param p1, "isHomeKeyLongPressed"    # Z
    .param p2, "collapse"    # Z

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideManager;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideManager;->mUpSlideHelper:Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/vivo/common/upslide/UpSlideHelper;->toggleUpSlideView(ZZ)V

    .line 101
    :cond_0
    return-void
.end method

.method public unInit()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/UpSlideManager;->mUpSlideUpdateMonitor:Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/UpSlideUpdateMonitor;->unInit()V

    .line 36
    return-void
.end method
