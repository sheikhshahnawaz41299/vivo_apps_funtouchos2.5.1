.class final Lcom/squareup/haha/guava/collect/Multisets$ElementSet$1;
.super Lcom/squareup/haha/guava/collect/TransformedIterator;
.source "Multisets.java"


# direct methods
.method constructor <init>(Lcom/squareup/haha/guava/collect/Multisets$ElementSet;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 924
    invoke-direct {p0, p2}, Lcom/squareup/haha/guava/collect/TransformedIterator;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method final synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 924
    check-cast p1, Lcom/squareup/haha/guava/collect/Multiset$Entry;

    .line 1927
    invoke-interface {p1}, Lcom/squareup/haha/guava/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v0

    .line 924
    return-object v0
.end method
