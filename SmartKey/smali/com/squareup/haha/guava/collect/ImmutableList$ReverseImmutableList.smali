.class final Lcom/squareup/haha/guava/collect/ImmutableList$ReverseImmutableList;
.super Lcom/squareup/haha/guava/collect/ImmutableList;
.source "ImmutableList.java"


# instance fields
.field private final transient forwardList:Lcom/squareup/haha/guava/collect/ImmutableList;


# direct methods
.method constructor <init>(Lcom/squareup/haha/guava/collect/ImmutableList;)V
    .locals 0

    .prologue
    .line 516
    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/ImmutableList;-><init>()V

    .line 517
    iput-object p1, p0, Lcom/squareup/haha/guava/collect/ImmutableList$ReverseImmutableList;->forwardList:Lcom/squareup/haha/guava/collect/ImmutableList;

    .line 518
    return-void
.end method

.method private reverseIndex(I)I
    .locals 1

    .prologue
    .line 521
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableList$ReverseImmutableList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    return v0
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/ImmutableList$ReverseImmutableList;->forwardList:Lcom/squareup/haha/guava/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/squareup/haha/guava/collect/ImmutableList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 553
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableList$ReverseImmutableList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/squareup/haha/guava/base/Ascii;->checkElementIndex(II)I

    .line 554
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/ImmutableList$ReverseImmutableList;->forwardList:Lcom/squareup/haha/guava/collect/ImmutableList;

    invoke-direct {p0, p1}, Lcom/squareup/haha/guava/collect/ImmutableList$ReverseImmutableList;->reverseIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/squareup/haha/guava/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/ImmutableList$ReverseImmutableList;->forwardList:Lcom/squareup/haha/guava/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/squareup/haha/guava/collect/ImmutableList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    .line 538
    if-ltz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/squareup/haha/guava/collect/ImmutableList$ReverseImmutableList;->reverseIndex(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method final isPartialView()Z
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/ImmutableList$ReverseImmutableList;->forwardList:Lcom/squareup/haha/guava/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableList;->isPartialView()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 513
    invoke-super {p0}, Lcom/squareup/haha/guava/collect/ImmutableList;->iterator()Lcom/squareup/haha/guava/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/ImmutableList$ReverseImmutableList;->forwardList:Lcom/squareup/haha/guava/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/squareup/haha/guava/collect/ImmutableList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 543
    if-ltz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/squareup/haha/guava/collect/ImmutableList$ReverseImmutableList;->reverseIndex(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final bridge synthetic listIterator()Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 513
    .line 3344
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/squareup/haha/guava/collect/ImmutableList;->listIterator(I)Lcom/squareup/haha/guava/collect/UnmodifiableListIterator;

    move-result-object v0

    .line 513
    return-object v0
.end method

.method public final bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 513
    invoke-super {p0, p1}, Lcom/squareup/haha/guava/collect/ImmutableList;->listIterator(I)Lcom/squareup/haha/guava/collect/UnmodifiableListIterator;

    move-result-object v0

    return-object v0
.end method

.method public final reverse()Lcom/squareup/haha/guava/collect/ImmutableList;
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/ImmutableList$ReverseImmutableList;->forwardList:Lcom/squareup/haha/guava/collect/ImmutableList;

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/ImmutableList$ReverseImmutableList;->forwardList:Lcom/squareup/haha/guava/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableList;->size()I

    move-result v0

    return v0
.end method

.method public final subList(II)Lcom/squareup/haha/guava/collect/ImmutableList;
    .locals 3

    .prologue
    .line 547
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableList$ReverseImmutableList;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/squareup/haha/guava/base/Ascii;->checkPositionIndexes(III)V

    .line 548
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/ImmutableList$ReverseImmutableList;->forwardList:Lcom/squareup/haha/guava/collect/ImmutableList;

    .line 1525
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableList$ReverseImmutableList;->size()I

    move-result v1

    sub-int/2addr v1, p2

    .line 2525
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableList$ReverseImmutableList;->size()I

    move-result v2

    sub-int/2addr v2, p1

    .line 548
    invoke-virtual {v0, v1, v2}, Lcom/squareup/haha/guava/collect/ImmutableList;->subList(II)Lcom/squareup/haha/guava/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableList;->reverse()Lcom/squareup/haha/guava/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 1

    .prologue
    .line 513
    invoke-virtual {p0, p1, p2}, Lcom/squareup/haha/guava/collect/ImmutableList$ReverseImmutableList;->subList(II)Lcom/squareup/haha/guava/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method
