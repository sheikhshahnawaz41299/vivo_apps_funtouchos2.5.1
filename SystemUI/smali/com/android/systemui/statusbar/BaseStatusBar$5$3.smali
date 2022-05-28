.class Lcom/android/systemui/statusbar/BaseStatusBar$5$3;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/BaseStatusBar$5;->onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/BaseStatusBar$5;

.field final synthetic val$rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

.field final synthetic val$sbn:Landroid/service/notification/StatusBarNotification;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar$5;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0

    .prologue
    .line 541
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$3;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$5;

    iput-object p2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$3;->val$sbn:Landroid/service/notification/StatusBarNotification;

    iput-object p3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$3;->val$rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 545
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$3;->val$sbn:Landroid/service/notification/StatusBarNotification;

    if-nez v0, :cond_0

    .line 546
    const-string v0, "StatusBar"

    const-string v1, "onNotificationRemoved sbn is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :goto_0
    return-void

    .line 550
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$3;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$5;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$3;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$3;->val$rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/BaseStatusBar;->removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    goto :goto_0
.end method
