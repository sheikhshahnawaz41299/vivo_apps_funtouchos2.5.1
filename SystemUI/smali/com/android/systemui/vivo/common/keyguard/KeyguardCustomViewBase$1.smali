.class Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardCustomViewBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardBouncerChanged(Z)V
    .locals 2
    .param p1, "bouncer"    # Z

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->access$300(Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->access$400(Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;)Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;->isOccluded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->onBouncerChanged(Z)V

    .line 293
    if-eqz p1, :cond_1

    .line 294
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    iget-object v0, v0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->mNotificationView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 297
    :cond_1
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 1
    .param p1, "showing"    # Z

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->onKeyguardVisibilityChanged(Z)V

    .line 287
    return-void
.end method

.method public onRefreshBatteryInfo(Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)V
    .locals 5
    .param p1, "status"    # Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    .prologue
    .line 266
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    invoke-static {v3, p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->access$000(Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)Z

    move-result v2

    .line 267
    .local v2, "plugged":Z
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    invoke-static {v3, p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->access$100(Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)Z

    move-result v0

    .line 268
    .local v0, "charged":Z
    iget v1, p1, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;->level:I

    .line 269
    .local v1, "leve":I
    if-eqz v2, :cond_0

    .line 270
    const/4 v3, 0x1

    if-ge v1, v3, :cond_1

    .line 271
    const/4 v1, 0x1

    .line 276
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    invoke-static {v4, p1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->access$200(Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;)Z

    move-result v4

    invoke-virtual {v3, v2, v0, v1, v4}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->onBatteryChanged(ZZIZ)V

    .line 277
    return-void

    .line 272
    :cond_1
    const/16 v3, 0x64

    if-le v1, v3, :cond_0

    .line 273
    const/16 v1, 0x64

    goto :goto_0
.end method

.method public onScreenTurnedOff(I)V
    .locals 3
    .param p1, "why"    # I

    .prologue
    .line 318
    const-string v0, "KeyguardCustomViewBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScreenTurnedOff: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->access$502(Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;Z)Z

    .line 320
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->access$300(Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->onPause()V

    .line 321
    :cond_0
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 2

    .prologue
    .line 311
    const-string v0, "KeyguardCustomViewBase"

    const-string v1, "onScreenTurnedOn"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->access$502(Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;Z)Z

    .line 313
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->access$300(Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->access$600(Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardStateManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/keyguard/KeyguardStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardStateManager;->getHideFromFingerprint()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->onResume()V

    .line 314
    :cond_0
    return-void
.end method

.method public onSimStateChanged(ILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 2
    .param p1, "subId"    # I
    .param p2, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 302
    if-ltz p1, :cond_1

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p2, v0, :cond_1

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->isPinPuk:Z

    .line 307
    :goto_0
    return-void

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->isPinPuk:Z

    goto :goto_0
.end method

.method public onTimeChanged()V
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCustomViewBase;->onTimeChanged()V

    .line 282
    return-void
.end method
