.class final Lcom/squareup/haha/guava/collect/MapMakerInternalMap$SoftValueReference;
.super Ljava/lang/ref/SoftReference;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;


# instance fields
.field private entry:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 0

    .prologue
    .line 1730
    invoke-direct {p0, p2, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 1731
    iput-object p3, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$SoftValueReference;->entry:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    .line 1732
    return-void
.end method


# virtual methods
.method public final clear$5ca9f1d3()V
    .locals 0

    .prologue
    .line 1741
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$SoftValueReference;->clear()V

    .line 1742
    return-void
.end method

.method public final copyFor(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;
    .locals 1

    .prologue
    .line 1747
    new-instance v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$SoftValueReference;

    invoke-direct {v0, p1, p2, p3}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$SoftValueReference;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)V

    return-object v0
.end method

.method public final getEntry()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 1

    .prologue
    .line 1736
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$SoftValueReference;->entry:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    return-object v0
.end method
