.class public final Lcom/squareup/leakcanary/AndroidWatchExecutor;
.super Ljava/lang/Object;
.source "AndroidWatchExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field private static final DELAY_MILLIS:I = 0x1388

.field static final LEAK_CANARY_THREAD_NAME:Ljava/lang/String; = "LeakCanary-Heap-Dump"


# instance fields
.field private final backgroundHandler:Landroid/os/Handler;

.field private final mainHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/squareup/leakcanary/AndroidWatchExecutor;->mainHandler:Landroid/os/Handler;

    .line 22
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "LeakCanary-Heap-Dump"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 23
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 24
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/squareup/leakcanary/AndroidWatchExecutor;->backgroundHandler:Landroid/os/Handler;

    .line 25
    return-void
.end method

.method static synthetic access$0(Lcom/squareup/leakcanary/AndroidWatchExecutor;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/squareup/leakcanary/AndroidWatchExecutor;->executeDelayedAfterIdleUnsafe(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$1(Lcom/squareup/leakcanary/AndroidWatchExecutor;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/squareup/leakcanary/AndroidWatchExecutor;->backgroundHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private executeDelayedAfterIdleUnsafe(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 47
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    new-instance v1, Lcom/squareup/leakcanary/AndroidWatchExecutor$2;

    invoke-direct {v1, p0, p1}, Lcom/squareup/leakcanary/AndroidWatchExecutor$2;-><init>(Lcom/squareup/leakcanary/AndroidWatchExecutor;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 53
    return-void
.end method

.method private isOnMainThread()Z
    .locals 2

    .prologue
    .line 43
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "command"    # Ljava/lang/Runnable;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/squareup/leakcanary/AndroidWatchExecutor;->isOnMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    invoke-direct {p0, p1}, Lcom/squareup/leakcanary/AndroidWatchExecutor;->executeDelayedAfterIdleUnsafe(Ljava/lang/Runnable;)V

    .line 40
    :goto_0
    return-void

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/squareup/leakcanary/AndroidWatchExecutor;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/squareup/leakcanary/AndroidWatchExecutor$1;

    invoke-direct {v1, p0, p1}, Lcom/squareup/leakcanary/AndroidWatchExecutor$1;-><init>(Lcom/squareup/leakcanary/AndroidWatchExecutor;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
