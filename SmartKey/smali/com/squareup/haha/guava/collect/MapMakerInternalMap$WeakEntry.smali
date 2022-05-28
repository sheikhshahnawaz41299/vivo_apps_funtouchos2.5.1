.class Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakEntry;
.super Ljava/lang/ref/WeakReference;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;


# instance fields
.field private hash:I

.field private next:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

.field private volatile valueReference:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 1

    .prologue
    .line 1430
    invoke-direct {p0, p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 1498
    invoke-static {}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->unset()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakEntry;->valueReference:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;

    .line 1431
    iput p3, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakEntry;->hash:I

    .line 1432
    iput-object p4, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakEntry;->next:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    .line 1433
    return-void
.end method


# virtual methods
.method public getExpirationTime()J
    .locals 1

    .prologue
    .line 1444
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final getHash()I
    .locals 1

    .prologue
    .line 1514
    iget v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakEntry;->hash:I

    return v0
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1437
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakEntry;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getNext()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 1

    .prologue
    .line 1519
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakEntry;->next:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    return-object v0
.end method

.method public getNextEvictable()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 1

    .prologue
    .line 1476
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getNextExpirable()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 1

    .prologue
    .line 1454
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPreviousEvictable()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 1

    .prologue
    .line 1486
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPreviousExpirable()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 1

    .prologue
    .line 1464
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final getValueReference()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;
    .locals 1

    .prologue
    .line 1502
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakEntry;->valueReference:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;

    return-object v0
.end method

.method public setExpirationTime(J)V
    .locals 1

    .prologue
    .line 1449
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setNextEvictable(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 1

    .prologue
    .line 1481
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setNextExpirable(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 1

    .prologue
    .line 1459
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setPreviousEvictable(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 1

    .prologue
    .line 1491
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setPreviousExpirable(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 1

    .prologue
    .line 1469
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final setValueReference(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;)V
    .locals 1

    .prologue
    .line 1507
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakEntry;->valueReference:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;

    .line 1508
    iput-object p1, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakEntry;->valueReference:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;

    .line 1509
    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;->clear$5ca9f1d3()V

    .line 1510
    return-void
.end method
