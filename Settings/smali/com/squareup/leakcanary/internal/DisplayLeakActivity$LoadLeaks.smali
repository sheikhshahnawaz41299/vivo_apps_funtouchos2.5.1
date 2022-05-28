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
.field private activityOrNull:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

.field private final leakDirectory:Ljava/io/File;

.field private final mainHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 431
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->inFlight:Ljava/util/List;

    .line 432
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->backgroundExecutor:Ljava/util/concurrent/Executor;

    .line 433
    return-void
.end method

.method constructor <init>(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)V
    .locals 2
    .param p1, "activity"    # Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    .prologue
    .line 448
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 449
    iput-object p1, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->activityOrNull:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    .line 450
    invoke-static {}, Lcom/squareup/leakcanary/internal/LeakCanaryInternals;->detectedLeakDirectory()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->leakDirectory:Ljava/io/File;

    .line 451
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->mainHandler:Landroid/os/Handler;

    .line 452
    return-void
.end method

.method static synthetic access$0(Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;)Lcom/squareup/leakcanary/internal/DisplayLeakActivity;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->activityOrNull:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    return-object v0
.end method

.method static forgetActivity()V
    .locals 3

    .prologue
    .line 442
    sget-object v1, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->inFlight:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v0, "loadLeaks":Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 445
    sget-object v1, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->inFlight:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 446
    return-void

    .line 442
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "loadLeaks":Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;
    check-cast v0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;

    .line 443
    .restart local v0    # "loadLeaks":Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->activityOrNull:Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    goto :goto_0
.end method

.method static load(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)V
    .locals 2
    .param p0, "activity"    # Lcom/squareup/leakcanary/internal/DisplayLeakActivity;

    .prologue
    .line 436
    new-instance v0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;

    invoke-direct {v0, p0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;-><init>(Lcom/squareup/leakcanary/internal/DisplayLeakActivity;)V

    .line 437
    .local v0, "loadLeaks":Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;
    sget-object v1, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->inFlight:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    sget-object v1, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->backgroundExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 439
    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 456
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 457
    .local v9, "leaks":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->leakDirectory:Ljava/io/File;

    new-instance v15, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks$1;-><init>(Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;)V

    invoke-virtual {v14, v15}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v3

    .line 463
    .local v3, "files":[Ljava/io/File;
    if-eqz v3, :cond_0

    .line 465
    move-object v1, v3

    .local v1, "array":[Ljava/io/File;
    array-length v10, v3

    .local v10, "length":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-lt v8, v10, :cond_1

    .line 499
    new-instance v14, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks$2;-><init>(Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;)V

    invoke-static {v9, v14}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 506
    .end local v1    # "array":[Ljava/io/File;
    .end local v8    # "i":I
    .end local v10    # "length":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;->mainHandler:Landroid/os/Handler;

    new-instance v15, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks$3;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v9}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks$3;-><init>(Lcom/squareup/leakcanary/internal/DisplayLeakActivity$LoadLeaks;Ljava/util/List;)V

    invoke-virtual {v14, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 516
    return-void

    .line 466
    .restart local v1    # "array":[Ljava/io/File;
    .restart local v8    # "i":I
    .restart local v10    # "length":I
    :cond_1
    aget-object v7, v1, v8

    .line 467
    .local v7, "heapDumpFile":Ljava/io/File;
    invoke-static {v7}, Lcom/squareup/leakcanary/internal/LeakCanaryInternals;->leakResultFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v13

    .line 468
    .local v13, "resultFile":Ljava/io/File;
    const/4 v4, 0x0

    .line 470
    .local v4, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 471
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .local v5, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v11, Ljava/io/ObjectInputStream;

    invoke-direct {v11, v5}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 472
    .local v11, "ois":Ljava/io/ObjectInputStream;
    invoke-virtual {v11}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/squareup/leakcanary/HeapDump;

    .line 473
    .local v6, "heapDump":Lcom/squareup/leakcanary/HeapDump;
    invoke-virtual {v11}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/squareup/leakcanary/AnalysisResult;

    .line 475
    .local v12, "result":Lcom/squareup/leakcanary/AnalysisResult;
    new-instance v14, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;

    invoke-direct {v14, v6, v12}, Lcom/squareup/leakcanary/internal/DisplayLeakActivity$Leak;-><init>(Lcom/squareup/leakcanary/HeapDump;Lcom/squareup/leakcanary/AnalysisResult;)V

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 485
    if-eqz v5, :cond_5

    .line 487
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    move-object v4, v5

    .line 492
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "heapDump":Lcom/squareup/leakcanary/HeapDump;
    .end local v11    # "ois":Ljava/io/ObjectInputStream;
    .end local v12    # "result":Lcom/squareup/leakcanary/AnalysisResult;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :cond_2
    :goto_1
    if-eqz v4, :cond_3

    .line 494
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    .line 465
    :cond_3
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 478
    :catch_0
    move-exception v14

    .line 485
    :goto_3
    if-eqz v4, :cond_2

    .line 487
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 489
    :catch_1
    move-exception v14

    goto :goto_1

    .line 479
    :catch_2
    move-exception v2

    .line 480
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    :goto_4
    :try_start_5
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 481
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    .line 482
    const-string v14, "DisplayLeakActivity"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Could not read result file, deleted result and heap dump:"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 485
    if-eqz v4, :cond_2

    .line 487
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 489
    :catch_3
    move-exception v14

    goto :goto_1

    .line 484
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catchall_0
    move-exception v14

    .line 485
    :goto_5
    if-eqz v4, :cond_4

    .line 487
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 491
    :cond_4
    :goto_6
    throw v14

    .line 489
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "heapDump":Lcom/squareup/leakcanary/HeapDump;
    .restart local v11    # "ois":Ljava/io/ObjectInputStream;
    .restart local v12    # "result":Lcom/squareup/leakcanary/AnalysisResult;
    :catch_4
    move-exception v14

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_1

    .end local v6    # "heapDump":Lcom/squareup/leakcanary/HeapDump;
    .end local v11    # "ois":Ljava/io/ObjectInputStream;
    .end local v12    # "result":Lcom/squareup/leakcanary/AnalysisResult;
    :catch_5
    move-exception v15

    goto :goto_6

    .line 496
    :catch_6
    move-exception v14

    goto :goto_2

    .line 484
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v14

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_5

    .line 479
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catch_7
    move-exception v2

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .line 478
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catch_8
    move-exception v14

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "heapDump":Lcom/squareup/leakcanary/HeapDump;
    .restart local v11    # "ois":Ljava/io/ObjectInputStream;
    .restart local v12    # "result":Lcom/squareup/leakcanary/AnalysisResult;
    :cond_5
    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_1
.end method
