.class Lcom/android/keyguard/KeyguardFaceUnlockView$3;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardFaceUnlockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardFaceUnlockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardFaceUnlockView;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$3;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onEmergencyCallAction()V
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$3;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardFaceUnlockView;->access$100(Lcom/android/keyguard/KeyguardFaceUnlockView;)Lcom/android/keyguard/BiometricSensorUnlock;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$3;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardFaceUnlockView;->access$100(Lcom/android/keyguard/KeyguardFaceUnlockView;)Lcom/android/keyguard/BiometricSensorUnlock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/BiometricSensorUnlock;->stop()Z

    .line 332
    :cond_0
    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 3
    .param p1, "bouncer"    # Z

    .prologue
    .line 311
    const-string v0, "FULKeyguardFaceUnlockView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyguardBouncerChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$3;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardFaceUnlockView;->access$300(Lcom/android/keyguard/KeyguardFaceUnlockView;)V

    .line 313
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 3
    .param p1, "showing"    # Z

    .prologue
    .line 305
    const-string v0, "FULKeyguardFaceUnlockView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyguardVisibilityChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$3;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardFaceUnlockView;->access$300(Lcom/android/keyguard/KeyguardFaceUnlockView;)V

    .line 307
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 3
    .param p1, "phoneState"    # I

    .prologue
    .line 277
    const-string v0, "FULKeyguardFaceUnlockView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPhoneStateChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$3;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardFaceUnlockView;->access$100(Lcom/android/keyguard/KeyguardFaceUnlockView;)Lcom/android/keyguard/BiometricSensorUnlock;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$3;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardFaceUnlockView;->access$100(Lcom/android/keyguard/KeyguardFaceUnlockView;)Lcom/android/keyguard/BiometricSensorUnlock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/BiometricSensorUnlock;->stopAndShowBackup()V

    .line 283
    :cond_0
    return-void
.end method

.method public onScreenTurnedOff(I)V
    .locals 2
    .param p1, "why"    # I

    .prologue
    .line 323
    const-string v0, "FULKeyguardFaceUnlockView"

    const-string v1, "onScreenTurnedOff()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$3;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardFaceUnlockView;->access$300(Lcom/android/keyguard/KeyguardFaceUnlockView;)V

    .line 325
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 2

    .prologue
    .line 317
    const-string v0, "FULKeyguardFaceUnlockView"

    const-string v1, "onScreenTurnedOn()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$3;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardFaceUnlockView;->access$300(Lcom/android/keyguard/KeyguardFaceUnlockView;)V

    .line 319
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 297
    const-string v0, "FULKeyguardFaceUnlockView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUserSwitchComplete("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$3;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardFaceUnlockView;->access$100(Lcom/android/keyguard/KeyguardFaceUnlockView;)Lcom/android/keyguard/BiometricSensorUnlock;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$3;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardFaceUnlockView;->access$200(Lcom/android/keyguard/KeyguardFaceUnlockView;)V

    .line 301
    :cond_0
    return-void
.end method

.method public onUserSwitching(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 287
    const-string v0, "FULKeyguardFaceUnlockView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUserSwitched("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$3;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardFaceUnlockView;->access$100(Lcom/android/keyguard/KeyguardFaceUnlockView;)Lcom/android/keyguard/BiometricSensorUnlock;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/android/keyguard/KeyguardFaceUnlockView$3;->this$0:Lcom/android/keyguard/KeyguardFaceUnlockView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardFaceUnlockView;->access$100(Lcom/android/keyguard/KeyguardFaceUnlockView;)Lcom/android/keyguard/BiometricSensorUnlock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/BiometricSensorUnlock;->stop()Z

    .line 293
    :cond_0
    return-void
.end method
