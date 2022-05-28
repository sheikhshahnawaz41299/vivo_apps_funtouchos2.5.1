.class final enum Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Strength$1;
.super Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Strength;
.source "MapMakerInternalMap.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 295
    invoke-direct {p0, p1, v0, v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Strength;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method final referenceValue(Lcom/squareup/haha/guava/collect/MapMakerInternalMap$Segment;Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;Ljava/lang/Object;)Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;
    .locals 1

    .prologue
    .line 299
    new-instance v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongValueReference;

    invoke-direct {v0, p3}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongValueReference;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
