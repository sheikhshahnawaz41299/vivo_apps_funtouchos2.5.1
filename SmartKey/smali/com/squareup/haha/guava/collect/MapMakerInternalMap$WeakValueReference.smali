.class final Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakValueReference;
.super Ljava/lang/ref/WeakReference;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;


# instance fields
.field private entry:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)V
    .locals 0

    .prologue
    .line 1691
    invoke-direct {p0, p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 1692
    iput-object p3, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakValueReference;->entry:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    .line 1693
    return-void
.end method


# virtual methods
.method public final clear$5ca9f1d3()V
    .locals 0

    .prologue
    .line 1702
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakValueReference;->clear()V

    .line 1703
    return-void
.end method

.method public final copyFor(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;
    .locals 1

    .prologue
    .line 1708
    new-instance v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakValueReference;

    invoke-direct {v0, p1, p2, p3}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakValueReference;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)V

    return-object v0
.end method

.method public final getEntry()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 1

    .prologue
    .line 1697
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WeakValueReference;->entry:Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;

    return-object v0
.end method
