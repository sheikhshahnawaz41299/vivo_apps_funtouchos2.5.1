.class Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$10;
.super Landroid/content/BroadcastReceiver;
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
    .line 469
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$10;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 472
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 473
    .local v4, "action":Ljava/lang/String;
    const-string v17, "KeyguardSmartUpdateMonitor"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "action = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    const-string v17, "com.vivo.smartwake.dismiss"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$10;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$2700(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)V

    .line 609
    :cond_0
    :goto_0
    return-void

    .line 476
    :cond_1
    const-string v17, "com.crucialtec.btp.service.unclock"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$10;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$2800(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)V

    goto :goto_0

    .line 478
    :cond_2
    const-string v17, "com.mediatek.lockscreen.action.WALLPAPER_SET.DONE"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$10;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$2900(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/vivo/compatible/keyguard/KeyguardWallpaperManager;->checkIfLockscreenUsingLiveWallpaper()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-static {}, Lcom/android/systemui/vivo/common/keyguard/utils/KeyguardUtils;->isCmccEntry()Z

    move-result v17

    if-nez v17, :cond_3

    .line 481
    const-string v17, "KeyguardSmartUpdateMonitor"

    const-string v18, "reshow live wallpaper"

    invoke-static/range {v17 .. v18}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$10;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$2300(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Landroid/os/Handler;

    move-result-object v17

    const/16 v18, 0xd

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 483
    .local v8, "msg":Landroid/os/Message;
    const/16 v17, 0x1

    move/from16 v0, v17

    iput v0, v8, Landroid/os/Message;->arg1:I

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$10;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$2300(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Landroid/os/Handler;

    move-result-object v17

    const-wide/16 v18, 0x64

    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-virtual {v0, v8, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 487
    .end local v8    # "msg":Landroid/os/Message;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$10;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$2300(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Landroid/os/Handler;

    move-result-object v17

    const/16 v18, 0xa

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 489
    :cond_4
    const-string v17, "android.intent.action.WALLPAPER_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 491
    invoke-static {}, Lcom/android/systemui/vivo/common/keyguard/utils/KeyguardUtils;->isCmccEntry()Z

    move-result v17

    if-nez v17, :cond_0

    .line 493
    const-string v17, "lock"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 494
    .local v11, "showLiveWallpaperFlag":I
    const-string v17, "KeyguardSmartUpdateMonitor"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "showLiveWallpaper ="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$10;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$2300(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Landroid/os/Handler;

    move-result-object v17

    const/16 v18, 0xd

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 496
    .restart local v8    # "msg":Landroid/os/Message;
    iput v11, v8, Landroid/os/Message;->arg1:I

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$10;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$2300(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Landroid/os/Handler;

    move-result-object v17

    const-wide/16 v18, 0x64

    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-virtual {v0, v8, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 499
    .end local v8    # "msg":Landroid/os/Message;
    .end local v11    # "showLiveWallpaperFlag":I
    :cond_5
    const-string v17, "android.intent.action.TIME_TICK"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$10;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$2300(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Landroid/os/Handler;

    move-result-object v17

    const/16 v18, 0xb

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v17 .. v20}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    .line 501
    .restart local v8    # "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$10;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$2300(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 502
    .end local v8    # "msg":Landroid/os/Message;
    :cond_6
    const-string v17, "android.intent.action.TIME_SET"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$10;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$2300(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Landroid/os/Handler;

    move-result-object v17

    const/16 v18, 0xb

    const/16 v19, 0x1

    const/16 v20, 0x0

    invoke-virtual/range {v17 .. v20}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    .line 504
    .restart local v8    # "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$10;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$2300(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 505
    .end local v8    # "msg":Landroid/os/Message;
    :cond_7
    const-string v17, "android.no.read.BBKLockScreen.MSG"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$10;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    move-object/from16 v17, v0

    const-string v18, "new"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    invoke-static/range {v17 .. v18}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$3002(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;I)I

    goto/16 :goto_0

    .line 507
    :cond_8
    const-string v17, "android.no.read.BBKLockScreen.INCALL"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 508
    const-string v17, "new"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 509
    .local v5, "count":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$10;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$3100(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)I

    move-result v17

    move/from16 v0, v17

    if-eq v0, v5, :cond_0

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$10;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v5}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$3102(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;I)I

    .line 511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$10;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$10;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$3200(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->onMissedCallNotificationChanged(Z)V

    goto/16 :goto_0

    .line 513
    .end local v5    # "count":I
    :cond_9
    const-string v17, "intent.action.theme.changed"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$10;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$2300(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Landroid/os/Handler;

    move-result-object v17

    const/16 v18, 0x15

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->removeMessages(I)V

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$10;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$2300(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Landroid/os/Handler;

    move-result-object v17

    const/16 v18, 0x15

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 518
    :cond_a
    const-string v17, "intent.action.super_power_save_send"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 519
    const-string v17, "sps_action"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 520
    .local v16, "state":Ljava/lang/String;
    const-string v17, "KeyguardSmartUpdateMonitor"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "super power save state: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$10;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$2300(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Landroid/os/Handler;

    move-result-object v17

    const/16 v18, 0x12

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 522
    .restart local v8    # "msg":Landroid/os/Message;
    if-eqz v16, :cond_b

    const-string v17, "entered"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    const/16 v17, 0x1

    :goto_1
    move/from16 v0, v17

    iput v0, v8, Landroid/os/Message;->arg1:I

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$10;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$2300(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 522
    :cond_b
    const/16 v17, 0x0

    goto :goto_1

    .line 524
    .end local v8    # "msg":Landroid/os/Message;
    .end local v16    # "state":Ljava/lang/String;
    :cond_c
    const-string v17, "let.bbk.status.bar.lock.screen"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$10;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$3300(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)V

    goto/16 :goto_0

    .line 526
    :cond_d
    const-string v17, "android.intent.action.BATTERY_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 527
    const-string v17, "engine"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 528
    .local v6, "engineState":I
    const-string v17, "KeyguardSmartUpdateMonitor"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "engineState = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", mCurrentEngineState ="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$10;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$3400(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$10;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$3400(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)I

    move-result v17

    move/from16 v0, v17

    if-eq v0, v6, :cond_0

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$10;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v6}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$3402(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;I)I

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$10;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$2300(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Landroid/os/Handler;

    move-result-object v17

    const/16 v18, 0x14

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 534
    .restart local v8    # "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$10;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$2300(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Landroid/os/Handler;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 538
    .end local v6    # "engineState":I
    .end local v8    # "msg":Landroid/os/Message;
    :cond_e
    const-string v17, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_16

    .line 539
    const-string v17, "phone"

    const/16 v18, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 540
    .local v7, "id":I
    const-string v17, "showPlmn"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    .line 541
    .local v12, "showPlmn":Z
    const-string v17, "showSpn"

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    .line 542
    .local v13, "showSpn":Z
    const-string v17, "plmn"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 543
    .local v10, "plmn":Ljava/lang/String;
    const-string v17, "spn"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 544
    .local v15, "spn":Ljava/lang/String;
    const-string v17, "KeyguardSmartUpdateMonitor"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "TH-TRUEMOVE -> slotId = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", showPlmn = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", plmn = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", showSpn = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", spn = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$10;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$3500(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Z

    move-result v17

    if-eqz v17, :cond_11

    .line 553
    :goto_2
    const-string v14, ""

    .line 555
    .local v14, "showStr":Ljava/lang/String;
    sget-object v17, Lcom/android/systemui/vivo/common/keyguard/utils/KeyguardUtils;->COUNTRY_NUM:Ljava/lang/String;

    const-string v18, "TH"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_12

    .line 556
    if-eqz v12, :cond_f

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_f

    .line 557
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 559
    if-eqz v13, :cond_f

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_f

    .line 560
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x7c

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 563
    :cond_f
    if-eqz v13, :cond_10

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_10

    .line 564
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 574
    :cond_10
    :goto_3
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v7, v0, :cond_0

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$10;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$2300(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Landroid/os/Handler;

    move-result-object v17

    const/16 v18, 0x16

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 576
    .restart local v8    # "msg":Landroid/os/Message;
    iput v7, v8, Landroid/os/Message;->arg1:I

    .line 577
    iput-object v14, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 578
    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 580
    if-nez v7, :cond_15

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$10;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v14}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$3602(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 552
    .end local v8    # "msg":Landroid/os/Message;
    .end local v14    # "showStr":Ljava/lang/String;
    :cond_11
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 566
    .restart local v14    # "showStr":Ljava/lang/String;
    :cond_12
    if-eqz v12, :cond_13

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_13

    .line 567
    move-object v14, v10

    goto :goto_3

    .line 568
    :cond_13
    if-eqz v13, :cond_14

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_14

    .line 569
    move-object v14, v15

    goto :goto_3

    .line 571
    :cond_14
    const-string v14, ""

    goto :goto_3

    .line 582
    .restart local v8    # "msg":Landroid/os/Message;
    :cond_15
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v7, v0, :cond_0

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$10;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v14}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$3702(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 589
    .end local v7    # "id":I
    .end local v8    # "msg":Landroid/os/Message;
    .end local v10    # "plmn":Ljava/lang/String;
    .end local v12    # "showPlmn":Z
    .end local v13    # "showSpn":Z
    .end local v14    # "showStr":Ljava/lang/String;
    .end local v15    # "spn":Ljava/lang/String;
    :cond_16
    const-string v17, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_17

    .line 590
    const-string v17, "KeyguardSmartUpdateMonitor"

    const-string v18, "ACTION_EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-static/range {v17 .. v18}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$10;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$2300(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Landroid/os/Handler;

    move-result-object v17

    const/16 v18, 0x15

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->removeMessages(I)V

    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$10;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$2300(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Landroid/os/Handler;

    move-result-object v17

    const/16 v18, 0x15

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 596
    :cond_17
    const-string v17, "android.intent.action.SIM_STATE_CHANGED"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 597
    const-string v17, "ss"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 598
    .restart local v16    # "state":Ljava/lang/String;
    const-string v17, "phone"

    const/16 v18, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 599
    .local v9, "phoneId":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v9, v0, :cond_0

    .line 600
    sget-object v17, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$10;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$2300(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Landroid/os/Handler;

    move-result-object v17

    const/16 v18, 0x16

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 602
    .restart local v8    # "msg":Landroid/os/Message;
    iput v9, v8, Landroid/os/Message;->arg1:I

    .line 603
    if-nez v9, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$10;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$3600(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Ljava/lang/String;

    move-result-object v17

    :goto_4
    move-object/from16 v0, v17

    iput-object v0, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 604
    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 603
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$10;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$3700(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Ljava/lang/String;

    move-result-object v17

    goto :goto_4
.end method
