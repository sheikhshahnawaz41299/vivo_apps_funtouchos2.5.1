.class final Lcom/squareup/leakcanary/ShortestPathFinder;
.super Ljava/lang/Object;
.source "ShortestPathFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/leakcanary/ShortestPathFinder$Result;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$squareup$haha$perflib$RootType:[I


# instance fields
.field private canIgnoreStrings:Z

.field private final excludedRefs:Lcom/squareup/leakcanary/ExcludedRefs;

.field private final toVisitIfNoPathQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/squareup/leakcanary/LeakNode;",
            ">;"
        }
    .end annotation
.end field

.field private final toVisitIfNoPathSet:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/squareup/haha/perflib/Instance;",
            ">;"
        }
    .end annotation
.end field

.field private final toVisitQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/squareup/leakcanary/LeakNode;",
            ">;"
        }
    .end annotation
.end field

.field private final toVisitSet:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/squareup/haha/perflib/Instance;",
            ">;"
        }
    .end annotation
.end field

.field private final visitedSet:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/squareup/haha/perflib/Instance;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic $SWITCH_TABLE$com$squareup$haha$perflib$RootType()[I
    .locals 3

    .prologue
    .line 50
    sget-object v0, Lcom/squareup/leakcanary/ShortestPathFinder;->$SWITCH_TABLE$com$squareup$haha$perflib$RootType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/squareup/haha/perflib/RootType;->values()[Lcom/squareup/haha/perflib/RootType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/squareup/haha/perflib/RootType;->BUSY_MONITOR:Lcom/squareup/haha/perflib/RootType;

    invoke-virtual {v1}, Lcom/squareup/haha/perflib/RootType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_10

    :goto_1
    :try_start_1
    sget-object v1, Lcom/squareup/haha/perflib/RootType;->DEBUGGER:Lcom/squareup/haha/perflib/RootType;

    invoke-virtual {v1}, Lcom/squareup/haha/perflib/RootType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_f

    :goto_2
    :try_start_2
    sget-object v1, Lcom/squareup/haha/perflib/RootType;->FINALIZING:Lcom/squareup/haha/perflib/RootType;

    invoke-virtual {v1}, Lcom/squareup/haha/perflib/RootType;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_e

    :goto_3
    :try_start_3
    sget-object v1, Lcom/squareup/haha/perflib/RootType;->INTERNED_STRING:Lcom/squareup/haha/perflib/RootType;

    invoke-virtual {v1}, Lcom/squareup/haha/perflib/RootType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_d

    :goto_4
    :try_start_4
    sget-object v1, Lcom/squareup/haha/perflib/RootType;->INVALID_TYPE:Lcom/squareup/haha/perflib/RootType;

    invoke-virtual {v1}, Lcom/squareup/haha/perflib/RootType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_c

    :goto_5
    :try_start_5
    sget-object v1, Lcom/squareup/haha/perflib/RootType;->JAVA_LOCAL:Lcom/squareup/haha/perflib/RootType;

    invoke-virtual {v1}, Lcom/squareup/haha/perflib/RootType;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_b

    :goto_6
    :try_start_6
    sget-object v1, Lcom/squareup/haha/perflib/RootType;->JAVA_STATIC:Lcom/squareup/haha/perflib/RootType;

    invoke-virtual {v1}, Lcom/squareup/haha/perflib/RootType;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_a

    :goto_7
    :try_start_7
    sget-object v1, Lcom/squareup/haha/perflib/RootType;->NATIVE_LOCAL:Lcom/squareup/haha/perflib/RootType;

    invoke-virtual {v1}, Lcom/squareup/haha/perflib/RootType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_9

    :goto_8
    :try_start_8
    sget-object v1, Lcom/squareup/haha/perflib/RootType;->NATIVE_MONITOR:Lcom/squareup/haha/perflib/RootType;

    invoke-virtual {v1}, Lcom/squareup/haha/perflib/RootType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :goto_9
    :try_start_9
    sget-object v1, Lcom/squareup/haha/perflib/RootType;->NATIVE_STACK:Lcom/squareup/haha/perflib/RootType;

    invoke-virtual {v1}, Lcom/squareup/haha/perflib/RootType;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_7

    :goto_a
    :try_start_a
    sget-object v1, Lcom/squareup/haha/perflib/RootType;->NATIVE_STATIC:Lcom/squareup/haha/perflib/RootType;

    invoke-virtual {v1}, Lcom/squareup/haha/perflib/RootType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_6

    :goto_b
    :try_start_b
    sget-object v1, Lcom/squareup/haha/perflib/RootType;->REFERENCE_CLEANUP:Lcom/squareup/haha/perflib/RootType;

    invoke-virtual {v1}, Lcom/squareup/haha/perflib/RootType;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_5

    :goto_c
    :try_start_c
    sget-object v1, Lcom/squareup/haha/perflib/RootType;->SYSTEM_CLASS:Lcom/squareup/haha/perflib/RootType;

    invoke-virtual {v1}, Lcom/squareup/haha/perflib/RootType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_4

    :goto_d
    :try_start_d
    sget-object v1, Lcom/squareup/haha/perflib/RootType;->THREAD_BLOCK:Lcom/squareup/haha/perflib/RootType;

    invoke-virtual {v1}, Lcom/squareup/haha/perflib/RootType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_3

    :goto_e
    :try_start_e
    sget-object v1, Lcom/squareup/haha/perflib/RootType;->UNKNOWN:Lcom/squareup/haha/perflib/RootType;

    invoke-virtual {v1}, Lcom/squareup/haha/perflib/RootType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_2

    :goto_f
    :try_start_f
    sget-object v1, Lcom/squareup/haha/perflib/RootType;->UNREACHABLE:Lcom/squareup/haha/perflib/RootType;

    invoke-virtual {v1}, Lcom/squareup/haha/perflib/RootType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_1

    :goto_10
    :try_start_10
    sget-object v1, Lcom/squareup/haha/perflib/RootType;->VM_INTERNAL:Lcom/squareup/haha/perflib/RootType;

    invoke-virtual {v1}, Lcom/squareup/haha/perflib/RootType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_0

    :goto_11
    sput-object v0, Lcom/squareup/leakcanary/ShortestPathFinder;->$SWITCH_TABLE$com$squareup$haha$perflib$RootType:[I

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_11

    :catch_1
    move-exception v1

    goto :goto_10

    :catch_2
    move-exception v1

    goto :goto_f

    :catch_3
    move-exception v1

    goto :goto_e

    :catch_4
    move-exception v1

    goto :goto_d

    :catch_5
    move-exception v1

    goto :goto_c

    :catch_6
    move-exception v1

    goto :goto_b

    :catch_7
    move-exception v1

    goto :goto_a

    :catch_8
    move-exception v1

    goto :goto_9

    :catch_9
    move-exception v1

    goto :goto_8

    :catch_a
    move-exception v1

    goto :goto_7

    :catch_b
    move-exception v1

    goto/16 :goto_6

    :catch_c
    move-exception v1

    goto/16 :goto_5

    :catch_d
    move-exception v1

    goto/16 :goto_4

    :catch_e
    move-exception v1

    goto/16 :goto_3

    :catch_f
    move-exception v1

    goto/16 :goto_2

    :catch_10
    move-exception v1

    goto/16 :goto_1
.end method

.method constructor <init>(Lcom/squareup/leakcanary/ExcludedRefs;)V
    .locals 1
    .param p1, "excludedRefs"    # Lcom/squareup/leakcanary/ExcludedRefs;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->excludedRefs:Lcom/squareup/leakcanary/ExcludedRefs;

    .line 62
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->toVisitQueue:Ljava/util/Queue;

    .line 63
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->toVisitIfNoPathQueue:Ljava/util/Queue;

    .line 64
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->toVisitSet:Ljava/util/LinkedHashSet;

    .line 65
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->toVisitIfNoPathSet:Ljava/util/LinkedHashSet;

    .line 66
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->visitedSet:Ljava/util/LinkedHashSet;

    .line 67
    return-void
.end method

.method private checkSeen(Lcom/squareup/leakcanary/LeakNode;)Z
    .locals 2
    .param p1, "node"    # Lcom/squareup/leakcanary/LeakNode;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->visitedSet:Ljava/util/LinkedHashSet;

    iget-object v1, p1, Lcom/squareup/leakcanary/LeakNode;->instance:Lcom/squareup/haha/perflib/Instance;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private clearState()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->toVisitQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 123
    iget-object v0, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->toVisitIfNoPathQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 124
    iget-object v0, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->toVisitSet:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    .line 125
    iget-object v0, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->toVisitIfNoPathSet:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    .line 126
    iget-object v0, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->visitedSet:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    .line 127
    return-void
.end method

.method private enqueue(ZLcom/squareup/leakcanary/LeakNode;Lcom/squareup/haha/perflib/Instance;Ljava/lang/String;Lcom/squareup/leakcanary/LeakTraceElement$Type;)V
    .locals 2
    .param p1, "visitNow"    # Z
    .param p2, "parent"    # Lcom/squareup/leakcanary/LeakNode;
    .param p3, "child"    # Lcom/squareup/haha/perflib/Instance;
    .param p4, "referenceName"    # Ljava/lang/String;
    .param p5, "referenceType"    # Lcom/squareup/leakcanary/LeakTraceElement$Type;

    .prologue
    .line 320
    if-nez p3, :cond_1

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    invoke-static {p3}, Lcom/squareup/leakcanary/HahaHelper;->isPrimitiveOrWrapperArray(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p3}, Lcom/squareup/leakcanary/HahaHelper;->isPrimitiveWrapper(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 327
    iget-object v1, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->toVisitSet:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, p3}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 330
    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->toVisitIfNoPathSet:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, p3}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 333
    :cond_2
    iget-boolean v1, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->canIgnoreStrings:Z

    if-eqz v1, :cond_3

    invoke-direct {p0, p3}, Lcom/squareup/leakcanary/ShortestPathFinder;->isString(Lcom/squareup/haha/perflib/Instance;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 336
    :cond_3
    iget-object v1, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->visitedSet:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, p3}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 339
    new-instance v0, Lcom/squareup/leakcanary/LeakNode;

    invoke-direct {v0, p3, p2, p4, p5}, Lcom/squareup/leakcanary/LeakNode;-><init>(Lcom/squareup/haha/perflib/Instance;Lcom/squareup/leakcanary/LeakNode;Ljava/lang/String;Lcom/squareup/leakcanary/LeakTraceElement$Type;)V

    .line 340
    .local v0, "childNode":Lcom/squareup/leakcanary/LeakNode;
    if-eqz p1, :cond_4

    .line 341
    iget-object v1, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->toVisitSet:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, p3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 342
    iget-object v1, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->toVisitQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 344
    :cond_4
    iget-object v1, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->toVisitIfNoPathSet:Ljava/util/LinkedHashSet;

    invoke-virtual {v1, p3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 345
    iget-object v1, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->toVisitIfNoPathQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private enqueueGcRoots(Lcom/squareup/haha/perflib/Snapshot;)V
    .locals 11
    .param p1, "snapshot"    # Lcom/squareup/haha/perflib/Snapshot;

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 130
    invoke-virtual {p1}, Lcom/squareup/haha/perflib/Snapshot;->getGCRoots()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    :pswitch_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 170
    return-void

    .line 130
    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/squareup/haha/perflib/RootObj;

    .line 131
    .local v3, "rootObj":Lcom/squareup/haha/perflib/RootObj;
    invoke-static {}, Lcom/squareup/leakcanary/ShortestPathFinder;->$SWITCH_TABLE$com$squareup$haha$perflib$RootType()[I

    move-result-object v0

    invoke-virtual {v3}, Lcom/squareup/haha/perflib/RootObj;->getRootType()Lcom/squareup/haha/perflib/RootType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/haha/perflib/RootType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 167
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown root type:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/squareup/haha/perflib/RootObj;->getRootType()Lcom/squareup/haha/perflib/RootType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :pswitch_1
    invoke-static {v3}, Lcom/squareup/haha/perflib/HahaSpy;->allocatingThread(Lcom/squareup/haha/perflib/Instance;)Lcom/squareup/haha/perflib/Instance;

    move-result-object v7

    .line 134
    .local v7, "thread":Lcom/squareup/haha/perflib/Instance;
    invoke-static {v7}, Lcom/squareup/leakcanary/HahaHelper;->threadName(Lcom/squareup/haha/perflib/Instance;)Ljava/lang/String;

    move-result-object v8

    .line 135
    .local v8, "threadName":Ljava/lang/String;
    iget-object v0, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->excludedRefs:Lcom/squareup/leakcanary/ExcludedRefs;

    iget-object v0, v0, Lcom/squareup/leakcanary/ExcludedRefs;->threadNames:Ljava/util/Map;

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    .line 136
    .local v6, "alwaysIgnore":Ljava/lang/Boolean;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    :cond_2
    if-nez v6, :cond_3

    move v1, v9

    :goto_1
    move-object v0, p0

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/squareup/leakcanary/ShortestPathFinder;->enqueue(ZLcom/squareup/leakcanary/LeakNode;Lcom/squareup/haha/perflib/Instance;Ljava/lang/String;Lcom/squareup/leakcanary/LeakTraceElement$Type;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .end local v6    # "alwaysIgnore":Ljava/lang/Boolean;
    .end local v7    # "thread":Lcom/squareup/haha/perflib/Instance;
    .end local v8    # "threadName":Ljava/lang/String;
    :pswitch_2
    move-object v0, p0

    move v1, v9

    move-object v4, v2

    move-object v5, v2

    .line 164
    invoke-direct/range {v0 .. v5}, Lcom/squareup/leakcanary/ShortestPathFinder;->enqueue(ZLcom/squareup/leakcanary/LeakNode;Lcom/squareup/haha/perflib/Instance;Ljava/lang/String;Lcom/squareup/leakcanary/LeakTraceElement$Type;)V

    goto :goto_0

    .line 131
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private isString(Lcom/squareup/haha/perflib/Instance;)Z
    .locals 2
    .param p1, "instance"    # Lcom/squareup/haha/perflib/Instance;

    .prologue
    .line 350
    invoke-virtual {p1}, Lcom/squareup/haha/perflib/Instance;->getClassObj()Lcom/squareup/haha/perflib/ClassObj;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/squareup/haha/perflib/Instance;->getClassObj()Lcom/squareup/haha/perflib/ClassObj;

    move-result-object v0

    .line 351
    invoke-virtual {v0}, Lcom/squareup/haha/perflib/ClassObj;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 352
    const-class v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private rootSuperClassAlwaysIgnored(Lcom/squareup/haha/perflib/Instance;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "child"    # Lcom/squareup/haha/perflib/Instance;

    .prologue
    .line 205
    const/4 v1, 0x0

    .line 206
    .local v1, "alwaysIgnoreClassHierarchy":Ljava/lang/Boolean;
    invoke-virtual {p1}, Lcom/squareup/haha/perflib/Instance;->getClassObj()Lcom/squareup/haha/perflib/ClassObj;

    move-result-object v2

    .line 207
    .local v2, "superClassObj":Lcom/squareup/haha/perflib/ClassObj;
    :goto_0
    if-nez v2, :cond_0

    .line 218
    return-object v1

    .line 209
    :cond_0
    iget-object v3, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->excludedRefs:Lcom/squareup/leakcanary/ExcludedRefs;

    iget-object v3, v3, Lcom/squareup/leakcanary/ExcludedRefs;->rootSuperClassNames:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/squareup/haha/perflib/ClassObj;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 210
    .local v0, "alwaysIgnoreClass":Ljava/lang/Boolean;
    if-eqz v0, :cond_2

    .line 212
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_2

    .line 213
    :cond_1
    move-object v1, v0

    .line 216
    :cond_2
    invoke-virtual {v2}, Lcom/squareup/haha/perflib/ClassObj;->getSuperClassObj()Lcom/squareup/haha/perflib/ClassObj;

    move-result-object v2

    goto :goto_0
.end method

.method private visitArrayInstance(Lcom/squareup/leakcanary/LeakNode;)V
    .locals 10
    .param p1, "node"    # Lcom/squareup/leakcanary/LeakNode;

    .prologue
    .line 307
    iget-object v6, p1, Lcom/squareup/leakcanary/LeakNode;->instance:Lcom/squareup/haha/perflib/Instance;

    check-cast v6, Lcom/squareup/haha/perflib/ArrayInstance;

    .line 308
    .local v6, "arrayInstance":Lcom/squareup/haha/perflib/ArrayInstance;
    invoke-virtual {v6}, Lcom/squareup/haha/perflib/ArrayInstance;->getArrayType()Lcom/squareup/haha/perflib/Type;

    move-result-object v7

    .line 309
    .local v7, "arrayType":Lcom/squareup/haha/perflib/Type;
    sget-object v0, Lcom/squareup/haha/perflib/Type;->OBJECT:Lcom/squareup/haha/perflib/Type;

    if-ne v7, v0, :cond_0

    .line 310
    invoke-virtual {v6}, Lcom/squareup/haha/perflib/ArrayInstance;->getValues()[Ljava/lang/Object;

    move-result-object v9

    .line 311
    .local v9, "values":[Ljava/lang/Object;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v0, v9

    if-lt v8, v0, :cond_1

    .line 316
    .end local v8    # "i":I
    .end local v9    # "values":[Ljava/lang/Object;
    :cond_0
    return-void

    .line 312
    .restart local v8    # "i":I
    .restart local v9    # "values":[Ljava/lang/Object;
    :cond_1
    aget-object v3, v9, v8

    check-cast v3, Lcom/squareup/haha/perflib/Instance;

    .line 313
    .local v3, "child":Lcom/squareup/haha/perflib/Instance;
    const/4 v1, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/squareup/leakcanary/LeakTraceElement$Type;->ARRAY_ENTRY:Lcom/squareup/leakcanary/LeakTraceElement$Type;

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/squareup/leakcanary/ShortestPathFinder;->enqueue(ZLcom/squareup/leakcanary/LeakNode;Lcom/squareup/haha/perflib/Instance;Ljava/lang/String;Lcom/squareup/leakcanary/LeakTraceElement$Type;)V

    .line 311
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method private visitClassInstance(Lcom/squareup/leakcanary/LeakNode;)V
    .locals 18
    .param p1, "node"    # Lcom/squareup/leakcanary/LeakNode;

    .prologue
    .line 252
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/squareup/leakcanary/LeakNode;->instance:Lcom/squareup/haha/perflib/Instance;

    check-cast v11, Lcom/squareup/haha/perflib/ClassInstance;

    .line 253
    .local v11, "classInstance":Lcom/squareup/haha/perflib/ClassInstance;
    const/4 v14, 0x0

    .line 254
    .local v14, "ignoredFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-virtual {v11}, Lcom/squareup/haha/perflib/ClassInstance;->getClassObj()Lcom/squareup/haha/perflib/ClassObj;

    move-result-object v15

    .line 255
    .local v15, "superClassObj":Lcom/squareup/haha/perflib/ClassObj;
    const/4 v9, 0x0

    .line 256
    .local v9, "alwaysIgnoreClassHierarchy":Ljava/lang/Boolean;
    :goto_0
    if-nez v15, :cond_1

    .line 275
    if-eqz v9, :cond_6

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 304
    :cond_0
    return-void

    .line 257
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/squareup/leakcanary/ShortestPathFinder;->excludedRefs:Lcom/squareup/leakcanary/ExcludedRefs;

    iget-object v1, v1, Lcom/squareup/leakcanary/ExcludedRefs;->classNames:Ljava/util/Map;

    invoke-virtual {v15}, Lcom/squareup/haha/perflib/ClassObj;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    .line 258
    .local v8, "alwaysIgnoreClass":Ljava/lang/Boolean;
    if-eqz v8, :cond_3

    .line 260
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    .line 261
    :cond_2
    move-object v9, v8

    .line 265
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/squareup/leakcanary/ShortestPathFinder;->excludedRefs:Lcom/squareup/leakcanary/ExcludedRefs;

    iget-object v1, v1, Lcom/squareup/leakcanary/ExcludedRefs;->fieldNameByClassName:Ljava/util/Map;

    invoke-virtual {v15}, Lcom/squareup/haha/perflib/ClassObj;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    .line 266
    .local v10, "classIgnoredFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    if-eqz v10, :cond_5

    .line 267
    if-nez v14, :cond_4

    .line 268
    new-instance v14, Ljava/util/LinkedHashMap;

    .end local v14    # "ignoredFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-direct {v14}, Ljava/util/LinkedHashMap;-><init>()V

    .line 270
    .restart local v14    # "ignoredFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_4
    invoke-interface {v14, v10}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 272
    :cond_5
    invoke-virtual {v15}, Lcom/squareup/haha/perflib/ClassObj;->getSuperClassObj()Lcom/squareup/haha/perflib/ClassObj;

    move-result-object v15

    goto :goto_0

    .line 279
    .end local v8    # "alwaysIgnoreClass":Ljava/lang/Boolean;
    .end local v10    # "classIgnoredFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_6
    invoke-virtual {v11}, Lcom/squareup/haha/perflib/ClassInstance;->getValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_7
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/squareup/haha/perflib/ClassInstance$FieldValue;

    .line 280
    .local v13, "fieldValue":Lcom/squareup/haha/perflib/ClassInstance$FieldValue;
    invoke-virtual {v13}, Lcom/squareup/haha/perflib/ClassInstance$FieldValue;->getField()Lcom/squareup/haha/perflib/Field;

    move-result-object v12

    .line 281
    .local v12, "field":Lcom/squareup/haha/perflib/Field;
    invoke-virtual {v12}, Lcom/squareup/haha/perflib/Field;->getType()Lcom/squareup/haha/perflib/Type;

    move-result-object v1

    sget-object v3, Lcom/squareup/haha/perflib/Type;->OBJECT:Lcom/squareup/haha/perflib/Type;

    if-ne v1, v3, :cond_7

    .line 284
    invoke-virtual {v13}, Lcom/squareup/haha/perflib/ClassInstance$FieldValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/squareup/haha/perflib/Instance;

    .line 285
    .local v4, "child":Lcom/squareup/haha/perflib/Instance;
    const/4 v2, 0x1

    .line 286
    .local v2, "visit":Z
    const/16 v16, 0x0

    .line 288
    .local v16, "visitIfNoPath":Z
    if-eqz v9, :cond_8

    .line 289
    const/4 v2, 0x0

    .line 290
    const/16 v16, 0x1

    .line 292
    :cond_8
    invoke-virtual {v12}, Lcom/squareup/haha/perflib/Field;->getName()Ljava/lang/String;

    move-result-object v5

    .line 293
    .local v5, "fieldName":Ljava/lang/String;
    if-eqz v14, :cond_9

    .line 294
    invoke-interface {v14, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    .line 295
    .local v7, "alwaysIgnore":Ljava/lang/Boolean;
    if-eqz v7, :cond_9

    .line 296
    const/4 v2, 0x0

    .line 297
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v16, 0x0

    .line 300
    .end local v7    # "alwaysIgnore":Ljava/lang/Boolean;
    :cond_9
    :goto_2
    if-nez v2, :cond_a

    if-eqz v16, :cond_7

    .line 301
    :cond_a
    sget-object v6, Lcom/squareup/leakcanary/LeakTraceElement$Type;->INSTANCE_FIELD:Lcom/squareup/leakcanary/LeakTraceElement$Type;

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/squareup/leakcanary/ShortestPathFinder;->enqueue(ZLcom/squareup/leakcanary/LeakNode;Lcom/squareup/haha/perflib/Instance;Ljava/lang/String;Lcom/squareup/leakcanary/LeakTraceElement$Type;)V

    goto :goto_1

    .line 297
    .restart local v7    # "alwaysIgnore":Ljava/lang/Boolean;
    :cond_b
    const/16 v16, 0x1

    goto :goto_2
.end method

.method private visitClassObj(Lcom/squareup/leakcanary/LeakNode;)V
    .locals 13
    .param p1, "node"    # Lcom/squareup/leakcanary/LeakNode;

    .prologue
    .line 222
    iget-object v7, p1, Lcom/squareup/leakcanary/LeakNode;->instance:Lcom/squareup/haha/perflib/Instance;

    check-cast v7, Lcom/squareup/haha/perflib/ClassObj;

    .line 224
    .local v7, "classObj":Lcom/squareup/haha/perflib/ClassObj;
    iget-object v0, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->excludedRefs:Lcom/squareup/leakcanary/ExcludedRefs;

    iget-object v0, v0, Lcom/squareup/leakcanary/ExcludedRefs;->staticFieldNameByClassName:Ljava/util/Map;

    invoke-virtual {v7}, Lcom/squareup/haha/perflib/ClassObj;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    .line 225
    .local v10, "ignoredStaticFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-virtual {v7}, Lcom/squareup/haha/perflib/ClassObj;->getStaticFieldValues()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 249
    return-void

    .line 225
    :cond_1
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 226
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/squareup/haha/perflib/Field;Ljava/lang/Object;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/squareup/haha/perflib/Field;

    .line 227
    .local v9, "field":Lcom/squareup/haha/perflib/Field;
    invoke-virtual {v9}, Lcom/squareup/haha/perflib/Field;->getType()Lcom/squareup/haha/perflib/Type;

    move-result-object v0

    sget-object v1, Lcom/squareup/haha/perflib/Type;->OBJECT:Lcom/squareup/haha/perflib/Type;

    if-ne v0, v1, :cond_0

    .line 230
    invoke-virtual {v9}, Lcom/squareup/haha/perflib/Field;->getName()Ljava/lang/String;

    move-result-object v4

    .line 231
    .local v4, "fieldName":Ljava/lang/String;
    const-string v0, "$staticOverhead"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/squareup/haha/perflib/Instance;

    .line 235
    .local v3, "child":Lcom/squareup/haha/perflib/Instance;
    const/4 v11, 0x1

    .line 236
    .local v11, "visit":Z
    if-eqz v10, :cond_2

    .line 237
    invoke-interface {v10, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    .line 238
    .local v6, "alwaysIgnore":Ljava/lang/Boolean;
    if-eqz v6, :cond_2

    .line 239
    const/4 v11, 0x0

    .line 240
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 241
    const/4 v1, 0x0

    sget-object v5, Lcom/squareup/leakcanary/LeakTraceElement$Type;->STATIC_FIELD:Lcom/squareup/leakcanary/LeakTraceElement$Type;

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/squareup/leakcanary/ShortestPathFinder;->enqueue(ZLcom/squareup/leakcanary/LeakNode;Lcom/squareup/haha/perflib/Instance;Ljava/lang/String;Lcom/squareup/leakcanary/LeakTraceElement$Type;)V

    .line 245
    .end local v6    # "alwaysIgnore":Ljava/lang/Boolean;
    :cond_2
    if-eqz v11, :cond_0

    .line 246
    const/4 v1, 0x1

    sget-object v5, Lcom/squareup/leakcanary/LeakTraceElement$Type;->STATIC_FIELD:Lcom/squareup/leakcanary/LeakTraceElement$Type;

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/squareup/leakcanary/ShortestPathFinder;->enqueue(ZLcom/squareup/leakcanary/LeakNode;Lcom/squareup/haha/perflib/Instance;Ljava/lang/String;Lcom/squareup/leakcanary/LeakTraceElement$Type;)V

    goto :goto_0
.end method

.method private visitRootObj(Lcom/squareup/leakcanary/LeakNode;)V
    .locals 13
    .param p1, "node"    # Lcom/squareup/leakcanary/LeakNode;

    .prologue
    const/4 v8, 0x0

    .line 177
    iget-object v11, p1, Lcom/squareup/leakcanary/LeakNode;->instance:Lcom/squareup/haha/perflib/Instance;

    check-cast v11, Lcom/squareup/haha/perflib/RootObj;

    .line 178
    .local v11, "rootObj":Lcom/squareup/haha/perflib/RootObj;
    invoke-virtual {v11}, Lcom/squareup/haha/perflib/RootObj;->getReferredInstance()Lcom/squareup/haha/perflib/Instance;

    move-result-object v3

    .line 180
    .local v3, "child":Lcom/squareup/haha/perflib/Instance;
    const/4 v1, 0x1

    .line 181
    .local v1, "visitRootNow":Z
    if-eqz v3, :cond_1

    .line 183
    invoke-direct {p0, v3}, Lcom/squareup/leakcanary/ShortestPathFinder;->rootSuperClassAlwaysIgnored(Lcom/squareup/haha/perflib/Instance;)Ljava/lang/Boolean;

    move-result-object v12

    .line 184
    .local v12, "rootSuperClassAlwaysIgnored":Ljava/lang/Boolean;
    if-eqz v12, :cond_1

    .line 185
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    .end local v12    # "rootSuperClassAlwaysIgnored":Ljava/lang/Boolean;
    :goto_0
    return-void

    .line 188
    .restart local v12    # "rootSuperClassAlwaysIgnored":Ljava/lang/Boolean;
    :cond_0
    const/4 v1, 0x0

    .line 193
    .end local v12    # "rootSuperClassAlwaysIgnored":Ljava/lang/Boolean;
    :cond_1
    invoke-virtual {v11}, Lcom/squareup/haha/perflib/RootObj;->getRootType()Lcom/squareup/haha/perflib/RootType;

    move-result-object v0

    sget-object v4, Lcom/squareup/haha/perflib/RootType;->JAVA_LOCAL:Lcom/squareup/haha/perflib/RootType;

    if-ne v0, v4, :cond_2

    .line 194
    invoke-static {v11}, Lcom/squareup/haha/perflib/HahaSpy;->allocatingThread(Lcom/squareup/haha/perflib/Instance;)Lcom/squareup/haha/perflib/Instance;

    move-result-object v10

    .line 197
    .local v10, "holder":Lcom/squareup/haha/perflib/Instance;
    new-instance v2, Lcom/squareup/leakcanary/LeakNode;

    invoke-direct {v2, v10, v8, v8, v8}, Lcom/squareup/leakcanary/LeakNode;-><init>(Lcom/squareup/haha/perflib/Instance;Lcom/squareup/leakcanary/LeakNode;Ljava/lang/String;Lcom/squareup/leakcanary/LeakTraceElement$Type;)V

    .line 198
    .local v2, "parent":Lcom/squareup/leakcanary/LeakNode;
    const-string v4, "<Java Local>"

    sget-object v5, Lcom/squareup/leakcanary/LeakTraceElement$Type;->LOCAL:Lcom/squareup/leakcanary/LeakTraceElement$Type;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/squareup/leakcanary/ShortestPathFinder;->enqueue(ZLcom/squareup/leakcanary/LeakNode;Lcom/squareup/haha/perflib/Instance;Ljava/lang/String;Lcom/squareup/leakcanary/LeakTraceElement$Type;)V

    goto :goto_0

    .end local v2    # "parent":Lcom/squareup/leakcanary/LeakNode;
    .end local v10    # "holder":Lcom/squareup/haha/perflib/Instance;
    :cond_2
    move-object v4, p0

    move v5, v1

    move-object v6, p1

    move-object v7, v3

    move-object v9, v8

    .line 200
    invoke-direct/range {v4 .. v9}, Lcom/squareup/leakcanary/ShortestPathFinder;->enqueue(ZLcom/squareup/leakcanary/LeakNode;Lcom/squareup/haha/perflib/Instance;Ljava/lang/String;Lcom/squareup/leakcanary/LeakTraceElement$Type;)V

    goto :goto_0
.end method


# virtual methods
.method findPath(Lcom/squareup/haha/perflib/Snapshot;Lcom/squareup/haha/perflib/Instance;)Lcom/squareup/leakcanary/ShortestPathFinder$Result;
    .locals 6
    .param p1, "snapshot"    # Lcom/squareup/haha/perflib/Snapshot;
    .param p2, "leakingRef"    # Lcom/squareup/haha/perflib/Instance;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/squareup/leakcanary/ShortestPathFinder;->clearState()V

    .line 81
    invoke-direct {p0, p2}, Lcom/squareup/leakcanary/ShortestPathFinder;->isString(Lcom/squareup/haha/perflib/Instance;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->canIgnoreStrings:Z

    .line 83
    invoke-direct {p0, p1}, Lcom/squareup/leakcanary/ShortestPathFinder;->enqueueGcRoots(Lcom/squareup/haha/perflib/Snapshot;)V

    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, "excludingKnownLeaks":Z
    const/4 v1, 0x0

    .line 87
    .local v1, "leakingNode":Lcom/squareup/leakcanary/LeakNode;
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->toVisitQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->toVisitIfNoPathQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 118
    :goto_2
    new-instance v3, Lcom/squareup/leakcanary/ShortestPathFinder$Result;

    invoke-direct {v3, v1, v0}, Lcom/squareup/leakcanary/ShortestPathFinder$Result;-><init>(Lcom/squareup/leakcanary/LeakNode;Z)V

    return-object v3

    .line 81
    .end local v0    # "excludingKnownLeaks":Z
    .end local v1    # "leakingNode":Lcom/squareup/leakcanary/LeakNode;
    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    .line 89
    .restart local v0    # "excludingKnownLeaks":Z
    .restart local v1    # "leakingNode":Lcom/squareup/leakcanary/LeakNode;
    :cond_2
    iget-object v3, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->toVisitQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 90
    iget-object v3, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->toVisitQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/leakcanary/LeakNode;

    .line 97
    .local v2, "node":Lcom/squareup/leakcanary/LeakNode;
    :goto_3
    iget-object v3, v2, Lcom/squareup/leakcanary/LeakNode;->instance:Lcom/squareup/haha/perflib/Instance;

    if-ne v3, p2, :cond_4

    .line 98
    move-object v1, v2

    .line 99
    goto :goto_2

    .line 92
    .end local v2    # "node":Lcom/squareup/leakcanary/LeakNode;
    :cond_3
    iget-object v3, p0, Lcom/squareup/leakcanary/ShortestPathFinder;->toVisitIfNoPathQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/leakcanary/LeakNode;

    .line 93
    .restart local v2    # "node":Lcom/squareup/leakcanary/LeakNode;
    const/4 v0, 0x1

    goto :goto_3

    .line 102
    :cond_4
    invoke-direct {p0, v2}, Lcom/squareup/leakcanary/ShortestPathFinder;->checkSeen(Lcom/squareup/leakcanary/LeakNode;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 106
    iget-object v3, v2, Lcom/squareup/leakcanary/LeakNode;->instance:Lcom/squareup/haha/perflib/Instance;

    instance-of v3, v3, Lcom/squareup/haha/perflib/RootObj;

    if-eqz v3, :cond_5

    .line 107
    invoke-direct {p0, v2}, Lcom/squareup/leakcanary/ShortestPathFinder;->visitRootObj(Lcom/squareup/leakcanary/LeakNode;)V

    goto :goto_1

    .line 108
    :cond_5
    iget-object v3, v2, Lcom/squareup/leakcanary/LeakNode;->instance:Lcom/squareup/haha/perflib/Instance;

    instance-of v3, v3, Lcom/squareup/haha/perflib/ClassObj;

    if-eqz v3, :cond_6

    .line 109
    invoke-direct {p0, v2}, Lcom/squareup/leakcanary/ShortestPathFinder;->visitClassObj(Lcom/squareup/leakcanary/LeakNode;)V

    goto :goto_1

    .line 110
    :cond_6
    iget-object v3, v2, Lcom/squareup/leakcanary/LeakNode;->instance:Lcom/squareup/haha/perflib/Instance;

    instance-of v3, v3, Lcom/squareup/haha/perflib/ClassInstance;

    if-eqz v3, :cond_7

    .line 111
    invoke-direct {p0, v2}, Lcom/squareup/leakcanary/ShortestPathFinder;->visitClassInstance(Lcom/squareup/leakcanary/LeakNode;)V

    goto :goto_1

    .line 112
    :cond_7
    iget-object v3, v2, Lcom/squareup/leakcanary/LeakNode;->instance:Lcom/squareup/haha/perflib/Instance;

    instance-of v3, v3, Lcom/squareup/haha/perflib/ArrayInstance;

    if-eqz v3, :cond_8

    .line 113
    invoke-direct {p0, v2}, Lcom/squareup/leakcanary/ShortestPathFinder;->visitArrayInstance(Lcom/squareup/leakcanary/LeakNode;)V

    goto :goto_1

    .line 115
    :cond_8
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unexpected type for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v2, Lcom/squareup/leakcanary/LeakNode;->instance:Lcom/squareup/haha/perflib/Instance;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
