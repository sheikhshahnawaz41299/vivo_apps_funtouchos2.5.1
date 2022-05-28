.class abstract Lcom/squareup/haha/trove/TPrimitiveIterator;
.super Lcom/squareup/haha/trove/TIterator;
.source "TPrimitiveIterator.java"


# instance fields
.field private _hash:Lcom/squareup/haha/trove/TPrimitiveHash;


# virtual methods
.method protected final nextIndex()I
    .locals 4

    .prologue
    .line 66
    iget v0, p0, Lcom/squareup/haha/trove/TPrimitiveIterator;->_expectedSize:I

    iget-object v1, p0, Lcom/squareup/haha/trove/TPrimitiveIterator;->_hash:Lcom/squareup/haha/trove/TPrimitiveHash;

    invoke-virtual {v1}, Lcom/squareup/haha/trove/TPrimitiveHash;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 67
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/squareup/haha/trove/TPrimitiveIterator;->_hash:Lcom/squareup/haha/trove/TPrimitiveHash;

    iget-object v2, v0, Lcom/squareup/haha/trove/TPrimitiveHash;->_states:[B

    .line 71
    iget v0, p0, Lcom/squareup/haha/trove/TPrimitiveIterator;->_index:I

    .line 72
    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_1

    aget-byte v0, v2, v1

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    .line 73
    :cond_1
    return v1

    :cond_2
    move v0, v1

    goto :goto_0
.end method
