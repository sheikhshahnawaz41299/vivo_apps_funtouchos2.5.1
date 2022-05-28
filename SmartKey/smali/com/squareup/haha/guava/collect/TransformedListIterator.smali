.class abstract Lcom/squareup/haha/guava/collect/TransformedListIterator;
.super Lcom/squareup/haha/guava/collect/TransformedIterator;
.source "TransformedListIterator.java"

# interfaces
.implements Ljava/util/ListIterator;


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final hasPrevious()Z
    .locals 1

    .prologue
    .line 44
    .line 1039
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/TransformedListIterator;->backingIterator:Ljava/util/Iterator;

    invoke-static {v0}, Lcom/squareup/haha/guava/collect/Iterators;->cast(Ljava/util/Iterator;)Ljava/util/ListIterator;

    move-result-object v0

    .line 44
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public final nextIndex()I
    .locals 1

    .prologue
    .line 54
    .line 3039
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/TransformedListIterator;->backingIterator:Ljava/util/Iterator;

    invoke-static {v0}, Lcom/squareup/haha/guava/collect/Iterators;->cast(Ljava/util/Iterator;)Ljava/util/ListIterator;

    move-result-object v0

    .line 54
    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 49
    .line 2039
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/TransformedListIterator;->backingIterator:Ljava/util/Iterator;

    invoke-static {v0}, Lcom/squareup/haha/guava/collect/Iterators;->cast(Ljava/util/Iterator;)Ljava/util/ListIterator;

    move-result-object v0

    .line 49
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/squareup/haha/guava/collect/TransformedListIterator;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final previousIndex()I
    .locals 1

    .prologue
    .line 59
    .line 4039
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/TransformedListIterator;->backingIterator:Ljava/util/Iterator;

    invoke-static {v0}, Lcom/squareup/haha/guava/collect/Iterators;->cast(Ljava/util/Iterator;)Ljava/util/ListIterator;

    move-result-object v0

    .line 59
    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
