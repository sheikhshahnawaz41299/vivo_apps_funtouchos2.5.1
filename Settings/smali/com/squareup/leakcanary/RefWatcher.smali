.class public final Lcom/squareup/leakcanary/RefWatcher;
.super Ljava/lang/Object;
.source "RefWatcher.java"


# static fields
.field public static final DISABLED:Lcom/squareup/leakcanary/RefWatcher;


# instance fields
.field private final debuggerControl:Lcom/squareup/leakcanary/DebuggerControl;

.field private final excludedRefs:Lcom/squareup/leakcanary/ExcludedRefs;

.field private final gcTrigger:Lcom/squareup/leakcanary/GcTrigger;

.field private final heapDumper:Lcom/squareup/leakcanary/HeapDumper;

.field private final heapdumpListener:Lcom/squareup/leakcanary/HeapDump$Listener;

.field private final queue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final retainedKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final watchExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 27
    new-instance v0, Lcom/squareup/leakcanary/RefWatcher;

    new-instance v1, Lcom/squareup/leakcanary/RefWatcher$1;

    invoke-direct {v1}, Lcom/squareup/leakcanary/RefWatcher$1;-><init>()V

    .line 31
    new-instance v2, Lcom/squareup/leakcanary/RefWatcher$2;

    invoke-direct {v2}, Lcom/squareup/leakcanary/RefWatcher$2;-><init>()V

    .line 36
    sget-object v3, Lcom/squareup/leakcanary/GcTrigger;->DEFAULT:Lcom/squareup/leakcanary/GcTrigger;

    new-instance v4, Lcom/squareup/leakcanary/RefWatcher$3;

    invoke-direct {v4}, Lcom/squareup/leakcanary/RefWatcher$3;-><init>()V

    .line 41
    new-instance v5, Lcom/squareup/leakcanary/RefWatcher$4;

    invoke-direct {v5}, Lcom/squareup/leakcanary/RefWatcher$4;-><init>()V

    .line 45
    new-instance v6, Lcom/squareup/leakcanary/ExcludedRefs$Builder;

    invoke-direct {v6}, Lcom/squareup/leakcanary/ExcludedRefs$Builder;-><init>()V

    invoke-virtual {v6}, Lcom/squareup/leakcanary/ExcludedRefs$Builder;->build()Lcom/squareup/leakcanary/ExcludedRefs;

    move-result-object v6

    .line 27
    invoke-direct/range {v0 .. v6}, Lcom/squareup/leakcanary/RefWatcher;-><init>(Ljava/util/concurrent/Executor;Lcom/squareup/leakcanary/DebuggerControl;Lcom/squareup/leakcanary/GcTrigger;Lcom/squareup/leakcanary/HeapDumper;Lcom/squareup/leakcanary/HeapDump$Listener;Lcom/squareup/leakcanary/ExcludedRefs;)V

    sput-object v0, Lcom/squareup/leakcanary/RefWatcher;->DISABLED:Lcom/squareup/leakcanary/RefWatcher;

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/squareup/leakcanary/DebuggerControl;Lcom/squareup/leakcanary/GcTrigger;Lcom/squareup/leakcanary/HeapDumper;Lcom/squareup/leakcanary/HeapDump$Listener;Lcom/squareup/leakcanary/ExcludedRefs;)V
    .locals 1
    .param p1, "watchExecutor"    # Ljava/util/concurrent/Executor;
    .param p2, "debuggerControl"    # Lcom/squareup/leakcanary/DebuggerControl;
    .param p3, "gcTrigger"    # Lcom/squareup/leakcanary/GcTrigger;
    .param p4, "heapDumper"    # Lcom/squareup/leakcanary/HeapDumper;
    .param p5, "heapdumpListener"    # Lcom/squareup/leakcanary/HeapDump$Listener;
    .param p6, "excludedRefs"    # Lcom/squareup/leakcanary/ExcludedRefs;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, "watchExecutor"

    invoke-static {p1, v0}, Lcom/squareup/leakcanary/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/squareup/leakcanary/RefWatcher;->watchExecutor:Ljava/util/concurrent/Executor;

    .line 51
    const-string v0, "debuggerControl"

    invoke-static {p2, v0}, Lcom/squareup/leakcanary/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/leakcanary/DebuggerControl;

    iput-object v0, p0, Lcom/squareup/leakcanary/RefWatcher;->debuggerControl:Lcom/squareup/leakcanary/DebuggerControl;

    .line 52
    const-string v0, "gcTrigger"

    invoke-static {p3, v0}, Lcom/squareup/leakcanary/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/leakcanary/GcTrigger;

    iput-object v0, p0, Lcom/squareup/leakcanary/RefWatcher;->gcTrigger:Lcom/squareup/leakcanary/GcTrigger;

    .line 53
    const-string v0, "heapDumper"

    invoke-static {p4, v0}, Lcom/squareup/leakcanary/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/leakcanary/HeapDumper;

    iput-object v0, p0, Lcom/squareup/leakcanary/RefWatcher;->heapDumper:Lcom/squareup/leakcanary/HeapDumper;

    .line 54
    const-string v0, "heapdumpListener"

    invoke-static {p5, v0}, Lcom/squareup/leakcanary/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/leakcanary/HeapDump$Listener;

    iput-object v0, p0, Lcom/squareup/leakcanary/RefWatcher;->heapdumpListener:Lcom/squareup/leakcanary/HeapDump$Listener;

    .line 55
    const-string v0, "excludedRefs"

    invoke-static {p6, v0}, Lcom/squareup/leakcanary/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/leakcanary/ExcludedRefs;

    iput-object v0, p0, Lcom/squareup/leakcanary/RefWatcher;->excludedRefs:Lcom/squareup/leakcanary/ExcludedRefs;

    .line 56
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/squareup/leakcanary/RefWatcher;->retainedKeys:Ljava/util/Set;

    .line 57
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/squareup/leakcanary/RefWatcher;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 58
    return-void
.end method

.method private gone(Lcom/squareup/leakcanary/KeyedWeakReference;)Z
    .locals 2
    .param p1, "reference"    # Lcom/squareup/leakcanary/KeyedWeakReference;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/squareup/leakcanary/RefWatcher;->retainedKeys:Ljava/util/Set;

    iget-object v1, p1, Lcom/squareup/leakcanary/KeyedWeakReference;->key:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private removeWeaklyReachableReferences()V
    .locals 3

    .prologue
    .line 117
    :goto_0
    iget-object v1, p0, Lcom/squareup/leakcanary/RefWatcher;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lcom/squareup/leakcanary/KeyedWeakReference;

    .local v0, "ref":Lcom/squareup/leakcanary/KeyedWeakReference;
    if-nez v0, :cond_0

    .line 120
    return-void

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/squareup/leakcanary/RefWatcher;->retainedKeys:Ljava/util/Set;

    iget-object v2, v0, Lcom/squareup/leakcanary/KeyedWeakReference;->key:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method ensureGone(Lcom/squareup/leakcanary/KeyedWeakReference;J)V
    .locals 18
    .param p1, "reference"    # Lcom/squareup/leakcanary/KeyedWeakReference;
    .param p2, "watchStartNanoTime"    # J

    .prologue
    .line 90
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    .line 91
    .local v14, "gcStartNanoTime":J
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sub-long v6, v14, p2

    invoke-virtual {v2, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    .line 92
    .local v8, "watchDurationMs":J
    invoke-direct/range {p0 .. p0}, Lcom/squareup/leakcanary/RefWatcher;->removeWeaklyReachableReferences()V

    .line 93
    invoke-direct/range {p0 .. p1}, Lcom/squareup/leakcanary/RefWatcher;->gone(Lcom/squareup/leakcanary/KeyedWeakReference;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/squareup/leakcanary/RefWatcher;->debuggerControl:Lcom/squareup/leakcanary/DebuggerControl;

    invoke-interface {v2}, Lcom/squareup/leakcanary/DebuggerControl;->isDebuggerAttached()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/squareup/leakcanary/RefWatcher;->gcTrigger:Lcom/squareup/leakcanary/GcTrigger;

    invoke-interface {v2}, Lcom/squareup/leakcanary/GcTrigger;->runGc()V

    .line 97
    invoke-direct/range {p0 .. p0}, Lcom/squareup/leakcanary/RefWatcher;->removeWeaklyReachableReferences()V

    .line 98
    invoke-direct/range {p0 .. p1}, Lcom/squareup/leakcanary/RefWatcher;->gone(Lcom/squareup/leakcanary/KeyedWeakReference;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 99
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v16

    .line 100
    .local v16, "startDumpHeap":J
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sub-long v6, v16, v14

    invoke-virtual {v2, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v10

    .line 101
    .local v10, "gcDurationMs":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/squareup/leakcanary/RefWatcher;->heapDumper:Lcom/squareup/leakcanary/HeapDumper;

    invoke-interface {v2}, Lcom/squareup/leakcanary/HeapDumper;->dumpHeap()Ljava/io/File;

    move-result-object v4

    .line 102
    .local v4, "heapDumpFile":Ljava/io/File;
    sget-object v2, Lcom/squareup/leakcanary/HeapDumper;->NO_DUMP:Ljava/io/File;

    if-eq v4, v2, :cond_0

    .line 105
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v6, v6, v16

    invoke-virtual {v2, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v12

    .line 106
    .local v12, "heapDumpDurationMs":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/squareup/leakcanary/RefWatcher;->heapdumpListener:Lcom/squareup/leakcanary/HeapDump$Listener;

    new-instance v3, Lcom/squareup/leakcanary/HeapDump;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/squareup/leakcanary/KeyedWeakReference;->key:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/squareup/leakcanary/KeyedWeakReference;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/squareup/leakcanary/RefWatcher;->excludedRefs:Lcom/squareup/leakcanary/ExcludedRefs;

    .line 107
    invoke-direct/range {v3 .. v13}, Lcom/squareup/leakcanary/HeapDump;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/squareup/leakcanary/ExcludedRefs;JJJ)V

    .line 106
    invoke-interface {v2, v3}, Lcom/squareup/leakcanary/HeapDump$Listener;->analyze(Lcom/squareup/leakcanary/HeapDump;)V

    goto :goto_0
.end method

.method public watch(Ljava/lang/Object;)V
    .locals 3
    .param p1, "watchedReference"    # Ljava/lang/Object;

    .prologue
    .line 61
    const-string v1, "vivo.leakcanary.test"

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/squareup/leakcanary/LeakCanary;->getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "yes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 62
    .local v0, "isDebugMemory":Z
    if-eqz v0, :cond_0

    .line 63
    const-string v1, ""

    invoke-virtual {p0, p1, v1}, Lcom/squareup/leakcanary/RefWatcher;->watch(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    :cond_0
    return-void
.end method

.method public watch(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 7
    .param p1, "watchedReference"    # Ljava/lang/Object;
    .param p2, "referenceName"    # Ljava/lang/String;

    .prologue
    .line 68
    const-string v3, "vivo.leakcanary.test"

    const-string v6, ""

    invoke-static {v3, v6}, Lcom/squareup/leakcanary/LeakCanary;->getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "yes"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 69
    .local v0, "isDebugMemory":Z
    if-eqz v0, :cond_0

    .line 70
    const-string v3, "watchedReference"

    invoke-static {p1, v3}, Lcom/squareup/leakcanary/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 71
    const-string v3, "referenceName"

    invoke-static {p2, v3}, Lcom/squareup/leakcanary/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 72
    iget-object v3, p0, Lcom/squareup/leakcanary/RefWatcher;->debuggerControl:Lcom/squareup/leakcanary/DebuggerControl;

    invoke-interface {v3}, Lcom/squareup/leakcanary/DebuggerControl;->isDebuggerAttached()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 76
    .local v4, "watchStartNanoTime":J
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/squareup/leakcanary/RefWatcher;->retainedKeys:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v2, Lcom/squareup/leakcanary/KeyedWeakReference;

    .line 79
    iget-object v3, p0, Lcom/squareup/leakcanary/RefWatcher;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 78
    invoke-direct {v2, p1, v1, p2, v3}, Lcom/squareup/leakcanary/KeyedWeakReference;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ref/ReferenceQueue;)V

    .line 80
    .local v2, "reference":Lcom/squareup/leakcanary/KeyedWeakReference;
    iget-object v3, p0, Lcom/squareup/leakcanary/RefWatcher;->watchExecutor:Ljava/util/concurrent/Executor;

    new-instance v6, Lcom/squareup/leakcanary/RefWatcher$5;

    invoke-direct {v6, p0, v2, v4, v5}, Lcom/squareup/leakcanary/RefWatcher$5;-><init>(Lcom/squareup/leakcanary/RefWatcher;Lcom/squareup/leakcanary/KeyedWeakReference;J)V

    invoke-interface {v3, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
