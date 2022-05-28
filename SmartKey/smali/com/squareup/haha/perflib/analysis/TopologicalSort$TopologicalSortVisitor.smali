.class Lcom/squareup/haha/perflib/analysis/TopologicalSort$TopologicalSortVisitor;
.super Lcom/squareup/haha/perflib/NonRecursiveVisitor;
.source "TopologicalSort.java"


# instance fields
.field private final mPostorder:Ljava/util/List;

.field private final mVisited:Lcom/squareup/haha/trove/TLongHashSet;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/squareup/haha/perflib/NonRecursiveVisitor;-><init>()V

    .line 64
    new-instance v0, Lcom/squareup/haha/trove/TLongHashSet;

    invoke-direct {v0}, Lcom/squareup/haha/trove/TLongHashSet;-><init>()V

    iput-object v0, p0, Lcom/squareup/haha/perflib/analysis/TopologicalSort$TopologicalSortVisitor;->mVisited:Lcom/squareup/haha/trove/TLongHashSet;

    .line 1084
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    iput-object v0, p0, Lcom/squareup/haha/perflib/analysis/TopologicalSort$TopologicalSortVisitor;->mPostorder:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/haha/perflib/analysis/TopologicalSort$1;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/squareup/haha/perflib/analysis/TopologicalSort$TopologicalSortVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public doVisit(Ljava/lang/Iterable;)V
    .locals 4

    .prologue
    .line 82
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/perflib/Instance;

    .line 83
    invoke-virtual {v0, p0}, Lcom/squareup/haha/perflib/Instance;->accept(Lcom/squareup/haha/perflib/Visitor;)V

    goto :goto_0

    .line 85
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/squareup/haha/perflib/analysis/TopologicalSort$TopologicalSortVisitor;->mStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 86
    iget-object v0, p0, Lcom/squareup/haha/perflib/analysis/TopologicalSort$TopologicalSortVisitor;->mStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/perflib/Instance;

    .line 87
    iget-object v1, p0, Lcom/squareup/haha/perflib/analysis/TopologicalSort$TopologicalSortVisitor;->mSeen:Lcom/squareup/haha/trove/TLongHashSet;

    invoke-virtual {v0}, Lcom/squareup/haha/perflib/Instance;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/squareup/haha/trove/TLongHashSet;->add(J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    invoke-virtual {v0, p0}, Lcom/squareup/haha/perflib/Instance;->accept(Lcom/squareup/haha/perflib/Visitor;)V

    goto :goto_1

    .line 90
    :cond_1
    iget-object v1, p0, Lcom/squareup/haha/perflib/analysis/TopologicalSort$TopologicalSortVisitor;->mStack:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    .line 91
    iget-object v1, p0, Lcom/squareup/haha/perflib/analysis/TopologicalSort$TopologicalSortVisitor;->mVisited:Lcom/squareup/haha/trove/TLongHashSet;

    invoke-virtual {v0}, Lcom/squareup/haha/perflib/Instance;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/squareup/haha/trove/TLongHashSet;->add(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/squareup/haha/perflib/analysis/TopologicalSort$TopologicalSortVisitor;->mPostorder:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 96
    :cond_2
    return-void
.end method

.method getOrderedInstances()Lcom/squareup/haha/guava/collect/ImmutableList;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/squareup/haha/perflib/analysis/TopologicalSort$TopologicalSortVisitor;->mPostorder:Ljava/util/List;

    invoke-static {v0}, Lcom/squareup/haha/guava/base/Ascii;->reverse(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/haha/guava/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/squareup/haha/guava/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public visitLater(Lcom/squareup/haha/perflib/Instance;Lcom/squareup/haha/perflib/Instance;)V
    .locals 4

    .prologue
    .line 70
    iget-object v0, p0, Lcom/squareup/haha/perflib/analysis/TopologicalSort$TopologicalSortVisitor;->mSeen:Lcom/squareup/haha/trove/TLongHashSet;

    invoke-virtual {p2}, Lcom/squareup/haha/perflib/Instance;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/squareup/haha/trove/TLongHashSet;->contains(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/squareup/haha/perflib/analysis/TopologicalSort$TopologicalSortVisitor;->mStack:Ljava/util/Deque;

    invoke-interface {v0, p2}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 73
    :cond_0
    return-void
.end method
