.class public Lcom/squareup/haha/perflib/NonRecursiveVisitor;
.super Ljava/lang/Object;
.source "NonRecursiveVisitor.java"

# interfaces
.implements Lcom/squareup/haha/perflib/Visitor;


# instance fields
.field public final mSeen:Lcom/squareup/haha/trove/TLongHashSet;

.field public final mStack:Ljava/util/Deque;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/squareup/haha/perflib/NonRecursiveVisitor;->mStack:Ljava/util/Deque;

    .line 34
    new-instance v0, Lcom/squareup/haha/trove/TLongHashSet;

    invoke-direct {v0}, Lcom/squareup/haha/trove/TLongHashSet;-><init>()V

    iput-object v0, p0, Lcom/squareup/haha/perflib/NonRecursiveVisitor;->mSeen:Lcom/squareup/haha/trove/TLongHashSet;

    return-void
.end method


# virtual methods
.method protected defaultAction(Lcom/squareup/haha/perflib/Instance;)V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method public doVisit(Ljava/lang/Iterable;)V
    .locals 4

    .prologue
    .line 65
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/perflib/Instance;

    .line 66
    instance-of v2, v0, Lcom/squareup/haha/perflib/RootObj;

    if-eqz v2, :cond_0

    .line 68
    invoke-virtual {v0, p0}, Lcom/squareup/haha/perflib/Instance;->accept(Lcom/squareup/haha/perflib/Visitor;)V

    goto :goto_0

    .line 70
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/squareup/haha/perflib/NonRecursiveVisitor;->visitLater(Lcom/squareup/haha/perflib/Instance;Lcom/squareup/haha/perflib/Instance;)V

    goto :goto_0

    .line 73
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/squareup/haha/perflib/NonRecursiveVisitor;->mStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 74
    iget-object v0, p0, Lcom/squareup/haha/perflib/NonRecursiveVisitor;->mStack:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/perflib/Instance;

    .line 75
    iget-object v1, p0, Lcom/squareup/haha/perflib/NonRecursiveVisitor;->mSeen:Lcom/squareup/haha/trove/TLongHashSet;

    invoke-virtual {v0}, Lcom/squareup/haha/perflib/Instance;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/squareup/haha/trove/TLongHashSet;->add(J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    invoke-virtual {v0, p0}, Lcom/squareup/haha/perflib/Instance;->accept(Lcom/squareup/haha/perflib/Visitor;)V

    goto :goto_1

    .line 79
    :cond_2
    return-void
.end method

.method public visitArrayInstance(Lcom/squareup/haha/perflib/ArrayInstance;)V
    .locals 0

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/squareup/haha/perflib/NonRecursiveVisitor;->defaultAction(Lcom/squareup/haha/perflib/Instance;)V

    .line 47
    return-void
.end method

.method public visitClassInstance(Lcom/squareup/haha/perflib/ClassInstance;)V
    .locals 0

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/squareup/haha/perflib/NonRecursiveVisitor;->defaultAction(Lcom/squareup/haha/perflib/Instance;)V

    .line 52
    return-void
.end method

.method public visitClassObj(Lcom/squareup/haha/perflib/ClassObj;)V
    .locals 0

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/squareup/haha/perflib/NonRecursiveVisitor;->defaultAction(Lcom/squareup/haha/perflib/Instance;)V

    .line 57
    return-void
.end method

.method public visitLater(Lcom/squareup/haha/perflib/Instance;Lcom/squareup/haha/perflib/Instance;)V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/squareup/haha/perflib/NonRecursiveVisitor;->mStack:Ljava/util/Deque;

    invoke-interface {v0, p2}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 62
    return-void
.end method

.method public visitRootObj(Lcom/squareup/haha/perflib/RootObj;)V
    .locals 0

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/squareup/haha/perflib/NonRecursiveVisitor;->defaultAction(Lcom/squareup/haha/perflib/Instance;)V

    .line 42
    return-void
.end method
