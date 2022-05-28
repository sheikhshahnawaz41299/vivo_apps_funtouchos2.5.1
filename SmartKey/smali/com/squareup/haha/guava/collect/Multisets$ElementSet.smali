.class abstract Lcom/squareup/haha/guava/collect/Multisets$ElementSet;
.super Lcom/squareup/haha/guava/collect/Sets$ImprovedAbstractSet;
.source "Multisets.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 904
    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/Sets$ImprovedAbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 908
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/Multisets$ElementSet;->multiset()Lcom/squareup/haha/guava/collect/Multiset;

    move-result-object v0

    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/Multiset;->clear()V

    .line 909
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 912
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/Multisets$ElementSet;->multiset()Lcom/squareup/haha/guava/collect/Multiset;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/squareup/haha/guava/collect/Multiset;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 916
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/Multisets$ElementSet;->multiset()Lcom/squareup/haha/guava/collect/Multiset;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/squareup/haha/guava/collect/Multiset;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 920
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/Multisets$ElementSet;->multiset()Lcom/squareup/haha/guava/collect/Multiset;

    move-result-object v0

    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/Multiset;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 924
    new-instance v0, Lcom/squareup/haha/guava/collect/Multisets$ElementSet$1;

    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/Multisets$ElementSet;->multiset()Lcom/squareup/haha/guava/collect/Multiset;

    move-result-object v1

    invoke-interface {v1}, Lcom/squareup/haha/guava/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/squareup/haha/guava/collect/Multisets$ElementSet$1;-><init>(Lcom/squareup/haha/guava/collect/Multisets$ElementSet;Ljava/util/Iterator;)V

    return-object v0
.end method

.method abstract multiset()Lcom/squareup/haha/guava/collect/Multiset;
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 934
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/Multisets$ElementSet;->multiset()Lcom/squareup/haha/guava/collect/Multiset;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/squareup/haha/guava/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v0

    .line 935
    if-lez v0, :cond_0

    .line 936
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/Multisets$ElementSet;->multiset()Lcom/squareup/haha/guava/collect/Multiset;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/squareup/haha/guava/collect/Multiset;->remove(Ljava/lang/Object;I)I

    .line 937
    const/4 v0, 0x1

    .line 939
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 943
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/Multisets$ElementSet;->multiset()Lcom/squareup/haha/guava/collect/Multiset;

    move-result-object v0

    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/Multiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
