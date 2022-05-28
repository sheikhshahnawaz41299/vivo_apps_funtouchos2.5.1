.class final Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueIterator;
.super Lcom/squareup/haha/guava/collect/MapMakerInternalMap$HashIterator;
.source "MapMakerInternalMap.java"


# direct methods
.method constructor <init>(Lcom/squareup/haha/guava/collect/MapMakerInternalMap;)V
    .locals 0

    .prologue
    .line 3710
    invoke-direct {p0, p1}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$HashIterator;-><init>(Lcom/squareup/haha/guava/collect/MapMakerInternalMap;)V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3714
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueIterator;->nextEntry()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WriteThroughEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$WriteThroughEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
