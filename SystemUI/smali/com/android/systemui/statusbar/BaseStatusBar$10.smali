.class Lcom/android/systemui/statusbar/BaseStatusBar$10;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "BaseStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/BaseStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/BaseStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 0

    .prologue
    .line 1147
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$10;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardBouncerChanged(Z)V
    .locals 3
    .param p1, "bouncer"    # Z

    .prologue
    .line 1150
    if-eqz p1, :cond_1

    .line 1151
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$10;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$508(Lcom/android/systemui/statusbar/BaseStatusBar;)I

    .line 1152
    const-string v0, "StatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBlocked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$10;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mBlocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mBouncerCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$10;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-static {v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$500(Lcom/android/systemui/statusbar/BaseStatusBar;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$10;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBlocked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$10;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->access$500(Lcom/android/systemui/statusbar/BaseStatusBar;)I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 1154
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$10;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mBlocked:Z

    .line 1161
    :cond_0
    :goto_0
    return-void

    .line 1157
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$10;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->hasHoodClicked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1158
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$10;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/notification/NotificationHoodManager;->resetHoodClicked()V

    goto :goto_0
.end method
