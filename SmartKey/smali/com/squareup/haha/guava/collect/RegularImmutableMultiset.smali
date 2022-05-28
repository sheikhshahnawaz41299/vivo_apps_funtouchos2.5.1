.class final Lcom/squareup/haha/guava/collect/RegularImmutableMultiset;
.super Lcom/squareup/haha/guava/collect/ImmutableMultiset;
.source "RegularImmutableMultiset.java"


# instance fields
.field private final transient map:Lcom/squareup/haha/guava/collect/ImmutableMap;

.field private final transient size:I


# direct methods
.method constructor <init>(Lcom/squareup/haha/guava/collect/ImmutableMap;I)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/ImmutableMultiset;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/squareup/haha/guava/collect/RegularImmutableMultiset;->map:Lcom/squareup/haha/guava/collect/ImmutableMap;

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/squareup/haha/guava/collect/RegularImmutableMultiset;->size:I

    .line 41
    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/RegularImmutableMultiset;->map:Lcom/squareup/haha/guava/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/squareup/haha/guava/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final count(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/RegularImmutableMultiset;->map:Lcom/squareup/haha/guava/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lcom/squareup/haha/guava/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 51
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public final synthetic elementSet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 31
    .line 1066
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/RegularImmutableMultiset;->map:Lcom/squareup/haha/guava/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableMap;->keySet()Lcom/squareup/haha/guava/collect/ImmutableSet;

    move-result-object v0

    .line 31
    return-object v0
.end method

.method final getEntry(I)Lcom/squareup/haha/guava/collect/Multiset$Entry;
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/RegularImmutableMultiset;->map:Lcom/squareup/haha/guava/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableMap;->entrySet()Lcom/squareup/haha/guava/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableSet;->asList()Lcom/squareup/haha/guava/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/haha/guava/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 72
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/squareup/haha/guava/collect/Multisets;->immutableEntry(Ljava/lang/Object;I)Lcom/squareup/haha/guava/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/RegularImmutableMultiset;->map:Lcom/squareup/haha/guava/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableMap;->hashCode()I

    move-result v0

    return v0
.end method

.method final isPartialView()Z
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/RegularImmutableMultiset;->map:Lcom/squareup/haha/guava/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableMap;->isPartialView()Z

    move-result v0

    return v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/squareup/haha/guava/collect/RegularImmutableMultiset;->size:I

    return v0
.end method
