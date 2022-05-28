.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;
.super Landroid/content/BroadcastReceiver;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0

    .prologue
    .line 4265
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 4267
    sget-boolean v11, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v11, :cond_0

    const-string v11, "PhoneStatusBar"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onReceive: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4268
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 4269
    .local v2, "action":Ljava/lang/String;
    const-string v11, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 4270
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->getSendingUserId()I

    move-result v12

    invoke-static {v11, v12}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$7900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;I)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 4271
    const/4 v5, 0x0

    .line 4272
    .local v5, "flags":I
    const-string v11, "reason"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 4273
    .local v7, "reason":Ljava/lang/String;
    if-eqz v7, :cond_1

    const-string v11, "recentapps"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 4274
    or-int/lit8 v5, v5, 0x2

    .line 4277
    :cond_1
    const-string v11, "homekey"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 4278
    invoke-static {}, Lcom/android/systemui/vivo/common/upslide/utils/UpSlideUtils;->updateAppSwitchDueTime()V

    .line 4281
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v11, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels(I)V

    .line 4408
    .end local v5    # "flags":I
    .end local v7    # "reason":Ljava/lang/String;
    :cond_3
    :goto_0
    return-void

    .line 4284
    :cond_4
    const-string v11, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 4285
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$8002(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 4293
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v11}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$8600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v11

    new-instance v12, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;)V

    invoke-virtual {v11, v12}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 4305
    :cond_5
    const-string v11, "android.intent.action.SCREEN_ON"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 4306
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$8002(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 4310
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v11}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$8700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v11

    new-instance v12, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39$2;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39$2;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;)V

    invoke-virtual {v11, v12}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 4317
    :cond_6
    const-string v11, "com.android.systemui.demo"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 4318
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 4319
    .local v3, "bundle":Landroid/os/Bundle;
    if-eqz v3, :cond_3

    .line 4320
    const-string v11, "command"

    const-string v12, ""

    invoke-virtual {v3, v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 4321
    .local v4, "command":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_3

    .line 4323
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v11, v4, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4324
    :catch_0
    move-exception v9

    .line 4325
    .local v9, "t":Ljava/lang/Throwable;
    const-string v11, "PhoneStatusBar"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error running demo command, intent="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 4329
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v4    # "command":Ljava/lang/String;
    .end local v9    # "t":Ljava/lang/Throwable;
    :cond_7
    const-string v11, "fake_artwork"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 4335
    const-string v11, "intent.action.super_power_save_send"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 4336
    const-string v11, "entered"

    const-string v12, "sps_action"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 4337
    .local v6, "isSpsOn":Z
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v11}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$8800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;

    move-result-object v11

    invoke-virtual {v11, v6}, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->setSpsOn(Z)V

    .line 4338
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v11}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$8900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/vivo/common/notification/SceneNotificationManager;

    move-result-object v11

    invoke-virtual {v11, v6}, Lcom/android/systemui/vivo/common/notification/SceneNotificationManager;->updateSpsModeStatus(Z)V

    goto/16 :goto_0

    .line 4339
    .end local v6    # "isSpsOn":Z
    :cond_8
    const-string v11, "android.settings.VisitMode.action.TURN_ON"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 4340
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v11, v11, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const-string v12, "visit_mode"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Lcom/android/systemui/vivo/common/utils/SettingsUtils$System;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_9

    const/4 v10, 0x1

    .line 4341
    .local v10, "visitModeOn":Z
    :goto_1
    if-eqz v10, :cond_3

    .line 4342
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v11}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$8900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/vivo/common/notification/SceneNotificationManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/systemui/vivo/common/notification/SceneNotificationManager;->enterVisitorMode()V

    goto/16 :goto_0

    .line 4340
    .end local v10    # "visitModeOn":Z
    :cond_9
    const/4 v10, 0x0

    goto :goto_1

    .line 4347
    :cond_a
    const-string v11, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 4348
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v11}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$9000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/systemui/vivo/common/network/VivoSignalClusterViewLeft;->updateResource()V

    goto/16 :goto_0

    .line 4349
    :cond_b
    const-string v11, "intent.action.theme.changed"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 4350
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v11}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$9100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v11

    const/16 v12, 0x3ef

    invoke-virtual {v11, v12}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 4351
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v11}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$9200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v11

    const/16 v12, 0x3ef

    const-wide/16 v14, 0x1f4

    invoke-virtual {v11, v12, v14, v15}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessageDelayed(IJ)Z

    .line 4352
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v11}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$9300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v11

    const/16 v12, 0x3f1

    invoke-virtual {v11, v12}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 4353
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v11}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$9400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v11

    const/16 v12, 0x3f1

    const-wide/16 v14, 0x1f4

    invoke-virtual {v11, v12, v14, v15}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 4356
    :cond_c
    const-string v11, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 4357
    sget-boolean v11, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v11, :cond_d

    .line 4358
    const-string v11, "PhoneStatusBar"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "configuration changed: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v13, v13, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4360
    :cond_d
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v11, v11, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplay:Landroid/view/Display;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v12, v12, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurrentDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v11, v12}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 4364
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v11, v11, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplay:Landroid/view/Display;

    invoke-virtual {v11}, Landroid/view/Display;->getRotation()I

    move-result v8

    .line 4365
    .local v8, "rotation":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v11}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$9500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I

    move-result v11

    if-eq v11, v8, :cond_e

    .line 4366
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v11, v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$9502(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;I)I

    .line 4368
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$9602(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    .line 4370
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    .line 4373
    :cond_e
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v11}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$9700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->updateScreenHeight()V

    goto/16 :goto_0

    .line 4402
    .end local v8    # "rotation":I
    :cond_f
    const-string v11, "bbk.intent.action.KILL_ALL_APPS_START"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 4403
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$9800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V

    goto/16 :goto_0

    .line 4404
    :cond_10
    const-string v11, "bbk.intent.action.KILL_ALL_APPS_DONE"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 4405
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$39;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$9800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V

    goto/16 :goto_0
.end method
