.class public final Lcom/squareup/leakcanary/AndroidHeapDumper;
.super Ljava/lang/Object;
.source "AndroidHeapDumper.java"

# interfaces
.implements Lcom/squareup/leakcanary/HeapDumper;


# static fields
.field private static final HEAPDUMP_FILE:Ljava/lang/String; = "suspected_leak_heapdump.hprof"


# instance fields
.field final context:Landroid/content/Context;

.field final leakDirectoryProvider:Lcom/squareup/leakcanary/LeakDirectoryProvider;

.field private final mainHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/squareup/leakcanary/LeakDirectoryProvider;)V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p2, p0, Lcom/squareup/leakcanary/AndroidHeapDumper;->leakDirectoryProvider:Lcom/squareup/leakcanary/LeakDirectoryProvider;

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/leakcanary/AndroidHeapDumper;->context:Landroid/content/Context;

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/squareup/leakcanary/AndroidHeapDumper;->mainHandler:Landroid/os/Handler;

    .line 45
    return-void
.end method

.method private cancelToast(Landroid/widget/Toast;)V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/squareup/leakcanary/AndroidHeapDumper;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/squareup/leakcanary/AndroidHeapDumper$3;

    invoke-direct {v1, p0, p1}, Lcom/squareup/leakcanary/AndroidHeapDumper$3;-><init>(Lcom/squareup/leakcanary/AndroidHeapDumper;Landroid/widget/Toast;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 153
    return-void
.end method

.method private cancelToast(Lcom/squareup/leakcanary/internal/FutureResult;)V
    .locals 1

    .prologue
    .line 141
    :try_start_0
    invoke-virtual {p1}, Lcom/squareup/leakcanary/internal/FutureResult;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Toast;

    invoke-direct {p0, v0}, Lcom/squareup/leakcanary/AndroidHeapDumper;->cancelToast(Landroid/widget/Toast;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private showToast(Lcom/squareup/leakcanary/internal/FutureResult;)V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/squareup/leakcanary/AndroidHeapDumper;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/squareup/leakcanary/AndroidHeapDumper$2;

    invoke-direct {v1, p0, p1}, Lcom/squareup/leakcanary/AndroidHeapDumper$2;-><init>(Lcom/squareup/leakcanary/AndroidHeapDumper;Lcom/squareup/leakcanary/internal/FutureResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 137
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .prologue
    .line 100
    new-instance v0, Lcom/squareup/leakcanary/AndroidHeapDumper$1;

    invoke-direct {v0, p0}, Lcom/squareup/leakcanary/AndroidHeapDumper$1;-><init>(Lcom/squareup/leakcanary/AndroidHeapDumper;)V

    invoke-static {v0}, Lcom/squareup/leakcanary/internal/LeakCanaryInternals;->executeOnFileIoThread(Ljava/lang/Runnable;)V

    .line 116
    return-void
.end method

.method public dumpHeap()Ljava/io/File;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 48
    iget-object v0, p0, Lcom/squareup/leakcanary/AndroidHeapDumper;->leakDirectoryProvider:Lcom/squareup/leakcanary/LeakDirectoryProvider;

    invoke-interface {v0}, Lcom/squareup/leakcanary/LeakDirectoryProvider;->isLeakStorageWritable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    const-string v0, "Could not write to leak storage to dump heap."

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/squareup/leakcanary/CanaryLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    iget-object v0, p0, Lcom/squareup/leakcanary/AndroidHeapDumper;->leakDirectoryProvider:Lcom/squareup/leakcanary/LeakDirectoryProvider;

    invoke-interface {v0}, Lcom/squareup/leakcanary/LeakDirectoryProvider;->requestWritePermission()V

    .line 51
    sget-object v0, Lcom/squareup/leakcanary/AndroidHeapDumper;->NO_DUMP:Ljava/io/File;

    .line 91
    :goto_0
    return-object v0

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/squareup/leakcanary/AndroidHeapDumper;->getHeapDumpFile()Ljava/io/File;

    move-result-object v1

    .line 58
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 65
    if-nez v0, :cond_1

    .line 68
    sget-object v0, Lcom/squareup/leakcanary/AndroidHeapDumper;->NO_DUMP:Ljava/io/File;

    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    invoke-virtual {p0}, Lcom/squareup/leakcanary/AndroidHeapDumper;->cleanup()V

    .line 61
    const-string v1, "Could not check if heap dump file exists"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/squareup/leakcanary/CanaryLog;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    sget-object v0, Lcom/squareup/leakcanary/AndroidHeapDumper;->NO_DUMP:Ljava/io/File;

    goto :goto_0

    .line 71
    :cond_1
    new-instance v2, Lcom/squareup/leakcanary/internal/FutureResult;

    invoke-direct {v2}, Lcom/squareup/leakcanary/internal/FutureResult;-><init>()V

    .line 72
    invoke-direct {p0, v2}, Lcom/squareup/leakcanary/AndroidHeapDumper;->showToast(Lcom/squareup/leakcanary/internal/FutureResult;)V

    .line 74
    const-wide/16 v4, 0x5

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v0}, Lcom/squareup/leakcanary/internal/FutureResult;->wait(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 75
    const-string v0, "Did not dump heap, too much time waiting for Toast."

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/squareup/leakcanary/CanaryLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    invoke-direct {p0, v2}, Lcom/squareup/leakcanary/AndroidHeapDumper;->cancelToast(Lcom/squareup/leakcanary/internal/FutureResult;)V

    .line 77
    sget-object v0, Lcom/squareup/leakcanary/AndroidHeapDumper;->NO_DUMP:Ljava/io/File;

    goto :goto_0

    .line 80
    :cond_2
    invoke-virtual {v2}, Lcom/squareup/leakcanary/internal/FutureResult;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Toast;

    .line 82
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V

    .line 83
    invoke-direct {p0, v0}, Lcom/squareup/leakcanary/AndroidHeapDumper;->cancelToast(Landroid/widget/Toast;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 84
    goto :goto_0

    .line 85
    :catch_1
    move-exception v0

    .line 86
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 87
    invoke-virtual {p0}, Lcom/squareup/leakcanary/AndroidHeapDumper;->cleanup()V

    .line 88
    invoke-direct {p0, v2}, Lcom/squareup/leakcanary/AndroidHeapDumper;->cancelToast(Lcom/squareup/leakcanary/internal/FutureResult;)V

    .line 89
    const-string v1, "Could not perform heap dump"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/squareup/leakcanary/CanaryLog;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    sget-object v0, Lcom/squareup/leakcanary/AndroidHeapDumper;->NO_DUMP:Ljava/io/File;

    goto :goto_0
.end method

.method getHeapDumpFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 119
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/squareup/leakcanary/AndroidHeapDumper;->leakDirectoryProvider:Lcom/squareup/leakcanary/LeakDirectoryProvider;

    invoke-interface {v1}, Lcom/squareup/leakcanary/LeakDirectoryProvider;->leakDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "suspected_leak_heapdump.hprof"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method
