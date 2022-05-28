.class Lcom/android/systemui/statusbar/NotificationData$1;
.super Ljava/lang/Object;
.source "NotificationData.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/systemui/statusbar/NotificationData$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field private final mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

.field private final mRankingB:Landroid/service/notification/NotificationListenerService$Ranking;

.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationData;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationData;)V
    .locals 1

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/NotificationData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    new-instance v0, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v0}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$1;->mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 116
    new-instance v0, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v0}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$1;->mRankingB:Landroid/service/notification/NotificationListenerService$Ranking;

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData$Entry;)I
    .locals 13
    .param p1, "a"    # Lcom/android/systemui/statusbar/NotificationData$Entry;
    .param p2, "b"    # Lcom/android/systemui/statusbar/NotificationData$Entry;

    .prologue
    const/4 v12, 0x2

    const/4 v10, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x1

    .line 122
    iget-object v11, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v11}, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->isPartitionTitle(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 161
    :cond_0
    :goto_0
    return v8

    .line 124
    :cond_1
    iget-object v11, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v11}, Lcom/android/systemui/vivo/common/notification/NotificationPartitionManager;->isPartitionTitle(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_2

    move v8, v9

    .line 125
    goto :goto_0

    .line 129
    :cond_2
    iget-object v11, p0, Lcom/android/systemui/statusbar/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/NotificationData;

    invoke-static {v11}, Lcom/android/systemui/statusbar/NotificationData;->access$000(Lcom/android/systemui/statusbar/NotificationData;)Lcom/android/systemui/statusbar/NotificationData$Environment;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/systemui/statusbar/NotificationData$Environment;->getCurrentMediaNotificationKey()Ljava/lang/String;

    move-result-object v5

    .line 130
    .local v5, "mediaNotification":Ljava/lang/String;
    iget-object v11, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 131
    .local v0, "aMedia":Z
    iget-object v11, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 132
    .local v2, "bMedia":Z
    if-eq v0, v2, :cond_3

    .line 133
    if-nez v0, :cond_0

    move v8, v9

    goto :goto_0

    .line 136
    :cond_3
    iget-object v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 137
    .local v6, "na":Landroid/service/notification/StatusBarNotification;
    iget-object v7, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 140
    .local v7, "nb":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v11

    iget v11, v11, Landroid/app/Notification;->priority:I

    if-lt v11, v12, :cond_4

    invoke-static {v6}, Lcom/android/systemui/statusbar/NotificationData;->access$100(Landroid/service/notification/StatusBarNotification;)Z

    move-result v11

    if-eqz v11, :cond_4

    move v1, v9

    .line 142
    .local v1, "aSystemMax":Z
    :goto_1
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v11

    iget v11, v11, Landroid/app/Notification;->priority:I

    if-lt v11, v12, :cond_5

    invoke-static {v7}, Lcom/android/systemui/statusbar/NotificationData;->access$100(Landroid/service/notification/StatusBarNotification;)Z

    move-result v11

    if-eqz v11, :cond_5

    move v3, v9

    .line 144
    .local v3, "bSystemMax":Z
    :goto_2
    if-eq v1, v3, :cond_6

    .line 145
    if-nez v1, :cond_0

    move v8, v9

    goto :goto_0

    .end local v1    # "aSystemMax":Z
    .end local v3    # "bSystemMax":Z
    :cond_4
    move v1, v10

    .line 140
    goto :goto_1

    .restart local v1    # "aSystemMax":Z
    :cond_5
    move v3, v10

    .line 142
    goto :goto_2

    .line 149
    .restart local v3    # "bSystemMax":Z
    :cond_6
    iget-object v10, p0, Lcom/android/systemui/statusbar/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/NotificationData;

    invoke-static {v10}, Lcom/android/systemui/statusbar/NotificationData;->access$200(Lcom/android/systemui/statusbar/NotificationData;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v10

    if-eqz v10, :cond_7

    .line 150
    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/NotificationData;

    invoke-static {v8}, Lcom/android/systemui/statusbar/NotificationData;->access$200(Lcom/android/systemui/statusbar/NotificationData;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v8

    iget-object v9, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/systemui/statusbar/NotificationData$1;->mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v8, v9, v10}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 151
    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/NotificationData;

    invoke-static {v8}, Lcom/android/systemui/statusbar/NotificationData;->access$200(Lcom/android/systemui/statusbar/NotificationData;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v8

    iget-object v9, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/systemui/statusbar/NotificationData$1;->mRankingB:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v8, v9, v10}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 152
    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationData$1;->mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v8}, Landroid/service/notification/NotificationListenerService$Ranking;->getRank()I

    move-result v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/NotificationData$1;->mRankingB:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v9}, Landroid/service/notification/NotificationListenerService$Ranking;->getRank()I

    move-result v9

    sub-int/2addr v8, v9

    goto/16 :goto_0

    .line 155
    :cond_7
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getScore()I

    move-result v10

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getScore()I

    move-result v11

    sub-int v4, v10, v11

    .line 156
    .local v4, "d":I
    invoke-static {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->access$300(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v10

    invoke-static {p2}, Lcom/android/systemui/statusbar/NotificationData$Entry;->access$300(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v11

    if-eq v10, v11, :cond_8

    .line 157
    invoke-static {p1}, Lcom/android/systemui/statusbar/NotificationData$Entry;->access$300(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v10

    if-nez v10, :cond_0

    move v8, v9

    goto/16 :goto_0

    .line 158
    :cond_8
    if-eqz v4, :cond_9

    move v8, v4

    .line 159
    goto/16 :goto_0

    .line 161
    :cond_9
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v8

    iget-wide v8, v8, Landroid/app/Notification;->when:J

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v10

    iget-wide v10, v10, Landroid/app/Notification;->when:J

    sub-long/2addr v8, v10

    long-to-int v8, v8

    goto/16 :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 114
    check-cast p1, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/NotificationData$1;->compare(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData$Entry;)I

    move-result v0

    return v0
.end method
