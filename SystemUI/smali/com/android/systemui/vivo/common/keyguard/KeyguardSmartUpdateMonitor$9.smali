.class Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$9;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardSmartUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)V
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$9;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceProvisioned()V
    .locals 2

    .prologue
    .line 394
    invoke-static {}, Lcom/android/systemui/vivo/common/keyguard/utils/KeyguardUtils;->isCmccEntry()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    const-string v0, "KeyguardSmartUpdateMonitor"

    const-string v1, "device provisioned"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$9;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$000(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)V

    .line 398
    :cond_0
    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 2
    .param p1, "bouncer"    # Z

    .prologue
    const/4 v1, 0x0

    .line 359
    if-eqz p1, :cond_0

    .line 360
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$9;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$1800(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;Z)V

    .line 361
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$9;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->handleShowHallWindow(Z)V

    .line 363
    :cond_0
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 3
    .param p1, "showing"    # Z

    .prologue
    const/4 v1, 0x1

    .line 338
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$9;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-static {v0, p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$1002(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;Z)Z

    .line 340
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$9;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$1300(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Landroid/os/PowerManager;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$9;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$1100(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$9;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$1200(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$9;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$1100(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;->isOccluded()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/os/PowerManager;->notifyKeyguardActive(Z)V

    .line 342
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$9;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$1400(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Lcom/android/systemui/vivo/common/keyguard/KeyguardStateManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardStateManager;->setKeyguardState(Z)V

    .line 344
    if-eqz p1, :cond_3

    .line 345
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$9;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$1500(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 346
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$9;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$1600(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;I)V

    .line 354
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$9;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$1700(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)V

    .line 355
    return-void

    .line 340
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 348
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$9;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$1600(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;I)V

    goto :goto_1

    .line 351
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$9;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$1600(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;I)V

    .line 352
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$9;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$1600(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;I)V

    goto :goto_1
.end method

.method public onPhoneStateChanged(I)V
    .locals 2
    .param p1, "phoneState"    # I

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$9;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-static {v0, p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$1902(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;I)I

    .line 404
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$9;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$1400(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Lcom/android/systemui/vivo/common/keyguard/KeyguardStateManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$9;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$1900(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardStateManager;->setPhoneState(I)V

    .line 406
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$9;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$2000(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$9;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$2100(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)V

    .line 409
    :cond_0
    return-void
.end method

.method public onRefreshBatteryInfo(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 4
    .param p1, "status"    # Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .prologue
    const/4 v3, 0x0

    .line 413
    invoke-static {}, Lcom/android/systemui/vivo/common/keyguard/KeyguardTheme;->showNotifications()Z

    move-result v1

    if-nez v1, :cond_1

    .line 439
    :cond_0
    :goto_0
    return-void

    .line 416
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$9;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-static {v1, p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$2200(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)Z

    move-result v0

    .line 431
    .local v0, "plugged":Z
    if-nez v0, :cond_0

    .line 432
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$9;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$2300(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 433
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$9;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-static {v1, v3}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$2402(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;Z)Z

    .line 434
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$9;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-static {v1, v3}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$2502(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;I)I

    .line 435
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$9;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$2600(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 436
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$9;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$2600(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->updateChargingMode(Z)V

    goto :goto_0
.end method

.method public onScreenTurnedOff(I)V
    .locals 2
    .param p1, "why"    # I

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$9;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$9;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$1300(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Landroid/os/PowerManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$1502(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;Z)Z

    .line 385
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$9;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$1000(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$9;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$1600(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;I)V

    .line 387
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$9;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$1600(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;I)V

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$9;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$1700(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)V

    .line 390
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 3

    .prologue
    .line 369
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$9;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$9;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$1300(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Landroid/os/PowerManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$1502(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$9;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$1000(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 375
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$9;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$1600(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;I)V

    .line 376
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$9;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$1600(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;I)V

    .line 378
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$9;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$1700(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)V

    .line 379
    return-void

    .line 370
    :catch_0
    move-exception v0

    .line 371
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "KeyguardSmartUpdateMonitor"

    const-string v2, "onScreenTurnedOn PowerManager.isInteractive fail!"

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
