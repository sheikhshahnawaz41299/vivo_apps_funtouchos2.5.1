.class final Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$KeySet$1;
.super Ljava/lang/Object;
.source "AbstractMapBasedMultimap.java"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private entry:Ljava/util/Map$Entry;

.field private synthetic this$1:Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$KeySet;

.field private synthetic val$entryIterator:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$KeySet;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 927
    iput-object p1, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$KeySet$1;->this$1:Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$KeySet;

    iput-object p2, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$KeySet$1;->val$entryIterator:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .prologue
    .line 932
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$KeySet$1;->val$entryIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 936
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$KeySet$1;->val$entryIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$KeySet$1;->entry:Ljava/util/Map$Entry;

    .line 937
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$KeySet$1;->entry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove()V
    .locals 3

    .prologue
    .line 941
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$KeySet$1;->entry:Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/squareup/haha/guava/base/Ascii;->checkRemove(Z)V

    .line 942
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$KeySet$1;->entry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 943
    iget-object v1, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$KeySet$1;->val$entryIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 944
    iget-object v1, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$KeySet$1;->this$1:Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$KeySet;

    iget-object v1, v1, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$KeySet;->this$0:Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-static {v1, v2}, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;->access$220(Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;I)I

    .line 945
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 946
    return-void

    .line 941
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
