.class public final Lcom/squareup/leakcanary/AndroidHeapDumper;
.super Ljava/lang/Object;
.source "AndroidHeapDumper.java"

# interfaces
.implements Lcom/squareup/leakcanary/HeapDumper;


# static fields
.field private static final TAG:Ljava/lang/String; = "AndroidHeapDumper"


# instance fields
.field private final context:Landroid/content/Context;

.field private final mainHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/leakcanary/AndroidHeapDumper;->context:Landroid/content/Context;

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/squareup/leakcanary/AndroidHeapDumper;->mainHandler:Landroid/os/Handler;

    .line 29
    return-void
.end method

.method static synthetic access$0(Lcom/squareup/leakcanary/AndroidHeapDumper;)Ljava/io/File;
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/squareup/leakcanary/AndroidHeapDumper;->getHeapDumpFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/squareup/leakcanary/AndroidHeapDumper;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/squareup/leakcanary/AndroidHeapDumper;->context:Landroid/content/Context;

    return-object v0
.end method

.method private cancelToast(Landroid/widget/Toast;)V
    .locals 2
    .param p1, "toast"    # Landroid/widget/Toast;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/squareup/leakcanary/AndroidHeapDumper;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/squareup/leakcanary/AndroidHeapDumper$3;

    invoke-direct {v1, p0, p1}, Lcom/squareup/leakcanary/AndroidHeapDumper$3;-><init>(Lcom/squareup/leakcanary/AndroidHeapDumper;Landroid/widget/Toast;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 115
    return-void
.end method

.method private cancelToast(Lcom/squareup/leakcanary/internal/FutureResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/leakcanary/internal/FutureResult",
            "<",
            "Landroid/widget/Toast;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, "waitingForToast":Lcom/squareup/leakcanary/internal/FutureResult;, "Lcom/squareup/leakcanary/internal/FutureResult<Landroid/widget/Toast;>;"
    :try_start_0
    invoke-virtual {p1}, Lcom/squareup/leakcanary/internal/FutureResult;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Toast;

    invoke-direct {p0, v0}, Lcom/squareup/leakcanary/AndroidHeapDumper;->cancelToast(Landroid/widget/Toast;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getHeapDumpFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 88
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/squareup/leakcanary/internal/LeakCanaryInternals;->storageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "suspected_leak_heapdump.hprof"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private showToast(Lcom/squareup/leakcanary/internal/FutureResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/leakcanary/internal/FutureResult",
            "<",
            "Landroid/widget/Toast;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, "waitingForToast":Lcom/squareup/leakcanary/internal/FutureResult;, "Lcom/squareup/leakcanary/internal/FutureResult<Landroid/widget/Toast;>;"
    iget-object v0, p0, Lcom/squareup/leakcanary/AndroidHeapDumper;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/squareup/leakcanary/AndroidHeapDumper$2;

    invoke-direct {v1, p0, p1}, Lcom/squareup/leakcanary/AndroidHeapDumper$2;-><init>(Lcom/squareup/leakcanary/AndroidHeapDumper;Lcom/squareup/leakcanary/internal/FutureResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 106
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Lcom/squareup/leakcanary/AndroidHeapDumper$1;

    invoke-direct {v0, p0}, Lcom/squareup/leakcanary/AndroidHeapDumper$1;-><init>(Lcom/squareup/leakcanary/AndroidHeapDumper;)V

    invoke-static {v0}, Lcom/squareup/leakcanary/internal/LeakCanaryInternals;->executeOnFileIoThread(Ljava/lang/Runnable;)V

    .line 85
    return-void
.end method

.method public dumpHeap()Ljava/io/File;
    .locals 7

    .prologue
    .line 33
    invoke-static {}, Lcom/squareup/leakcanary/internal/LeakCanaryInternals;->isExternalStorageWritable()Z

    move-result v4

    if-nez v4, :cond_0

    .line 34
    const-string v4, "AndroidHeapDumper"

    const-string v5, "Could not dump heap, external storage not mounted."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_0
    invoke-direct {p0}, Lcom/squareup/leakcanary/AndroidHeapDumper;->getHeapDumpFile()Ljava/io/File;

    move-result-object v1

    .line 37
    .local v1, "heapDumpFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 38
    const-string v4, "AndroidHeapDumper"

    const-string v5, "Could not dump heap, previous analysis still is in progress."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    sget-object v1, Lcom/squareup/leakcanary/AndroidHeapDumper;->NO_DUMP:Ljava/io/File;

    .line 59
    .end local v1    # "heapDumpFile":Ljava/io/File;
    :goto_0
    return-object v1

    .line 41
    .restart local v1    # "heapDumpFile":Ljava/io/File;
    :cond_1
    new-instance v3, Lcom/squareup/leakcanary/internal/FutureResult;

    invoke-direct {v3}, Lcom/squareup/leakcanary/internal/FutureResult;-><init>()V

    .line 42
    .local v3, "waitingForToast":Lcom/squareup/leakcanary/internal/FutureResult;, "Lcom/squareup/leakcanary/internal/FutureResult<Landroid/widget/Toast;>;"
    invoke-direct {p0, v3}, Lcom/squareup/leakcanary/AndroidHeapDumper;->showToast(Lcom/squareup/leakcanary/internal/FutureResult;)V

    .line 43
    const-wide/16 v4, 0x5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Lcom/squareup/leakcanary/internal/FutureResult;->wait(JLjava/util/concurrent/TimeUnit;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 44
    const-string v4, "AndroidHeapDumper"

    const-string v5, "Did not dump heap, too much time waiting for Toast."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-direct {p0, v3}, Lcom/squareup/leakcanary/AndroidHeapDumper;->cancelToast(Lcom/squareup/leakcanary/internal/FutureResult;)V

    .line 46
    sget-object v1, Lcom/squareup/leakcanary/AndroidHeapDumper;->NO_DUMP:Ljava/io/File;

    goto :goto_0

    .line 48
    :cond_2
    invoke-virtual {v3}, Lcom/squareup/leakcanary/internal/FutureResult;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/Toast;

    .line 50
    .local v2, "toast":Landroid/widget/Toast;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V

    .line 51
    invoke-direct {p0, v2}, Lcom/squareup/leakcanary/AndroidHeapDumper;->cancelToast(Landroid/widget/Toast;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 56
    invoke-virtual {p0}, Lcom/squareup/leakcanary/AndroidHeapDumper;->cleanup()V

    .line 57
    invoke-direct {p0, v3}, Lcom/squareup/leakcanary/AndroidHeapDumper;->cancelToast(Lcom/squareup/leakcanary/internal/FutureResult;)V

    .line 58
    const-string v4, "AndroidHeapDumper"

    const-string v5, "Could not perform heap dump"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    sget-object v1, Lcom/squareup/leakcanary/AndroidHeapDumper;->NO_DUMP:Ljava/io/File;

    goto :goto_0
.end method
