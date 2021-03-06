.class public Lcom/squareup/haha/perflib/analysis/ShortestDistanceVisitor;
.super Lcom/squareup/haha/perflib/NonRecursiveVisitor;
.source "ShortestDistanceVisitor.java"


# instance fields
.field private mPreviousInstance:Lcom/squareup/haha/perflib/Instance;

.field private mPriorityQueue:Ljava/util/PriorityQueue;

.field private mVisitDistance:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/squareup/haha/perflib/NonRecursiveVisitor;-><init>()V

    .line 26
    new-instance v0, Ljava/util/PriorityQueue;

    const/16 v1, 0x400

    new-instance v2, Lcom/squareup/haha/perflib/analysis/ShortestDistanceVisitor$1;

    invoke-direct {v2, p0}, Lcom/squareup/haha/perflib/analysis/ShortestDistanceVisitor$1;-><init>(Lcom/squareup/haha/perflib/analysis/ShortestDistanceVisitor;)V

    invoke-direct {v0, v1, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lcom/squareup/haha/perflib/analysis/ShortestDistanceVisitor;->mPriorityQueue:Ljava/util/PriorityQueue;

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/haha/perflib/analysis/ShortestDistanceVisitor;->mPreviousInstance:Lcom/squareup/haha/perflib/Instance;

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/squareup/haha/perflib/analysis/ShortestDistanceVisitor;->mVisitDistance:I

    return-void
.end method


# virtual methods
.method public doVisit(Ljava/lang/Iterable;)V
    .locals 2

    .prologue
    .line 54
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/perflib/Instance;

    .line 55
    invoke-virtual {v0, p0}, Lcom/squareup/haha/perflib/Instance;->accept(Lcom/squareup/haha/perflib/Visitor;)V

    goto :goto_0

    .line 58
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/squareup/haha/perflib/analysis/ShortestDistanceVisitor;->mPriorityQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/squareup/haha/perflib/analysis/ShortestDistanceVisitor;->mPriorityQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/perflib/Instance;

    .line 60
    invoke-virtual {v0}, Lcom/squareup/haha/perflib/Instance;->getDistanceToGcRoot()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/squareup/haha/perflib/analysis/ShortestDistanceVisitor;->mVisitDistance:I

    .line 61
    iput-object v0, p0, Lcom/squareup/haha/perflib/analysis/ShortestDistanceVisitor;->mPreviousInstance:Lcom/squareup/haha/perflib/Instance;

    .line 62
    invoke-virtual {v0, p0}, Lcom/squareup/haha/perflib/Instance;->accept(Lcom/squareup/haha/perflib/Visitor;)V

    goto :goto_1

    .line 64
    :cond_1
    return-void
.end method

.method public visitLater(Lcom/squareup/haha/perflib/Instance;Lcom/squareup/haha/perflib/Instance;)V
    .locals 2

    .prologue
    .line 37
    iget v0, p0, Lcom/squareup/haha/perflib/analysis/ShortestDistanceVisitor;->mVisitDistance:I

    invoke-virtual {p2}, Lcom/squareup/haha/perflib/Instance;->getDistanceToGcRoot()I

    move-result v1

    if-ge v0, v1, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/squareup/haha/perflib/Instance;->getSoftReferences()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/squareup/haha/perflib/Instance;->getSoftReferences()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/squareup/haha/perflib/Instance;->getIsSoftReference()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    :cond_0
    iget v0, p0, Lcom/squareup/haha/perflib/analysis/ShortestDistanceVisitor;->mVisitDistance:I

    invoke-virtual {p2, v0}, Lcom/squareup/haha/perflib/Instance;->setDistanceToGcRoot(I)V

    .line 43
    iget-object v0, p0, Lcom/squareup/haha/perflib/analysis/ShortestDistanceVisitor;->mPreviousInstance:Lcom/squareup/haha/perflib/Instance;

    invoke-virtual {p2, v0}, Lcom/squareup/haha/perflib/Instance;->setNextInstanceToGcRoot(Lcom/squareup/haha/perflib/Instance;)V

    .line 44
    iget-object v0, p0, Lcom/squareup/haha/perflib/analysis/ShortestDistanceVisitor;->mPriorityQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p2}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 46
    :cond_1
    return-void
.end method
