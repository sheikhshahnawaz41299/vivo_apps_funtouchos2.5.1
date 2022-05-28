.class public abstract Lcom/squareup/haha/guava/collect/ForwardingList;
.super Lcom/squareup/haha/guava/collect/ForwardingCollection;
.source "ForwardingList.java"

# interfaces
.implements Ljava/util/List;


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 67
    return-void
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected final bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingList;->delegate()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingList;->delegate()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected abstract delegate()Ljava/util/List;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 115
    if-eq p1, p0, :cond_0

    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

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

.method public get(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ForwardingList;->delegate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
