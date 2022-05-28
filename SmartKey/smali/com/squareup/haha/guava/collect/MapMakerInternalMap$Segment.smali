.class final Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "MapMakerInternalMap.java"


# instance fields
.field volatile count:I

.field final evictionQueue:Ljava/util/Queue;

.field final expirationQueue:Ljava/util/Queue;

.field final keyReferenceQueue:Ljava/lang/ref/ReferenceQueue;

.field final map:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

.field private maxSegmentSize:I

.field modCount:I

.field final readCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private recencyQueue:Ljava/util/Queue;

.field volatile table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

.field private threshold:I

.field final valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;


# direct methods
.method private copyEntry(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2138
    invoke-interface {p1}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2152
    :cond_0
    :goto_0
    return-object v0

    .line 2143
    :cond_1
    invoke-interface {p1}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;

    move-result-object v1

    .line 2144
    invoke-interface {v1}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v2

    .line 2145
    if-eqz v2, :cond_0

    .line 2150
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->map:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    iget-object v0, v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->entryFactory:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory;

    invoke-virtual {v0, p0, p1, p2}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory;->copyEntry(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    .line 2151
    iget-object v3, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-interface {v1, v3, v2, v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;->copyFor(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->setValueReference(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;)V

    goto :goto_0
.end method

.method private drainRecencyQueue()V
    .locals 2

    .prologue
    .line 2303
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->recencyQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    if-eqz v0, :cond_2

    .line 2308
    iget-object v1, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->evictionQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2309
    iget-object v1, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->evictionQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2311
    :cond_1
    iget-object v1, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->map:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    invoke-virtual {v1}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->expiresAfterAccess()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->expirationQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2312
    iget-object v1, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->expirationQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2315
    :cond_2
    return-void
.end method

.method private drainReferenceQueues()V
    .locals 6

    .prologue
    const/16 v5, 0x10

    const/4 v2, 0x0

    .line 2186
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->map:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->usesKeyReferences()Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v2

    .line 4198
    :goto_0
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->keyReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4200
    check-cast v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    .line 4201
    iget-object v3, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->map:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    .line 4862
    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getHash()I

    move-result v4

    .line 4863
    invoke-virtual {v3, v4}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->segmentFor(I)Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;

    move-result-object v3

    invoke-virtual {v3, v0, v4}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->reclaimKey(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;I)Z

    .line 4202
    add-int/lit8 v0, v1, 0x1

    if-eq v0, v5, :cond_0

    move v1, v0

    .line 4205
    goto :goto_0

    .line 2189
    :cond_0
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->map:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->usesValueReferences()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5212
    :cond_1
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5214
    check-cast v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;

    .line 5215
    iget-object v1, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->map:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    .line 5856
    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;->getEntry()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v3

    .line 5857
    invoke-interface {v3}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getHash()I

    move-result v4

    .line 5858
    invoke-virtual {v1, v4}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->segmentFor(I)Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-interface {v3}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3, v4, v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->reclaimValue(Ljava/lang/Object;ILcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;)Z

    .line 5216
    add-int/lit8 v2, v2, 0x1

    if-ne v2, v5, :cond_1

    .line 2192
    :cond_2
    return-void
.end method

.method private enqueueNotification$49a52d44(Ljava/lang/Object;Ljava/lang/Object;Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;)V
    .locals 2

    .prologue
    .line 2363
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->map:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    iget-object v0, v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->removalNotificationQueue:Ljava/util/Queue;

    sget-object v1, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->DISCARDING_QUEUE:Ljava/util/Queue;

    if-eq v0, v1, :cond_0

    .line 2364
    new-instance v0, Lcom/squareup/haha/guava/collect/MapMaker$RemovalNotification;

    invoke-direct {v0, p1, p2, p3}, Lcom/squareup/haha/guava/collect/MapMaker$RemovalNotification;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;)V

    .line 2365
    iget-object v1, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->map:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    iget-object v1, v1, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->removalNotificationQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 2367
    :cond_0
    return-void
.end method

.method private evictEntries()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2377
    iget-object v2, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->map:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    .line 6266
    iget v2, v2, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->maximumSize:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    move v2, v1

    .line 2377
    :goto_0
    if-eqz v2, :cond_2

    iget v2, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->count:I

    iget v3, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->maxSegmentSize:I

    if-lt v2, v3, :cond_2

    .line 2378
    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->drainRecencyQueue()V

    .line 2380
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->evictionQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    .line 2381
    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getHash()I

    move-result v2

    sget-object v3, Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;->SIZE:Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;

    invoke-direct {p0, v0, v2, v3}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->removeEntry(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;ILcom/squareup/haha/guava/collect/MapMaker$RemovalCause;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2382
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    move v2, v0

    .line 6266
    goto :goto_0

    :cond_1
    move v0, v1

    .line 2386
    :cond_2
    return v0
.end method

.method private expireEntries()V
    .locals 5

    .prologue
    .line 2340
    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->drainRecencyQueue()V

    .line 2342
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->expirationQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2354
    :cond_0
    return-void

    .line 2347
    :cond_1
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->map:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    iget-object v0, v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->ticker:Lcom/squareup/haha/guava/base/Ticker;

    invoke-virtual {v0}, Lcom/squareup/haha/guava/base/Ticker;->read()J

    move-result-wide v2

    .line 2349
    :cond_2
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->expirationQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    if-eqz v0, :cond_0

    invoke-static {v0, v2, v3}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->isExpired(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2350
    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getHash()I

    move-result v1

    sget-object v4, Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;->EXPIRED:Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;

    invoke-direct {p0, v0, v1, v4}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->removeEntry(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;ILcom/squareup/haha/guava/collect/MapMaker$RemovalCause;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2351
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private getEntry(Ljava/lang/Object;I)Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 3

    .prologue
    .line 2401
    iget v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->count:I

    if-eqz v0, :cond_2

    .line 6394
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 6395
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    .line 2402
    :goto_0
    if-eqz v0, :cond_2

    .line 2403
    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getHash()I

    move-result v1

    if-ne v1, p2, :cond_0

    .line 2407
    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 2408
    if-nez v1, :cond_1

    .line 2409
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->tryDrainReferenceQueues()V

    .line 2402
    :cond_0
    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    goto :goto_0

    .line 2413
    :cond_1
    iget-object v2, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->map:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    iget-object v2, v2, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->keyEquivalence:Lcom/squareup/haha/guava/base/Equivalence;

    invoke-virtual {v2, p1, v1}, Lcom/squareup/haha/guava/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2419
    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getLiveEntry(Ljava/lang/Object;I)Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2423
    invoke-direct {p0, p1, p2}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->getEntry(Ljava/lang/Object;I)Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v1

    .line 2424
    if-nez v1, :cond_0

    .line 2430
    :goto_0
    return-object v0

    .line 2426
    :cond_0
    iget-object v2, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->map:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    invoke-virtual {v2}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->expires()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->map:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    invoke-virtual {v2, v1}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->isExpired(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2427
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->tryExpireEntries()V

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 2430
    goto :goto_0
.end method

.method private static isCollected(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;)Z
    .locals 1

    .prologue
    .line 3018
    invoke-interface {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private recordExpirationTime(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;J)V
    .locals 2

    .prologue
    .line 2321
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->map:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    iget-object v0, v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->ticker:Lcom/squareup/haha/guava/base/Ticker;

    invoke-virtual {v0}, Lcom/squareup/haha/guava/base/Ticker;->read()J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-interface {p1, v0, v1}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->setExpirationTime(J)V

    .line 2322
    return-void
.end method

.method private recordLockedRead(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 2

    .prologue
    .line 2267
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->evictionQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2268
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->map:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->expiresAfterAccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2269
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->map:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    iget-wide v0, v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->expireAfterAccessNanos:J

    invoke-direct {p0, p1, v0, v1}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->recordExpirationTime(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;J)V

    .line 2270
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->expirationQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2272
    :cond_0
    return-void
.end method

.method private removeCollectedEntry(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 1

    .prologue
    .line 2883
    sget-object v0, Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;->COLLECTED:Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;

    invoke-virtual {p0, p1, v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->enqueueNotification(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;)V

    .line 2884
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->evictionQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 2885
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->expirationQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 2886
    return-void
.end method

.method private removeEntry(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;ILcom/squareup/haha/guava/collect/MapMaker$RemovalCause;)Z
    .locals 6

    .prologue
    .line 2990
    iget v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->count:I

    .line 2991
    iget-object v2, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2992
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v3, p2, v0

    .line 2993
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    move-object v1, v0

    .line 2995
    :goto_0
    if-eqz v1, :cond_1

    .line 2996
    if-ne v1, p1, :cond_0

    .line 2997
    iget v4, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 2998
    invoke-interface {v1}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;

    move-result-object v5

    invoke-interface {v5}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v4, v5, p3}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->enqueueNotification$49a52d44(Ljava/lang/Object;Ljava/lang/Object;Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;)V

    .line 2999
    invoke-direct {p0, v0, v1}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->removeFromChain(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    .line 3000
    iget v1, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v1, v1, -0x1

    .line 3001
    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 3002
    iput v1, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->count:I

    .line 3003
    const/4 v0, 0x1

    .line 3007
    :goto_1
    return v0

    .line 2995
    :cond_0
    invoke-interface {v1}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v1

    goto :goto_0

    .line 3007
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private removeFromChain(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 4

    .prologue
    .line 2864
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->evictionQueue:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 2865
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->expirationQueue:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 2867
    iget v2, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->count:I

    .line 2868
    invoke-interface {p2}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v1

    .line 2869
    :goto_0
    if-eq p1, p2, :cond_1

    .line 2870
    invoke-direct {p0, p1, v1}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->copyEntry(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    .line 2871
    if-eqz v0, :cond_0

    move v1, v2

    .line 2869
    :goto_1
    invoke-interface {p1}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object p1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    .line 2874
    :cond_0
    invoke-direct {p0, p1}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->removeCollectedEntry(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)V

    .line 2875
    add-int/lit8 v0, v2, -0x1

    move-object v3, v1

    move v1, v0

    move-object v0, v3

    goto :goto_1

    .line 2878
    :cond_1
    iput v2, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->count:I

    .line 2879
    return-object v1
.end method

.method private runLockedCleanup()V
    .locals 2

    .prologue
    .line 3078
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3080
    :try_start_0
    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->drainReferenceQueues()V

    .line 3081
    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->expireEntries()V

    .line 3082
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3084
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 3087
    :cond_0
    return-void

    .line 3084
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->unlock()V

    throw v0
.end method

.method private setValue(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 2160
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->map:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    iget-object v0, v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->valueStrength:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Strength;

    invoke-virtual {v0, p0, p1, p2}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Strength;->referenceValue(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;Ljava/lang/Object;)Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;

    move-result-object v0

    .line 2161
    invoke-interface {p1, v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->setValueReference(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;)V

    .line 3281
    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->drainRecencyQueue()V

    .line 3282
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->evictionQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 3283
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->map:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->expires()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3286
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->map:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->expiresAfterAccess()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->map:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    iget-wide v0, v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->expireAfterAccessNanos:J

    .line 3289
    :goto_0
    invoke-direct {p0, p1, v0, v1}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->recordExpirationTime(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;J)V

    .line 3290
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->expirationQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 2163
    :cond_0
    return-void

    .line 3286
    :cond_1
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->map:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    iget-wide v0, v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->expireAfterWriteNanos:J

    goto :goto_0
.end method


# virtual methods
.method final containsKey(Ljava/lang/Object;I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2454
    :try_start_0
    iget v1, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->count:I

    if-eqz v1, :cond_2

    .line 2455
    invoke-direct {p0, p1, p2}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->getLiveEntry(Ljava/lang/Object;I)Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 2456
    if-nez v1, :cond_0

    .line 2464
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    :goto_0
    return v0

    .line 2459
    :cond_0
    :try_start_1
    invoke-interface {v1}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;

    move-result-object v1

    invoke-interface {v1}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;->get()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 2464
    :cond_1
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    throw v0
.end method

.method final enqueueNotification(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;)V
    .locals 2

    .prologue
    .line 2359
    invoke-interface {p1}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;

    move-result-object v1

    invoke-interface {v1}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->enqueueNotification$49a52d44(Ljava/lang/Object;Ljava/lang/Object;Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;)V

    .line 2360
    return-void
.end method

.method final get(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 2435
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->getLiveEntry(Ljava/lang/Object;I)Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 2436
    if-nez v1, :cond_0

    .line 2448
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 2440
    :cond_0
    :try_start_1
    invoke-interface {v1}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;

    move-result-object v0

    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 2441
    if-eqz v0, :cond_2

    .line 7252
    iget-object v2, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->map:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    invoke-virtual {v2}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->expiresAfterAccess()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7253
    iget-object v2, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->map:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    iget-wide v2, v2, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->expireAfterAccessNanos:J

    invoke-direct {p0, v1, v2, v3}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->recordExpirationTime(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;J)V

    .line 7255
    :cond_1
    iget-object v2, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->recencyQueue:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2448
    :goto_1
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    goto :goto_0

    .line 2444
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->tryDrainReferenceQueues()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 2448
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->postReadCleanup()V

    throw v0
.end method

.method final postReadCleanup()V
    .locals 1

    .prologue
    .line 3049
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    and-int/lit8 v0, v0, 0x3f

    if-nez v0, :cond_0

    .line 38073
    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->runLockedCleanup()V

    .line 38074
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->runUnlockedCleanup()V

    .line 3052
    :cond_0
    return-void
.end method

.method final put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
    .locals 11

    .prologue
    .line 2498
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->lock()V

    .line 8062
    :try_start_0
    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->runLockedCleanup()V

    .line 2502
    iget v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v1, v0, 0x1

    .line 2503
    iget v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->threshold:I

    if-le v1, v0, :cond_5

    .line 8570
    iget-object v7, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 8571
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v8

    .line 8572
    const/high16 v0, 0x40000000    # 2.0f

    if-ge v8, v0, :cond_4

    .line 8586
    iget v1, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->count:I

    .line 8587
    shl-int/lit8 v0, v8, 0x1

    .line 9115
    new-instance v9, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v9, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    .line 8588
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->threshold:I

    .line 8589
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v10, v0, -0x1

    .line 8590
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v8, :cond_3

    .line 8593
    invoke-virtual {v7, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    .line 8595
    if-eqz v0, :cond_b

    .line 8596
    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v4

    .line 8597
    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getHash()I

    move-result v2

    and-int v3, v2, v10

    .line 8600
    if-nez v4, :cond_0

    .line 8601
    invoke-virtual {v9, v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    move v0, v1

    .line 8590
    :goto_1
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    move v1, v0

    goto :goto_0

    :cond_0
    move-object v5, v0

    .line 8608
    :goto_2
    if-eqz v4, :cond_1

    .line 8609
    invoke-interface {v4}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getHash()I

    move-result v2

    and-int/2addr v2, v10

    .line 8610
    if-eq v2, v3, :cond_c

    move-object v3, v4

    .line 8608
    :goto_3
    invoke-interface {v4}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v4

    move-object v5, v3

    move v3, v2

    goto :goto_2

    .line 8616
    :cond_1
    invoke-virtual {v9, v3, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    move-object v2, v0

    .line 8619
    :goto_4
    if-eq v2, v5, :cond_b

    .line 8620
    invoke-interface {v2}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getHash()I

    move-result v0

    and-int v3, v0, v10

    .line 8621
    invoke-virtual {v9, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    .line 8622
    invoke-direct {p0, v2, v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->copyEntry(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    .line 8623
    if-eqz v0, :cond_2

    .line 8624
    invoke-virtual {v9, v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 8619
    :goto_5
    invoke-interface {v2}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    move-object v2, v0

    goto :goto_4

    .line 8626
    :cond_2
    invoke-direct {p0, v2}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->removeCollectedEntry(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)V

    .line 8627
    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    .line 8633
    :cond_3
    iput-object v9, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 8634
    iput v1, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->count:I

    .line 2505
    :cond_4
    iget v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v1, v0, 0x1

    .line 2508
    :cond_5
    iget-object v3, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2509
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v4, p2, v0

    .line 2510
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    move-object v2, v0

    .line 2513
    :goto_6
    if-eqz v2, :cond_9

    .line 2514
    invoke-interface {v2}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 2515
    invoke-interface {v2}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getHash()I

    move-result v6

    if-ne v6, p2, :cond_8

    if-eqz v5, :cond_8

    iget-object v6, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->map:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    iget-object v6, v6, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->keyEquivalence:Lcom/squareup/haha/guava/base/Equivalence;

    invoke-virtual {v6, p1, v5}, Lcom/squareup/haha/guava/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2519
    invoke-interface {v2}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;

    move-result-object v0

    .line 2520
    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 2522
    if-nez v0, :cond_6

    .line 2523
    iget v1, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 2524
    invoke-direct {p0, v2, p3}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->setValue(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;Ljava/lang/Object;)V

    .line 2526
    sget-object v1, Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;->COLLECTED:Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;

    invoke-direct {p0, p1, v0, v1}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->enqueueNotification$49a52d44(Ljava/lang/Object;Ljava/lang/Object;Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;)V

    .line 2527
    iget v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->count:I

    .line 2531
    iput v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2560
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 10069
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->runUnlockedCleanup()V

    .line 2561
    const/4 v0, 0x0

    :goto_7
    return-object v0

    .line 2533
    :cond_6
    if-eqz p4, :cond_7

    .line 2537
    :try_start_1
    invoke-direct {p0, v2}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->recordLockedRead(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2560
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 11069
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->runUnlockedCleanup()V

    goto :goto_7

    .line 2541
    :cond_7
    :try_start_2
    iget v1, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 2542
    sget-object v1, Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;->REPLACED:Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;

    invoke-direct {p0, p1, v0, v1}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->enqueueNotification$49a52d44(Ljava/lang/Object;Ljava/lang/Object;Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;)V

    .line 2543
    invoke-direct {p0, v2, p3}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->setValue(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2560
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 12069
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->runUnlockedCleanup()V

    goto :goto_7

    .line 2513
    :cond_8
    :try_start_3
    invoke-interface {v2}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v2

    goto :goto_6

    .line 2550
    :cond_9
    iget v2, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 12129
    iget-object v2, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->map:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    iget-object v2, v2, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->entryFactory:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory;

    invoke-virtual {v2, p0, p1, p2, v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$EntryFactory;->newEntry(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;Ljava/lang/Object;ILcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    .line 2552
    invoke-direct {p0, v0, p3}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->setValue(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;Ljava/lang/Object;)V

    .line 2553
    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2554
    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->evictEntries()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2555
    iget v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v0, v0, 0x1

    .line 2557
    :goto_8
    iput v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2560
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 13069
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->runUnlockedCleanup()V

    .line 2561
    const/4 v0, 0x0

    goto :goto_7

    .line 2560
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 14069
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->runUnlockedCleanup()V

    .line 2561
    throw v0

    :cond_a
    move v0, v1

    goto :goto_8

    :cond_b
    move v0, v1

    goto/16 :goto_1

    :cond_c
    move v2, v3

    move-object v3, v5

    goto/16 :goto_3
.end method

.method final reclaimKey(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;I)Z
    .locals 7

    .prologue
    .line 2892
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->lock()V

    .line 2894
    :try_start_0
    iget v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->count:I

    .line 2895
    iget-object v2, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2896
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v3, p2, v0

    .line 2897
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    move-object v1, v0

    .line 2899
    :goto_0
    if-eqz v1, :cond_1

    .line 2900
    if-ne v1, p1, :cond_0

    .line 2901
    iget v4, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 2902
    invoke-interface {v1}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;

    move-result-object v5

    invoke-interface {v5}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;->COLLECTED:Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;

    invoke-direct {p0, v4, v5, v6}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->enqueueNotification$49a52d44(Ljava/lang/Object;Ljava/lang/Object;Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;)V

    .line 2904
    invoke-direct {p0, v0, v1}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->removeFromChain(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    .line 2905
    iget v1, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v1, v1, -0x1

    .line 2906
    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2907
    iput v1, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2914
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 32069
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->runUnlockedCleanup()V

    .line 2915
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 2899
    :cond_0
    :try_start_1
    invoke-interface {v1}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 2914
    :cond_1
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 33069
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->runUnlockedCleanup()V

    .line 2915
    const/4 v0, 0x0

    goto :goto_1

    .line 2914
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 34069
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->runUnlockedCleanup()V

    .line 2915
    throw v0
.end method

.method final reclaimValue(Ljava/lang/Object;ILcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;)Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 2923
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->lock()V

    .line 2925
    :try_start_0
    iget v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->count:I

    .line 2926
    iget-object v3, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2927
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v4, p2, v0

    .line 2928
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    move-object v2, v0

    .line 2930
    :goto_0
    if-eqz v2, :cond_4

    .line 2931
    invoke-interface {v2}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 2932
    invoke-interface {v2}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getHash()I

    move-result v6

    if-ne v6, p2, :cond_3

    if-eqz v5, :cond_3

    iget-object v6, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->map:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    iget-object v6, v6, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->keyEquivalence:Lcom/squareup/haha/guava/base/Equivalence;

    invoke-virtual {v6, p1, v5}, Lcom/squareup/haha/guava/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2934
    invoke-interface {v2}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;

    move-result-object v5

    .line 2935
    if-ne v5, p3, :cond_1

    .line 2936
    iget v1, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 2937
    invoke-interface {p3}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v1

    sget-object v5, Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;->COLLECTED:Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;

    invoke-direct {p0, p1, v1, v5}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->enqueueNotification$49a52d44(Ljava/lang/Object;Ljava/lang/Object;Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;)V

    .line 2938
    invoke-direct {p0, v0, v2}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->removeFromChain(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    .line 2939
    iget v1, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v1, v1, -0x1

    .line 2940
    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2941
    iput v1, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2950
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2951
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 35069
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->runUnlockedCleanup()V

    .line 2952
    :cond_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 2950
    :cond_1
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2951
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_2

    .line 36069
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->runUnlockedCleanup()V

    :cond_2
    move v0, v1

    .line 2952
    goto :goto_1

    .line 2930
    :cond_3
    :try_start_1
    invoke-interface {v2}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 2950
    :cond_4
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2951
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_5

    .line 37069
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->runUnlockedCleanup()V

    :cond_5
    move v0, v1

    .line 2952
    goto :goto_1

    .line 2950
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2951
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->isHeldByCurrentThread()Z

    move-result v1

    if-nez v1, :cond_6

    .line 38069
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->runUnlockedCleanup()V

    .line 2952
    :cond_6
    throw v0
.end method

.method final remove(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 2733
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->lock()V

    .line 24062
    :try_start_0
    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->runLockedCleanup()V

    .line 2737
    iget v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->count:I

    .line 2738
    iget-object v4, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2739
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v5, p2, v0

    .line 2740
    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    move-object v3, v0

    .line 2742
    :goto_0
    if-eqz v3, :cond_3

    .line 2743
    invoke-interface {v3}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 2744
    invoke-interface {v3}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getHash()I

    move-result v2

    if-ne v2, p2, :cond_2

    if-eqz v6, :cond_2

    iget-object v2, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->map:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    iget-object v2, v2, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->keyEquivalence:Lcom/squareup/haha/guava/base/Equivalence;

    invoke-virtual {v2, p1, v6}, Lcom/squareup/haha/guava/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2746
    invoke-interface {v3}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;

    move-result-object v7

    .line 2747
    invoke-interface {v7}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v2

    .line 2750
    if-eqz v2, :cond_0

    .line 2751
    sget-object v1, Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;->EXPLICIT:Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;

    .line 2758
    :goto_1
    iget v7, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 2759
    invoke-direct {p0, v6, v2, v1}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->enqueueNotification$49a52d44(Ljava/lang/Object;Ljava/lang/Object;Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;)V

    .line 2760
    invoke-direct {p0, v0, v3}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->removeFromChain(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    .line 2761
    iget v1, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v1, v1, -0x1

    .line 2762
    invoke-virtual {v4, v5, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2763
    iput v1, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2770
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 25069
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->runUnlockedCleanup()V

    move-object v0, v2

    .line 2771
    :goto_2
    return-object v0

    .line 2752
    :cond_0
    :try_start_1
    invoke-static {v7}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->isCollected(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2753
    sget-object v1, Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;->COLLECTED:Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2770
    :cond_1
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 24069
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->runUnlockedCleanup()V

    move-object v0, v1

    .line 2771
    goto :goto_2

    .line 2742
    :cond_2
    :try_start_2
    invoke-interface {v3}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    move-object v3, v2

    goto :goto_0

    .line 2770
    :cond_3
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 26069
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->runUnlockedCleanup()V

    move-object v0, v1

    .line 2771
    goto :goto_2

    .line 2770
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 27069
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->runUnlockedCleanup()V

    .line 2771
    throw v0
.end method

.method final remove(Ljava/lang/Object;ILjava/lang/Object;)Z
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 2776
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->lock()V

    .line 28062
    :try_start_0
    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->runLockedCleanup()V

    .line 2780
    iget v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->count:I

    .line 2781
    iget-object v4, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2782
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v5, p2, v0

    .line 2783
    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    move-object v3, v0

    .line 2785
    :goto_0
    if-eqz v3, :cond_4

    .line 2786
    invoke-interface {v3}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 2787
    invoke-interface {v3}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getHash()I

    move-result v2

    if-ne v2, p2, :cond_3

    if-eqz v6, :cond_3

    iget-object v2, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->map:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    iget-object v2, v2, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->keyEquivalence:Lcom/squareup/haha/guava/base/Equivalence;

    invoke-virtual {v2, p1, v6}, Lcom/squareup/haha/guava/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2789
    invoke-interface {v3}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;

    move-result-object v2

    .line 2790
    invoke-interface {v2}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v7

    .line 2793
    iget-object v8, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->map:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    iget-object v8, v8, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->valueEquivalence:Lcom/squareup/haha/guava/base/Equivalence;

    invoke-virtual {v8, p3, v7}, Lcom/squareup/haha/guava/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2794
    sget-object v2, Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;->EXPLICIT:Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;

    .line 2801
    :goto_1
    iget v8, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 2802
    invoke-direct {p0, v6, v7, v2}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->enqueueNotification$49a52d44(Ljava/lang/Object;Ljava/lang/Object;Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;)V

    .line 2803
    invoke-direct {p0, v0, v3}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->removeFromChain(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    .line 2804
    iget v3, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v3, v3, -0x1

    .line 2805
    invoke-virtual {v4, v5, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2806
    iput v3, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->count:I

    .line 2807
    sget-object v0, Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;->EXPLICIT:Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v0, :cond_2

    const/4 v0, 0x1

    .line 2813
    :goto_2
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 29069
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->runUnlockedCleanup()V

    move v1, v0

    .line 2814
    :goto_3
    return v1

    .line 2795
    :cond_0
    :try_start_1
    invoke-static {v2}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->isCollected(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2796
    sget-object v2, Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;->COLLECTED:Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2813
    :cond_1
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 28069
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->runUnlockedCleanup()V

    goto :goto_3

    :cond_2
    move v0, v1

    .line 2807
    goto :goto_2

    .line 2785
    :cond_3
    :try_start_2
    invoke-interface {v3}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    move-object v3, v2

    goto :goto_0

    .line 2813
    :cond_4
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 30069
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->runUnlockedCleanup()V

    goto :goto_3

    .line 2813
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 31069
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->runUnlockedCleanup()V

    .line 2814
    throw v0
.end method

.method final replace(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 2689
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->lock()V

    .line 20062
    :try_start_0
    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->runLockedCleanup()V

    .line 2693
    iget-object v4, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2694
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v5, p2, v0

    .line 2695
    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    move-object v3, v0

    .line 2697
    :goto_0
    if-eqz v3, :cond_3

    .line 2698
    invoke-interface {v3}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 2699
    invoke-interface {v3}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getHash()I

    move-result v2

    if-ne v2, p2, :cond_2

    if-eqz v6, :cond_2

    iget-object v2, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->map:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    iget-object v2, v2, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->keyEquivalence:Lcom/squareup/haha/guava/base/Equivalence;

    invoke-virtual {v2, p1, v6}, Lcom/squareup/haha/guava/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2703
    invoke-interface {v3}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;

    move-result-object v7

    .line 2704
    invoke-interface {v7}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v2

    .line 2705
    if-nez v2, :cond_1

    .line 2706
    invoke-static {v7}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->isCollected(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2707
    iget v7, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->count:I

    .line 2708
    iget v7, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 2709
    sget-object v7, Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;->COLLECTED:Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;

    invoke-direct {p0, v6, v2, v7}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->enqueueNotification$49a52d44(Ljava/lang/Object;Ljava/lang/Object;Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;)V

    .line 2710
    invoke-direct {p0, v0, v3}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->removeFromChain(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    .line 2711
    iget v2, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v2, v2, -0x1

    .line 2712
    invoke-virtual {v4, v5, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2713
    iput v2, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2727
    :cond_0
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 20069
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->runUnlockedCleanup()V

    move-object v0, v1

    .line 2728
    :goto_1
    return-object v0

    .line 2718
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 2719
    sget-object v0, Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;->REPLACED:Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;

    invoke-direct {p0, p1, v2, v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->enqueueNotification$49a52d44(Ljava/lang/Object;Ljava/lang/Object;Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;)V

    .line 2720
    invoke-direct {p0, v3, p3}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->setValue(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2727
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 21069
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->runUnlockedCleanup()V

    move-object v0, v2

    .line 2728
    goto :goto_1

    .line 2697
    :cond_2
    :try_start_2
    invoke-interface {v3}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    move-object v3, v2

    goto :goto_0

    .line 2727
    :cond_3
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 22069
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->runUnlockedCleanup()V

    move-object v0, v1

    .line 2728
    goto :goto_1

    .line 2727
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 23069
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->runUnlockedCleanup()V

    .line 2728
    throw v0
.end method

.method final replace(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 2638
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->lock()V

    .line 15062
    :try_start_0
    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->runLockedCleanup()V

    .line 2642
    iget-object v3, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2643
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v4, p2, v0

    .line 2644
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    move-object v2, v0

    .line 2646
    :goto_0
    if-eqz v2, :cond_4

    .line 2647
    invoke-interface {v2}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 2648
    invoke-interface {v2}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getHash()I

    move-result v6

    if-ne v6, p2, :cond_3

    if-eqz v5, :cond_3

    iget-object v6, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->map:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    iget-object v6, v6, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->keyEquivalence:Lcom/squareup/haha/guava/base/Equivalence;

    invoke-virtual {v6, p1, v5}, Lcom/squareup/haha/guava/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2652
    invoke-interface {v2}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getValueReference()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;

    move-result-object v6

    .line 2653
    invoke-interface {v6}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;->get()Ljava/lang/Object;

    move-result-object v7

    .line 2654
    if-nez v7, :cond_1

    .line 2655
    invoke-static {v6}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->isCollected(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2656
    iget v6, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->count:I

    .line 2657
    iget v6, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 2658
    sget-object v6, Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;->COLLECTED:Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;

    invoke-direct {p0, v5, v7, v6}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->enqueueNotification$49a52d44(Ljava/lang/Object;Ljava/lang/Object;Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;)V

    .line 2659
    invoke-direct {p0, v0, v2}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->removeFromChain(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    move-result-object v0

    .line 2660
    iget v2, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v2, v2, -0x1

    .line 2661
    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2662
    iput v2, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2683
    :cond_0
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 15069
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->runUnlockedCleanup()V

    move v0, v1

    .line 2684
    :goto_1
    return v0

    .line 2667
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->map:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    iget-object v0, v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->valueEquivalence:Lcom/squareup/haha/guava/base/Equivalence;

    invoke-virtual {v0, p3, v7}, Lcom/squareup/haha/guava/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2668
    iget v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->modCount:I

    .line 2669
    sget-object v0, Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;->REPLACED:Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;

    invoke-direct {p0, p1, v7, v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->enqueueNotification$49a52d44(Ljava/lang/Object;Ljava/lang/Object;Lcom/squareup/haha/guava/collect/MapMaker$RemovalCause;)V

    .line 2670
    invoke-direct {p0, v2, p4}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->setValue(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2683
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 16069
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->runUnlockedCleanup()V

    .line 2684
    const/4 v0, 0x1

    goto :goto_1

    .line 2675
    :cond_2
    :try_start_2
    invoke-direct {p0, v2}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->recordLockedRead(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2683
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 17069
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->runUnlockedCleanup()V

    move v0, v1

    .line 2684
    goto :goto_1

    .line 2646
    :cond_3
    :try_start_3
    invoke-interface {v2}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;->getNext()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 2683
    :cond_4
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 18069
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->runUnlockedCleanup()V

    move v0, v1

    .line 2684
    goto :goto_1

    .line 2683
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 19069
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->runUnlockedCleanup()V

    .line 2684
    throw v0
.end method

.method final runUnlockedCleanup()V
    .locals 2

    .prologue
    .line 3091
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3092
    iget-object v1, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->map:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    .line 38949
    :cond_0
    iget-object v0, v1, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->removalNotificationQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/guava/collect/MapMaker$RemovalNotification;

    if-nez v0, :cond_0

    .line 3094
    :cond_1
    return-void
.end method

.method final tryDrainReferenceQueues()V
    .locals 1

    .prologue
    .line 2171
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2173
    :try_start_0
    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->drainReferenceQueues()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2175
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2178
    :cond_0
    return-void

    .line 2175
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->unlock()V

    throw v0
.end method

.method final tryExpireEntries()V
    .locals 1

    .prologue
    .line 2328
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2330
    :try_start_0
    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->expireEntries()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2332
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->unlock()V

    .line 2336
    :cond_0
    return-void

    .line 2332
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;->unlock()V

    throw v0
.end method
