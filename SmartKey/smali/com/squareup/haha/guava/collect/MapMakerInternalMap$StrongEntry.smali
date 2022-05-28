.class Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongEntry;
.super Ljava/lang/Object;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;


# instance fields
.field private hash:I

.field private key:Ljava/lang/Object;

.field private next:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

.field private volatile valueReference:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;


# direct methods
.method constructor <init>(Ljava/lang/Object;ILcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 1

    .prologue
    .line 917
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 986
    invoke-static {}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->unset()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongEntry;->valueReference:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;

    .line 918
    iput-object p1, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongEntry;->key:Ljava/lang/Object;

    .line 919
    iput p2, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongEntry;->hash:I

    .line 920
    iput-object p3, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongEntry;->next:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    .line 921
    return-void
.end method


# virtual methods
.method public getExpirationTime()J
    .locals 1

    .prologue
    .line 932
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final getHash()I
    .locals 1

    .prologue
    .line 1002
    iget v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongEntry;->hash:I

    return v0
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 925
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public final getNext()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 1

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongEntry;->next:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    return-object v0
.end method

.method public getNextEvictable()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 1

    .prologue
    .line 964
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getNextExpirable()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 1

    .prologue
    .line 942
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPreviousEvictable()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 1

    .prologue
    .line 974
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPreviousExpirable()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 1

    .prologue
    .line 952
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final getValueReference()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;
    .locals 1

    .prologue
    .line 990
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongEntry;->valueReference:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;

    return-object v0
.end method

.method public setExpirationTime(J)V
    .locals 1

    .prologue
    .line 937
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setNextEvictable(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 1

    .prologue
    .line 969
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setNextExpirable(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 1

    .prologue
    .line 947
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setPreviousEvictable(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 1

    .prologue
    .line 979
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setPreviousExpirable(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 1

    .prologue
    .line 957
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final setValueReference(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;)V
    .locals 1

    .prologue
    .line 995
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongEntry;->valueReference:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;

    .line 996
    iput-object p1, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongEntry;->valueReference:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;

    .line 997
    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;->clear$5ca9f1d3()V

    .line 998
    return-void
.end method
