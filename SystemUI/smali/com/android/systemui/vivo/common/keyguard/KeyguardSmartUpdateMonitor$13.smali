.class Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$13;
.super Landroid/os/Handler;
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
    .line 705
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$13;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 707
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 709
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 827
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 711
    :pswitch_1
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$13;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v1, :cond_1

    :goto_1
    invoke-static {v3, v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$1800(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;Z)V

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    .line 718
    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$13;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$2700(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)V

    goto :goto_0

    .line 722
    :pswitch_3
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$13;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$3900(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$13;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$4000(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$13;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$1200(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/systemui/vivo/common/keyguard/utils/KeyguardUtils;->isPowerSaveMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 724
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$13;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$4200(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Lcom/vivo/services/motion/MotionRecognitionManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$13;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$600(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$13;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-static {v4}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$4100(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Lcom/vivo/services/motion/MotionRecognitionListener;

    move-result-object v4

    invoke-virtual {v2, v3, v6, v4}, Lcom/vivo/services/motion/MotionRecognitionManager;->registerMotionRecognitionListener(Landroid/content/Context;ILcom/vivo/services/motion/MotionRecognitionListener;)Z

    .line 726
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$13;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-static {v2, v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$4002(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;Z)Z

    .line 727
    const-string v1, "KeyguardSmartUpdateMonitor"

    const-string v2, "register smart motion check out"

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 732
    :pswitch_4
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$13;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$4000(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 733
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$13;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$4200(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Lcom/vivo/services/motion/MotionRecognitionManager;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$13;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$600(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$13;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-static {v4}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$4100(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Lcom/vivo/services/motion/MotionRecognitionListener;

    move-result-object v4

    invoke-virtual {v1, v3, v6, v4}, Lcom/vivo/services/motion/MotionRecognitionManager;->unregisterMotionRecognitionListener(Landroid/content/Context;ILcom/vivo/services/motion/MotionRecognitionListener;)Z

    .line 735
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$13;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$4002(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;Z)Z

    .line 736
    const-string v1, "KeyguardSmartUpdateMonitor"

    const-string v2, "unregister smart motion check out"

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 741
    :pswitch_5
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$13;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$4300(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$13;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$4400(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$13;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$1200(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$13;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$4500(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 742
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.vivo.action.MESSAGE_REMIND"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 743
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "RegisterMotionLisener"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 744
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$13;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$600(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 745
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$13;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-static {v2, v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$4402(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;Z)Z

    .line 746
    const-string v1, "KeyguardSmartUpdateMonitor"

    const-string v2, "sendBroadcast com.vivo.action.MESSAGE_REMIND, state = 0"

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 751
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_6
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$13;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$4400(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 752
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.vivo.action.MESSAGE_REMIND"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 753
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v3, "RegisterMotionLisener"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 754
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$13;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$600(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 755
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$13;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$4402(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;Z)Z

    .line 756
    const-string v1, "KeyguardSmartUpdateMonitor"

    const-string v2, "sendBroadcast com.vivo.action.MESSAGE_REMIND, state = 1"

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 761
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_7
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$13;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$4600(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$13;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$4700(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$13;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$1200(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/systemui/vivo/common/keyguard/utils/KeyguardUtils;->isPowerSaveMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 763
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$13;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$4200(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Lcom/vivo/services/motion/MotionRecognitionManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$13;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$600(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$13;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-static {v4}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$4100(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Lcom/vivo/services/motion/MotionRecognitionListener;

    move-result-object v4

    invoke-virtual {v2, v3, v5, v4}, Lcom/vivo/services/motion/MotionRecognitionManager;->registerMotionRecognitionListener(Landroid/content/Context;ILcom/vivo/services/motion/MotionRecognitionListener;)Z

    .line 765
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$13;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-static {v2, v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$4702(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;Z)Z

    goto/16 :goto_0

    .line 770
    :pswitch_8
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$13;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$4700(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 771
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$13;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$4200(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Lcom/vivo/services/motion/MotionRecognitionManager;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$13;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$600(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$13;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-static {v4}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$4100(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)Lcom/vivo/services/motion/MotionRecognitionListener;

    move-result-object v4

    invoke-virtual {v1, v3, v5, v4}, Lcom/vivo/services/motion/MotionRecognitionManager;->unregisterMotionRecognitionListener(Landroid/content/Context;ILcom/vivo/services/motion/MotionRecognitionListener;)Z

    .line 773
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$13;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$4702(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;Z)Z

    goto/16 :goto_0

    .line 778
    :pswitch_9
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$13;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-nez v4, :cond_2

    :goto_2
    invoke-static {v3, v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$4800(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;Z)V

    goto/16 :goto_0

    :cond_2
    move v1, v2

    goto :goto_2

    .line 782
    :pswitch_a
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$13;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$4900(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)V

    goto/16 :goto_0

    .line 786
    :pswitch_b
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$13;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$5000(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)V

    goto/16 :goto_0

    .line 790
    :pswitch_c
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$13;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$5100(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;I)V

    goto/16 :goto_0

    .line 794
    :pswitch_d
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$13;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v1, :cond_3

    :goto_3
    invoke-static {v3, v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$5200(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;Z)V

    goto/16 :goto_0

    :cond_3
    move v1, v2

    goto :goto_3

    .line 798
    :pswitch_e
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$13;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->parseXmlDate()V

    goto/16 :goto_0

    .line 802
    :pswitch_f
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$13;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$5300(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)V

    goto/16 :goto_0

    .line 806
    :pswitch_10
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$13;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$5400(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)V

    goto/16 :goto_0

    .line 810
    :pswitch_11
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$13;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$5500(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)V

    goto/16 :goto_0

    .line 814
    :pswitch_12
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$13;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v1, :cond_4

    :goto_4
    invoke-static {v3, v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$5600(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;Z)V

    goto/16 :goto_0

    :cond_4
    move v1, v2

    goto :goto_4

    .line 818
    :pswitch_13
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$13;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$5700(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)V

    goto/16 :goto_0

    .line 821
    :pswitch_14
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$13;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$5800(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;)V

    goto/16 :goto_0

    .line 824
    :pswitch_15
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor$13;->this$0:Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;->access$5900(Lcom/android/systemui/vivo/common/keyguard/KeyguardSmartUpdateMonitor;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 709
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
        :pswitch_7
        :pswitch_4
        :pswitch_6
        :pswitch_8
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_9
        :pswitch_b
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_a
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method
