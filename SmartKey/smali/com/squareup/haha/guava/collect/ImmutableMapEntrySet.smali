.class abstract Lcom/squareup/haha/guava/collect/ImmutableMapEntrySet;
.super Lcom/squareup/haha/guava/collect/ImmutableSet;
.source "ImmutableMapEntrySet.java"


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 46
    instance-of v1, p1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_0

    .line 47
    check-cast p1, Ljava/util/Map$Entry;

    .line 48
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableMapEntrySet;->map()Lcom/squareup/haha/guava/collect/ImmutableMap;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/haha/guava/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 49
    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 51
    :cond_0
    return v0
.end method

.method final isPartialView()Z
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableMapEntrySet;->map()Lcom/squareup/haha/guava/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableMap;->isPartialView()Z

    move-result v0

    return v0
.end method

.method abstract map()Lcom/squareup/haha/guava/collect/ImmutableMap;
.end method

.method public size()I
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableMapEntrySet;->map()Lcom/squareup/haha/guava/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableMap;->size()I

    move-result v0

    return v0
.end method
