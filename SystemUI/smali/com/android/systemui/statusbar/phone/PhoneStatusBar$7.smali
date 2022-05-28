.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mTmpCurrentlyVisibleNotifications:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpNewlyVisibleNotifications:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 1

    .prologue
    .line 657
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 658
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->mTmpNewlyVisibleNotifications:Ljava/util/ArrayList;

    .line 659
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->mTmpCurrentlyVisibleNotifications:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v18, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1902(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;J)J

    .line 673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$2100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v10

    .line 674
    .local v10, "activeNotifications":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 675
    .local v4, "N":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    if-ge v14, v4, :cond_3

    .line 676
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 677
    .local v13, "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v0, v13, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v15

    .line 678
    .local v15, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$2200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/util/ArraySet;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v17

    .line 679
    .local v17, "previouslyVisible":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$2300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-result-object v18

    iget-object v0, v13, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildLocation(Landroid/view/View;)I

    move-result v18

    and-int/lit8 v18, v18, 0x1d

    if-eqz v18, :cond_2

    const/4 v12, 0x1

    .line 681
    .local v12, "currentlyVisible":Z
    :goto_1
    if-eqz v12, :cond_0

    .line 683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->mTmpCurrentlyVisibleNotifications:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 685
    :cond_0
    if-nez v17, :cond_1

    if-eqz v12, :cond_1

    .line 686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->mTmpNewlyVisibleNotifications:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 675
    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 679
    .end local v12    # "currentlyVisible":Z
    :cond_2
    const/4 v12, 0x0

    goto :goto_1

    .line 691
    .end local v13    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v15    # "key":Ljava/lang/String;
    .end local v17    # "previouslyVisible":Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$2400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v11

    .line 692
    .local v11, "activeOngoings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 693
    .local v5, "N2":I
    const/4 v14, 0x0

    :goto_2
    if-ge v14, v5, :cond_7

    .line 694
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 695
    .restart local v13    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v0, v13, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v15

    .line 696
    .restart local v15    # "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$2200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/util/ArraySet;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v17

    .line 697
    .restart local v17    # "previouslyVisible":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$2500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-result-object v18

    iget-object v0, v13, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildLocation(Landroid/view/View;)I

    move-result v18

    and-int/lit8 v18, v18, 0x1d

    if-eqz v18, :cond_6

    const/4 v12, 0x1

    .line 699
    .restart local v12    # "currentlyVisible":Z
    :goto_3
    if-eqz v12, :cond_4

    .line 701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->mTmpCurrentlyVisibleNotifications:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 703
    :cond_4
    if-nez v17, :cond_5

    if-eqz v12, :cond_5

    .line 704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->mTmpNewlyVisibleNotifications:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 693
    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 697
    .end local v12    # "currentlyVisible":Z
    :cond_6
    const/4 v12, 0x0

    goto :goto_3

    .line 708
    .end local v13    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v15    # "key":Ljava/lang/String;
    .end local v17    # "previouslyVisible":Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$2600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v8

    .line 709
    .local v8, "activeCalendars":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 710
    .local v6, "N3":I
    const/4 v14, 0x0

    :goto_4
    if-ge v14, v6, :cond_b

    .line 711
    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 712
    .restart local v13    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v0, v13, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v15

    .line 713
    .restart local v15    # "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$2200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/util/ArraySet;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v17

    .line 714
    .restart local v17    # "previouslyVisible":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$2700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-result-object v18

    iget-object v0, v13, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildLocation(Landroid/view/View;)I

    move-result v18

    and-int/lit8 v18, v18, 0x1d

    if-eqz v18, :cond_a

    const/4 v12, 0x1

    .line 716
    .restart local v12    # "currentlyVisible":Z
    :goto_5
    if-eqz v12, :cond_8

    .line 718
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->mTmpCurrentlyVisibleNotifications:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 720
    :cond_8
    if-nez v17, :cond_9

    if-eqz v12, :cond_9

    .line 721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->mTmpNewlyVisibleNotifications:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 710
    :cond_9
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 714
    .end local v12    # "currentlyVisible":Z
    :cond_a
    const/4 v12, 0x0

    goto :goto_5

    .line 725
    .end local v13    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v15    # "key":Ljava/lang/String;
    .end local v17    # "previouslyVisible":Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$2800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v9

    .line 726
    .local v9, "activeMusics":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/NotificationData$Entry;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 727
    .local v7, "N4":I
    const/4 v14, 0x0

    :goto_6
    if-ge v14, v7, :cond_f

    .line 728
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/statusbar/NotificationData$Entry;

    .line 729
    .restart local v13    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v0, v13, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v15

    .line 730
    .restart local v15    # "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$2200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/util/ArraySet;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v17

    .line 731
    .restart local v17    # "previouslyVisible":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$2900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-result-object v18

    iget-object v0, v13, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildLocation(Landroid/view/View;)I

    move-result v18

    and-int/lit8 v18, v18, 0x1d

    if-eqz v18, :cond_e

    const/4 v12, 0x1

    .line 733
    .restart local v12    # "currentlyVisible":Z
    :goto_7
    if-eqz v12, :cond_c

    .line 735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->mTmpCurrentlyVisibleNotifications:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 737
    :cond_c
    if-nez v17, :cond_d

    if-eqz v12, :cond_d

    .line 738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->mTmpNewlyVisibleNotifications:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 727
    :cond_d
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 731
    .end local v12    # "currentlyVisible":Z
    :cond_e
    const/4 v12, 0x0

    goto :goto_7

    .line 742
    .end local v13    # "entry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v15    # "key":Ljava/lang/String;
    .end local v17    # "previouslyVisible":Z
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$2200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/util/ArraySet;

    move-result-object v16

    .line 743
    .local v16, "noLongerVisibleNotifications":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->mTmpCurrentlyVisibleNotifications:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->removeAll(Ljava/util/Collection;)Z

    .line 745
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->mTmpNewlyVisibleNotifications:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$3000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$2200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/util/ArraySet;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/util/ArraySet;->clear()V

    .line 749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$2200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/util/ArraySet;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->mTmpCurrentlyVisibleNotifications:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 751
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->mTmpNewlyVisibleNotifications:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    .line 752
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;->mTmpCurrentlyVisibleNotifications:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    .line 753
    return-void
.end method
