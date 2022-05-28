.class final Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$AsMap$AsMapEntries;
.super Lcom/squareup/haha/guava/collect/Maps$EntrySet;
.source "AbstractMapBasedMultimap.java"


# instance fields
.field private synthetic this$1:Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$AsMap;


# direct methods
.method constructor <init>(Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$AsMap;)V
    .locals 0

    .prologue
    .line 1310
    iput-object p1, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$AsMap$AsMapEntries;->this$1:Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$AsMap;

    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/Maps$EntrySet;-><init>()V

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1323
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$AsMap$AsMapEntries;->this$1:Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$AsMap;

    iget-object v0, v0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$AsMap;->submap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/squareup/haha/guava/collect/Collections2;->safeContains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 1317
    new-instance v0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;

    iget-object v1, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$AsMap$AsMapEntries;->this$1:Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$AsMap;

    invoke-direct {v0, v1}, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;-><init>(Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$AsMap;)V

    return-object v0
.end method

.method final map()Ljava/util/Map;
    .locals 1

    .prologue
    .line 1313
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$AsMap$AsMapEntries;->this$1:Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$AsMap;

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 1327
    invoke-virtual {p0, p1}, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$AsMap$AsMapEntries;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1328
    const/4 v0, 0x0

    .line 1332
    :goto_0
    return v0

    .line 1330
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 1331
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$AsMap$AsMapEntries;->this$1:Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$AsMap;

    iget-object v0, v0, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$AsMap;->this$0:Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;->access$400(Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;Ljava/lang/Object;)I

    .line 1332
    const/4 v0, 0x1

    goto :goto_0
.end method
