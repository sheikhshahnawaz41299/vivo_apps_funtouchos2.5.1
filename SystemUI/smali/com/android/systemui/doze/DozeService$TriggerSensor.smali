.class Lcom/android/systemui/doze/DozeService$TriggerSensor;
.super Landroid/hardware/TriggerEventListener;
.source "DozeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/DozeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TriggerSensor"
.end annotation


# instance fields
.field private final mConfigured:Z

.field private final mDebugVibrate:Z

.field private mDisabled:Z

.field private final mPulseReason:I

.field private mRegistered:Z

.field private mRequested:Z

.field private final mSensor:Landroid/hardware/Sensor;

.field final synthetic this$0:Lcom/android/systemui/doze/DozeService;


# direct methods
.method public constructor <init>(Lcom/android/systemui/doze/DozeService;IZZI)V
    .locals 1
    .param p2, "type"    # I
    .param p3, "configured"    # Z
    .param p4, "debugVibrate"    # Z
    .param p5, "pulseReason"    # I

    .prologue
    .line 481
    iput-object p1, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-direct {p0}, Landroid/hardware/TriggerEventListener;-><init>()V

    .line 482
    invoke-static {p1}, Lcom/android/systemui/doze/DozeService;->access$1800(Lcom/android/systemui/doze/DozeService;)Landroid/hardware/SensorManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->mSensor:Landroid/hardware/Sensor;

    .line 483
    iput-boolean p3, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->mConfigured:Z

    .line 484
    iput-boolean p4, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->mDebugVibrate:Z

    .line 485
    iput p5, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->mPulseReason:I

    .line 486
    return-void
.end method

.method private updateListener()V
    .locals 4

    .prologue
    .line 501
    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->mConfigured:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->mSensor:Landroid/hardware/Sensor;

    if-nez v1, :cond_1

    .line 510
    :cond_0
    :goto_0
    return-void

    .line 502
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->mRequested:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->mDisabled:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->mRegistered:Z

    if-nez v1, :cond_2

    .line 503
    iget-object v1, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v1}, Lcom/android/systemui/doze/DozeService;->access$1800(Lcom/android/systemui/doze/DozeService;)Landroid/hardware/SensorManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1, p0, v2}, Landroid/hardware/SensorManager;->requestTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->mRegistered:Z

    .line 504
    invoke-static {}, Lcom/android/systemui/doze/DozeService;->access$700()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v1}, Lcom/android/systemui/doze/DozeService;->access$800(Lcom/android/systemui/doze/DozeService;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestTriggerSensor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->mRegistered:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 505
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->mRegistered:Z

    if-eqz v1, :cond_0

    .line 506
    iget-object v1, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v1}, Lcom/android/systemui/doze/DozeService;->access$1800(Lcom/android/systemui/doze/DozeService;)Landroid/hardware/SensorManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1, p0, v2}, Landroid/hardware/SensorManager;->cancelTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    move-result v0

    .line 507
    .local v0, "rt":Z
    invoke-static {}, Lcom/android/systemui/doze/DozeService;->access$700()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v1}, Lcom/android/systemui/doze/DozeService;->access$800(Lcom/android/systemui/doze/DozeService;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelTriggerSensor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->mRegistered:Z

    goto :goto_0
.end method


# virtual methods
.method public onTrigger(Landroid/hardware/TriggerEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/hardware/TriggerEvent;

    .prologue
    const/4 v3, 0x0

    .line 524
    iget-object v4, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v4}, Lcom/android/systemui/doze/DozeService;->access$300(Lcom/android/systemui/doze/DozeService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 526
    :try_start_0
    invoke-static {}, Lcom/android/systemui/doze/DozeService;->access$700()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v4}, Lcom/android/systemui/doze/DozeService;->access$800(Lcom/android/systemui/doze/DozeService;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTrigger: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lcom/android/systemui/doze/DozeService;->access$1900(Landroid/hardware/TriggerEvent;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :cond_0
    iget-boolean v4, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->mDebugVibrate:Z

    if-eqz v4, :cond_1

    .line 528
    iget-object v4, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v4}, Lcom/android/systemui/doze/DozeService;->access$2000(Lcom/android/systemui/doze/DozeService;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "vibrator"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    .line 530
    .local v2, "v":Landroid/os/Vibrator;
    if-eqz v2, :cond_1

    .line 531
    const-wide/16 v4, 0x3e8

    new-instance v6, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v6}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v6

    const/16 v7, 0xd

    invoke-virtual {v6, v7}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    .line 537
    .end local v2    # "v":Landroid/os/Vibrator;
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->this$0:Lcom/android/systemui/doze/DozeService;

    iget v5, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->mPulseReason:I

    invoke-static {v4, v5}, Lcom/android/systemui/doze/DozeService;->access$900(Lcom/android/systemui/doze/DozeService;I)V

    .line 538
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->mRegistered:Z

    .line 539
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeService$TriggerSensor;->updateListener()V

    .line 543
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v6}, Lcom/android/systemui/doze/DozeService;->access$2100(Lcom/android/systemui/doze/DozeService;)J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 545
    .local v0, "timeSinceNotification":J
    iget-object v4, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v4}, Lcom/android/systemui/doze/DozeService;->access$2200(Lcom/android/systemui/doze/DozeService;)Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPickupVibrationThreshold()I

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v0, v4

    if-gez v4, :cond_2

    const/4 v3, 0x1

    .line 547
    .local v3, "withinVibrationThreshold":Z
    :cond_2
    if-eqz v3, :cond_5

    .line 548
    invoke-static {}, Lcom/android/systemui/doze/DozeService;->access$700()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v4}, Lcom/android/systemui/doze/DozeService;->access$800(Lcom/android/systemui/doze/DozeService;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Not resetting schedule, recent notification"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    :cond_3
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    const/16 v5, 0x19

    if-ne v4, v5, :cond_4

    .line 553
    invoke-static {v3}, Lcom/android/systemui/doze/DozeLog;->tracePickupPulse(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 556
    :cond_4
    iget-object v4, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v4}, Lcom/android/systemui/doze/DozeService;->access$300(Lcom/android/systemui/doze/DozeService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 558
    return-void

    .line 550
    :cond_5
    :try_start_1
    iget-object v4, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v4}, Lcom/android/systemui/doze/DozeService;->access$2300(Lcom/android/systemui/doze/DozeService;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 556
    .end local v0    # "timeSinceNotification":J
    .end local v3    # "withinVibrationThreshold":Z
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v5}, Lcom/android/systemui/doze/DozeService;->access$300(Lcom/android/systemui/doze/DozeService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v4
.end method

.method public setDisabled(Z)V
    .locals 1
    .param p1, "disabled"    # Z

    .prologue
    .line 495
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->mDisabled:Z

    if-ne v0, p1, :cond_0

    .line 498
    :goto_0
    return-void

    .line 496
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->mDisabled:Z

    .line 497
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeService$TriggerSensor;->updateListener()V

    goto :goto_0
.end method

.method public setListening(Z)V
    .locals 1
    .param p1, "listen"    # Z

    .prologue
    .line 489
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->mRequested:Z

    if-ne v0, p1, :cond_0

    .line 492
    :goto_0
    return-void

    .line 490
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->mRequested:Z

    .line 491
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeService$TriggerSensor;->updateListener()V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{mRegistered="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->mRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRequested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->mRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDisabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->mDisabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mConfigured="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->mConfigured:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDebugVibrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->mDebugVibrate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/doze/DozeService$TriggerSensor;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
