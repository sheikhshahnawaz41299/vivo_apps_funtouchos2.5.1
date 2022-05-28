.class abstract Lcom/squareup/haha/trove/THashMap$MapBackedView;
.super Ljava/lang/Object;
.source "THashMap.java"

# interfaces
.implements Ljava/util/Set;


# instance fields
.field private synthetic this$0:Lcom/squareup/haha/trove/THashMap;


# direct methods
.method constructor <init>(Lcom/squareup/haha/trove/THashMap;)V
    .locals 0

    .prologue
    .line 608
    iput-object p1, p0, Lcom/squareup/haha/trove/THashMap$MapBackedView;->this$0:Lcom/squareup/haha/trove/THashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 609
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 656
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 701
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 651
    iget-object v0, p0, Lcom/squareup/haha/trove/THashMap$MapBackedView;->this$0:Lcom/squareup/haha/trove/THashMap;

    invoke-virtual {v0}, Lcom/squareup/haha/trove/THashMap;->clear()V

    .line 652
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 620
    invoke-virtual {p0, p1}, Lcom/squareup/haha/trove/THashMap$MapBackedView;->containsElement(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 2

    .prologue
    .line 630
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 631
    invoke-virtual {p0, v1}, Lcom/squareup/haha/trove/THashMap$MapBackedView;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 632
    const/4 v0, 0x0

    .line 635
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public abstract containsElement(Ljava/lang/Object;)Z
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 696
    iget-object v0, p0, Lcom/squareup/haha/trove/THashMap$MapBackedView;->this$0:Lcom/squareup/haha/trove/THashMap;

    invoke-virtual {v0}, Lcom/squareup/haha/trove/THashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public abstract iterator()Ljava/util/Iterator;
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 625
    invoke-virtual {p0, p1}, Lcom/squareup/haha/trove/THashMap$MapBackedView;->removeElement(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 3

    .prologue
    .line 640
    const/4 v0, 0x0

    .line 641
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 642
    invoke-virtual {p0, v2}, Lcom/squareup/haha/trove/THashMap$MapBackedView;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 643
    const/4 v0, 0x1

    goto :goto_0

    .line 646
    :cond_1
    return v0
.end method

.method public abstract removeElement(Ljava/lang/Object;)Z
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 3

    .prologue
    .line 706
    const/4 v0, 0x0

    .line 707
    invoke-virtual {p0}, Lcom/squareup/haha/trove/THashMap$MapBackedView;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 708
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 709
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 710
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 711
    const/4 v0, 0x1

    goto :goto_0

    .line 714
    :cond_1
    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Lcom/squareup/haha/trove/THashMap$MapBackedView;->this$0:Lcom/squareup/haha/trove/THashMap;

    invoke-virtual {v0}, Lcom/squareup/haha/trove/THashMap;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 4

    .prologue
    .line 666
    invoke-virtual {p0}, Lcom/squareup/haha/trove/THashMap$MapBackedView;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/Object;

    .line 667
    invoke-virtual {p0}, Lcom/squareup/haha/trove/THashMap$MapBackedView;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 668
    const/4 v0, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 669
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v0

    .line 668
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 671
    :cond_0
    return-object v1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5

    .prologue
    .line 676
    invoke-virtual {p0}, Lcom/squareup/haha/trove/THashMap$MapBackedView;->size()I

    move-result v2

    .line 677
    array-length v0, p1

    if-ge v0, v2, :cond_2

    .line 678
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 681
    :goto_0
    invoke-virtual {p0}, Lcom/squareup/haha/trove/THashMap$MapBackedView;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 683
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_0

    .line 684
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v0, v1

    .line 683
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 687
    :cond_0
    array-length v1, v0

    if-le v1, v2, :cond_1

    .line 688
    const/4 v1, 0x0

    aput-object v1, v0, v2

    .line 691
    :cond_1
    return-object v0

    :cond_2
    move-object v0, p1

    goto :goto_0
.end method
