.class public Lcom/vivo/analysis/VivoCollectData;
.super Ljava/lang/Object;
.source "VivoCollectData.java"


# static fields
.field private static final CORE_POOL_SIZE:I = 0x5

.field private static final KEEP_ALIVE:I = 0x1

.field private static final MAXIMUM_POOL_SIZE:I = 0x80

.field private static final THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static final sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;


# instance fields
.field private TAG:Ljava/lang/String;

.field private cr:Landroid/content/ContentResolver;

.field private eIdUri:Landroid/net/Uri;

.field private mAnalysisdate:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDuration:Ljava/lang/String;

.field private mEndTime:Ljava/lang/String;

.field private mEventId:Ljava/lang/String;

.field private mEventStatus:Ljava/lang/String;

.field private mEventValue:Ljava/lang/String;

.field private mLabel:Ljava/lang/String;

.field private mLunchCount:Ljava/lang/String;

.field private mParamName:Ljava/lang/String;

.field private mParamValue:Ljava/lang/String;

.field private mStartTime:Ljava/lang/String;

.field private mVersion:I

.field private settingsUri:Landroid/net/Uri;

.field private url:Landroid/net/Uri;

.field private values:Landroid/content/ContentValues;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    .line 50
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 51
    const/16 v1, 0xa

    .line 50
    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/vivo/analysis/VivoCollectData;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 53
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 54
    const/4 v2, 0x5

    const/16 v3, 0x80

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 55
    sget-object v7, Lcom/vivo/analysis/VivoCollectData;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    .line 53
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v1, Lcom/vivo/analysis/VivoCollectData;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, "VivoCollectData"

    iput-object v0, p0, Lcom/vivo/analysis/VivoCollectData;->TAG:Ljava/lang/String;

    .line 27
    const-string v0, "content://com.bbk.iqoo.logsystemes/aaa"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/analysis/VivoCollectData;->url:Landroid/net/Uri;

    .line 28
    const-string v0, "content://com.bbk.iqoo.logsystemes/sss"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/analysis/VivoCollectData;->settingsUri:Landroid/net/Uri;

    .line 29
    const-string v0, "content://com.bbk.iqoo.logsystemes/eic"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/analysis/VivoCollectData;->eIdUri:Landroid/net/Uri;

    .line 30
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/vivo/analysis/VivoCollectData;->values:Landroid/content/ContentValues;

    .line 31
    iput-object v1, p0, Lcom/vivo/analysis/VivoCollectData;->cr:Landroid/content/ContentResolver;

    .line 32
    const-string v0, "event_id"

    iput-object v0, p0, Lcom/vivo/analysis/VivoCollectData;->mEventId:Ljava/lang/String;

    .line 33
    const-string v0, "event_status"

    iput-object v0, p0, Lcom/vivo/analysis/VivoCollectData;->mEventStatus:Ljava/lang/String;

    .line 34
    const-string v0, "event_value"

    iput-object v0, p0, Lcom/vivo/analysis/VivoCollectData;->mEventValue:Ljava/lang/String;

    .line 35
    const-string v0, "analysisdate"

    iput-object v0, p0, Lcom/vivo/analysis/VivoCollectData;->mAnalysisdate:Ljava/lang/String;

    .line 36
    const-string v0, "lunchcount"

    iput-object v0, p0, Lcom/vivo/analysis/VivoCollectData;->mLunchCount:Ljava/lang/String;

    .line 37
    const-string v0, "event_label"

    iput-object v0, p0, Lcom/vivo/analysis/VivoCollectData;->mLabel:Ljava/lang/String;

    .line 38
    const-string v0, "start_time"

    iput-object v0, p0, Lcom/vivo/analysis/VivoCollectData;->mStartTime:Ljava/lang/String;

    .line 39
    const-string v0, "end_time"

    iput-object v0, p0, Lcom/vivo/analysis/VivoCollectData;->mEndTime:Ljava/lang/String;

    .line 40
    const-string v0, "duration"

    iput-object v0, p0, Lcom/vivo/analysis/VivoCollectData;->mDuration:Ljava/lang/String;

    .line 41
    iput-object v1, p0, Lcom/vivo/analysis/VivoCollectData;->mContext:Landroid/content/Context;

    .line 42
    const-string v0, "param_name"

    iput-object v0, p0, Lcom/vivo/analysis/VivoCollectData;->mParamName:Ljava/lang/String;

    .line 43
    const-string v0, "param_value"

    iput-object v0, p0, Lcom/vivo/analysis/VivoCollectData;->mParamValue:Ljava/lang/String;

    .line 45
    const/4 v0, 0x4

    iput v0, p0, Lcom/vivo/analysis/VivoCollectData;->mVersion:I

    .line 58
    iput-object p1, p0, Lcom/vivo/analysis/VivoCollectData;->mContext:Landroid/content/Context;

    .line 59
    iget-object v0, p0, Lcom/vivo/analysis/VivoCollectData;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/analysis/VivoCollectData;->cr:Landroid/content/ContentResolver;

    .line 60
    return-void
.end method

.method static synthetic access$0(Lcom/vivo/analysis/VivoCollectData;)Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/vivo/analysis/VivoCollectData;->values:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vivo/analysis/VivoCollectData;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vivo/analysis/VivoCollectData;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$10(Lcom/vivo/analysis/VivoCollectData;)Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vivo/analysis/VivoCollectData;->cr:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$11(Lcom/vivo/analysis/VivoCollectData;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/vivo/analysis/VivoCollectData;->url:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$12(Lcom/vivo/analysis/VivoCollectData;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/vivo/analysis/VivoCollectData;->mParamName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$13(Lcom/vivo/analysis/VivoCollectData;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/vivo/analysis/VivoCollectData;->mParamValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$14(Lcom/vivo/analysis/VivoCollectData;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/vivo/analysis/VivoCollectData;->settingsUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vivo/analysis/VivoCollectData;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/vivo/analysis/VivoCollectData;->mEventId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/vivo/analysis/VivoCollectData;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/vivo/analysis/VivoCollectData;->mEventValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/vivo/analysis/VivoCollectData;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/vivo/analysis/VivoCollectData;->mStartTime:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/vivo/analysis/VivoCollectData;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vivo/analysis/VivoCollectData;->mEndTime:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/vivo/analysis/VivoCollectData;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/vivo/analysis/VivoCollectData;->mDuration:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/vivo/analysis/VivoCollectData;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/vivo/analysis/VivoCollectData;->mLunchCount:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/vivo/analysis/VivoCollectData;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/vivo/analysis/VivoCollectData;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Lcom/vivo/analysis/VivoCollectData;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vivo/analysis/VivoCollectData;->mAnalysisdate:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getCollectDataVersion()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/vivo/analysis/VivoCollectData;->mVersion:I

    return v0
.end method

.method public getControlInfo(Ljava/lang/String;)Z
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 77
    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/vivo/analysis/VivoCollectData;->cr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/vivo/analysis/VivoCollectData;->eIdUri:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/vivo/analysis/VivoCollectData;->mEventStatus:Ljava/lang/String;

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/vivo/analysis/VivoCollectData;->mEventId:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 81
    if-eqz v1, :cond_3

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 82
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 83
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_3

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-eqz v0, :cond_3

    move v0, v8

    .line 94
    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 95
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 98
    :cond_0
    :goto_1
    return v0

    .line 88
    :catch_0
    move-exception v0

    move-object v1, v7

    .line 90
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 91
    iget-object v2, p0, Lcom/vivo/analysis/VivoCollectData;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "e = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 94
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 95
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v0, v6

    goto :goto_1

    .line 93
    :catchall_0
    move-exception v0

    .line 94
    :goto_3
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 95
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 97
    :cond_1
    throw v0

    .line 93
    :catchall_1
    move-exception v0

    move-object v7, v1

    goto :goto_3

    .line 88
    :catch_1
    move-exception v0

    goto :goto_2

    :cond_2
    move v0, v6

    goto :goto_1

    :cond_3
    move v0, v6

    goto :goto_0
.end method

.method public writeData(Ljava/lang/String;Ljava/lang/String;JJJILjava/util/HashMap;)V
    .locals 13

    .prologue
    .line 67
    new-instance v0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;

    const/4 v12, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v12}, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;-><init>(Lcom/vivo/analysis/VivoCollectData;Ljava/lang/String;Ljava/lang/String;JJJILjava/util/HashMap;Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;)V

    .line 68
    sget-object v1, Lcom/vivo/analysis/VivoCollectData;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 69
    return-void
.end method

.method public writeData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 72
    new-instance v0, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;-><init>(Lcom/vivo/analysis/VivoCollectData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;)V

    .line 73
    sget-object v1, Lcom/vivo/analysis/VivoCollectData;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v5}, Lcom/vivo/analysis/VivoCollectData$InsertDataToSaveTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 74
    return-void
.end method
