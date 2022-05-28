.class final Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ShadeUpdates;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ShadeUpdates"
.end annotation


# instance fields
.field private final mNewVisibleNotifications:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mVisibleNotifications:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 1

    .prologue
    .line 5717
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ShadeUpdates;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5718
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ShadeUpdates;->mVisibleNotifications:Landroid/util/ArraySet;

    .line 5719
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ShadeUpdates;->mNewVisibleNotifications:Landroid/util/ArraySet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/statusbar/phone/PhoneStatusBar$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p2, "x1"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar$1;

    .prologue
    .line 5717
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ShadeUpdates;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    return-void
.end method


# virtual methods
.method public check()V
    .locals 14

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 5722
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ShadeUpdates;->mNewVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v9}, Landroid/util/ArraySet;->clear()V

    .line 5723
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ShadeUpdates;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$10600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v2

    .line 5724
    .local v2, "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v5, v9, :cond_2

    .line 5725
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 5726
    .local v4, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v9, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v9, :cond_1

    iget-object v9, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v9

    if-nez v9, :cond_1

    move v7, v6

    .line 5728
    .local v7, "visible":Z
    :goto_1
    if-eqz v7, :cond_0

    .line 5729
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ShadeUpdates;->mNewVisibleNotifications:Landroid/util/ArraySet;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 5724
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .end local v7    # "visible":Z
    :cond_1
    move v7, v8

    .line 5726
    goto :goto_1

    .line 5733
    .end local v4    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_2
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ShadeUpdates;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$10700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v3

    .line 5734
    .local v3, "activeOngoings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v5, v9, :cond_5

    .line 5735
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 5736
    .restart local v4    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v9, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v9, :cond_4

    iget-object v9, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v9

    if-nez v9, :cond_4

    move v7, v6

    .line 5738
    .restart local v7    # "visible":Z
    :goto_3
    if-eqz v7, :cond_3

    .line 5739
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ShadeUpdates;->mNewVisibleNotifications:Landroid/util/ArraySet;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 5734
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .end local v7    # "visible":Z
    :cond_4
    move v7, v8

    .line 5736
    goto :goto_3

    .line 5742
    .end local v4    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_5
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ShadeUpdates;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$10800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v0

    .line 5743
    .local v0, "activeCalendars":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    const/4 v5, 0x0

    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v5, v9, :cond_8

    .line 5744
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 5745
    .restart local v4    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v9, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v9, :cond_7

    iget-object v9, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v9

    if-nez v9, :cond_7

    move v7, v6

    .line 5747
    .restart local v7    # "visible":Z
    :goto_5
    if-eqz v7, :cond_6

    .line 5748
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ShadeUpdates;->mNewVisibleNotifications:Landroid/util/ArraySet;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 5743
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .end local v7    # "visible":Z
    :cond_7
    move v7, v8

    .line 5745
    goto :goto_5

    .line 5751
    .end local v4    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_8
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ShadeUpdates;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$10900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v1

    .line 5752
    .local v1, "activeMusics":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    const/4 v5, 0x0

    :goto_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v5, v9, :cond_b

    .line 5753
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 5754
    .restart local v4    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v9, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v9, :cond_a

    iget-object v9, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v9

    if-nez v9, :cond_a

    move v7, v6

    .line 5756
    .restart local v7    # "visible":Z
    :goto_7
    if-eqz v7, :cond_9

    .line 5757
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ShadeUpdates;->mNewVisibleNotifications:Landroid/util/ArraySet;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 5752
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .end local v7    # "visible":Z
    :cond_a
    move v7, v8

    .line 5754
    goto :goto_7

    .line 5761
    .end local v4    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    :cond_b
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ShadeUpdates;->mVisibleNotifications:Landroid/util/ArraySet;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ShadeUpdates;->mNewVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v9, v10}, Landroid/util/ArraySet;->containsAll(Ljava/util/Collection;)Z

    move-result v9

    if-nez v9, :cond_d

    .line 5762
    .local v6, "updates":Z
    :goto_8
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ShadeUpdates;->mVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v8}, Landroid/util/ArraySet;->clear()V

    .line 5763
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ShadeUpdates;->mVisibleNotifications:Landroid/util/ArraySet;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ShadeUpdates;->mNewVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v8, v9}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 5766
    if-eqz v6, :cond_c

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ShadeUpdates;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;

    move-result-object v8

    if-eqz v8, :cond_c

    .line 5767
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ShadeUpdates;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$DozeServiceHost;->fireNewNotifications()V

    .line 5769
    :cond_c
    return-void

    .end local v6    # "updates":Z
    :cond_d
    move v6, v8

    .line 5761
    goto :goto_8
.end method
