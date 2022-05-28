.class abstract Lcom/squareup/haha/guava/collect/Multimaps$Entries;
.super Ljava/util/AbstractCollection;
.source "Multimaps.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1639
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 1664
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/Multimaps$Entries;->multimap()Lcom/squareup/haha/guava/collect/Multimap;

    move-result-object v0

    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/Multimap;->clear()V

    .line 1665
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 1648
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 1649
    check-cast p1, Ljava/util/Map$Entry;

    .line 1650
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/Multimaps$Entries;->multimap()Lcom/squareup/haha/guava/collect/Multimap;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/squareup/haha/guava/collect/Multimap;->containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 1652
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method abstract multimap()Lcom/squareup/haha/guava/collect/Multimap;
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 1656
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 1657
    check-cast p1, Ljava/util/Map$Entry;

    .line 1658
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/Multimaps$Entries;->multimap()Lcom/squareup/haha/guava/collect/Multimap;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/squareup/haha/guava/collect/Multimap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 1660
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1644
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/Multimaps$Entries;->multimap()Lcom/squareup/haha/guava/collect/Multimap;

    move-result-object v0

    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/Multimap;->size()I

    move-result v0

    return v0
.end method
