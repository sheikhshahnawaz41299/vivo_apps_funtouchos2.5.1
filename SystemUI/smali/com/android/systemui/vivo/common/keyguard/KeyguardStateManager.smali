.class public Lcom/android/systemui/vivo/common/keyguard/KeyguardStateManager;
.super Ljava/lang/Object;
.source "KeyguardStateManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "KeyguardStateManager"

.field private static sInstance:Lcom/android/systemui/vivo/common/keyguard/KeyguardStateManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mForceUpdate:Z

.field private mHideFromFingerprint:Z

.field private mIsHallClosed:Z

.field private mIsHallWindow:Z

.field private mIsHallWindowShowing:Z

.field private mIsSmartWakeShowing:Z

.field private mPhoneState:I

.field private mShowing:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardStateManager;->mForceUpdate:Z

    .line 21
    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardStateManager;->mHideFromFingerprint:Z

    .line 22
    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardStateManager;->mPhoneState:I

    .line 37
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardStateManager;->mContext:Landroid/content/Context;

    .line 38
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/keyguard/KeyguardStateManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    sget-object v0, Lcom/android/systemui/vivo/common/keyguard/KeyguardStateManager;->sInstance:Lcom/android/systemui/vivo/common/keyguard/KeyguardStateManager;

    if-nez v0, :cond_1

    .line 26
    const-class v1, Lcom/android/systemui/vivo/common/keyguard/KeyguardStateManager;

    monitor-enter v1

    .line 27
    :try_start_0
    sget-object v0, Lcom/android/systemui/vivo/common/keyguard/KeyguardStateManager;->sInstance:Lcom/android/systemui/vivo/common/keyguard/KeyguardStateManager;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/KeyguardStateManager;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardStateManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/vivo/common/keyguard/KeyguardStateManager;->sInstance:Lcom/android/systemui/vivo/common/keyguard/KeyguardStateManager;

    .line 30
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    :cond_1
    sget-object v0, Lcom/android/systemui/vivo/common/keyguard/KeyguardStateManager;->sInstance:Lcom/android/systemui/vivo/common/keyguard/KeyguardStateManager;

    return-object v0

    .line 30
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getForceUpdate()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardStateManager;->mForceUpdate:Z

    return v0
.end method

.method public getHideFromFingerprint()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardStateManager;->mHideFromFingerprint:Z

    return v0
.end method

.method public isCallStateIdle()Z
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardStateManager;->mPhoneState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHallClosed()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 46
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardStateManager;->mContext:Landroid/content/Context;

    const-string v4, "protect_lock"

    invoke-static {v3, v4, v2}, Lcom/android/systemui/vivo/common/keyguard/utils/KeyguardUtils;->settingsGetInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 47
    .local v0, "on":I
    iget-boolean v3, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardStateManager;->mIsHallClosed:Z

    if-eqz v3, :cond_0

    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public setForceUpdate(Z)V
    .locals 0
    .param p1, "force"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardStateManager;->mForceUpdate:Z

    .line 83
    return-void
.end method

.method public setHallProperty(Z)V
    .locals 0
    .param p1, "window"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardStateManager;->mIsHallWindow:Z

    .line 67
    return-void
.end method

.method public setHallState(Z)V
    .locals 0
    .param p1, "closed"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardStateManager;->mIsHallClosed:Z

    .line 71
    return-void
.end method

.method public setHallWindowState(Z)V
    .locals 0
    .param p1, "showing"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardStateManager;->mIsHallWindowShowing:Z

    .line 75
    return-void
.end method

.method public setHideFromFingerprint(Z)V
    .locals 0
    .param p1, "hide"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardStateManager;->mHideFromFingerprint:Z

    .line 87
    return-void
.end method

.method public setKeyguardState(Z)V
    .locals 0
    .param p1, "showing"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardStateManager;->mShowing:Z

    .line 59
    return-void
.end method

.method public setPhoneState(I)V
    .locals 0
    .param p1, "phoneState"    # I

    .prologue
    .line 94
    iput p1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardStateManager;->mPhoneState:I

    .line 95
    return-void
.end method

.method public setSmartWakeState(Z)V
    .locals 0
    .param p1, "showing"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardStateManager;->mIsSmartWakeShowing:Z

    .line 63
    return-void
.end method

.method public shouldShowWindow()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 41
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardStateManager;->mContext:Landroid/content/Context;

    const-string v4, "protect_lock"

    invoke-static {v3, v4, v2}, Lcom/android/systemui/vivo/common/keyguard/utils/KeyguardUtils;->settingsGetInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 42
    .local v0, "on":I
    iget-boolean v3, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardStateManager;->mIsHallClosed:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardStateManager;->mIsHallWindow:Z

    if-eqz v3, :cond_0

    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public statusBarDisabled()Z
    .locals 3

    .prologue
    .line 51
    const-string v0, "KeyguardStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "statusBarDisabled: keyguard showing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardStateManager;->mShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", smart wake showing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardStateManager;->mIsSmartWakeShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", hall window showing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardStateManager;->mIsHallWindowShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardStateManager;->mShowing:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardStateManager;->mIsSmartWakeShowing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardStateManager;->mIsHallWindowShowing:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
