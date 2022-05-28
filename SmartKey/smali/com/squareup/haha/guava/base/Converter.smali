.class public abstract Lcom/squareup/haha/guava/base/Converter;
.super Ljava/lang/Object;
.source "Converter.java"

# interfaces
.implements Lcom/squareup/haha/guava/base/Function;


# instance fields
.field private final handleNullAutomatically:Z


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 360
    .line 1152
    iget-boolean v0, p0, Lcom/squareup/haha/guava/base/Converter;->handleNullAutomatically:Z

    if-eqz v0, :cond_1

    .line 1154
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/squareup/haha/guava/base/Converter;->doForward$7713a341()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/haha/guava/base/Ascii;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 1156
    :cond_1
    invoke-virtual {p0}, Lcom/squareup/haha/guava/base/Converter;->doForward$7713a341()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected abstract doForward$7713a341()Ljava/lang/Object;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 376
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
