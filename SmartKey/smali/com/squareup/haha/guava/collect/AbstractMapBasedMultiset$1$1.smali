.class final Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$1$1;
.super Lcom/squareup/haha/guava/collect/Multisets$AbstractEntry;
.source "AbstractMapBasedMultiset.java"


# instance fields
.field private synthetic this$1:Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$1;

.field private synthetic val$mapEntry:Ljava/util/Map$Entry;


# direct methods
.method constructor <init>(Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$1;Ljava/util/Map$Entry;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$1$1;->this$1:Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$1;

    iput-object p2, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$1$1;->val$mapEntry:Ljava/util/Map$Entry;

    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/Multisets$AbstractEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 3

    .prologue
    .line 108
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$1$1;->val$mapEntry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/guava/collect/Count;

    .line 109
    if-eqz v0, :cond_0

    .line 1037
    iget v1, v0, Lcom/squareup/haha/guava/collect/Count;->value:I

    .line 109
    if-nez v1, :cond_1

    .line 110
    :cond_0
    iget-object v1, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$1$1;->this$1:Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$1;

    iget-object v1, v1, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$1;->this$0:Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;

    invoke-static {v1}, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;->access$000(Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$1$1;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/squareup/haha/guava/collect/Count;

    .line 111
    if-eqz v1, :cond_1

    .line 2037
    iget v0, v1, Lcom/squareup/haha/guava/collect/Count;->value:I

    .line 115
    :goto_0
    return v0

    :cond_1
    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 3037
    :cond_2
    iget v0, v0, Lcom/squareup/haha/guava/collect/Count;->value:I

    goto :goto_0
.end method

.method public final getElement()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultiset$1$1;->val$mapEntry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
