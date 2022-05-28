.class Lcom/android/keyguard/VivoPasswordView$5;
.super Landroid/os/Handler;
.source "VivoPasswordView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/VivoPasswordView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/VivoPasswordView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/VivoPasswordView;)V
    .locals 0

    .prologue
    .line 529
    iput-object p1, p0, Lcom/android/keyguard/VivoPasswordView$5;->this$0:Lcom/android/keyguard/VivoPasswordView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 532
    const-string v1, "VivoPasswordView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage msg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    iget v1, p1, Landroid/os/Message;->what:I

    if-nez v1, :cond_3

    .line 534
    iget-object v1, p0, Lcom/android/keyguard/VivoPasswordView$5;->this$0:Lcom/android/keyguard/VivoPasswordView;

    iget-object v1, v1, Lcom/android/keyguard/VivoPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->showSecurity()V

    .line 535
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "fail-six"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "success-boot"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "lock-deadLine"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 536
    iget-object v1, p0, Lcom/android/keyguard/VivoPasswordView$5;->this$0:Lcom/android/keyguard/VivoPasswordView;

    invoke-static {v1}, Lcom/android/keyguard/VivoPasswordView;->access$400(Lcom/android/keyguard/VivoPasswordView;)V

    .line 539
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/VivoPasswordView$5;->this$0:Lcom/android/keyguard/VivoPasswordView;

    invoke-static {v1}, Lcom/android/keyguard/VivoPasswordView;->access$300(Lcom/android/keyguard/VivoPasswordView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 540
    .local v0, "mesg":Landroid/os/Message;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 541
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 542
    iget-object v1, p0, Lcom/android/keyguard/VivoPasswordView$5;->this$0:Lcom/android/keyguard/VivoPasswordView;

    invoke-virtual {v1}, Lcom/android/keyguard/VivoPasswordView;->vibrate()V

    .line 545
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/VivoPasswordView$5;->this$0:Lcom/android/keyguard/VivoPasswordView;

    invoke-static {v1}, Lcom/android/keyguard/VivoPasswordView;->access$300(Lcom/android/keyguard/VivoPasswordView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 546
    iget-object v1, p0, Lcom/android/keyguard/VivoPasswordView$5;->this$0:Lcom/android/keyguard/VivoPasswordView;

    invoke-static {v1}, Lcom/android/keyguard/VivoPasswordView;->access$300(Lcom/android/keyguard/VivoPasswordView;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 581
    .end local v0    # "mesg":Landroid/os/Message;
    :cond_2
    :goto_0
    return-void

    .line 547
    :cond_3
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v5, :cond_a

    .line 548
    iget-object v1, p0, Lcom/android/keyguard/VivoPasswordView$5;->this$0:Lcom/android/keyguard/VivoPasswordView;

    iget-object v1, v1, Lcom/android/keyguard/VivoPasswordView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    if-eqz v1, :cond_2

    .line 549
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "fail"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "fail-toast"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 551
    :cond_4
    invoke-static {}, Lcom/android/keyguard/KeyguardUtils;->getFingerMessageShow()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 553
    const-string v1, "VivoPasswordView"

    const-string v2, "to show try_again,set FingerMessageShow == false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUtils;->setFingerMessageShow(Z)V

    .line 557
    :cond_5
    iget-object v1, p0, Lcom/android/keyguard/VivoPasswordView$5;->this$0:Lcom/android/keyguard/VivoPasswordView;

    iget-object v1, v1, Lcom/android/keyguard/VivoPasswordView;->mSecurityMessageTitle:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v2, Lcom/android/keyguard/R$string;->try_again:I

    invoke-interface {v1, v2, v4}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    goto :goto_0

    .line 558
    :cond_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "fail-five"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "fail-six"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 559
    :cond_7
    invoke-static {v4}, Lcom/android/keyguard/KeyguardUtils;->setFingerMessageShow(Z)V

    .line 560
    iget-object v1, p0, Lcom/android/keyguard/VivoPasswordView$5;->this$0:Lcom/android/keyguard/VivoPasswordView;

    iget-object v1, v1, Lcom/android/keyguard/VivoPasswordView;->mSecurityMessageTitle:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v2, Lcom/android/keyguard/R$string;->finger_password_title:I

    invoke-interface {v1, v2, v4}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 561
    iget-object v1, p0, Lcom/android/keyguard/VivoPasswordView$5;->this$0:Lcom/android/keyguard/VivoPasswordView;

    iget-object v1, v1, Lcom/android/keyguard/VivoPasswordView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v2, Lcom/android/keyguard/R$string;->finger_need_password_msg:I

    invoke-interface {v1, v2, v4}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    goto :goto_0

    .line 562
    :cond_8
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "success-boot"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 563
    invoke-static {v4}, Lcom/android/keyguard/KeyguardUtils;->setFingerMessageShow(Z)V

    .line 564
    iget-object v1, p0, Lcom/android/keyguard/VivoPasswordView$5;->this$0:Lcom/android/keyguard/VivoPasswordView;

    iget-object v1, v1, Lcom/android/keyguard/VivoPasswordView;->mSecurityMessageTitle:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v2, Lcom/android/keyguard/R$string;->finger_password_title:I

    invoke-interface {v1, v2, v4}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 565
    iget-object v1, p0, Lcom/android/keyguard/VivoPasswordView$5;->this$0:Lcom/android/keyguard/VivoPasswordView;

    iget-object v1, v1, Lcom/android/keyguard/VivoPasswordView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v2, Lcom/android/keyguard/R$string;->pin_reboot_finger:I

    invoke-interface {v1, v2, v4}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    goto/16 :goto_0

    .line 566
    :cond_9
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "lock-deadLine"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 567
    iget-object v1, p0, Lcom/android/keyguard/VivoPasswordView$5;->this$0:Lcom/android/keyguard/VivoPasswordView;

    iget-object v1, v1, Lcom/android/keyguard/VivoPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->showSecurity()V

    goto/16 :goto_0

    .line 571
    :cond_a
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_b

    .line 572
    iget-object v1, p0, Lcom/android/keyguard/VivoPasswordView$5;->this$0:Lcom/android/keyguard/VivoPasswordView;

    invoke-static {v1}, Lcom/android/keyguard/VivoPasswordView;->access$500(Lcom/android/keyguard/VivoPasswordView;)Lcom/android/keyguard/vivo/widget/ImageDigitalClock;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 573
    iget-object v1, p0, Lcom/android/keyguard/VivoPasswordView$5;->this$0:Lcom/android/keyguard/VivoPasswordView;

    invoke-static {v1}, Lcom/android/keyguard/VivoPasswordView;->access$500(Lcom/android/keyguard/VivoPasswordView;)Lcom/android/keyguard/vivo/widget/ImageDigitalClock;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->setForceCenter(Z)V

    goto/16 :goto_0

    .line 575
    :cond_b
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_c

    .line 576
    iget-object v1, p0, Lcom/android/keyguard/VivoPasswordView$5;->this$0:Lcom/android/keyguard/VivoPasswordView;

    invoke-static {v1}, Lcom/android/keyguard/VivoPasswordView;->access$100(Lcom/android/keyguard/VivoPasswordView;)Lcom/android/keyguard/KeyguardUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/VivoPasswordView$5;->this$0:Lcom/android/keyguard/VivoPasswordView;

    invoke-static {v2}, Lcom/android/keyguard/VivoPasswordView;->access$600(Lcom/android/keyguard/VivoPasswordView;)Lcom/android/keyguard/VivoPasswordView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUtils;->setBackDrawable(Landroid/view/View;)V

    goto/16 :goto_0

    .line 577
    :cond_c
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 578
    const-string v1, "VivoPasswordView"

    const-string v2, "onSimStateChangedUsingSubId: mCallback.showLockScreen()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    iget-object v1, p0, Lcom/android/keyguard/VivoPasswordView$5;->this$0:Lcom/android/keyguard/VivoPasswordView;

    iget-object v1, v1, Lcom/android/keyguard/VivoPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->showLockScreen()V

    goto/16 :goto_0
.end method
