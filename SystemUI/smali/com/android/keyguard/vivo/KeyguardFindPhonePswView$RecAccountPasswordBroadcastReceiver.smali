.class Lcom/android/keyguard/vivo/KeyguardFindPhonePswView$RecAccountPasswordBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardFindPhonePswView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecAccountPasswordBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;)V
    .locals 0

    .prologue
    .line 476
    iput-object p1, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView$RecAccountPasswordBroadcastReceiver;->this$0:Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 480
    if-eqz p2, :cond_3

    .line 482
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 483
    .local v7, "strAction":Ljava/lang/String;
    const-string v8, "passwordState"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 484
    .local v6, "state":I
    const-string v8, "passwordMsg"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 486
    .local v0, "arg0":Ljava/lang/String;
    const-string v4, ""

    .line 487
    .local v4, "respCode":Ljava/lang/String;
    const-string v5, ""

    .line 488
    .local v5, "respMsg":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 489
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 490
    .local v3, "jsonVo":Lorg/json/JSONObject;
    const-string v8, "stat"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 491
    const-string v8, "msg"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 493
    .end local v3    # "jsonVo":Lorg/json/JSONObject;
    :cond_0
    const-string v8, "KeyguardFindPhonePswView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "============RecAccountPasswordBroadcastReceiver=========arg0="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    const-string v8, "com.vivo.findphone.CHECK_PASSWORD_STATE"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView$RecAccountPasswordBroadcastReceiver;->this$0:Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;

    invoke-static {v8}, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->access$600(Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;)Lcom/android/keyguard/vivo/KeyguardFindPhonePswView$RecAccountPasswordBroadcastReceiver;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 495
    const-string v8, "200"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const/16 v8, 0x27

    if-ne v6, v8, :cond_4

    .line 496
    :cond_1
    iget-object v8, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView$RecAccountPasswordBroadcastReceiver;->this$0:Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;

    invoke-static {v8}, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->access$700(Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;)V

    .line 500
    new-instance v2, Landroid/content/Intent;

    const-string v8, "com.vivo.Findphone.PswInputOK"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 501
    .local v2, "intentForContact":Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView$RecAccountPasswordBroadcastReceiver;->this$0:Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;

    invoke-static {v8}, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->access$800(Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 502
    iget-object v8, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView$RecAccountPasswordBroadcastReceiver;->this$0:Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;

    invoke-static {v8}, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->access$800(Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lvivo/util/FtFindPhoneLockUtil;->setFindPhoneUnlocked(Landroid/content/Context;)V

    .line 504
    iget-object v8, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView$RecAccountPasswordBroadcastReceiver;->this$0:Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;

    const/4 v9, 0x0

    iput v9, v8, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->m_nPswTryCnt:I

    .line 505
    iget-object v8, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView$RecAccountPasswordBroadcastReceiver;->this$0:Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;

    invoke-static {v8}, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->access$900(Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(Z)V

    .line 507
    iget-object v8, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView$RecAccountPasswordBroadcastReceiver;->this$0:Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;

    invoke-static {v8}, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->access$1000(Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 508
    iget-object v8, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView$RecAccountPasswordBroadcastReceiver;->this$0:Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;

    invoke-static {v8}, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->access$1100(Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;)Landroid/app/StatusBarManager;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 509
    iget-object v8, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView$RecAccountPasswordBroadcastReceiver;->this$0:Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;

    invoke-static {v8}, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->access$1100(Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;)Landroid/app/StatusBarManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/StatusBarManager;->disable(I)V

    .line 526
    .end local v2    # "intentForContact":Landroid/content/Intent;
    :cond_2
    :goto_0
    const-string v8, "KeyguardFindPhonePswView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "============RecAccountPasswordBroadcastReceiver=========getPasswordState="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView$RecAccountPasswordBroadcastReceiver;->this$0:Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;

    invoke-static {v10}, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->access$600(Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;)Lcom/android/keyguard/vivo/KeyguardFindPhonePswView$RecAccountPasswordBroadcastReceiver;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    :try_start_1
    iget-object v8, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView$RecAccountPasswordBroadcastReceiver;->this$0:Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;

    invoke-static {v8}, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->access$800(Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;)Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView$RecAccountPasswordBroadcastReceiver;->this$0:Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;

    invoke-static {v9}, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->access$600(Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;)Lcom/android/keyguard/vivo/KeyguardFindPhonePswView$RecAccountPasswordBroadcastReceiver;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 529
    iget-object v8, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView$RecAccountPasswordBroadcastReceiver;->this$0:Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->access$602(Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;Lcom/android/keyguard/vivo/KeyguardFindPhonePswView$RecAccountPasswordBroadcastReceiver;)Lcom/android/keyguard/vivo/KeyguardFindPhonePswView$RecAccountPasswordBroadcastReceiver;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 540
    .end local v0    # "arg0":Ljava/lang/String;
    .end local v4    # "respCode":Ljava/lang/String;
    .end local v5    # "respMsg":Ljava/lang/String;
    .end local v6    # "state":I
    .end local v7    # "strAction":Ljava/lang/String;
    :cond_3
    :goto_1
    return-void

    .line 512
    .restart local v0    # "arg0":Ljava/lang/String;
    .restart local v4    # "respCode":Ljava/lang/String;
    .restart local v5    # "respMsg":Ljava/lang/String;
    .restart local v6    # "state":I
    .restart local v7    # "strAction":Ljava/lang/String;
    :cond_4
    :try_start_2
    const-string v8, "400"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    const/16 v8, 0x28

    if-ne v6, v8, :cond_6

    .line 513
    :cond_5
    iget-object v8, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView$RecAccountPasswordBroadcastReceiver;->this$0:Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;

    invoke-static {v8}, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->access$700(Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;)V

    .line 514
    iget-object v8, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView$RecAccountPasswordBroadcastReceiver;->this$0:Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;

    invoke-static {v8, v5, v6}, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->access$1200(Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;Ljava/lang/String;I)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 535
    .end local v0    # "arg0":Ljava/lang/String;
    .end local v4    # "respCode":Ljava/lang/String;
    .end local v5    # "respMsg":Ljava/lang/String;
    .end local v6    # "state":I
    .end local v7    # "strAction":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 537
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 517
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v0    # "arg0":Ljava/lang/String;
    .restart local v4    # "respCode":Ljava/lang/String;
    .restart local v5    # "respMsg":Ljava/lang/String;
    .restart local v6    # "state":I
    .restart local v7    # "strAction":Ljava/lang/String;
    :cond_6
    :try_start_3
    const-string v8, "13"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    const/16 v8, 0xd

    if-ne v6, v8, :cond_8

    .line 518
    :cond_7
    iget-object v8, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView$RecAccountPasswordBroadcastReceiver;->this$0:Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;

    invoke-static {v8}, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->access$700(Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;)V

    .line 519
    iget-object v8, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView$RecAccountPasswordBroadcastReceiver;->this$0:Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;

    invoke-static {v8, v5, v6}, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->access$1200(Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;Ljava/lang/String;I)V

    goto :goto_0

    .line 522
    :cond_8
    iget-object v8, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView$RecAccountPasswordBroadcastReceiver;->this$0:Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;

    invoke-static {v8}, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->access$700(Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;)V

    .line 523
    iget-object v8, p0, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView$RecAccountPasswordBroadcastReceiver;->this$0:Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;

    invoke-static {v8, v5, v6}, Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;->access$1200(Lcom/android/keyguard/vivo/KeyguardFindPhonePswView;Ljava/lang/String;I)V

    goto :goto_0

    .line 530
    :catch_1
    move-exception v1

    .line 532
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method
