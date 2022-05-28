.class final Lcom/squareup/haha/guava/collect/ComparatorOrdering;
.super Lcom/squareup/haha/guava/collect/Ordering;
.source "ComparatorOrdering.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private comparator:Ljava/util/Comparator;


# direct methods
.method constructor <init>(Ljava/util/Comparator;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/Ordering;-><init>()V

    .line 34
    invoke-static {p1}, Lcom/squareup/haha/guava/base/Ascii;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lcom/squareup/haha/guava/collect/ComparatorOrdering;->comparator:Ljava/util/Comparator;

    .line 35
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/ComparatorOrdering;->comparator:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 42
    if-ne p1, p0, :cond_0

    .line 43
    const/4 v0, 0x1

    .line 49
    :goto_0
    return v0

    .line 45
    :cond_0
    instance-of v0, p1, Lcom/squareup/haha/guava/collect/ComparatorOrdering;

    if-eqz v0, :cond_1

    .line 46
    check-cast p1, Lcom/squareup/haha/guava/collect/ComparatorOrdering;

    .line 47
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/ComparatorOrdering;->comparator:Ljava/util/Comparator;

    iget-object v1, p1, Lcom/squareup/haha/guava/collect/ComparatorOrdering;->comparator:Ljava/util/Comparator;

    invoke-interface {v0, v1}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 49
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/ComparatorOrdering;->comparator:Ljava/util/Comparator;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/ComparatorOrdering;->comparator:Ljava/util/Comparator;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
