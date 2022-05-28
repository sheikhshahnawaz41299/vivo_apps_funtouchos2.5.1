.class public abstract Lcom/squareup/haha/guava/collect/Ordering;
.super Ljava/lang/Object;
.source "Ordering.java"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static from(Ljava/util/Comparator;)Lcom/squareup/haha/guava/collect/Ordering;
    .locals 1

    .prologue
    .line 124
    instance-of v0, p0, Lcom/squareup/haha/guava/collect/Ordering;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/squareup/haha/guava/collect/Ordering;

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lcom/squareup/haha/guava/collect/ComparatorOrdering;

    invoke-direct {v0, p0}, Lcom/squareup/haha/guava/collect/ComparatorOrdering;-><init>(Ljava/util/Comparator;)V

    move-object p0, v0

    goto :goto_0
.end method

.method public static natural()Lcom/squareup/haha/guava/collect/Ordering;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/squareup/haha/guava/collect/NaturalOrdering;->INSTANCE:Lcom/squareup/haha/guava/collect/NaturalOrdering;

    return-object v0
.end method


# virtual methods
.method public abstract compare(Ljava/lang/Object;Ljava/lang/Object;)I
.end method

.method public reverse()Lcom/squareup/haha/guava/collect/Ordering;
    .locals 1

    .prologue
    .line 331
    new-instance v0, Lcom/squareup/haha/guava/collect/ReverseOrdering;

    invoke-direct {v0, p0}, Lcom/squareup/haha/guava/collect/ReverseOrdering;-><init>(Lcom/squareup/haha/guava/collect/Ordering;)V

    return-object v0
.end method
