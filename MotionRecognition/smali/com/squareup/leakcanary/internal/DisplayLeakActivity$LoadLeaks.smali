.class Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;
.super Ljava/lang/Object;
.source "DisplayLeakActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/leakcanary/internal/DisplayLeakActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LoadLeaks"
.end annotation


# static fields
.field static final backgroundExecutor:Ljava/util/concurrent/Executor;

.field static final inFlight:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field activityOrNull:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

.field private final leakDirectory:Ljava/io/File;

.field private final mainHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 478
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->inFlight:Ljava/util/List;

    .line 480
    const-string v0, "LoadLeaks"

    invoke-static {v0}, Lcom/squareup/leakcanary/internal/LeakCanaryInternals;->newSingleThreadExecutor(Ljava/lang/String;)Ljava/util/concurrent/Executor;

    move-result-object v0

    sput-object v0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->backgroundExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method constructor <init>(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)V
    .locals 2
    .param p1, "activity"    # Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    .prologue
    .line 499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 500
    iput-object p1, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->activityOrNull:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    .line 501
    invoke-static {p1}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity;->getLeakDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->leakDirectory:Ljava/io/File;

    .line 502
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->mainHandler:Landroid/os/Handler;

    .line 503
    return-void
.end method

.method static forgetActivity()V
    .locals 3

    .prologue
    .line 489
    sget-object v1, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->inFlight:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v0, "loadLeaks":Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 492
    sget-object v1, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->inFlight:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 493
    return-void

    .line 489
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "loadLeaks":Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;
    check-cast v0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;

    .line 490
    .restart local v0    # "loadLeaks":Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->activityOrNull:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    goto :goto_0
.end method

.method static load(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)V
    .locals 2
    .param p0, "activity"    # Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    .prologue
    .line 483
    new-instance v0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;

    invoke-direct {v0, p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;-><init>(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)V

    .line 484
    .local v0, "loadLeaks":Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;
    sget-object v1, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->inFlight:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 485
    sget-object v1, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->backgroundExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 486
    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v10, 0x0

    .line 506
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 507
    .local v6, "leaks":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;>;"
    iget-object v11, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->leakDirectory:Ljava/io/File;

    new-instance v12, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks$1;

    invoke-direct {v12, p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks$1;-><init>(Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;)V

    invoke-virtual {v11, v12}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    .line 513
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_0

    .line 514
    array-length v12, v2

    move v11, v10

    :goto_0
    if-lt v11, v12, :cond_1

    .line 541
    new-instance v10, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks$2;

    invoke-direct {v10, p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks$2;-><init>(Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;)V

    invoke-static {v6, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 548
    :cond_0
    iget-object v10, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->mainHandler:Landroid/os/Handler;

    new-instance v11, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks$3;

    invoke-direct {v11, p0, v6}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks$3;-><init>(Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;Ljava/util/List;)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 557
    return-void

    .line 514
    :cond_1
    aget-object v9, v2, v11

    .line 515
    .local v9, "resultFile":Ljava/io/File;
    const/4 v3, 0x0

    .line 517
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 518
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .local v4, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v7, Ljava/io/ObjectInputStream;

    invoke-direct {v7, v4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 519
    .local v7, "ois":Ljava/io/ObjectInputStream;
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/squareup/leakcanary/HeapDump;

    .line 520
    .local v5, "heapDump":Lcom/squareup/leakcanary/HeapDump;
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/squareup/leakcanary/AnalysisResult;

    .line 521
    .local v8, "result":Lcom/squareup/leakcanary/AnalysisResult;
    new-instance v10, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;

    invoke-direct {v10, v5, v8, v9}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;-><init>(Lcom/squareup/leakcanary/HeapDump;Lcom/squareup/leakcanary/AnalysisResult;Ljava/io/File;)V

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 533
    if-eqz v4, :cond_5

    .line 535
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v3, v4

    .line 514
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "heapDump":Lcom/squareup/leakcanary/HeapDump;
    .end local v7    # "ois":Ljava/io/ObjectInputStream;
    .end local v8    # "result":Lcom/squareup/leakcanary/AnalysisResult;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :cond_2
    :goto_1
    add-int/lit8 v10, v11, 0x1

    move v11, v10

    goto :goto_0

    .line 522
    :catch_0
    move-exception v10

    :goto_2
    move-object v1, v10

    .line 525
    .local v1, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_3
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    move-result v0

    .line 526
    .local v0, "deleted":Z
    if-eqz v0, :cond_3

    .line 527
    const-string v10, "Could not read result file %s, deleted it."

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v9, v13, v14

    invoke-static {v1, v10, v13}, Lcom/squareup/leakcanary/CanaryLog;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 533
    :goto_4
    if-eqz v3, :cond_2

    .line 535
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 536
    :catch_1
    move-exception v10

    goto :goto_1

    .line 529
    :cond_3
    :try_start_5
    const-string v10, "Could not read result file %s, could not delete it either."

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    .line 530
    aput-object v9, v13, v14

    .line 529
    invoke-static {v1, v10, v13}, Lcom/squareup/leakcanary/CanaryLog;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    .line 532
    .end local v0    # "deleted":Z
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    .line 533
    :goto_5
    if-eqz v3, :cond_4

    .line 535
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 539
    :cond_4
    :goto_6
    throw v10

    .line 536
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "heapDump":Lcom/squareup/leakcanary/HeapDump;
    .restart local v7    # "ois":Ljava/io/ObjectInputStream;
    .restart local v8    # "result":Lcom/squareup/leakcanary/AnalysisResult;
    :catch_2
    move-exception v10

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_1

    .line 522
    .end local v5    # "heapDump":Lcom/squareup/leakcanary/HeapDump;
    .end local v7    # "ois":Ljava/io/ObjectInputStream;
    .end local v8    # "result":Lcom/squareup/leakcanary/AnalysisResult;
    :catch_3
    move-exception v10

    :goto_7
    move-object v1, v10

    goto :goto_3

    .line 536
    :catch_4
    move-exception v11

    goto :goto_6

    .line 532
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v10

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_5

    .line 522
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_5
    move-exception v10

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_6
    move-exception v10

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_7

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "heapDump":Lcom/squareup/leakcanary/HeapDump;
    .restart local v7    # "ois":Ljava/io/ObjectInputStream;
    .restart local v8    # "result":Lcom/squareup/leakcanary/AnalysisResult;
    :cond_5
    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_1
.end method
