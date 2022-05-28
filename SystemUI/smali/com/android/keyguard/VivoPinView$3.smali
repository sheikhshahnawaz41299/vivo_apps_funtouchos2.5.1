.class Lcom/android/keyguard/VivoPinView$3;
.super Landroid/os/Handler;
.source "VivoPinView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/VivoPinView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/VivoPinView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/VivoPinView;)V
    .locals 0

    .prologue
    .line 540
    iput-object p1, p0, Lcom/android/keyguard/VivoPinView$3;->this$0:Lcom/android/keyguard/VivoPinView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 543
    const-string v1, "VivoPinView"

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

    .line 544
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 545
    iget-object v1, p0, Lcom/android/keyguard/VivoPinView$3;->this$0:Lcom/android/keyguard/VivoPinView;

    invoke-virtual {v1}, Lcom/android/keyguard/VivoPinView;->verifyPasswordAndUnlock()V

    .line 601
    :cond_0
    :goto_0
    return-void

    .line 546
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    if-nez v1, :cond_4

    .line 547
    iget-object v1, p0, Lcom/android/keyguard/VivoPinView$3;->this$0:Lcom/android/keyguard/VivoPinView;

    iget-object v1, v1, Lcom/android/keyguard/VivoPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->showSecurity()V

    .line 548
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "fail-six"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "success-boot"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "lock-deadLine"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 549
    iget-object v1, p0, Lcom/android/keyguard/VivoPinView$3;->this$0:Lcom/android/keyguard/VivoPinView;

    invoke-static {v1}, Lcom/android/keyguard/VivoPinView;->access$500(Lcom/android/keyguard/VivoPinView;)Landroid/widget/ImageView;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$drawable;->vivo_pin_scr:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 550
    iget-object v1, p0, Lcom/android/keyguard/VivoPinView$3;->this$0:Lcom/android/keyguard/VivoPinView;

    invoke-static {v1}, Lcom/android/keyguard/VivoPinView;->access$600(Lcom/android/keyguard/VivoPinView;)Landroid/widget/ImageView;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$drawable;->vivo_pin_scr:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 551
    iget-object v1, p0, Lcom/android/keyguard/VivoPinView$3;->this$0:Lcom/android/keyguard/VivoPinView;

    invoke-static {v1}, Lcom/android/keyguard/VivoPinView;->access$700(Lcom/android/keyguard/VivoPinView;)Landroid/widget/ImageView;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$drawable;->vivo_pin_scr:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 552
    iget-object v1, p0, Lcom/android/keyguard/VivoPinView$3;->this$0:Lcom/android/keyguard/VivoPinView;

    invoke-static {v1}, Lcom/android/keyguard/VivoPinView;->access$800(Lcom/android/keyguard/VivoPinView;)Landroid/widget/ImageView;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$drawable;->vivo_pin_scr:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 553
    iget-object v1, p0, Lcom/android/keyguard/VivoPinView$3;->this$0:Lcom/android/keyguard/VivoPinView;

    invoke-static {v1}, Lcom/android/keyguard/VivoPinView;->access$900(Lcom/android/keyguard/VivoPinView;)V

    .line 555
    :cond_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v1, :cond_3

    .line 556
    iget-object v1, p0, Lcom/android/keyguard/VivoPinView$3;->this$0:Lcom/android/keyguard/VivoPinView;

    invoke-virtual {v1}, Lcom/android/keyguard/VivoPinView;->vibrate()V

    .line 558
    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/VivoPinView$3;->this$0:Lcom/android/keyguard/VivoPinView;

    invoke-static {v1}, Lcom/android/keyguard/VivoPinView;->access$1000(Lcom/android/keyguard/VivoPinView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 559
    .local v0, "mesg":Landroid/os/Message;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 560
    iget-object v1, p0, Lcom/android/keyguard/VivoPinView$3;->this$0:Lcom/android/keyguard/VivoPinView;

    invoke-static {v1}, Lcom/android/keyguard/VivoPinView;->access$1000(Lcom/android/keyguard/VivoPinView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 561
    iget-object v1, p0, Lcom/android/keyguard/VivoPinView$3;->this$0:Lcom/android/keyguard/VivoPinView;

    invoke-static {v1}, Lcom/android/keyguard/VivoPinView;->access$1000(Lcom/android/keyguard/VivoPinView;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 562
    .end local v0    # "mesg":Landroid/os/Message;
    :cond_4
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v5, :cond_b

    .line 563
    iget-object v1, p0, Lcom/android/keyguard/VivoPinView$3;->this$0:Lcom/android/keyguard/VivoPinView;

    iget-object v1, v1, Lcom/android/keyguard/VivoPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    if-eqz v1, :cond_0

    .line 564
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "fail"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "fail-toast"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 566
    :cond_5
    invoke-static {}, Lcom/android/keyguard/KeyguardUtils;->getFingerMessageShow()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 568
    const-string v1, "VivoPinView"

    const-string v2, "to show try_again,set FingerMessageShow == false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUtils;->setFingerMessageShow(Z)V

    .line 572
    :cond_6
    iget-object v1, p0, Lcom/android/keyguard/VivoPinView$3;->this$0:Lcom/android/keyguard/VivoPinView;

    iget-object v1, v1, Lcom/android/keyguard/VivoPinView;->mSecurityMessageTitle:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v2, Lcom/android/keyguard/R$string;->try_again:I

    invoke-interface {v1, v2, v4}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    goto/16 :goto_0

    .line 573
    :cond_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "fail-five"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "fail-six"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 574
    :cond_8
    invoke-static {v4}, Lcom/android/keyguard/KeyguardUtils;->setFingerMessageShow(Z)V

    .line 575
    iget-object v1, p0, Lcom/android/keyguard/VivoPinView$3;->this$0:Lcom/android/keyguard/VivoPinView;

    iget-object v1, v1, Lcom/android/keyguard/VivoPinView;->mSecurityMessageTitle:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v2, Lcom/android/keyguard/R$string;->finger_password_title:I

    invoke-interface {v1, v2, v4}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 576
    iget-object v1, p0, Lcom/android/keyguard/VivoPinView$3;->this$0:Lcom/android/keyguard/VivoPinView;

    iget-object v1, v1, Lcom/android/keyguard/VivoPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v2, Lcom/android/keyguard/R$string;->finger_need_password_msg:I

    invoke-interface {v1, v2, v4}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    goto/16 :goto_0

    .line 577
    :cond_9
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "success-boot"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 578
    invoke-static {v4}, Lcom/android/keyguard/KeyguardUtils;->setFingerMessageShow(Z)V

    .line 579
    iget-object v1, p0, Lcom/android/keyguard/VivoPinView$3;->this$0:Lcom/android/keyguard/VivoPinView;

    iget-object v1, v1, Lcom/android/keyguard/VivoPinView;->mSecurityMessageTitle:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v2, Lcom/android/keyguard/R$string;->finger_password_title:I

    invoke-interface {v1, v2, v4}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 580
    iget-object v1, p0, Lcom/android/keyguard/VivoPinView$3;->this$0:Lcom/android/keyguard/VivoPinView;

    iget-object v1, v1, Lcom/android/keyguard/VivoPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v2, Lcom/android/keyguard/R$string;->pin_reboot_finger:I

    invoke-interface {v1, v2, v4}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    goto/16 :goto_0

    .line 581
    :cond_a
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "lock-deadLine"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 582
    iget-object v1, p0, Lcom/android/keyguard/VivoPinView$3;->this$0:Lcom/android/keyguard/VivoPinView;

    iget-object v1, v1, Lcom/android/keyguard/VivoPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->showSecurity()V

    goto/16 :goto_0

    .line 585
    :cond_b
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_c

    .line 586
    iget-object v1, p0, Lcom/android/keyguard/VivoPinView$3;->this$0:Lcom/android/keyguard/VivoPinView;

    invoke-static {v1}, Lcom/android/keyguard/VivoPinView;->access$1100(Lcom/android/keyguard/VivoPinView;)Lcom/android/keyguard/vivo/widget/ImageDigitalClock;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 587
    iget-object v1, p0, Lcom/android/keyguard/VivoPinView$3;->this$0:Lcom/android/keyguard/VivoPinView;

    invoke-static {v1}, Lcom/android/keyguard/VivoPinView;->access$1100(Lcom/android/keyguard/VivoPinView;)Lcom/android/keyguard/vivo/widget/ImageDigitalClock;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->setForceCenter(Z)V

    goto/16 :goto_0

    .line 591
    :cond_c
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_d

    .line 592
    const-string v1, "VivoPinView"

    const-string v2, "onSimStateChangedUsingSubId: mCallback.showLockScreen()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    iget-object v1, p0, Lcom/android/keyguard/VivoPinView$3;->this$0:Lcom/android/keyguard/VivoPinView;

    iget-object v1, v1, Lcom/android/keyguard/VivoPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->showLockScreen()V

    goto/16 :goto_0

    .line 594
    :cond_d
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 595
    iget-object v1, p0, Lcom/android/keyguard/VivoPinView$3;->this$0:Lcom/android/keyguard/VivoPinView;

    invoke-static {v1, v4}, Lcom/android/keyguard/VivoPinView;->access$002(Lcom/android/keyguard/VivoPinView;Z)Z

    .line 596
    iget-object v1, p0, Lcom/android/keyguard/VivoPinView$3;->this$0:Lcom/android/keyguard/VivoPinView;

    invoke-static {v1}, Lcom/android/keyguard/VivoPinView;->access$500(Lcom/android/keyguard/VivoPinView;)Landroid/widget/ImageView;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$drawable;->vivo_pin_bg:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 597
    iget-object v1, p0, Lcom/android/keyguard/VivoPinView$3;->this$0:Lcom/android/keyguard/VivoPinView;

    invoke-static {v1}, Lcom/android/keyguard/VivoPinView;->access$600(Lcom/android/keyguard/VivoPinView;)Landroid/widget/ImageView;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$drawable;->vivo_pin_bg:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 598
    iget-object v1, p0, Lcom/android/keyguard/VivoPinView$3;->this$0:Lcom/android/keyguard/VivoPinView;

    invoke-static {v1}, Lcom/android/keyguard/VivoPinView;->access$700(Lcom/android/keyguard/VivoPinView;)Landroid/widget/ImageView;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$drawable;->vivo_pin_bg:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 599
    iget-object v1, p0, Lcom/android/keyguard/VivoPinView$3;->this$0:Lcom/android/keyguard/VivoPinView;

    invoke-static {v1}, Lcom/android/keyguard/VivoPinView;->access$800(Lcom/android/keyguard/VivoPinView;)Landroid/widget/ImageView;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$drawable;->vivo_pin_bg:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method
