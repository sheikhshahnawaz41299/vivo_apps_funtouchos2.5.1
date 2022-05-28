.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$43;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->fadeKeyguardAfterLaunchTransition(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field final synthetic val$beforeFading:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 4982
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$43;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$43;->val$beforeFading:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 4985
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$43;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$10102(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    .line 4986
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$43;->val$beforeFading:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 4987
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$43;->val$beforeFading:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 4989
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$43;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->hasHoodClicked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4990
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$43;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->sendIntent()V

    .line 4991
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$43;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->resetHoodClicked()V

    .line 4997
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$43;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$10200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 5000
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$43;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setAlpha(F)V

    .line 5002
    const-string v0, "PhoneStatusBar"

    const-string v1, "start unlock animate"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5003
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$43;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$10300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5005
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$43;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->blockTouches(Z)V

    .line 5008
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$43;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xaa

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$43$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$43$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$43;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 5033
    :goto_0
    return-void

    .line 5026
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$43;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$10500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/systemui/vivo/common/keyguard/KeyguardHostContainer;->setAlpha(F)V

    .line 5027
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$43;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$10302(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    .line 5028
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$43;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setKeyguardGone(Z)V

    .line 5029
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$43;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$10400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 5030
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$43;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$10102(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    goto :goto_0
.end method
