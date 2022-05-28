.class public abstract Lcom/squareup/haha/guava/collect/ForwardingMultiset;
.super Lcom/squareup/haha/guava/collect/ForwardingCollection;
.source "ForwardingMultiset.java"

# interfaces
.implements Lcom/squareup/haha/guava/collect/Multiset;


# virtual methods
.method public final add(Ljava/lang/Object;I)I
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingMultiset;->delegate()Lcom/squareup/haha/guava/collect/Multiset;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/squareup/haha/guava/collect/Multiset;->add(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public final count(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingMultiset;->delegate()Lcom/squareup/haha/guava/collect/Multiset;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/squareup/haha/guava/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected abstract delegate()Lcom/squareup/haha/guava/collect/Multiset;
.end method

.method protected final bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingMultiset;->delegate()Lcom/squareup/haha/guava/collect/Multiset;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingMultiset;->delegate()Lcom/squareup/haha/guava/collect/Multiset;

    move-result-object v0

    return-object v0
.end method

.method public final elementSet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingMultiset;->delegate()Lcom/squareup/haha/guava/collect/Multiset;

    move-result-object v0

    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingMultiset;->delegate()Lcom/squareup/haha/guava/collect/Multiset;

    move-result-object v0

    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 86
    if-eq p1, p0, :cond_0

    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingMultiset;->delegate()Lcom/squareup/haha/guava/collect/Multiset;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/squareup/haha/guava/collect/Multiset;->equals(Ljava/lang/Object;)Z

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

.method public hashCode()I
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingMultiset;->delegate()Lcom/squareup/haha/guava/collect/Multiset;

    move-result-object v0

    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/Multiset;->hashCode()I

    move-result v0

    return v0
.end method

.method public final remove(Ljava/lang/Object;I)I
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingMultiset;->delegate()Lcom/squareup/haha/guava/collect/Multiset;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/squareup/haha/guava/collect/Multiset;->remove(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public final setCount(Ljava/lang/Object;I)I
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingMultiset;->delegate()Lcom/squareup/haha/guava/collect/Multiset;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/squareup/haha/guava/collect/Multiset;->setCount(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public final setCount(Ljava/lang/Object;II)Z
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingMultiset;->delegate()Lcom/squareup/haha/guava/collect/Multiset;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/squareup/haha/guava/collect/Multiset;->setCount(Ljava/lang/Object;II)Z

    move-result v0

    return v0
.end method
