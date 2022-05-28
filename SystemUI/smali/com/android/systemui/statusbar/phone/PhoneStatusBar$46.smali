.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$46;
.super Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;
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
    .line 6028
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$46;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardCallback;-><init>()V

    return-void
.end method


# virtual methods
.method protected dismiss(Z)V
    .locals 2
    .param p1, "needAnim"    # Z

    .prologue
    const/4 v1, 0x0

    .line 6039
    if-nez p1, :cond_1

    .line 6040
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$46;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$11900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6050
    :goto_0
    return-void

    .line 6043
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$46;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$10500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->setAlpha(F)V

    .line 6044
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$46;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$10500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->onTransparent()V

    .line 6045
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$46;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$12000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setAlpha(F)V

    .line 6046
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$46;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$12100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setVisibility(I)V

    .line 6048
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$46;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$46;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$10500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->dismissWithAnim()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$10302(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    .line 6049
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$46;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$12200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->dismiss()V

    goto :goto_0

    .line 6048
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected getNotificationView()Landroid/view/View;
    .locals 1

    .prologue
    .line 6061
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$46;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$12300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-result-object v0

    return-object v0
.end method

.method protected isOccluded()Z
    .locals 1

    .prologue
    .line 6075
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$46;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$12800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$46;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$12900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isSecure()Z
    .locals 1

    .prologue
    .line 6065
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$46;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$12400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$46;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$12500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isSecure()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isShowing()Z
    .locals 1

    .prologue
    .line 6070
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$46;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$12600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$46;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$12700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected lockNow()V
    .locals 3

    .prologue
    .line 6034
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$46;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const-class v2, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 6035
    .local v0, "keyguardViewMediator":Lcom/android/systemui/keyguard/KeyguardViewMediator;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->doKeyguardTimeout(Landroid/os/Bundle;)V

    .line 6036
    return-void
.end method

.method protected onAnimationToSideEnded()V
    .locals 1

    .prologue
    .line 6100
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$46;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onAnimationToSideEnded()V

    .line 6101
    return-void
.end method

.method protected onAnimationToSideStarted()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 6096
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$46;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onAnimationToSideStarted(ZFF)V

    .line 6097
    return-void
.end method

.method protected onMusicPanelVisibilityChanged(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 6092
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$46;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->onMusicPanelVisibilityChanged(Z)V

    .line 6093
    return-void
.end method

.method protected setBlurWallPaperShowing(Z)V
    .locals 1
    .param p1, "showing"    # Z

    .prologue
    .line 6104
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$46;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$13400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->setIsKeyguardBlur(Z)V

    .line 6105
    return-void
.end method

.method protected show()V
    .locals 1

    .prologue
    .line 6030
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$46;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$11800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->reset()V

    .line 6031
    return-void
.end method

.method protected startActivity(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 6053
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$46;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->startActivity(Landroid/content/Intent;Z)V

    .line 6054
    return-void
.end method

.method protected updateStatusbarWindowState()V
    .locals 1

    .prologue
    .line 6086
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$46;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$13200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6087
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$46;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$13300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateStatusbarWindowState()V

    .line 6089
    :cond_0
    return-void
.end method

.method protected updateUserActivityTimeout(J)V
    .locals 1
    .param p1, "timeout"    # J

    .prologue
    .line 6080
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$46;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$13000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6081
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$46;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$13100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->updateUserActivityTimeout(J)V

    .line 6083
    :cond_0
    return-void
.end method

.method protected userActivity()V
    .locals 1

    .prologue
    .line 6057
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$46;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->userActivity()V

    .line 6058
    return-void
.end method
