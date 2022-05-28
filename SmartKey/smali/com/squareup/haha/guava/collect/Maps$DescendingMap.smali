.class abstract Lcom/squareup/haha/guava/collect/Maps$DescendingMap;
.super Lcom/squareup/haha/guava/collect/ForwardingMap;
.source "Maps.java"

# interfaces
.implements Ljava/util/NavigableMap;


# instance fields
.field private transient comparator:Ljava/util/Comparator;

.field private transient entrySet:Ljava/util/Set;

.field private transient navigableKeySet:Ljava/util/NavigableSet;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3789
    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/ForwardingMap;-><init>()V

    return-void
.end method


# virtual methods
.method public ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1

    .prologue
    .line 3852
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/Maps$DescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3857
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/Maps$DescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->floorKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 3804
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/Maps$DescendingMap;->comparator:Ljava/util/Comparator;

    .line 3805
    if-nez v0, :cond_1

    .line 3806
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/Maps$DescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    .line 3807
    if-nez v0, :cond_0

    .line 3808
    invoke-static {}, Lcom/squareup/haha/guava/collect/Ordering;->natural()Lcom/squareup/haha/guava/collect/Ordering;

    move-result-object v0

    .line 4817
    :cond_0
    invoke-static {v0}, Lcom/squareup/haha/guava/collect/Ordering;->from(Ljava/util/Comparator;)Lcom/squareup/haha/guava/collect/Ordering;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/Ordering;->reverse()Lcom/squareup/haha/guava/collect/Ordering;

    move-result-object v0

    .line 3810
    iput-object v0, p0, Lcom/squareup/haha/guava/collect/Maps$DescendingMap;->comparator:Ljava/util/Comparator;

    .line 3812
    :cond_1
    return-object v0
.end method

.method protected final synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3788
    .line 5796
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/Maps$DescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object v0

    .line 3788
    return-object v0
.end method

.method protected final delegate()Ljava/util/Map;
    .locals 1

    .prologue
    .line 3796
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/Maps$DescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public descendingKeySet()Ljava/util/NavigableSet;
    .locals 1

    .prologue
    .line 3934
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/Maps$DescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public descendingMap()Ljava/util/NavigableMap;
    .locals 1

    .prologue
    .line 3892
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/Maps$DescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method abstract entryIterator()Ljava/util/Iterator;
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 3899
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/Maps$DescendingMap;->entrySet:Ljava/util/Set;

    .line 3900
    if-nez v0, :cond_0

    .line 4906
    new-instance v0, Lcom/squareup/haha/guava/collect/Maps$DescendingMap$1;

    invoke-direct {v0, p0}, Lcom/squareup/haha/guava/collect/Maps$DescendingMap$1;-><init>(Lcom/squareup/haha/guava/collect/Maps$DescendingMap;)V

    .line 3900
    iput-object v0, p0, Lcom/squareup/haha/guava/collect/Maps$DescendingMap;->entrySet:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public firstEntry()Ljava/util/Map$Entry;
    .locals 1

    .prologue
    .line 3872
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/Maps$DescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3822
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/Maps$DescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1

    .prologue
    .line 3842
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/Maps$DescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public floorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3847
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/Maps$DescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method abstract forward()Ljava/util/NavigableMap;
.end method

.method public headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1

    .prologue
    .line 3946
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/Maps$DescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1

    .prologue
    .line 3961
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/squareup/haha/guava/collect/Maps$DescendingMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1

    .prologue
    .line 3862
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/Maps$DescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public higherKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3867
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/Maps$DescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->lowerKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 3921
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/Maps$DescendingMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public lastEntry()Ljava/util/Map$Entry;
    .locals 1

    .prologue
    .line 3877
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/Maps$DescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3827
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/Maps$DescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1

    .prologue
    .line 3832
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/Maps$DescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public lowerKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3837
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/Maps$DescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public navigableKeySet()Ljava/util/NavigableSet;
    .locals 1

    .prologue
    .line 3928
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/Maps$DescendingMap;->navigableKeySet:Ljava/util/NavigableSet;

    .line 3929
    if-nez v0, :cond_0

    new-instance v0, Lcom/squareup/haha/guava/collect/Maps$NavigableKeySet;

    invoke-direct {v0, p0}, Lcom/squareup/haha/guava/collect/Maps$NavigableKeySet;-><init>(Ljava/util/NavigableMap;)V

    iput-object v0, p0, Lcom/squareup/haha/guava/collect/Maps$DescendingMap;->navigableKeySet:Ljava/util/NavigableSet;

    :cond_0
    return-object v0
.end method

.method public pollFirstEntry()Ljava/util/Map$Entry;
    .locals 1

    .prologue
    .line 3882
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/Maps$DescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->pollLastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public pollLastEntry()Ljava/util/Map$Entry;
    .locals 1

    .prologue
    .line 3887
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/Maps$DescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1

    .prologue
    .line 3941
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/Maps$DescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p3, p4, p1, p2}, Ljava/util/NavigableMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2

    .prologue
    .line 3956
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/squareup/haha/guava/collect/Maps$DescendingMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 1

    .prologue
    .line 3951
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/Maps$DescendingMap;->forward()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/NavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1

    .prologue
    .line 3966
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/squareup/haha/guava/collect/Maps$DescendingMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3976
    .line 5307
    invoke-static {p0}, Lcom/squareup/haha/guava/collect/Maps;->toStringImpl(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 3976
    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 3971
    new-instance v0, Lcom/squareup/haha/guava/collect/Maps$Values;

    invoke-direct {v0, p0}, Lcom/squareup/haha/guava/collect/Maps$Values;-><init>(Ljava/util/Map;)V

    return-object v0
.end method
