.class abstract Lcom/squareup/haha/guava/collect/AbstractMultiset;
.super Ljava/util/AbstractCollection;
.source "AbstractMultiset.java"

# interfaces
.implements Lcom/squareup/haha/guava/collect/Multiset;


# instance fields
.field private transient elementSet:Ljava/util/Set;

.field private transient entrySet:Ljava/util/Set;


# virtual methods
.method public add(Ljava/lang/Object;I)I
    .locals 1

    .prologue
    .line 86
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 80
    invoke-virtual {p0, p1, v0}, Lcom/squareup/haha/guava/collect/AbstractMultiset;->add(Ljava/lang/Object;I)I

    .line 81
    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 117
    invoke-static {p0, p1}, Lcom/squareup/haha/guava/collect/Multisets;->addAllImpl(Lcom/squareup/haha/guava/collect/Multiset;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/AbstractMultiset;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/haha/guava/collect/Iterators;->clear(Ljava/util/Iterator;)V

    .line 130
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/squareup/haha/guava/collect/AbstractMultiset;->count(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public count(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/AbstractMultiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/guava/collect/Multiset$Entry;

    .line 70
    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/squareup/haha/guava/base/Ascii;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/Multiset$Entry;->getCount()I

    move-result v0

    .line 74
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method abstract distinctElements()I
.end method

.method public final elementSet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMultiset;->elementSet:Ljava/util/Set;

    .line 139
    if-nez v0, :cond_0

    .line 1150
    new-instance v0, Lcom/squareup/haha/guava/collect/AbstractMultiset$ElementSet;

    invoke-direct {v0, p0}, Lcom/squareup/haha/guava/collect/AbstractMultiset$ElementSet;-><init>(Lcom/squareup/haha/guava/collect/AbstractMultiset;)V

    .line 140
    iput-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMultiset;->elementSet:Ljava/util/Set;

    .line 142
    :cond_0
    return-object v0
.end method

.method abstract entryIterator()Ljava/util/Iterator;
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMultiset;->entrySet:Ljava/util/Set;

    .line 168
    if-nez v0, :cond_0

    .line 1186
    new-instance v0, Lcom/squareup/haha/guava/collect/AbstractMultiset$EntrySet;

    invoke-direct {v0, p0}, Lcom/squareup/haha/guava/collect/AbstractMultiset$EntrySet;-><init>(Lcom/squareup/haha/guava/collect/AbstractMultiset;)V

    .line 168
    iput-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMultiset;->entrySet:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 199
    invoke-static {p0, p1}, Lcom/squareup/haha/guava/collect/Multisets;->equalsImpl(Lcom/squareup/haha/guava/collect/Multiset;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/AbstractMultiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/AbstractMultiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 64
    invoke-static {p0}, Lcom/squareup/haha/guava/collect/Multisets;->iteratorImpl(Lcom/squareup/haha/guava/collect/Multiset;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;I)I
    .locals 1

    .prologue
    .line 95
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 90
    invoke-virtual {p0, p1, v0}, Lcom/squareup/haha/guava/collect/AbstractMultiset;->remove(Ljava/lang/Object;I)I

    move-result v1

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 121
    invoke-static {p0, p1}, Lcom/squareup/haha/guava/collect/Multisets;->removeAllImpl(Lcom/squareup/haha/guava/collect/Multiset;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 125
    invoke-static {p0, p1}, Lcom/squareup/haha/guava/collect/Multisets;->retainAllImpl(Lcom/squareup/haha/guava/collect/Multiset;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public setCount(Ljava/lang/Object;I)I
    .locals 1

    .prologue
    .line 100
    invoke-static {p0, p1, p2}, Lcom/squareup/haha/guava/collect/Multisets;->setCountImpl(Lcom/squareup/haha/guava/collect/Multiset;Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public final setCount(Ljava/lang/Object;II)Z
    .locals 1

    .prologue
    .line 105
    invoke-static {p0, p1, p2, p3}, Lcom/squareup/haha/guava/collect/Multisets;->setCountImpl(Lcom/squareup/haha/guava/collect/Multiset;Ljava/lang/Object;II)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 52
    invoke-static {p0}, Lcom/squareup/haha/guava/collect/Multisets;->sizeImpl(Lcom/squareup/haha/guava/collect/Multiset;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/AbstractMultiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
