.class abstract Lcom/squareup/haha/guava/collect/Multisets$EntrySet;
.super Lcom/squareup/haha/guava/collect/Sets$ImprovedAbstractSet;
.source "Multisets.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 947
    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/Sets$ImprovedAbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 985
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/Multisets$EntrySet;->multiset()Lcom/squareup/haha/guava/collect/Multiset;

    move-result-object v0

    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/Multiset;->clear()V

    .line 986
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 951
    instance-of v1, p1, Lcom/squareup/haha/guava/collect/Multiset$Entry;

    if-eqz v1, :cond_0

    .line 956
    check-cast p1, Lcom/squareup/haha/guava/collect/Multiset$Entry;

    .line 957
    invoke-interface {p1}, Lcom/squareup/haha/guava/collect/Multiset$Entry;->getCount()I

    move-result v1

    if-gtz v1, :cond_1

    .line 964
    :cond_0
    :goto_0
    return v0

    .line 960
    :cond_1
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/Multisets$EntrySet;->multiset()Lcom/squareup/haha/guava/collect/Multiset;

    move-result-object v1

    invoke-interface {p1}, Lcom/squareup/haha/guava/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/squareup/haha/guava/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v1

    .line 961
    invoke-interface {p1}, Lcom/squareup/haha/guava/collect/Multiset$Entry;->getCount()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method abstract multiset()Lcom/squareup/haha/guava/collect/Multiset;
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 970
    instance-of v1, p1, Lcom/squareup/haha/guava/collect/Multiset$Entry;

    if-eqz v1, :cond_0

    .line 971
    check-cast p1, Lcom/squareup/haha/guava/collect/Multiset$Entry;

    .line 972
    invoke-interface {p1}, Lcom/squareup/haha/guava/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v1

    .line 973
    invoke-interface {p1}, Lcom/squareup/haha/guava/collect/Multiset$Entry;->getCount()I

    move-result v2

    .line 974
    if-eqz v2, :cond_0

    .line 977
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/Multisets$EntrySet;->multiset()Lcom/squareup/haha/guava/collect/Multiset;

    move-result-object v3

    .line 978
    invoke-interface {v3, v1, v2, v0}, Lcom/squareup/haha/guava/collect/Multiset;->setCount(Ljava/lang/Object;II)Z

    move-result v0

    .line 981
    :cond_0
    return v0
.end method
