.class abstract Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;
.super Lcom/squareup/haha/guava/collect/AbstractMultimap;
.source "AbstractMapBasedMultimap.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private transient map:Ljava/util/Map;

.field private transient totalSize:I


# direct methods
.method protected constructor <init>(Ljava/util/Map;)V
    .locals 1

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/AbstractMultimap;-><init>()V

    .line 123
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Lcom/squareup/haha/guava/base/Ascii;->checkArgument(Z)V

    .line 124
    iput-object p1, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    .line 125
    return-void
.end method

.method static synthetic access$000(Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;Ljava/util/Collection;)Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 91
    .line 3595
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic access$208(Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;)I
    .locals 2

    .prologue
    .line 91
    iget v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;->totalSize:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;->totalSize:I

    return v0
.end method

.method static synthetic access$210(Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;)I
    .locals 2

    .prologue
    .line 91
    iget v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;->totalSize:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;->totalSize:I

    return v0
.end method

.method static synthetic access$212(Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;I)I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;->totalSize:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;->totalSize:I

    return v0
.end method

.method static synthetic access$220(Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;I)I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;->totalSize:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;->totalSize:I

    return v0
.end method

.method static synthetic access$300(Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;Ljava/lang/Object;Ljava/util/List;Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$WrappedCollection;)Ljava/util/List;
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0, p1, p2, p3}, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;->wrapList(Ljava/lang/Object;Ljava/util/List;Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$WrappedCollection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 91
    .line 4111
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/squareup/haha/guava/collect/Maps;->safeRemove(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 4113
    const/4 v1, 0x0

    .line 4114
    if-eqz v0, :cond_0

    .line 4115
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    .line 4116
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 4117
    iget v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;->totalSize:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;->totalSize:I

    :cond_0
    move v0, v1

    .line 91
    return v0
.end method

.method private wrapList(Ljava/lang/Object;Ljava/util/List;Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$WrappedCollection;)Ljava/util/List;
    .locals 1

    .prologue
    .line 332
    instance-of v0, p2, Ljava/util/RandomAccess;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$RandomAccessWrappedList;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$RandomAccessWrappedList;-><init>(Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;Ljava/lang/Object;Ljava/util/List;Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$WrappedCollection;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$WrappedList;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$WrappedList;-><init>(Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;Ljava/lang/Object;Ljava/util/List;Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$WrappedCollection;)V

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 289
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    goto :goto_0

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 292
    const/4 v0, 0x0

    iput v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;->totalSize:I

    .line 293
    return-void
.end method

.method final createAsMap()Ljava/util/Map;
    .locals 2

    .prologue
    .line 1226
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    instance-of v0, v0, Ljava/util/SortedMap;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$SortedAsMap;

    iget-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    invoke-direct {v1, p0, v0}, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$SortedAsMap;-><init>(Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;Ljava/util/SortedMap;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$AsMap;

    iget-object v1, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$AsMap;-><init>(Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;Ljava/util/Map;)V

    goto :goto_0
.end method

.method abstract createCollection()Ljava/util/Collection;
.end method

.method final createKeySet()Ljava/util/Set;
    .locals 2

    .prologue
    .line 915
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    instance-of v0, v0, Ljava/util/SortedMap;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$SortedKeySet;

    iget-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    invoke-direct {v1, p0, v0}, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$SortedKeySet;-><init>(Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;Ljava/util/SortedMap;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$KeySet;

    iget-object v1, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$KeySet;-><init>(Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public entries()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 1201
    invoke-super {p0}, Lcom/squareup/haha/guava/collect/AbstractMultimap;->entries()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method final entryIterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 1214
    new-instance v0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$2;

    invoke-direct {v0, p0}, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$2;-><init>(Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 305
    if-nez v0, :cond_0

    .line 3169
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;->createCollection()Ljava/util/Collection;

    move-result-object v0

    .line 308
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;->wrapCollection(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 192
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 193
    if-nez v0, :cond_1

    .line 2169
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;->createCollection()Ljava/util/Collection;

    move-result-object v0

    .line 195
    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 196
    iget v2, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;->totalSize:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;->totalSize:I

    .line 197
    iget-object v2, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    .line 206
    :goto_0
    return v0

    .line 200
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "New Collection violated the Collection spec"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 202
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 203
    iget v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;->totalSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;->totalSize:I

    move v0, v1

    .line 204
    goto :goto_0

    .line 206
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;->totalSize:I

    return v0
.end method

.method final valueIterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 1175
    new-instance v0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$1;

    invoke-direct {v0, p0}, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$1;-><init>(Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;)V

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 1170
    invoke-super {p0}, Lcom/squareup/haha/guava/collect/AbstractMultimap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method final wrapCollection(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 319
    instance-of v0, p2, Ljava/util/SortedSet;

    if-eqz v0, :cond_0

    .line 320
    new-instance v0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$WrappedSortedSet;

    check-cast p2, Ljava/util/SortedSet;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$WrappedSortedSet;-><init>(Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;Ljava/lang/Object;Ljava/util/SortedSet;Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$WrappedCollection;)V

    .line 326
    :goto_0
    return-object v0

    .line 321
    :cond_0
    instance-of v0, p2, Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 322
    new-instance v0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$WrappedSet;

    check-cast p2, Ljava/util/Set;

    invoke-direct {v0, p0, p1, p2}, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$WrappedSet;-><init>(Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;Ljava/lang/Object;Ljava/util/Set;)V

    goto :goto_0

    .line 323
    :cond_1
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 324
    check-cast p2, Ljava/util/List;

    invoke-direct {p0, p1, p2, v1}, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;->wrapList(Ljava/lang/Object;Ljava/util/List;Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$WrappedCollection;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 326
    :cond_2
    new-instance v0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$WrappedCollection;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$WrappedCollection;-><init>(Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;Ljava/lang/Object;Ljava/util/Collection;Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$WrappedCollection;)V

    goto :goto_0
.end method
