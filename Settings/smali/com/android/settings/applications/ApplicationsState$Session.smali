.class public Lcom/android/settings/applications/ApplicationsState$Session;
.super Ljava/lang/Object;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Session"
.end annotation


# instance fields
.field final mCallbacks:Lcom/android/settings/applications/ApplicationsState$Callbacks;

.field mLastAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field mRebuildAsync:Z

.field mRebuildComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field mRebuildFilter:Lcom/android/settings/applications/ApplicationsState$AppFilter;

.field mRebuildRequested:Z

.field mRebuildResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field final mRebuildSync:Ljava/lang/Object;

.field mResumed:Z

.field final synthetic this$0:Lcom/android/settings/applications/ApplicationsState;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ApplicationsState;Lcom/android/settings/applications/ApplicationsState$Callbacks;)V
    .locals 1
    .param p2, "callbacks"    # Lcom/android/settings/applications/ApplicationsState$Callbacks;

    .prologue
    .line 515
    iput-object p1, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 507
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildSync:Ljava/lang/Object;

    .line 516
    iput-object p2, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mCallbacks:Lcom/android/settings/applications/ApplicationsState$Callbacks;

    .line 517
    return-void
.end method


# virtual methods
.method handleRebuildList()V
    .locals 13

    .prologue
    .line 584
    iget-object v10, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildSync:Ljava/lang/Object;

    monitor-enter v10

    .line 585
    :try_start_0
    iget-boolean v9, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildRequested:Z

    if-nez v9, :cond_0

    .line 586
    monitor-exit v10

    .line 646
    :goto_0
    return-void

    .line 589
    :cond_0
    iget-object v4, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildFilter:Lcom/android/settings/applications/ApplicationsState$AppFilter;

    .line 590
    .local v4, "filter":Lcom/android/settings/applications/ApplicationsState$AppFilter;
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildComparator:Ljava/util/Comparator;

    .line 591
    .local v1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildRequested:Z

    .line 592
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildFilter:Lcom/android/settings/applications/ApplicationsState$AppFilter;

    .line 593
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildComparator:Ljava/util/Comparator;

    .line 594
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 596
    const/4 v9, -0x2

    invoke-static {v9}, Landroid/os/Process;->setThreadPriority(I)V

    .line 598
    if-eqz v4, :cond_1

    .line 599
    invoke-interface {v4}, Lcom/android/settings/applications/ApplicationsState$AppFilter;->init()V

    .line 603
    :cond_1
    iget-object v9, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v10, v9, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v10

    .line 604
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v9, v9, Lcom/android/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-direct {v0, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 605
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 607
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 608
    .local v5, "filteredApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    sget-boolean v9, Lcom/android/settings/applications/ApplicationsState;->DEBUG:Z

    if-eqz v9, :cond_2

    const-string v9, "ApplicationsState"

    const-string v10, "Rebuilding..."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    :cond_2
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-ge v6, v9, :cond_6

    .line 610
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ApplicationInfo;

    .line 611
    .local v7, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v4, :cond_3

    invoke-interface {v4, v7}, Lcom/android/settings/applications/ApplicationsState$AppFilter;->filterApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 612
    :cond_3
    iget-object v9, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v10, v9, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v10

    .line 614
    :try_start_2
    iget-object v9, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v9, v7}, Lcom/android/settings/applications/ApplicationsState;->getEntryLocked(Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v3

    .line 615
    .local v3, "entry":Lcom/android/settings/applications/ApplicationsState$AppEntry;
    iget-object v9, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v9, v9, Lcom/android/settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v9}, Lcom/android/settings/applications/ApplicationsState$AppEntry;->ensureLabel(Landroid/content/Context;)V

    .line 616
    sget-boolean v9, Lcom/android/settings/applications/ApplicationsState;->DEBUG:Z

    if-eqz v9, :cond_4

    const-string v9, "ApplicationsState"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Using "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    :cond_4
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 619
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 609
    .end local v3    # "entry":Lcom/android/settings/applications/ApplicationsState$AppEntry;
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 594
    .end local v0    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v1    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    .end local v4    # "filter":Lcom/android/settings/applications/ApplicationsState$AppFilter;
    .end local v5    # "filteredApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    .end local v6    # "i":I
    .end local v7    # "info":Landroid/content/pm/ApplicationInfo;
    :catchall_0
    move-exception v9

    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v9

    .line 605
    .restart local v1    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    .restart local v4    # "filter":Lcom/android/settings/applications/ApplicationsState$AppFilter;
    :catchall_1
    move-exception v9

    :try_start_4
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v9

    .line 619
    .restart local v0    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v5    # "filteredApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    .restart local v6    # "i":I
    .restart local v7    # "info":Landroid/content/pm/ApplicationInfo;
    :catchall_2
    move-exception v9

    :try_start_5
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v9

    .line 624
    .end local v7    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_6
    :try_start_6
    invoke-static {v5, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 629
    :goto_2
    iget-object v10, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildSync:Ljava/lang/Object;

    monitor-enter v10

    .line 630
    :try_start_7
    iget-boolean v9, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildRequested:Z

    if-nez v9, :cond_7

    .line 631
    iput-object v5, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mLastAppList:Ljava/util/ArrayList;

    .line 632
    iget-boolean v9, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildAsync:Z

    if-nez v9, :cond_8

    .line 633
    iput-object v5, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildResult:Ljava/util/ArrayList;

    .line 634
    iget-object v9, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildSync:Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V

    .line 643
    :cond_7
    :goto_3
    monitor-exit v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 645
    const/16 v9, 0xa

    invoke-static {v9}, Landroid/os/Process;->setThreadPriority(I)V

    goto/16 :goto_0

    .line 625
    :catch_0
    move-exception v2

    .line 626
    .local v2, "e":Ljava/lang/Exception;
    const-string v9, "ApplicationsState"

    const-string v10, "handleRebuildList Collections Exception:"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 636
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_8
    :try_start_8
    iget-object v9, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v9, v9, Lcom/android/settings/applications/ApplicationsState;->mMainHandler:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    const/4 v11, 0x1

    invoke-virtual {v9, v11, p0}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->hasMessages(ILjava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 637
    iget-object v9, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v9, v9, Lcom/android/settings/applications/ApplicationsState;->mMainHandler:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    const/4 v11, 0x1

    invoke-virtual {v9, v11, p0}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 639
    .local v8, "msg":Landroid/os/Message;
    iget-object v9, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v9, v9, Lcom/android/settings/applications/ApplicationsState;->mMainHandler:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    invoke-virtual {v9, v8}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    .line 643
    .end local v8    # "msg":Landroid/os/Message;
    :catchall_3
    move-exception v9

    monitor-exit v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v9
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 533
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v1, v0, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 534
    :try_start_0
    iget-boolean v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mResumed:Z

    if-eqz v0, :cond_0

    .line 535
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mResumed:Z

    .line 536
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/settings/applications/ApplicationsState;->mSessionsChanged:Z

    .line 537
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p0}, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->removeMessages(ILjava/lang/Object;)V

    .line 538
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsState;->doPauseIfNeededLocked()V

    .line 541
    :cond_0
    monitor-exit v1

    .line 542
    return-void

    .line 541
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method rebuild(Lcom/android/settings/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)Ljava/util/ArrayList;
    .locals 12
    .param p1, "filter"    # Lcom/android/settings/applications/ApplicationsState$AppFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/applications/ApplicationsState$AppFilter;",
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 546
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    iget-object v6, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildSync:Ljava/lang/Object;

    monitor-enter v6

    .line 547
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v7, v1, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 548
    :try_start_1
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState;->mRebuildingSessions:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 549
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildRequested:Z

    .line 550
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildAsync:Z

    .line 551
    iput-object p1, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildFilter:Lcom/android/settings/applications/ApplicationsState$AppFilter;

    .line 552
    iput-object p2, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildComparator:Ljava/util/Comparator;

    .line 553
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildResult:Ljava/util/ArrayList;

    .line 554
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 555
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 557
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    invoke-virtual {v1, v0}, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->sendMessage(Landroid/os/Message;)Z

    .line 559
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 562
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0xfa

    add-long v4, v8, v10

    .line 564
    .local v4, "waitend":J
    :goto_0
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildResult:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 565
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 566
    .local v2, "now":J
    cmp-long v1, v2, v4

    if-ltz v1, :cond_2

    .line 575
    .end local v2    # "now":J
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildAsync:Z

    .line 577
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildResult:Ljava/util/ArrayList;

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v1

    .line 559
    .end local v4    # "waitend":J
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    .line 578
    :catchall_1
    move-exception v1

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    .line 570
    .restart local v2    # "now":J
    .restart local v4    # "waitend":J
    :cond_2
    :try_start_5
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mRebuildSync:Ljava/lang/Object;

    sub-long v8, v4, v2

    invoke-virtual {v1, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 571
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 649
    invoke-virtual {p0}, Lcom/android/settings/applications/ApplicationsState$Session;->pause()V

    .line 650
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v1, v0, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 651
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 652
    monitor-exit v1

    .line 653
    return-void

    .line 652
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public releaseMem(Lcom/android/settings/applications/ApplicationsState$Session;)V
    .locals 2
    .param p1, "s"    # Lcom/android/settings/applications/ApplicationsState$Session;

    .prologue
    .line 657
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v1, v0, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 658
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 659
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 660
    monitor-exit v1

    .line 661
    return-void

    .line 660
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 521
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v1, v0, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 522
    :try_start_0
    iget-boolean v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mResumed:Z

    if-nez v0, :cond_0

    .line 523
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mResumed:Z

    .line 524
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/settings/applications/ApplicationsState;->mSessionsChanged:Z

    .line 525
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->this$0:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsState;->doResumeIfNeededLocked()V

    .line 527
    :cond_0
    monitor-exit v1

    .line 529
    return-void

    .line 527
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
