.class public final Lcom/squareup/haha/trove/TLongHashSet;
.super Lcom/squareup/haha/trove/TLongHash;
.source "TLongHashSet.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/squareup/haha/trove/TLongHash;-><init>()V

    .line 41
    return-void
.end method


# virtual methods
.method public final add(J)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 137
    invoke-virtual {p0, p1, p2}, Lcom/squareup/haha/trove/TLongHashSet;->insertionIndex(J)I

    move-result v2

    .line 139
    if-gez v2, :cond_0

    .line 148
    :goto_0
    return v0

    .line 143
    :cond_0
    iget-object v3, p0, Lcom/squareup/haha/trove/TLongHashSet;->_states:[B

    aget-byte v3, v3, v2

    .line 144
    iget-object v4, p0, Lcom/squareup/haha/trove/TLongHashSet;->_set:[J

    aput-wide p1, v4, v2

    .line 145
    iget-object v4, p0, Lcom/squareup/haha/trove/TLongHashSet;->_states:[B

    aput-byte v1, v4, v2

    .line 146
    if-nez v3, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/squareup/haha/trove/TLongHashSet;->postInsertHook(Z)V

    move v0, v1

    .line 148
    goto :goto_0
.end method

.method public final clear()V
    .locals 6

    .prologue
    .line 198
    invoke-super {p0}, Lcom/squareup/haha/trove/TLongHash;->clear()V

    .line 199
    iget-object v2, p0, Lcom/squareup/haha/trove/TLongHashSet;->_set:[J

    .line 200
    iget-object v3, p0, Lcom/squareup/haha/trove/TLongHashSet;->_states:[B

    .line 202
    array-length v0, v2

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    .line 203
    const-wide/16 v4, 0x0

    aput-wide v4, v2, v1

    .line 204
    const/4 v0, 0x0

    aput-byte v0, v3, v1

    move v0, v1

    goto :goto_0

    .line 206
    :cond_0
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 216
    instance-of v1, p1, Lcom/squareup/haha/trove/TLongHashSet;

    if-nez v1, :cond_1

    .line 223
    :cond_0
    :goto_0
    return v0

    .line 219
    :cond_1
    check-cast p1, Lcom/squareup/haha/trove/TLongHashSet;

    .line 220
    invoke-virtual {p1}, Lcom/squareup/haha/trove/TLongHashSet;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/squareup/haha/trove/TLongHashSet;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 223
    new-instance v0, Lcom/squareup/haha/trove/TLongHashSet$1;

    invoke-direct {v0, p0, p1}, Lcom/squareup/haha/trove/TLongHashSet$1;-><init>(Lcom/squareup/haha/trove/TLongHashSet;Lcom/squareup/haha/trove/TLongHashSet;)V

    invoke-virtual {p0, v0}, Lcom/squareup/haha/trove/TLongHashSet;->forEach(Lcom/squareup/haha/trove/TLongProcedure;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 232
    new-instance v0, Lcom/squareup/haha/trove/TLongHashSet$HashProcedure;

    invoke-direct {v0, p0}, Lcom/squareup/haha/trove/TLongHashSet$HashProcedure;-><init>(Lcom/squareup/haha/trove/TLongHashSet;)V

    .line 233
    invoke-virtual {p0, v0}, Lcom/squareup/haha/trove/TLongHashSet;->forEach(Lcom/squareup/haha/trove/TLongProcedure;)Z

    .line 1244
    iget v0, v0, Lcom/squareup/haha/trove/TLongHashSet$HashProcedure;->h:I

    .line 234
    return v0
.end method

.method protected final rehash(I)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 158
    iget-object v0, p0, Lcom/squareup/haha/trove/TLongHashSet;->_set:[J

    array-length v0, v0

    .line 159
    iget-object v2, p0, Lcom/squareup/haha/trove/TLongHashSet;->_set:[J

    .line 160
    iget-object v3, p0, Lcom/squareup/haha/trove/TLongHashSet;->_states:[B

    .line 162
    new-array v1, p1, [J

    iput-object v1, p0, Lcom/squareup/haha/trove/TLongHashSet;->_set:[J

    .line 163
    new-array v1, p1, [B

    iput-object v1, p0, Lcom/squareup/haha/trove/TLongHashSet;->_states:[B

    .line 165
    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    .line 166
    aget-byte v0, v3, v1

    if-ne v0, v7, :cond_1

    .line 167
    aget-wide v4, v2, v1

    .line 168
    invoke-virtual {p0, v4, v5}, Lcom/squareup/haha/trove/TLongHashSet;->insertionIndex(J)I

    move-result v0

    .line 169
    iget-object v6, p0, Lcom/squareup/haha/trove/TLongHashSet;->_set:[J

    aput-wide v4, v6, v0

    .line 170
    iget-object v4, p0, Lcom/squareup/haha/trove/TLongHashSet;->_states:[B

    aput-byte v7, v4, v0

    move v0, v1

    .line 171
    goto :goto_0

    .line 173
    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method
