.class public abstract Lcom/squareup/haha/guava/collect/ForwardingMultimap;
.super Lcom/squareup/haha/guava/collect/ForwardingObject;
.source "ForwardingMultimap.java"

# interfaces
.implements Lcom/squareup/haha/guava/collect/Multimap;


# virtual methods
.method public final asMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingMultimap;->delegate()Lcom/squareup/haha/guava/collect/Multimap;

    move-result-object v0

    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final clear()V
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingMultimap;->delegate()Lcom/squareup/haha/guava/collect/Multimap;

    move-result-object v0

    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/Multimap;->clear()V

    .line 54
    return-void
.end method

.method public final containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingMultimap;->delegate()Lcom/squareup/haha/guava/collect/Multimap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/squareup/haha/guava/collect/Multimap;->containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected abstract delegate()Lcom/squareup/haha/guava/collect/Multimap;
.end method

.method protected final bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingMultimap;->delegate()Lcom/squareup/haha/guava/collect/Multimap;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 137
    if-eq p1, p0, :cond_0

    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingMultimap;->delegate()Lcom/squareup/haha/guava/collect/Multimap;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/squareup/haha/guava/collect/Multimap;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingMultimap;->delegate()Lcom/squareup/haha/guava/collect/Multimap;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/squareup/haha/guava/collect/Multimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingMultimap;->delegate()Lcom/squareup/haha/guava/collect/Multimap;

    move-result-object v0

    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/Multimap;->hashCode()I

    move-result v0

    return v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingMultimap;->delegate()Lcom/squareup/haha/guava/collect/Multimap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/squareup/haha/guava/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingMultimap;->delegate()Lcom/squareup/haha/guava/collect/Multimap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/squareup/haha/guava/collect/Multimap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingMultimap;->delegate()Lcom/squareup/haha/guava/collect/Multimap;

    move-result-object v0

    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/Multimap;->size()I

    move-result v0

    return v0
.end method

.method public final values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingMultimap;->delegate()Lcom/squareup/haha/guava/collect/Multimap;

    move-result-object v0

    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/Multimap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
