.class public Lcom/squareup/haha/perflib/analysis/TopologicalSort;
.super Ljava/lang/Object;
.source "TopologicalSort.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method public static compute(Ljava/lang/Iterable;)Lcom/squareup/haha/guava/collect/ImmutableList;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 35
    new-instance v1, Lcom/squareup/haha/perflib/analysis/TopologicalSort$TopologicalSortVisitor;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/squareup/haha/perflib/analysis/TopologicalSort$TopologicalSortVisitor;-><init>(Lcom/squareup/haha/perflib/analysis/TopologicalSort$1;)V

    .line 36
    invoke-virtual {v1, p0}, Lcom/squareup/haha/perflib/analysis/TopologicalSort$TopologicalSortVisitor;->doVisit(Ljava/lang/Iterable;)V

    .line 37
    invoke-virtual {v1}, Lcom/squareup/haha/perflib/analysis/TopologicalSort$TopologicalSortVisitor;->getOrderedInstances()Lcom/squareup/haha/guava/collect/ImmutableList;

    move-result-object v2

    .line 41
    sget-object v1, Lcom/squareup/haha/perflib/Snapshot;->SENTINEL_ROOT:Lcom/squareup/haha/perflib/Instance;

    invoke-virtual {v1, v0}, Lcom/squareup/haha/perflib/Instance;->setTopologicalOrder(I)V

    .line 46
    invoke-virtual {v2}, Lcom/squareup/haha/guava/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/perflib/Instance;

    .line 47
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/squareup/haha/perflib/Instance;->setTopologicalOrder(I)V

    goto :goto_0

    .line 50
    :cond_0
    return-object v2
.end method
