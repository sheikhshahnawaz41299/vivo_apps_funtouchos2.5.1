.class Lcom/android/systemui/statusbar/BaseStatusBar$5$2;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/BaseStatusBar$5;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
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
    .line 480
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$5;

    iput-object p2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    iput-object p3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->val$rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 484
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    if-nez v2, :cond_0

    .line 485
    const-string v2, "StatusBar"

    const-string v3, "onNotificationPosted sbn is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :goto_0
    return-void

    .line 489
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    .line 493
    .local v1, "n":Landroid/app/Notification;
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$5;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$5;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mOngoingData:Lcom/android/systemui/statusbar/NotificationData;

    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$5;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mCalendarData:Lcom/android/systemui/statusbar/NotificationData;

    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$5;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mMusicData:Lcom/android/systemui/statusbar/NotificationData;

    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$5;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/BaseStatusBar;->isHeadsUp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_1
    const/4 v0, 0x1

    .line 507
    .local v0, "isUpdate":Z
    :goto_1
    invoke-virtual {v1}, Landroid/app/Notification;->isGroupChild()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$5;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/NotificationData;->isGroupWithSummary(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$5;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mOngoingData:Lcom/android/systemui/statusbar/NotificationData;

    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/NotificationData;->isGroupWithSummary(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$5;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mCalendarData:Lcom/android/systemui/statusbar/NotificationData;

    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/NotificationData;->isGroupWithSummary(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$5;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mMusicData:Lcom/android/systemui/statusbar/NotificationData;

    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/NotificationData;->isGroupWithSummary(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 513
    :cond_2
    sget-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 514
    const-string v2, "StatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring group child due to existing summary: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :cond_3
    if-eqz v0, :cond_5

    .line 519
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$5;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->val$rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    goto/16 :goto_0

    .line 493
    .end local v0    # "isUpdate":Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 523
    .restart local v0    # "isUpdate":Z
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$5;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar;->mNotificationPartitionManager:Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2, v3}, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->getNotificationParentData(Landroid/service/notification/StatusBarNotification;)Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->val$rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/NotificationData;->updateRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    goto/16 :goto_0

    .line 528
    :cond_6
    if-eqz v0, :cond_7

    .line 529
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$5;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->val$rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->updateNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    goto/16 :goto_0

    .line 531
    :cond_7
    iget-object v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$5;

    iget-object v2, v2, Lcom/android/systemui/statusbar/BaseStatusBar$5;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$5$2;->val$rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/statusbar/BaseStatusBar;->addNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    goto/16 :goto_0
.end method
