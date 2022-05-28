.class public final Lcom/squareup/haha/trove/THashSet;
.super Lcom/squareup/haha/trove/TObjectHash;
.source "THashSet.java"

# interfaces
.implements Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/squareup/haha/trove/TObjectHash;-><init>()V

    .line 48
    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 139
    invoke-virtual {p0, p1}, Lcom/squareup/haha/trove/THashSet;->insertionIndex(Ljava/lang/Object;)I

    move-result v2

    .line 141
    if-gez v2, :cond_0

    .line 149
    :goto_0
    return v0

    .line 145
    :cond_0
    iget-object v3, p0, Lcom/squareup/haha/trove/THashSet;->_set:[Ljava/lang/Object;

    aget-object v3, v3, v2

    .line 146
    iget-object v4, p0, Lcom/squareup/haha/trove/THashSet;->_set:[Ljava/lang/Object;

    aput-object p1, v4, v2

    .line 148
    if-nez v3, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/squareup/haha/trove/THashSet;->postInsertHook(Z)V

    move v0, v1

    .line 149
    goto :goto_0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 4

    .prologue
    .line 313
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    .line 315
    invoke-virtual {p0, v1}, Lcom/squareup/haha/trove/THashSet;->ensureCapacity(I)V

    .line 316
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 317
    const/4 v0, 0x0

    .line 318
    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_0

    .line 319
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/squareup/haha/trove/THashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 320
    const/4 v0, 0x1

    move v1, v2

    goto :goto_0

    .line 323
    :cond_0
    return v0

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public final clear()V
    .locals 3

    .prologue
    .line 253
    invoke-super {p0}, Lcom/squareup/haha/trove/TObjectHash;->clear()V

    .line 254
    iget-object v2, p0, Lcom/squareup/haha/trove/THashSet;->_set:[Ljava/lang/Object;

    .line 256
    array-length v0, v2

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    .line 257
    const/4 v0, 0x0

    aput-object v0, v2, v1

    move v0, v1

    goto :goto_0

    .line 259
    :cond_0
    return-void
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 2

    .prologue
    .line 297
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 298
    invoke-virtual {p0, v1}, Lcom/squareup/haha/trove/THashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 299
    const/4 v0, 0x0

    .line 302
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 153
    instance-of v1, p1, Ljava/util/Set;

    if-nez v1, :cond_1

    .line 160
    :cond_0
    :goto_0
    return v0

    .line 156
    :cond_1
    check-cast p1, Ljava/util/Set;

    .line 157
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/squareup/haha/trove/THashSet;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 160
    invoke-virtual {p0, p1}, Lcom/squareup/haha/trove/THashSet;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 164
    new-instance v0, Lcom/squareup/haha/trove/THashSet$HashProcedure;

    invoke-direct {v0, p0}, Lcom/squareup/haha/trove/THashSet$HashProcedure;-><init>(Lcom/squareup/haha/trove/THashSet;)V

    .line 165
    invoke-virtual {p0, v0}, Lcom/squareup/haha/trove/THashSet;->forEach(Lcom/squareup/haha/trove/TObjectProcedure;)Z

    .line 1176
    iget v0, v0, Lcom/squareup/haha/trove/THashSet$HashProcedure;->h:I

    .line 166
    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 285
    new-instance v0, Lcom/squareup/haha/trove/TObjectHashIterator;

    invoke-direct {v0, p0}, Lcom/squareup/haha/trove/TObjectHashIterator;-><init>(Lcom/squareup/haha/trove/TObjectHash;)V

    return-object v0
.end method

.method protected final rehash(I)V
    .locals 6

    .prologue
    .line 193
    iget-object v0, p0, Lcom/squareup/haha/trove/THashSet;->_set:[Ljava/lang/Object;

    array-length v0, v0

    .line 194
    iget-object v2, p0, Lcom/squareup/haha/trove/THashSet;->_set:[Ljava/lang/Object;

    .line 196
    new-array v1, p1, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/squareup/haha/trove/THashSet;->_set:[Ljava/lang/Object;

    .line 198
    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_1

    .line 199
    aget-object v0, v2, v1

    if-eqz v0, :cond_2

    aget-object v0, v2, v1

    sget-object v3, Lcom/squareup/haha/trove/THashSet;->REMOVED:Ljava/lang/Object;

    if-eq v0, v3, :cond_2

    .line 200
    aget-object v0, v2, v1

    .line 201
    invoke-virtual {p0, v0}, Lcom/squareup/haha/trove/THashSet;->insertionIndex(Ljava/lang/Object;)I

    move-result v3

    .line 202
    if-gez v3, :cond_0

    .line 203
    iget-object v4, p0, Lcom/squareup/haha/trove/THashSet;->_set:[Ljava/lang/Object;

    neg-int v5, v3

    add-int/lit8 v5, v5, -0x1

    aget-object v4, v4, v5

    invoke-virtual {p0, v4, v0}, Lcom/squareup/haha/trove/THashSet;->throwObjectContractViolation(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 205
    :cond_0
    iget-object v4, p0, Lcom/squareup/haha/trove/THashSet;->_set:[Ljava/lang/Object;

    aput-object v0, v4, v3

    move v0, v1

    .line 206
    goto :goto_0

    .line 208
    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 269
    invoke-virtual {p0, p1}, Lcom/squareup/haha/trove/THashSet;->index(Ljava/lang/Object;)I

    move-result v0

    .line 270
    if-ltz v0, :cond_0

    .line 271
    invoke-virtual {p0, v0}, Lcom/squareup/haha/trove/THashSet;->removeAt(I)V

    .line 272
    const/4 v0, 0x1

    .line 274
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 4

    .prologue
    .line 334
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    .line 336
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 337
    const/4 v0, 0x0

    .line 338
    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_0

    .line 339
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/squareup/haha/trove/THashSet;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 340
    const/4 v0, 0x1

    move v1, v2

    goto :goto_0

    .line 343
    :cond_0
    return v0

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 4

    .prologue
    .line 355
    invoke-virtual {p0}, Lcom/squareup/haha/trove/THashSet;->size()I

    move-result v1

    .line 357
    invoke-virtual {p0}, Lcom/squareup/haha/trove/THashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 358
    const/4 v0, 0x0

    .line 359
    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_0

    .line 360
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 361
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 362
    const/4 v0, 0x1

    move v1, v2

    goto :goto_0

    .line 365
    :cond_0
    return v0

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/squareup/haha/trove/THashSet;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 218
    new-instance v1, Lcom/squareup/haha/trove/ToObjectArrayProcedure;

    invoke-direct {v1, v0}, Lcom/squareup/haha/trove/ToObjectArrayProcedure;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/squareup/haha/trove/THashSet;->forEach(Lcom/squareup/haha/trove/TObjectProcedure;)Z

    .line 219
    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/squareup/haha/trove/THashSet;->size()I

    move-result v2

    .line 231
    array-length v0, p1

    if-ge v0, v2, :cond_2

    .line 232
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 236
    :goto_0
    invoke-virtual {p0}, Lcom/squareup/haha/trove/THashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 237
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_0

    .line 238
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v0, v1

    .line 237
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 241
    :cond_0
    array-length v1, v0

    if-le v1, v2, :cond_1

    .line 242
    const/4 v1, 0x0

    aput-object v1, v0, v2

    .line 245
    :cond_1
    return-object v0

    :cond_2
    move-object v0, p1

    goto :goto_0
.end method
