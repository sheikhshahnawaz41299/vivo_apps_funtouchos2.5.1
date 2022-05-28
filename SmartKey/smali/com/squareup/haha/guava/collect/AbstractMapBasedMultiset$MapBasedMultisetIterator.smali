.class final Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;
.super Ljava/lang/Object;
.source "AbstractMapBasedMultiset.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private canRemove:Z

.field private currentEntry:Ljava/util/Map$Entry;

.field private entryIterator:Ljava/util/Iterator;

.field private occurrencesLeft:I

.field private synthetic this$0:Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;


# direct methods
.method constructor <init>(Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;)V
    .locals 1

    .prologue
    .line 165
    iput-object p1, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->this$0:Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    invoke-static {p1}, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;->access$000(Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->entryIterator:Ljava/util/Iterator;

    .line 167
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->occurrencesLeft:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->entryIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->occurrencesLeft:I

    if-nez v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->entryIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->currentEntry:Ljava/util/Map$Entry;

    .line 178
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->currentEntry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/guava/collect/Count;

    .line 1037
    iget v0, v0, Lcom/squareup/haha/guava/collect/Count;->value:I

    .line 178
    iput v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->occurrencesLeft:I

    .line 180
    :cond_0
    iget v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->occurrencesLeft:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->occurrencesLeft:I

    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->canRemove:Z

    .line 182
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->currentEntry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 2

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->canRemove:Z

    invoke-static {v0}, Lcom/squareup/haha/guava/base/Ascii;->checkRemove(Z)V

    .line 188
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->currentEntry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/guava/collect/Count;

    .line 2037
    iget v0, v0, Lcom/squareup/haha/guava/collect/Count;->value:I

    .line 189
    if-gtz v0, :cond_0

    .line 190
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->currentEntry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/guava/collect/Count;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/squareup/haha/guava/collect/Count;->addAndGet(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->entryIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->this$0:Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;

    invoke-static {v0}, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;->access$110(Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;)J

    .line 196
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$MapBasedMultisetIterator;->canRemove:Z

    .line 197
    return-void
.end method
