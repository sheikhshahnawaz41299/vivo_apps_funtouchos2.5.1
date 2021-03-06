.class public abstract Lcom/squareup/haha/guava/collect/ImmutableSortedMap;
.super Lcom/squareup/haha/guava/collect/ImmutableSortedMapFauxverideShim;
.source "ImmutableSortedMap.java"

# interfaces
.implements Ljava/util/NavigableMap;


# static fields
.field private static final NATURAL_ORDER:Ljava/util/Comparator;


# instance fields
.field private transient descendingMap:Lcom/squareup/haha/guava/collect/ImmutableSortedMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 65
    invoke-static {}, Lcom/squareup/haha/guava/collect/Ordering;->natural()Lcom/squareup/haha/guava/collect/Ordering;

    move-result-object v0

    sput-object v0, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->NATURAL_ORDER:Ljava/util/Comparator;

    .line 67
    new-instance v0, Lcom/squareup/haha/guava/collect/EmptyImmutableSortedMap;

    sget-object v1, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->NATURAL_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Lcom/squareup/haha/guava/collect/EmptyImmutableSortedMap;-><init>(Ljava/util/Comparator;)V

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 412
    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/ImmutableSortedMapFauxverideShim;-><init>()V

    .line 413
    return-void
.end method

.method constructor <init>(Lcom/squareup/haha/guava/collect/ImmutableSortedMap;)V
    .locals 0

    .prologue
    .line 415
    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/ImmutableSortedMapFauxverideShim;-><init>()V

    .line 416
    iput-object p1, p0, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->descendingMap:Lcom/squareup/haha/guava/collect/ImmutableSortedMap;

    .line 417
    return-void
.end method

.method private subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/squareup/haha/guava/collect/ImmutableSortedMap;
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 538
    invoke-static {p1}, Lcom/squareup/haha/guava/base/Ascii;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    invoke-static {p3}, Lcom/squareup/haha/guava/base/Ascii;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0, p1, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "expected fromKey <= toKey but %s > %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    aput-object p3, v4, v1

    invoke-static {v0, v3, v4}, Lcom/squareup/haha/guava/base/Ascii;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 542
    invoke-virtual {p0, p3}, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->headMap$166011c5(Ljava/lang/Object;)Lcom/squareup/haha/guava/collect/ImmutableSortedMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->tailMap$166011c5(Ljava/lang/Object;)Lcom/squareup/haha/guava/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    .line 540
    goto :goto_0
.end method


# virtual methods
.method public ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1

    .prologue
    .line 598
    invoke-virtual {p0, p1}, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->tailMap$166011c5(Ljava/lang/Object;)Lcom/squareup/haha/guava/collect/ImmutableSortedMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 603
    invoke-virtual {p0, p1}, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/haha/guava/collect/Maps;->keyOrNull(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 459
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->keySet()Lcom/squareup/haha/guava/collect/ImmutableSortedSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableSortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 425
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->values()Lcom/squareup/haha/guava/collect/ImmutableCollection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/haha/guava/collect/ImmutableCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method abstract createDescendingMap()Lcom/squareup/haha/guava/collect/ImmutableSortedMap;
.end method

.method public synthetic descendingKeySet()Ljava/util/NavigableSet;
    .locals 1

    .prologue
    .line 58
    .line 2670
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->keySet()Lcom/squareup/haha/guava/collect/ImmutableSortedSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableSortedSet;->descendingSet()Lcom/squareup/haha/guava/collect/ImmutableSortedSet;

    move-result-object v0

    .line 58
    return-object v0
.end method

.method public synthetic descendingMap()Ljava/util/NavigableMap;
    .locals 1

    .prologue
    .line 58
    .line 4654
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->descendingMap:Lcom/squareup/haha/guava/collect/ImmutableSortedMap;

    .line 4655
    if-nez v0, :cond_0

    .line 4656
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->createDescendingMap()Lcom/squareup/haha/guava/collect/ImmutableSortedMap;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->descendingMap:Lcom/squareup/haha/guava/collect/ImmutableSortedMap;

    .line 58
    :cond_0
    return-object v0
.end method

.method public entrySet()Lcom/squareup/haha/guava/collect/ImmutableSet;
    .locals 1

    .prologue
    .line 437
    invoke-super {p0}, Lcom/squareup/haha/guava/collect/ImmutableSortedMapFauxverideShim;->entrySet()Lcom/squareup/haha/guava/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->entrySet()Lcom/squareup/haha/guava/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public firstEntry()Ljava/util/Map$Entry;
    .locals 2

    .prologue
    .line 618
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->entrySet()Lcom/squareup/haha/guava/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableSet;->asList()Lcom/squareup/haha/guava/collect/ImmutableList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/squareup/haha/guava/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    goto :goto_0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 464
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->keySet()Lcom/squareup/haha/guava/collect/ImmutableSortedSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableSortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1

    .prologue
    .line 588
    invoke-virtual {p0, p1}, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->headMap$166011c5(Ljava/lang/Object;)Lcom/squareup/haha/guava/collect/ImmutableSortedMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public floorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 593
    invoke-virtual {p0, p1}, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/haha/guava/collect/Maps;->keyOrNull(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->headMap$166011c5(Ljava/lang/Object;)Lcom/squareup/haha/guava/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public synthetic headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1

    .prologue
    .line 58
    .line 2484
    invoke-virtual {p0, p1}, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->headMap$166011c5(Ljava/lang/Object;)Lcom/squareup/haha/guava/collect/ImmutableSortedMap;

    move-result-object v0

    .line 58
    return-object v0
.end method

.method public abstract headMap$166011c5(Ljava/lang/Object;)Lcom/squareup/haha/guava/collect/ImmutableSortedMap;
.end method

.method public higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1

    .prologue
    .line 608
    invoke-virtual {p0, p1}, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->tailMap$166011c5(Ljava/lang/Object;)Lcom/squareup/haha/guava/collect/ImmutableSortedMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public higherKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 613
    invoke-virtual {p0, p1}, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/haha/guava/collect/Maps;->keyOrNull(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method isPartialView()Z
    .locals 1

    .prologue
    .line 429
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->keySet()Lcom/squareup/haha/guava/collect/ImmutableSortedSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableSortedSet;->isPartialView()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->values()Lcom/squareup/haha/guava/collect/ImmutableCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableCollection;->isPartialView()Z

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

.method public bridge synthetic keySet()Lcom/squareup/haha/guava/collect/ImmutableSet;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->keySet()Lcom/squareup/haha/guava/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public abstract keySet()Lcom/squareup/haha/guava/collect/ImmutableSortedSet;
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->keySet()Lcom/squareup/haha/guava/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public lastEntry()Ljava/util/Map$Entry;
    .locals 2

    .prologue
    .line 623
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->entrySet()Lcom/squareup/haha/guava/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableSet;->asList()Lcom/squareup/haha/guava/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/squareup/haha/guava/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    goto :goto_0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 469
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->keySet()Lcom/squareup/haha/guava/collect/ImmutableSortedSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableSortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1

    .prologue
    .line 578
    invoke-virtual {p0, p1}, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->headMap$166011c5(Ljava/lang/Object;)Lcom/squareup/haha/guava/collect/ImmutableSortedMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public lowerKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 583
    invoke-virtual {p0, p1}, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/haha/guava/collect/Maps;->keyOrNull(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public synthetic navigableKeySet()Ljava/util/NavigableSet;
    .locals 1

    .prologue
    .line 58
    .line 3665
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->keySet()Lcom/squareup/haha/guava/collect/ImmutableSortedSet;

    move-result-object v0

    .line 58
    return-object v0
.end method

.method public final pollFirstEntry()Ljava/util/Map$Entry;
    .locals 1

    .prologue
    .line 635
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final pollLastEntry()Ljava/util/Map$Entry;
    .locals 1

    .prologue
    .line 647
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 421
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->values()Lcom/squareup/haha/guava/collect/ImmutableCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableCollection;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/squareup/haha/guava/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2

    .prologue
    .line 58
    .line 2517
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/squareup/haha/guava/collect/ImmutableSortedMap;

    move-result-object v0

    .line 58
    return-object v0
.end method

.method public synthetic tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->tailMap$166011c5(Ljava/lang/Object;)Lcom/squareup/haha/guava/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public synthetic tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1

    .prologue
    .line 58
    .line 1557
    invoke-virtual {p0, p1}, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->tailMap$166011c5(Ljava/lang/Object;)Lcom/squareup/haha/guava/collect/ImmutableSortedMap;

    move-result-object v0

    .line 58
    return-object v0
.end method

.method public abstract tailMap$166011c5(Ljava/lang/Object;)Lcom/squareup/haha/guava/collect/ImmutableSortedMap;
.end method

.method public abstract values()Lcom/squareup/haha/guava/collect/ImmutableCollection;
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;->values()Lcom/squareup/haha/guava/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method
