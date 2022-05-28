.class Lcom/android/keyguard/VivoPatternView$7;
.super Landroid/os/Handler;
.source "VivoPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/VivoPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/VivoPatternView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/VivoPatternView;)V
    .locals 0

    .prologue
    .line 720
    iput-object p1, p0, Lcom/android/keyguard/VivoPatternView$7;->this$0:Lcom/android/keyguard/VivoPatternView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x5

    const/4 v9, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    .line 723
    const-string v4, "VivoPatternView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMessage msg = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    invoke-static {}, Lcom/android/keyguard/KeyguardUtils;->isDrawingPattern()Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p1, Landroid/os/Message;->what:I

    if-nez v4, :cond_0

    .line 725
    const-string v4, "VivoPatternView"

    const-string v5, "isDrawingPattern = true, VivoPatternLock do not respond to fingerprint action."

    invoke-static {v4, v5}, Lcom/android/keyguard/vivo/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    :cond_0
    iget v4, p1, Landroid/os/Message;->what:I

    if-nez v4, :cond_3

    invoke-static {}, Lcom/android/keyguard/KeyguardUtils;->isDrawingPattern()Z

    move-result v4

    if-nez v4, :cond_3

    .line 729
    iget-object v4, p0, Lcom/android/keyguard/VivoPatternView$7;->this$0:Lcom/android/keyguard/VivoPatternView;

    invoke-static {v4}, Lcom/android/keyguard/VivoPatternView;->access$000(Lcom/android/keyguard/VivoPatternView;)Lcom/android/keyguard/UnLockPatternView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/UnLockPatternView;->clearPattern()V

    .line 731
    iget-object v4, p0, Lcom/android/keyguard/VivoPatternView$7;->this$0:Lcom/android/keyguard/VivoPatternView;

    invoke-static {v4}, Lcom/android/keyguard/VivoPatternView;->access$300(Lcom/android/keyguard/VivoPatternView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/keyguard/KeyguardSecurityCallback;->showSecurity()V

    .line 733
    iget-object v4, p0, Lcom/android/keyguard/VivoPatternView$7;->this$0:Lcom/android/keyguard/VivoPatternView;

    invoke-static {v4}, Lcom/android/keyguard/VivoPatternView;->access$1300(Lcom/android/keyguard/VivoPatternView;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 734
    .local v3, "mesg":Landroid/os/Message;
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 736
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v4, :cond_1

    .line 737
    iget-object v4, p0, Lcom/android/keyguard/VivoPatternView$7;->this$0:Lcom/android/keyguard/VivoPatternView;

    invoke-virtual {v4}, Lcom/android/keyguard/VivoPatternView;->vibrate()V

    .line 739
    :cond_1
    iget-object v4, p0, Lcom/android/keyguard/VivoPatternView$7;->this$0:Lcom/android/keyguard/VivoPatternView;

    invoke-static {v4}, Lcom/android/keyguard/VivoPatternView;->access$1300(Lcom/android/keyguard/VivoPatternView;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 740
    iget-object v4, p0, Lcom/android/keyguard/VivoPatternView$7;->this$0:Lcom/android/keyguard/VivoPatternView;

    invoke-static {v4}, Lcom/android/keyguard/VivoPatternView;->access$1300(Lcom/android/keyguard/VivoPatternView;)Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v6, 0x64

    invoke-virtual {v4, v3, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 797
    .end local v3    # "mesg":Landroid/os/Message;
    :cond_2
    :goto_0
    return-void

    .line 741
    :cond_3
    iget v4, p1, Landroid/os/Message;->what:I

    if-ne v4, v7, :cond_d

    .line 742
    iget-object v4, p0, Lcom/android/keyguard/VivoPatternView$7;->this$0:Lcom/android/keyguard/VivoPatternView;

    iget-object v4, v4, Lcom/android/keyguard/VivoPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    if-eqz v4, :cond_6

    .line 743
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    const-string v5, "fail"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    const-string v5, "fail-toast"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 745
    :cond_4
    invoke-static {}, Lcom/android/keyguard/KeyguardUtils;->getFingerMessageShow()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 747
    const-string v4, "VivoPatternView"

    const-string v5, "to show try_again,set FingerMessageShow == false"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    invoke-static {v11}, Lcom/android/keyguard/KeyguardUtils;->setFingerMessageShow(Z)V

    .line 751
    :cond_5
    iget-object v4, p0, Lcom/android/keyguard/VivoPatternView$7;->this$0:Lcom/android/keyguard/VivoPatternView;

    iget-object v4, v4, Lcom/android/keyguard/VivoPatternView;->mSecurityMessageTitle:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v5, Lcom/android/keyguard/R$string;->try_again:I

    invoke-interface {v4, v5, v8}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 765
    :cond_6
    :goto_1
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    const-string v5, "fail-six"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    const-string v5, "success-boot"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    const-string v5, "lock-deadLine"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {}, Lcom/android/keyguard/KeyguardUtils;->isDrawingPattern()Z

    move-result v4

    if-nez v4, :cond_2

    .line 766
    iget-object v4, p0, Lcom/android/keyguard/VivoPatternView$7;->this$0:Lcom/android/keyguard/VivoPatternView;

    invoke-static {v4}, Lcom/android/keyguard/VivoPatternView;->access$1300(Lcom/android/keyguard/VivoPatternView;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 767
    .restart local v3    # "mesg":Landroid/os/Message;
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 768
    iget-object v4, p0, Lcom/android/keyguard/VivoPatternView$7;->this$0:Lcom/android/keyguard/VivoPatternView;

    invoke-static {v4}, Lcom/android/keyguard/VivoPatternView;->access$1300(Lcom/android/keyguard/VivoPatternView;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 769
    iget-object v4, p0, Lcom/android/keyguard/VivoPatternView$7;->this$0:Lcom/android/keyguard/VivoPatternView;

    invoke-static {v4}, Lcom/android/keyguard/VivoPatternView;->access$1300(Lcom/android/keyguard/VivoPatternView;)Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v3, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 771
    iget-object v4, p0, Lcom/android/keyguard/VivoPatternView$7;->this$0:Lcom/android/keyguard/VivoPatternView;

    invoke-static {v4}, Lcom/android/keyguard/VivoPatternView;->access$000(Lcom/android/keyguard/VivoPatternView;)Lcom/android/keyguard/UnLockPatternView;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/android/keyguard/UnLockPatternView;->setFinger(Z)V

    .line 772
    const/4 v1, 0x0

    .line 773
    .local v1, "fillInGapCell":Lcom/android/internal/widget/LockPatternView$Cell;
    const/4 v2, 0x0

    .local v2, "fillInRow":I
    :goto_2
    if-ge v2, v9, :cond_c

    .line 774
    const/4 v0, 0x0

    .local v0, "fillInColumn":I
    :goto_3
    if-ge v0, v9, :cond_b

    .line 775
    invoke-static {v2, v0}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v1

    .line 776
    iget-object v4, p0, Lcom/android/keyguard/VivoPatternView$7;->this$0:Lcom/android/keyguard/VivoPatternView;

    invoke-static {v4}, Lcom/android/keyguard/VivoPatternView;->access$000(Lcom/android/keyguard/VivoPatternView;)Lcom/android/keyguard/UnLockPatternView;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/keyguard/UnLockPatternView;->addCellToPattern(Lcom/android/internal/widget/LockPatternView$Cell;)V

    .line 774
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 752
    .end local v0    # "fillInColumn":I
    .end local v1    # "fillInGapCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v2    # "fillInRow":I
    .end local v3    # "mesg":Landroid/os/Message;
    :cond_7
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    const-string v5, "fail-five"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    const-string v5, "fail-six"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 753
    :cond_8
    invoke-static {v8}, Lcom/android/keyguard/KeyguardUtils;->setFingerMessageShow(Z)V

    .line 754
    iget-object v4, p0, Lcom/android/keyguard/VivoPatternView$7;->this$0:Lcom/android/keyguard/VivoPatternView;

    iget-object v4, v4, Lcom/android/keyguard/VivoPatternView;->mSecurityMessageTitle:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v5, Lcom/android/keyguard/R$string;->finger_pattern_title:I

    invoke-interface {v4, v5, v8}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 755
    iget-object v4, p0, Lcom/android/keyguard/VivoPatternView$7;->this$0:Lcom/android/keyguard/VivoPatternView;

    iget-object v4, v4, Lcom/android/keyguard/VivoPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v5, Lcom/android/keyguard/R$string;->finger_need_pattern_msg:I

    invoke-interface {v4, v5, v8}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    goto/16 :goto_1

    .line 756
    :cond_9
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    const-string v5, "success-boot"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 757
    invoke-static {v8}, Lcom/android/keyguard/KeyguardUtils;->setFingerMessageShow(Z)V

    .line 758
    iget-object v4, p0, Lcom/android/keyguard/VivoPatternView$7;->this$0:Lcom/android/keyguard/VivoPatternView;

    iget-object v4, v4, Lcom/android/keyguard/VivoPatternView;->mSecurityMessageTitle:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v5, Lcom/android/keyguard/R$string;->finger_pattern_title:I

    invoke-interface {v4, v5, v8}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 759
    iget-object v4, p0, Lcom/android/keyguard/VivoPatternView$7;->this$0:Lcom/android/keyguard/VivoPatternView;

    iget-object v4, v4, Lcom/android/keyguard/VivoPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    sget v5, Lcom/android/keyguard/R$string;->pin_reboot_finger:I

    invoke-interface {v4, v5, v8}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    goto/16 :goto_1

    .line 760
    :cond_a
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    const-string v5, "lock-deadLine"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 761
    iget-object v4, p0, Lcom/android/keyguard/VivoPatternView$7;->this$0:Lcom/android/keyguard/VivoPatternView;

    invoke-static {v4}, Lcom/android/keyguard/VivoPatternView;->access$300(Lcom/android/keyguard/VivoPatternView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/keyguard/KeyguardSecurityCallback;->showSecurity()V

    goto/16 :goto_1

    .line 773
    .restart local v0    # "fillInColumn":I
    .restart local v1    # "fillInGapCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .restart local v2    # "fillInRow":I
    .restart local v3    # "mesg":Landroid/os/Message;
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 778
    .end local v0    # "fillInColumn":I
    :cond_c
    iget-object v4, p0, Lcom/android/keyguard/VivoPatternView$7;->this$0:Lcom/android/keyguard/VivoPatternView;

    invoke-static {v4}, Lcom/android/keyguard/VivoPatternView;->access$000(Lcom/android/keyguard/VivoPatternView;)Lcom/android/keyguard/UnLockPatternView;

    move-result-object v4

    sget-object v5, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v4, v5}, Lcom/android/keyguard/UnLockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    goto/16 :goto_0

    .line 782
    .end local v1    # "fillInGapCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v2    # "fillInRow":I
    .end local v3    # "mesg":Landroid/os/Message;
    :cond_d
    iget v4, p1, Landroid/os/Message;->what:I

    if-ne v4, v9, :cond_e

    .line 785
    iget-object v4, p0, Lcom/android/keyguard/VivoPatternView$7;->this$0:Lcom/android/keyguard/VivoPatternView;

    invoke-static {v4}, Lcom/android/keyguard/VivoPatternView;->access$1400(Lcom/android/keyguard/VivoPatternView;)Lcom/android/keyguard/vivo/widget/ImageDigitalClock;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 786
    iget-object v4, p0, Lcom/android/keyguard/VivoPatternView$7;->this$0:Lcom/android/keyguard/VivoPatternView;

    invoke-static {v4}, Lcom/android/keyguard/VivoPatternView;->access$1400(Lcom/android/keyguard/VivoPatternView;)Lcom/android/keyguard/vivo/widget/ImageDigitalClock;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/android/keyguard/vivo/widget/ImageDigitalClock;->setForceCenter(Z)V

    goto/16 :goto_0

    .line 790
    :cond_e
    iget v4, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_f

    .line 791
    const-string v4, "VivoPatternView"

    const-string v5, "onSimStateChangedUsingSubId: mCallback.showLockScreen()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    iget-object v4, p0, Lcom/android/keyguard/VivoPatternView$7;->this$0:Lcom/android/keyguard/VivoPatternView;

    invoke-static {v4}, Lcom/android/keyguard/VivoPatternView;->access$300(Lcom/android/keyguard/VivoPatternView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/keyguard/KeyguardSecurityCallback;->showLockScreen()V

    goto/16 :goto_0

    .line 793
    :cond_f
    iget v4, p1, Landroid/os/Message;->what:I

    if-ne v4, v10, :cond_2

    .line 794
    iget-object v4, p0, Lcom/android/keyguard/VivoPatternView$7;->this$0:Lcom/android/keyguard/VivoPatternView;

    invoke-static {v4}, Lcom/android/keyguard/VivoPatternView;->access$000(Lcom/android/keyguard/VivoPatternView;)Lcom/android/keyguard/UnLockPatternView;

    move-result-object v4

    invoke-virtual {v4, v11}, Lcom/android/keyguard/UnLockPatternView;->setFinger(Z)V

    .line 795
    iget-object v4, p0, Lcom/android/keyguard/VivoPatternView$7;->this$0:Lcom/android/keyguard/VivoPatternView;

    invoke-static {v4}, Lcom/android/keyguard/VivoPatternView;->access$000(Lcom/android/keyguard/VivoPatternView;)Lcom/android/keyguard/UnLockPatternView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/UnLockPatternView;->clearPattern()V

    goto/16 :goto_0
.end method
