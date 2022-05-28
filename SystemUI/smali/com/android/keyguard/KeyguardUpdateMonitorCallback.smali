.class public Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitorCallback.java"


# static fields
.field private static final VISIBILITY_CHANGED_COLLAPSE_MS:J = 0x3e8L


# instance fields
.field private mShowing:Z

.field private mVisibilityChangedCalled:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method onAirplaneModeChanged(Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    .line 60
    return-void
.end method

.method public onBootCompleted()V
    .locals 0

    .prologue
    .line 148
    return-void
.end method

.method public onClockVisibilityChanged()V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method public onDevicePolicyManagerStateChanged()V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method public onDeviceProvisioned()V
    .locals 0

    .prologue
    .line 107
    return-void
.end method

.method public onEmergencyCallAction()V
    .locals 0

    .prologue
    .line 153
    return-void
.end method

.method public onFaceUnlockStateChanged(ZI)V
    .locals 0
    .param p1, "running"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 204
    return-void
.end method

.method public onFingerprintAcquired(I)V
    .locals 0
    .param p1, "info"    # I

    .prologue
    .line 199
    return-void
.end method

.method public onFingerprintRecognized(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 194
    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 0
    .param p1, "bouncer"    # Z

    .prologue
    .line 96
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 0
    .param p1, "showing"    # Z

    .prologue
    .line 81
    return-void
.end method

.method public onKeyguardVisibilityChangedRaw(Z)V
    .locals 6
    .param p1, "showing"    # Z

    .prologue
    .line 84
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 85
    .local v0, "now":J
    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->mShowing:Z

    if-ne p1, v2, :cond_0

    iget-wide v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->mVisibilityChangedCalled:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 90
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onKeyguardVisibilityChanged(Z)V

    .line 88
    iput-wide v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->mVisibilityChangedCalled:J

    .line 89
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->mShowing:Z

    goto :goto_0
.end method

.method public onPhoneStateChanged(I)V
    .locals 0
    .param p1, "phoneState"    # I

    .prologue
    .line 75
    return-void
.end method

.method public onRefreshBatteryInfo(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 0
    .param p1, "status"    # Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .prologue
    .line 43
    return-void
.end method

.method public onRefreshCarrierInfo()V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 67
    return-void
.end method

.method public onScreenTurnedOff(I)V
    .locals 0
    .param p1, "why"    # I

    .prologue
    .line 173
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 0

    .prologue
    .line 165
    return-void
.end method

.method public onSetBackground(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 160
    return-void
.end method

.method public onSimStateChanged(ILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 130
    return-void
.end method

.method public onSubIdUpdated(II)V
    .locals 0
    .param p1, "oldSubId"    # I
    .param p2, "newSubId"    # I

    .prologue
    .line 211
    return-void
.end method

.method public onSubInfoContentChanged(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "subId"    # I
    .param p2, "column"    # Ljava/lang/String;
    .param p3, "sValue"    # Ljava/lang/String;
    .param p4, "iValue"    # I

    .prologue
    .line 221
    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public onTrustChanged(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 178
    return-void
.end method

.method public onTrustInitiatedByUser(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 188
    return-void
.end method

.method public onTrustManagedChanged(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 183
    return-void
.end method

.method public onUserInfoChanged(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 140
    return-void
.end method

.method public onUserRemoved(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 135
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 123
    return-void
.end method

.method public onUserSwitching(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 118
    return-void
.end method
