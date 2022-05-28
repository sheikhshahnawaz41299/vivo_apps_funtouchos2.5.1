.class public abstract Lcom/squareup/haha/guava/base/Equivalence;
.super Ljava/lang/Object;
.source "Equivalence.java"


# virtual methods
.method protected abstract doEquivalent$2838e5b1()Z
.end method

.method protected abstract doHash$5d527804()I
.end method

.method public final equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 65
    if-ne p1, p2, :cond_0

    .line 66
    const/4 v0, 0x1

    .line 71
    :goto_0
    return v0

    .line 68
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 69
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 71
    :cond_2
    invoke-virtual {p0}, Lcom/squareup/haha/guava/base/Equivalence;->doEquivalent$2838e5b1()Z

    move-result v0

    goto :goto_0
.end method

.method public final hash(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 101
    if-nez p1, :cond_0

    .line 102
    const/4 v0, 0x0

    .line 104
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/squareup/haha/guava/base/Equivalence;->doHash$5d527804()I

    move-result v0

    goto :goto_0
.end method
