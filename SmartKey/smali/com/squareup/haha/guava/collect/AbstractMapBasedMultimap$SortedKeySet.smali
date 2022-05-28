.class final Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$SortedKeySet;
.super Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$KeySet;
.source "AbstractMapBasedMultimap.java"

# interfaces
.implements Ljava/util/SortedSet;


# instance fields
.field private synthetic this$0:Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;


# direct methods
.method constructor <init>(Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;Ljava/util/SortedMap;)V
    .locals 0

    .prologue
    .line 983
    iput-object p1, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$SortedKeySet;->this$0:Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;

    .line 984
    invoke-direct {p0, p1, p2}, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$KeySet;-><init>(Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;Ljava/util/Map;)V

    .line 985
    return-void
.end method


# virtual methods
.method public final comparator()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 993
    .line 1988
    invoke-super {p0}, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$KeySet;->map()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;

    .line 993
    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public final first()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 998
    .line 2988
    invoke-super {p0}, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$KeySet;->map()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;

    .line 998
    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 3

    .prologue
    .line 1003
    new-instance v1, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$SortedKeySet;

    iget-object v2, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$SortedKeySet;->this$0:Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;

    .line 3988
    invoke-super {p0}, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$KeySet;->map()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;

    .line 1003
    invoke-interface {v0, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$SortedKeySet;-><init>(Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;Ljava/util/SortedMap;)V

    return-object v1
.end method

.method public final last()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1008
    .line 4988
    invoke-super {p0}, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$KeySet;->map()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;

    .line 1008
    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 3

    .prologue
    .line 1013
    new-instance v1, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$SortedKeySet;

    iget-object v2, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$SortedKeySet;->this$0:Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;

    .line 5988
    invoke-super {p0}, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$KeySet;->map()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;

    .line 1013
    invoke-interface {v0, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$SortedKeySet;-><init>(Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;Ljava/util/SortedMap;)V

    return-object v1
.end method

.method public final tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 3

    .prologue
    .line 1018
    new-instance v1, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$SortedKeySet;

    iget-object v2, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$SortedKeySet;->this$0:Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;

    .line 6988
    invoke-super {p0}, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$KeySet;->map()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;

    .line 1018
    invoke-interface {v0, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$SortedKeySet;-><init>(Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;Ljava/util/SortedMap;)V

    return-object v1
.end method
