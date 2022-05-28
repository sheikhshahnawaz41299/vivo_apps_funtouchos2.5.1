.class final Lcom/squareup/haha/guava/collect/ImmutableMultimap$EntryCollection;
.super Lcom/squareup/haha/guava/collect/ImmutableCollection;
.source "ImmutableMultimap.java"


# instance fields
.field private multimap:Lcom/squareup/haha/guava/collect/ImmutableMultimap;


# direct methods
.method constructor <init>(Lcom/squareup/haha/guava/collect/ImmutableMultimap;)V
    .locals 0

    .prologue
    .line 504
    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/ImmutableCollection;-><init>()V

    .line 505
    iput-object p1, p0, Lcom/squareup/haha/guava/collect/ImmutableMultimap$EntryCollection;->multimap:Lcom/squareup/haha/guava/collect/ImmutableMultimap;

    .line 506
    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 522
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 523
    check-cast p1, Ljava/util/Map$Entry;

    .line 524
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/ImmutableMultimap$EntryCollection;->multimap:Lcom/squareup/haha/guava/collect/ImmutableMultimap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/squareup/haha/guava/collect/ImmutableMultimap;->containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 526
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final isPartialView()Z
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/ImmutableMultimap$EntryCollection;->multimap:Lcom/squareup/haha/guava/collect/ImmutableMultimap;

    .line 1438
    iget-object v0, v0, Lcom/squareup/haha/guava/collect/ImmutableMultimap;->map:Lcom/squareup/haha/guava/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableMap;->isPartialView()Z

    move-result v0

    .line 513
    return v0
.end method

.method public final iterator()Lcom/squareup/haha/guava/collect/UnmodifiableIterator;
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/ImmutableMultimap$EntryCollection;->multimap:Lcom/squareup/haha/guava/collect/ImmutableMultimap;

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableMultimap;->entryIterator()Lcom/squareup/haha/guava/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 500
    .line 1509
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/ImmutableMultimap$EntryCollection;->multimap:Lcom/squareup/haha/guava/collect/ImmutableMultimap;

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableMultimap;->entryIterator()Lcom/squareup/haha/guava/collect/UnmodifiableIterator;

    move-result-object v0

    .line 500
    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/ImmutableMultimap$EntryCollection;->multimap:Lcom/squareup/haha/guava/collect/ImmutableMultimap;

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableMultimap;->size()I

    move-result v0

    return v0
.end method
