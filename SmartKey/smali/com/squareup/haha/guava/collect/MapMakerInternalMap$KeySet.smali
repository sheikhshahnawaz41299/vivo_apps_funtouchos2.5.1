.class final Lcom/squareup/haha/guava/collect/MapMakerInternalMap$KeySet;
.super Ljava/util/AbstractSet;
.source "MapMakerInternalMap.java"


# instance fields
.field private synthetic this$0:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;


# direct methods
.method constructor <init>(Lcom/squareup/haha/guava/collect/MapMakerInternalMap;)V
    .locals 0

    .prologue
    .line 3773
    iput-object p1, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$KeySet;->this$0:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .prologue
    .line 3802
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$KeySet;->this$0:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->clear()V

    .line 3803
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 3792
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$KeySet;->this$0:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    invoke-virtual {v0, p1}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 3787
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$KeySet;->this$0:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 3777
    new-instance v0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$KeyIterator;

    iget-object v1, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$KeySet;->this$0:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    invoke-direct {v0, v1}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$KeyIterator;-><init>(Lcom/squareup/haha/guava/collect/MapMakerInternalMap;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 3797
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$KeySet;->this$0:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    invoke-virtual {v0, p1}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 3782
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$KeySet;->this$0:Lcom/squareup/haha/guava/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/MapMakerInternalMap;->size()I

    move-result v0

    return v0
.end method
