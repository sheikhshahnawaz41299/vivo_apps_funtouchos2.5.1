.class Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1$1;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardHostView$OnDismissAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;

.field final synthetic val$afterKeyguardGone:Z

.field final synthetic val$keyguardShowing:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;ZZ)V
    .locals 0

    .prologue
    .line 2022
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1$1;->this$2:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1$1;->val$keyguardShowing:Z

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1$1;->val$afterKeyguardGone:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2024
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1$1;->this$2:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    invoke-static {v2}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->access$1200(Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2027
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1$1;->this$2:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpNotificationView:Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/HeadsUpNotificationView;->dismiss()V

    .line 2030
    :cond_0
    new-instance v2, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1$1$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1$1$1;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1$1;)V

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1$1$1;->start()V

    .line 2072
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1$1;->this$2:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->animateCollapsePanels(IZ)V

    .line 2074
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1$1;->this$2:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->visibilityChanged(Z)V

    .line 2076
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1$1;->this$2:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    invoke-static {v2}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->access$1100(Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;)Landroid/app/PendingIntent;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1$1;->this$2:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    invoke-static {v2}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->access$1100(Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
