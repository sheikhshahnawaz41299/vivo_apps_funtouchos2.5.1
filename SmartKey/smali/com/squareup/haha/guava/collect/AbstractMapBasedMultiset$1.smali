.class final Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$1;
.super Ljava/lang/Object;
.source "AbstractMapBasedMultiset.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final synthetic this$0:Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;

.field private toRemove:Ljava/util/Map$Entry;

.field private synthetic val$backingEntries:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$1;->this$0:Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;

    iput-object p2, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$1;->val$backingEntries:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$1;->val$backingEntries:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 89
    .line 1099
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$1;->val$backingEntries:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1100
    iput-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$1;->toRemove:Ljava/util/Map$Entry;

    .line 1101
    new-instance v1, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$1$1;

    invoke-direct {v1, p0, v0}, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$1$1;-><init>(Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$1;Ljava/util/Map$Entry;)V

    .line 89
    return-object v1
.end method

.method public final remove()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 122
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$1;->toRemove:Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/squareup/haha/guava/base/Ascii;->checkRemove(Z)V

    .line 123
    iget-object v2, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$1;->this$0:Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;

    iget-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$1;->toRemove:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/guava/collect/Count;

    invoke-virtual {v0, v1}, Lcom/squareup/haha/guava/collect/Count;->getAndSet(I)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v2, v0, v1}, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;->access$122(Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;J)J

    .line 124
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$1;->val$backingEntries:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$1;->toRemove:Ljava/util/Map$Entry;

    .line 126
    return-void

    :cond_0
    move v0, v1

    .line 122
    goto :goto_0
.end method
