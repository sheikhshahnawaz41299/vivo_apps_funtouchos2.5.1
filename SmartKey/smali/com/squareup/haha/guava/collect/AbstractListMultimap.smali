.class abstract Lcom/squareup/haha/guava/collect/AbstractListMultimap;
.super Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;
.source "AbstractListMultimap.java"

# interfaces
.implements Lcom/squareup/haha/guava/collect/ListMultimap;


# direct methods
.method protected constructor <init>(Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;-><init>(Ljava/util/Map;)V

    .line 47
    return-void
.end method


# virtual methods
.method public asMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 110
    invoke-super {p0}, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;->asMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic createCollection()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/AbstractListMultimap;->createCollection()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method abstract createCollection()Ljava/util/List;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 121
    invoke-super {p0, p1}, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/squareup/haha/guava/collect/AbstractListMultimap;->get(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 100
    invoke-super {p0, p1, p2}, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
