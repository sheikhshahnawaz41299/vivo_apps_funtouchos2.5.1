.class final Lcom/squareup/haha/guava/collect/Multisets$5;
.super Lcom/squareup/haha/guava/collect/Ordering;
.source "Multisets.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1063
    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/Ordering;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 1063
    check-cast p1, Lcom/squareup/haha/guava/collect/Multiset$Entry;

    check-cast p2, Lcom/squareup/haha/guava/collect/Multiset$Entry;

    .line 2066
    invoke-interface {p2}, Lcom/squareup/haha/guava/collect/Multiset$Entry;->getCount()I

    move-result v0

    invoke-interface {p1}, Lcom/squareup/haha/guava/collect/Multiset$Entry;->getCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/squareup/haha/guava/primitives/Ints;->compare(II)I

    move-result v0

    .line 1063
    return v0
.end method
