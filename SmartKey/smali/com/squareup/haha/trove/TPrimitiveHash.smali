.class public abstract Lcom/squareup/haha/trove/TPrimitiveHash;
.super Lcom/squareup/haha/trove/THash;
.source "TPrimitiveHash.java"


# instance fields
.field protected transient _states:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/squareup/haha/trove/THash;-><init>()V

    .line 58
    return-void
.end method


# virtual methods
.method protected final capacity()I
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/squareup/haha/trove/TPrimitiveHash;->_states:[B

    array-length v0, v0

    return v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 86
    invoke-super {p0}, Lcom/squareup/haha/trove/THash;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/trove/TPrimitiveHash;

    .line 87
    iget-object v1, p0, Lcom/squareup/haha/trove/TPrimitiveHash;->_states:[B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, v0, Lcom/squareup/haha/trove/TPrimitiveHash;->_states:[B

    .line 88
    return-object v0
.end method

.method protected removeAt(I)V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/squareup/haha/trove/TPrimitiveHash;->_states:[B

    const/4 v1, 0x2

    aput-byte v1, v0, p1

    .line 110
    invoke-super {p0, p1}, Lcom/squareup/haha/trove/THash;->removeAt(I)V

    .line 111
    return-void
.end method

.method protected setUp(I)I
    .locals 2

    .prologue
    .line 122
    invoke-super {p0, p1}, Lcom/squareup/haha/trove/THash;->setUp(I)I

    move-result v0

    .line 123
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/squareup/haha/trove/TPrimitiveHash;->_states:[B

    .line 124
    return v0
.end method
