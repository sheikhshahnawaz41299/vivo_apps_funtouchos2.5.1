.class abstract Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;
.super Lcom/squareup/haha/guava/collect/AbstractMultiset;
.source "AbstractMapBasedMultiset.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private transient size:J


# direct methods
.method static synthetic access$000(Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic access$110(Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;)J
    .locals 4

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;->size:J

    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;->size:J

    return-wide v0
.end method

.method static synthetic access$122(Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;J)J
    .locals 3

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;->size:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;->size:J

    return-wide v0
.end method

.method private static getAndSet(Lcom/squareup/haha/guava/collect/Count;I)I
    .locals 1

    .prologue
    .line 285
    if-nez p0, :cond_0

    .line 286
    const/4 v0, 0x0

    .line 289
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/squareup/haha/guava/collect/Count;->getAndSet(I)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public final add(Ljava/lang/Object;I)I
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 215
    if-nez p2, :cond_0

    .line 216
    invoke-virtual {p0, p1}, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;->count(Ljava/lang/Object;)I

    move-result v2

    .line 233
    :goto_0
    return v2

    .line 218
    :cond_0
    if-lez p2, :cond_1

    move v0, v1

    :goto_1
    const-string v3, "occurrences cannot be negative: %s"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/squareup/haha/guava/base/Ascii;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 220
    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/guava/collect/Count;

    .line 222
    if-nez v0, :cond_2

    .line 224
    new-instance v0, Lcom/squareup/haha/guava/collect/Count;

    invoke-direct {v0, p2}, Lcom/squareup/haha/guava/collect/Count;-><init>(I)V

    invoke-interface {v6, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    :goto_2
    iget-wide v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;->size:J

    int-to-long v4, p2

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;->size:J

    goto :goto_0

    :cond_1
    move v0, v2

    .line 218
    goto :goto_1

    .line 3037
    :cond_2
    iget v4, v0, Lcom/squareup/haha/guava/collect/Count;->value:I

    .line 227
    int-to-long v6, v4

    int-to-long v8, p2

    add-long/2addr v6, v8

    .line 228
    const-wide/32 v8, 0x7fffffff

    cmp-long v3, v6, v8

    if-gtz v3, :cond_3

    move v3, v1

    :goto_3
    const-string v5, "too many occurrences: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v1, v2

    invoke-static {v3, v5, v1}, Lcom/squareup/haha/guava/base/Ascii;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 3041
    iget v1, v0, Lcom/squareup/haha/guava/collect/Count;->value:I

    .line 3042
    add-int/2addr v1, p2

    iput v1, v0, Lcom/squareup/haha/guava/collect/Count;->value:I

    move v2, v4

    goto :goto_2

    :cond_3
    move v3, v2

    .line 228
    goto :goto_3
.end method

.method public clear()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 132
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/guava/collect/Count;

    .line 1051
    const/4 v2, 0x0

    iput v2, v0, Lcom/squareup/haha/guava/collect/Count;->value:I

    goto :goto_0

    .line 135
    :cond_0
    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 136
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;->size:J

    .line 137
    return-void
.end method

.method public final count(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/squareup/haha/guava/collect/Maps;->safeGet(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/guava/collect/Count;

    .line 202
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2037
    :cond_0
    iget v0, v0, Lcom/squareup/haha/guava/collect/Count;->value:I

    goto :goto_0
.end method

.method final distinctElements()I
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method final entryIterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 89
    new-instance v1, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$1;

    invoke-direct {v1, p0, v0}, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$1;-><init>(Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 82
    invoke-super {p0}, Lcom/squareup/haha/guava/collect/AbstractMultiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 151
    new-instance v0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;

    invoke-direct {v0, p0}, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;-><init>(Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;I)I
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 237
    if-nez p2, :cond_1

    .line 238
    invoke-virtual {p0, p1}, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;->count(Ljava/lang/Object;)I

    move-result v2

    .line 259
    :cond_0
    :goto_0
    return v2

    .line 240
    :cond_1
    if-lez p2, :cond_2

    move v0, v1

    :goto_1
    const-string v3, "occurrences cannot be negative: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/squareup/haha/guava/base/Ascii;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 242
    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/guava/collect/Count;

    .line 243
    if-eqz v0, :cond_0

    .line 4037
    iget v1, v0, Lcom/squareup/haha/guava/collect/Count;->value:I

    .line 250
    if-le v1, p2, :cond_3

    .line 257
    :goto_2
    neg-int v2, p2

    invoke-virtual {v0, v2}, Lcom/squareup/haha/guava/collect/Count;->addAndGet(I)I

    .line 258
    iget-wide v2, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;->size:J

    int-to-long v4, p2

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;->size:J

    move v2, v1

    .line 259
    goto :goto_0

    :cond_2
    move v0, v2

    .line 240
    goto :goto_1

    .line 254
    :cond_3
    invoke-interface {v5, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move p2, v1

    goto :goto_2
.end method

.method public final setCount(Ljava/lang/Object;I)I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 264
    const-string v0, "count"

    invoke-static {p2, v0}, Lcom/squareup/haha/guava/base/Ascii;->checkNonnegative(ILjava/lang/String;)I

    .line 268
    if-nez p2, :cond_0

    .line 269
    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/guava/collect/Count;

    .line 270
    invoke-static {v0, p2}, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;->getAndSet(Lcom/squareup/haha/guava/collect/Count;I)I

    move-result v0

    .line 280
    :goto_0
    iget-wide v2, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;->size:J

    sub-int v1, p2, v0

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;->size:J

    .line 281
    return v0

    .line 272
    :cond_0
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/guava/collect/Count;

    .line 273
    invoke-static {v0, p2}, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;->getAndSet(Lcom/squareup/haha/guava/collect/Count;I)I

    move-result v1

    .line 275
    if-nez v0, :cond_1

    .line 276
    new-instance v0, Lcom/squareup/haha/guava/collect/Count;

    invoke-direct {v0, p2}, Lcom/squareup/haha/guava/collect/Count;-><init>(I)V

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 147
    iget-wide v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;->size:J

    invoke-static {v0, v1}, Lcom/squareup/haha/guava/primitives/Ints;->saturatedCast(J)I

    move-result v0

    return v0
.end method
