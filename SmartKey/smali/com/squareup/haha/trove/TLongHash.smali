.class public abstract Lcom/squareup/haha/trove/TLongHash;
.super Lcom/squareup/haha/trove/TPrimitiveHash;
.source "TLongHash.java"

# interfaces
.implements Lcom/squareup/haha/trove/TLongHashingStrategy;


# instance fields
.field protected _hashingStrategy:Lcom/squareup/haha/trove/TLongHashingStrategy;

.field protected transient _set:[J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/squareup/haha/trove/TPrimitiveHash;-><init>()V

    .line 43
    iput-object p0, p0, Lcom/squareup/haha/trove/TLongHash;->_hashingStrategy:Lcom/squareup/haha/trove/TLongHashingStrategy;

    .line 44
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 112
    invoke-super {p0}, Lcom/squareup/haha/trove/TPrimitiveHash;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/trove/TLongHash;

    .line 113
    iget-object v1, p0, Lcom/squareup/haha/trove/TLongHash;->_set:[J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    iput-object v1, v0, Lcom/squareup/haha/trove/TLongHash;->_set:[J

    .line 114
    return-object v0
.end method

.method public final computeHashCode(J)I
    .locals 3

    .prologue
    .line 259
    .line 2078
    const/16 v0, 0x20

    shr-long v0, p1, v0

    xor-long/2addr v0, p1

    long-to-int v0, v0

    .line 259
    return v0
.end method

.method public final contains(J)Z
    .locals 9

    .prologue
    const/4 v8, 0x2

    .line 138
    .line 1177
    iget-object v1, p0, Lcom/squareup/haha/trove/TLongHash;->_states:[B

    .line 1178
    iget-object v2, p0, Lcom/squareup/haha/trove/TLongHash;->_set:[J

    .line 1179
    array-length v3, v1

    .line 1180
    iget-object v0, p0, Lcom/squareup/haha/trove/TLongHash;->_hashingStrategy:Lcom/squareup/haha/trove/TLongHashingStrategy;

    invoke-interface {v0, p1, p2}, Lcom/squareup/haha/trove/TLongHashingStrategy;->computeHashCode(J)I

    move-result v0

    const v4, 0x7fffffff

    and-int/2addr v4, v0

    .line 1181
    rem-int v0, v4, v3

    .line 1183
    aget-byte v5, v1, v0

    if-eqz v5, :cond_3

    aget-byte v5, v1, v0

    if-eq v5, v8, :cond_0

    aget-wide v6, v2, v0

    cmp-long v5, v6, p1

    if-eqz v5, :cond_3

    .line 1186
    :cond_0
    add-int/lit8 v5, v3, -0x2

    rem-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    .line 1189
    :cond_1
    sub-int/2addr v0, v4

    .line 1190
    if-gez v0, :cond_2

    .line 1191
    add-int/2addr v0, v3

    .line 1193
    :cond_2
    aget-byte v5, v1, v0

    if-eqz v5, :cond_3

    aget-byte v5, v1, v0

    if-eq v5, v8, :cond_1

    aget-wide v6, v2, v0

    cmp-long v5, v6, p1

    if-nez v5, :cond_1

    .line 1197
    :cond_3
    aget-byte v1, v1, v0

    if-nez v1, :cond_4

    const/4 v0, -0x1

    .line 138
    :cond_4
    if-ltz v0, :cond_5

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final forEach(Lcom/squareup/haha/trove/TLongProcedure;)Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    .line 149
    iget-object v3, p0, Lcom/squareup/haha/trove/TLongHash;->_states:[B

    .line 150
    iget-object v4, p0, Lcom/squareup/haha/trove/TLongHash;->_set:[J

    .line 151
    array-length v1, v4

    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_0

    .line 152
    aget-byte v1, v3, v2

    if-ne v1, v0, :cond_1

    aget-wide v6, v4, v2

    invoke-interface {p1, v6, v7}, Lcom/squareup/haha/trove/TLongProcedure;->execute(J)Z

    move-result v1

    if-nez v1, :cond_1

    .line 153
    const/4 v0, 0x0

    .line 156
    :cond_0
    return v0

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method protected final insertionIndex(J)I
    .locals 11

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 209
    iget-object v2, p0, Lcom/squareup/haha/trove/TLongHash;->_states:[B

    .line 210
    iget-object v3, p0, Lcom/squareup/haha/trove/TLongHash;->_set:[J

    .line 211
    array-length v4, v2

    .line 212
    iget-object v0, p0, Lcom/squareup/haha/trove/TLongHash;->_hashingStrategy:Lcom/squareup/haha/trove/TLongHashingStrategy;

    invoke-interface {v0, p1, p2}, Lcom/squareup/haha/trove/TLongHashingStrategy;->computeHashCode(J)I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v1, v0

    .line 213
    rem-int v0, v1, v4

    .line 215
    aget-byte v5, v2, v0

    if-nez v5, :cond_1

    .line 246
    :cond_0
    :goto_0
    return v0

    .line 217
    :cond_1
    aget-byte v5, v2, v0

    if-ne v5, v8, :cond_2

    aget-wide v6, v3, v0

    cmp-long v5, v6, p1

    if-nez v5, :cond_2

    .line 218
    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 221
    :cond_2
    add-int/lit8 v5, v4, -0x2

    rem-int/2addr v1, v5

    add-int/lit8 v5, v1, 0x1

    .line 225
    :cond_3
    sub-int/2addr v0, v5

    .line 226
    if-gez v0, :cond_4

    .line 227
    add-int/2addr v0, v4

    .line 229
    :cond_4
    aget-byte v1, v2, v0

    if-ne v1, v8, :cond_5

    aget-wide v6, v3, v0

    cmp-long v1, v6, p1

    if-nez v1, :cond_3

    .line 234
    :cond_5
    aget-byte v1, v2, v0

    if-ne v1, v9, :cond_9

    move v1, v0

    .line 236
    :cond_6
    :goto_1
    aget-byte v6, v2, v1

    if-eqz v6, :cond_8

    aget-byte v6, v2, v1

    if-eq v6, v9, :cond_7

    aget-wide v6, v3, v1

    cmp-long v6, v6, p1

    if-eqz v6, :cond_8

    .line 238
    :cond_7
    sub-int/2addr v1, v5

    .line 239
    if-gez v1, :cond_6

    .line 240
    add-int/2addr v1, v4

    goto :goto_1

    .line 243
    :cond_8
    aget-byte v2, v2, v1

    if-ne v2, v8, :cond_0

    neg-int v0, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 246
    :cond_9
    aget-byte v1, v2, v0

    if-ne v1, v8, :cond_0

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method protected final removeAt(I)V
    .locals 4

    .prologue
    .line 166
    iget-object v0, p0, Lcom/squareup/haha/trove/TLongHash;->_set:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v0, p1

    .line 167
    invoke-super {p0, p1}, Lcom/squareup/haha/trove/TPrimitiveHash;->removeAt(I)V

    .line 168
    return-void
.end method

.method protected final setUp(I)I
    .locals 2

    .prologue
    .line 126
    invoke-super {p0, p1}, Lcom/squareup/haha/trove/TPrimitiveHash;->setUp(I)I

    move-result v0

    .line 127
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/squareup/haha/trove/TLongHash;->_set:[J

    .line 128
    return v0
.end method
