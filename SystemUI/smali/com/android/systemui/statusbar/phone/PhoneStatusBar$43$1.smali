.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$43$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar$43;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$43;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$43;)V
    .locals 0

    .prologue
    .line 5014
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$43$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$43;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 5017
    const-string v0, "PhoneStatusBar"

    const-string v1, "Dismiss animation end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5018
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$43$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$43;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$43;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setKeyguardGone(Z)V

    .line 5019
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$43$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$43;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$43;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setAlpha(F)V

    .line 5020
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$43$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$43;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$43;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$10400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 5021
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$43$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$43;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$43;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$10102(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    .line 5022
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$43$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$43;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$43;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->blockTouches(Z)V

    .line 5023
    return-void
.end method
