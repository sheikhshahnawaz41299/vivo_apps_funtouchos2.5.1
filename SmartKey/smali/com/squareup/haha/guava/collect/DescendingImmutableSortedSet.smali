.class final Lcom/squareup/haha/guava/collect/DescendingImmutableSortedSet;
.super Lcom/squareup/haha/guava/collect/ImmutableSortedSet;
.source "DescendingImmutableSortedSet.java"


# instance fields
.field private final forward:Lcom/squareup/haha/guava/collect/ImmutableSortedSet;


# direct methods
.method constructor <init>(Lcom/squareup/haha/guava/collect/ImmutableSortedSet;)V
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p1}, Lcom/squareup/haha/guava/collect/ImmutableSortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/haha/guava/collect/Ordering;->from(Ljava/util/Comparator;)Lcom/squareup/haha/guava/collect/Ordering;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/Ordering;->reverse()Lcom/squareup/haha/guava/collect/Ordering;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/squareup/haha/guava/collect/ImmutableSortedSet;-><init>(Ljava/util/Comparator;)V

    .line 33
    iput-object p1, p0, Lcom/squareup/haha/guava/collect/DescendingImmutableSortedSet;->forward:Lcom/squareup/haha/guava/collect/ImmutableSortedSet;

    .line 34
    return-void
.end method


# virtual methods
.method public final ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/DescendingImmutableSortedSet;->forward:Lcom/squareup/haha/guava/collect/ImmutableSortedSet;

    invoke-virtual {v0, p1}, Lcom/squareup/haha/guava/collect/ImmutableSortedSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final createDescendingSet()Lcom/squareup/haha/guava/collect/ImmutableSortedSet;
    .locals 2

    .prologue
    .line 77
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final descendingIterator()Lcom/squareup/haha/guava/collect/UnmodifiableIterator;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/DescendingImmutableSortedSet;->forward:Lcom/squareup/haha/guava/collect/ImmutableSortedSet;

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableSortedSet;->iterator()Lcom/squareup/haha/guava/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic descendingIterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 28
    .line 1071
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/DescendingImmutableSortedSet;->forward:Lcom/squareup/haha/guava/collect/ImmutableSortedSet;

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableSortedSet;->iterator()Lcom/squareup/haha/guava/collect/UnmodifiableIterator;

    move-result-object v0

    .line 28
    return-object v0
.end method

.method public final descendingSet()Lcom/squareup/haha/guava/collect/ImmutableSortedSet;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/DescendingImmutableSortedSet;->forward:Lcom/squareup/haha/guava/collect/ImmutableSortedSet;

    return-object v0
.end method

.method public final bridge synthetic descendingSet()Ljava/util/NavigableSet;
    .locals 1

    .prologue
    .line 28
    .line 2065
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/DescendingImmutableSortedSet;->forward:Lcom/squareup/haha/guava/collect/ImmutableSortedSet;

    .line 28
    return-object v0
.end method

.method public final floor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/DescendingImmutableSortedSet;->forward:Lcom/squareup/haha/guava/collect/ImmutableSortedSet;

    invoke-virtual {v0, p1}, Lcom/squareup/haha/guava/collect/ImmutableSortedSet;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final headSetImpl(Ljava/lang/Object;Z)Lcom/squareup/haha/guava/collect/ImmutableSortedSet;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/DescendingImmutableSortedSet;->forward:Lcom/squareup/haha/guava/collect/ImmutableSortedSet;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/haha/guava/collect/ImmutableSortedSet;->tailSet(Ljava/lang/Object;Z)Lcom/squareup/haha/guava/collect/ImmutableSortedSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableSortedSet;->descendingSet()Lcom/squareup/haha/guava/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public final higher(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/DescendingImmutableSortedSet;->forward:Lcom/squareup/haha/guava/collect/ImmutableSortedSet;

    invoke-virtual {v0, p1}, Lcom/squareup/haha/guava/collect/ImmutableSortedSet;->lower(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final isPartialView()Z
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/DescendingImmutableSortedSet;->forward:Lcom/squareup/haha/guava/collect/ImmutableSortedSet;

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableSortedSet;->isPartialView()Z

    move-result v0

    return v0
.end method

.method public final iterator()Lcom/squareup/haha/guava/collect/UnmodifiableIterator;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/DescendingImmutableSortedSet;->forward:Lcom/squareup/haha/guava/collect/ImmutableSortedSet;

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableSortedSet;->descendingIterator()Lcom/squareup/haha/guava/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 28
    .line 3043
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/DescendingImmutableSortedSet;->forward:Lcom/squareup/haha/guava/collect/ImmutableSortedSet;

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableSortedSet;->descendingIterator()Lcom/squareup/haha/guava/collect/UnmodifiableIterator;

    move-result-object v0

    .line 28
    return-object v0
.end method

.method public final lower(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/DescendingImmutableSortedSet;->forward:Lcom/squareup/haha/guava/collect/ImmutableSortedSet;

    invoke-virtual {v0, p1}, Lcom/squareup/haha/guava/collect/ImmutableSortedSet;->higher(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/DescendingImmutableSortedSet;->forward:Lcom/squareup/haha/guava/collect/ImmutableSortedSet;

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableSortedSet;->size()I

    move-result v0

    return v0
.end method

.method final subSetImpl(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/squareup/haha/guava/collect/ImmutableSortedSet;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/DescendingImmutableSortedSet;->forward:Lcom/squareup/haha/guava/collect/ImmutableSortedSet;

    invoke-virtual {v0, p3, p4, p1, p2}, Lcom/squareup/haha/guava/collect/ImmutableSortedSet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/squareup/haha/guava/collect/ImmutableSortedSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableSortedSet;->descendingSet()Lcom/squareup/haha/guava/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method final tailSetImpl(Ljava/lang/Object;Z)Lcom/squareup/haha/guava/collect/ImmutableSortedSet;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/DescendingImmutableSortedSet;->forward:Lcom/squareup/haha/guava/collect/ImmutableSortedSet;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/haha/guava/collect/ImmutableSortedSet;->headSet(Ljava/lang/Object;Z)Lcom/squareup/haha/guava/collect/ImmutableSortedSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableSortedSet;->descendingSet()Lcom/squareup/haha/guava/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method
