.class abstract Lcom/squareup/haha/guava/collect/Multisets$AbstractEntry;
.super Ljava/lang/Object;
.source "Multisets.java"

# interfaces
.implements Lcom/squareup/haha/guava/collect/Multiset$Entry;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 762
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 768
    instance-of v1, p1, Lcom/squareup/haha/guava/collect/Multiset$Entry;

    if-eqz v1, :cond_0

    .line 769
    check-cast p1, Lcom/squareup/haha/guava/collect/Multiset$Entry;

    .line 770
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/Multisets$AbstractEntry;->getCount()I

    move-result v1

    invoke-interface {p1}, Lcom/squareup/haha/guava/collect/Multiset$Entry;->getCount()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/Multisets$AbstractEntry;->getElement()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Lcom/squareup/haha/guava/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/squareup/haha/guava/base/Ascii;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 773
    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 781
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/Multisets$AbstractEntry;->getElement()Ljava/lang/Object;

    move-result-object v0

    .line 782
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/Multisets$AbstractEntry;->getCount()I

    move-result v1

    xor-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 793
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/Multisets$AbstractEntry;->getElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 794
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/Multisets$AbstractEntry;->getCount()I

    move-result v1

    .line 795
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " x "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
