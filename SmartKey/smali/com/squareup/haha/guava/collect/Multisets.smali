.class public final Lcom/squareup/haha/guava/collect/Multisets;
.super Ljava/lang/Object;
.source "Multisets.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1063
    new-instance v0, Lcom/squareup/haha/guava/collect/Multisets$5;

    invoke-direct {v0}, Lcom/squareup/haha/guava/collect/Multisets$5;-><init>()V

    return-void
.end method

.method static addAllImpl(Lcom/squareup/haha/guava/collect/Multiset;Ljava/util/Collection;)Z
    .locals 3

    .prologue
    .line 833
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 834
    const/4 v0, 0x0

    .line 844
    :goto_0
    return v0

    .line 836
    :cond_0
    instance-of v0, p1, Lcom/squareup/haha/guava/collect/Multiset;

    if-eqz v0, :cond_1

    .line 2060
    check-cast p1, Lcom/squareup/haha/guava/collect/Multiset;

    .line 838
    invoke-interface {p1}, Lcom/squareup/haha/guava/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/guava/collect/Multiset$Entry;

    .line 839
    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/Multiset$Entry;->getCount()I

    move-result v0

    invoke-interface {p0, v2, v0}, Lcom/squareup/haha/guava/collect/Multiset;->add(Ljava/lang/Object;I)I

    goto :goto_1

    .line 842
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/squareup/haha/guava/collect/Iterators;->addAll(Ljava/util/Collection;Ljava/util/Iterator;)Z

    .line 844
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static equalsImpl(Lcom/squareup/haha/guava/collect/Multiset;Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 803
    if-ne p1, p0, :cond_0

    move v0, v1

    .line 825
    :goto_0
    return v0

    .line 806
    :cond_0
    instance-of v0, p1, Lcom/squareup/haha/guava/collect/Multiset;

    if-eqz v0, :cond_5

    .line 807
    check-cast p1, Lcom/squareup/haha/guava/collect/Multiset;

    .line 814
    invoke-interface {p0}, Lcom/squareup/haha/guava/collect/Multiset;->size()I

    move-result v0

    invoke-interface {p1}, Lcom/squareup/haha/guava/collect/Multiset;->size()I

    move-result v3

    if-ne v0, v3, :cond_1

    invoke-interface {p0}, Lcom/squareup/haha/guava/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-interface {p1}, Lcom/squareup/haha/guava/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-eq v0, v3, :cond_2

    :cond_1
    move v0, v2

    .line 816
    goto :goto_0

    .line 818
    :cond_2
    invoke-interface {p1}, Lcom/squareup/haha/guava/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/guava/collect/Multiset$Entry;

    .line 819
    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p0, v4}, Lcom/squareup/haha/guava/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/Multiset$Entry;->getCount()I

    move-result v0

    if-eq v4, v0, :cond_3

    move v0, v2

    .line 820
    goto :goto_0

    :cond_4
    move v0, v1

    .line 823
    goto :goto_0

    :cond_5
    move v0, v2

    .line 825
    goto :goto_0
.end method

.method public static immutableEntry(Ljava/lang/Object;I)Lcom/squareup/haha/guava/collect/Multiset$Entry;
    .locals 1

    .prologue
    .line 212
    new-instance v0, Lcom/squareup/haha/guava/collect/Multisets$ImmutableEntry;

    invoke-direct {v0, p0, p1}, Lcom/squareup/haha/guava/collect/Multisets$ImmutableEntry;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method static iteratorImpl(Lcom/squareup/haha/guava/collect/Multiset;)Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 993
    new-instance v0, Lcom/squareup/haha/guava/collect/Multisets$MultisetIteratorImpl;

    invoke-interface {p0}, Lcom/squareup/haha/guava/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/squareup/haha/guava/collect/Multisets$MultisetIteratorImpl;-><init>(Lcom/squareup/haha/guava/collect/Multiset;Ljava/util/Iterator;)V

    return-object v0
.end method

.method static removeAllImpl(Lcom/squareup/haha/guava/collect/Multiset;Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 852
    instance-of v0, p1, Lcom/squareup/haha/guava/collect/Multiset;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/squareup/haha/guava/collect/Multiset;

    invoke-interface {p1}, Lcom/squareup/haha/guava/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object p1

    .line 855
    :cond_0
    invoke-interface {p0}, Lcom/squareup/haha/guava/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method static retainAllImpl(Lcom/squareup/haha/guava/collect/Multiset;Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 863
    invoke-static {p1}, Lcom/squareup/haha/guava/base/Ascii;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    instance-of v0, p1, Lcom/squareup/haha/guava/collect/Multiset;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/squareup/haha/guava/collect/Multiset;

    invoke-interface {p1}, Lcom/squareup/haha/guava/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object p1

    .line 867
    :cond_0
    invoke-interface {p0}, Lcom/squareup/haha/guava/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method static setCountImpl(Lcom/squareup/haha/guava/collect/Multiset;Ljava/lang/Object;I)I
    .locals 2

    .prologue
    .line 874
    const-string v0, "count"

    invoke-static {p2, v0}, Lcom/squareup/haha/guava/base/Ascii;->checkNonnegative(ILjava/lang/String;)I

    .line 876
    invoke-interface {p0, p1}, Lcom/squareup/haha/guava/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v0

    .line 878
    sub-int v1, p2, v0

    .line 879
    if-lez v1, :cond_1

    .line 880
    invoke-interface {p0, p1, v1}, Lcom/squareup/haha/guava/collect/Multiset;->add(Ljava/lang/Object;I)I

    .line 885
    :cond_0
    :goto_0
    return v0

    .line 881
    :cond_1
    if-gez v1, :cond_0

    .line 882
    neg-int v1, v1

    invoke-interface {p0, p1, v1}, Lcom/squareup/haha/guava/collect/Multiset;->remove(Ljava/lang/Object;I)I

    goto :goto_0
.end method

.method static setCountImpl(Lcom/squareup/haha/guava/collect/Multiset;Ljava/lang/Object;II)Z
    .locals 1

    .prologue
    .line 893
    const-string v0, "oldCount"

    invoke-static {p2, v0}, Lcom/squareup/haha/guava/base/Ascii;->checkNonnegative(ILjava/lang/String;)I

    .line 894
    const-string v0, "newCount"

    invoke-static {p3, v0}, Lcom/squareup/haha/guava/base/Ascii;->checkNonnegative(ILjava/lang/String;)I

    .line 896
    invoke-interface {p0, p1}, Lcom/squareup/haha/guava/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 897
    invoke-interface {p0, p1, p3}, Lcom/squareup/haha/guava/collect/Multiset;->setCount(Ljava/lang/Object;I)I

    .line 898
    const/4 v0, 0x1

    .line 900
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static sizeImpl(Lcom/squareup/haha/guava/collect/Multiset;)I
    .locals 5

    .prologue
    .line 1049
    const-wide/16 v0, 0x0

    .line 1050
    invoke-interface {p0}, Lcom/squareup/haha/guava/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/guava/collect/Multiset$Entry;

    .line 1051
    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/Multiset$Entry;->getCount()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, v2

    move-wide v2, v0

    .line 1052
    goto :goto_0

    .line 1053
    :cond_0
    invoke-static {v2, v3}, Lcom/squareup/haha/guava/primitives/Ints;->saturatedCast(J)I

    move-result v0

    return v0
.end method
