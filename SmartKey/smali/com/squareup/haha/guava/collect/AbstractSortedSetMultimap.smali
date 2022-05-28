.class abstract Lcom/squareup/haha/guava/collect/AbstractSortedSetMultimap;
.super Lcom/squareup/haha/guava/collect/AbstractSetMultimap;
.source "AbstractSortedSetMultimap.java"

# interfaces
.implements Lcom/squareup/haha/guava/collect/SetMultimap;


# direct methods
.method private get(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/squareup/haha/guava/collect/AbstractSetMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    return-object v0
.end method


# virtual methods
.method public final asMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 123
    invoke-super {p0}, Lcom/squareup/haha/guava/collect/AbstractSetMultimap;->asMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method final bridge synthetic createCollection()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/AbstractSortedSetMultimap;->createCollection()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method final bridge synthetic createCollection()Ljava/util/Set;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/AbstractSortedSetMultimap;->createCollection()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method abstract createCollection()Ljava/util/SortedSet;
.end method

.method public final bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/squareup/haha/guava/collect/AbstractSortedSetMultimap;->get(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic get(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/squareup/haha/guava/collect/AbstractSortedSetMultimap;->get(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public final values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 133
    invoke-super {p0}, Lcom/squareup/haha/guava/collect/AbstractSetMultimap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
