.class abstract Lcom/squareup/haha/guava/collect/AbstractMultimap;
.super Ljava/lang/Object;
.source "AbstractMultimap.java"

# interfaces
.implements Lcom/squareup/haha/guava/collect/Multimap;


# instance fields
.field private transient asMap:Ljava/util/Map;

.field private transient entries:Ljava/util/Collection;

.field private transient keySet:Ljava/util/Set;

.field private transient values:Ljava/util/Collection;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    return-void
.end method


# virtual methods
.method public asMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMultimap;->asMap:Ljava/util/Map;

    .line 208
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/AbstractMultimap;->createAsMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMultimap;->asMap:Ljava/util/Map;

    :cond_0
    return-object v0
.end method

.method public containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/AbstractMultimap;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 58
    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/AbstractMultimap;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 47
    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    const/4 v0, 0x1

    .line 52
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method abstract createAsMap()Ljava/util/Map;
.end method

.method createEntries()Ljava/util/Collection;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 112
    instance-of v0, p0, Lcom/squareup/haha/guava/collect/SetMultimap;

    if-eqz v0, :cond_0

    .line 113
    new-instance v0, Lcom/squareup/haha/guava/collect/AbstractMultimap$EntrySet;

    invoke-direct {v0, p0, v1}, Lcom/squareup/haha/guava/collect/AbstractMultimap$EntrySet;-><init>(Lcom/squareup/haha/guava/collect/AbstractMultimap;B)V

    .line 115
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/squareup/haha/guava/collect/AbstractMultimap$Entries;

    invoke-direct {v0, p0, v1}, Lcom/squareup/haha/guava/collect/AbstractMultimap$Entries;-><init>(Lcom/squareup/haha/guava/collect/AbstractMultimap;B)V

    goto :goto_0
.end method

.method createKeySet()Ljava/util/Set;
    .locals 2

    .prologue
    .line 154
    new-instance v0, Lcom/squareup/haha/guava/collect/Maps$KeySet;

    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/AbstractMultimap;->asMap()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/squareup/haha/guava/collect/Maps$KeySet;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method createValues()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 178
    new-instance v0, Lcom/squareup/haha/guava/collect/AbstractMultimap$Values;

    invoke-direct {v0, p0}, Lcom/squareup/haha/guava/collect/AbstractMultimap$Values;-><init>(Lcom/squareup/haha/guava/collect/AbstractMultimap;)V

    return-object v0
.end method

.method public entries()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMultimap;->entries:Ljava/util/Collection;

    .line 108
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/AbstractMultimap;->createEntries()Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMultimap;->entries:Ljava/util/Collection;

    :cond_0
    return-object v0
.end method

.method abstract entryIterator()Ljava/util/Iterator;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 216
    .line 3048
    if-ne p1, p0, :cond_0

    .line 3049
    const/4 v0, 0x1

    .line 3053
    :goto_0
    return v0

    .line 3051
    :cond_0
    instance-of v0, p1, Lcom/squareup/haha/guava/collect/Multimap;

    if-eqz v0, :cond_1

    .line 3052
    check-cast p1, Lcom/squareup/haha/guava/collect/Multimap;

    .line 3053
    invoke-interface {p0}, Lcom/squareup/haha/guava/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Lcom/squareup/haha/guava/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 3055
    :cond_1
    const/4 v0, 0x0

    .line 216
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/AbstractMultimap;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMultimap;->keySet:Ljava/util/Set;

    .line 150
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/AbstractMultimap;->createKeySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMultimap;->keySet:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/squareup/haha/guava/collect/AbstractMultimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/AbstractMultimap;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 64
    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/AbstractMultimap;->asMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method valueIterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/AbstractMultimap;->entries()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/haha/guava/collect/Maps;->valueIterator(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMultimap;->values:Ljava/util/Collection;

    .line 174
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/AbstractMultimap;->createValues()Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMultimap;->values:Ljava/util/Collection;

    :cond_0
    return-object v0
.end method
