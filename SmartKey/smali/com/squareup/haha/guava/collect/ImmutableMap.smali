.class public abstract Lcom/squareup/haha/guava/collect/ImmutableMap;
.super Ljava/lang/Object;
.source "ImmutableMap.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Map;


# instance fields
.field private transient entrySet:Lcom/squareup/haha/guava/collect/ImmutableSet;

.field private transient keySet:Lcom/squareup/haha/guava/collect/ImmutableSet;

.field private transient values:Lcom/squareup/haha/guava/collect/ImmutableCollection;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static of()Lcom/squareup/haha/guava/collect/ImmutableMap;
    .locals 1

    .prologue
    .line 70
    invoke-static {}, Lcom/squareup/haha/guava/collect/ImmutableBiMap;->of()Lcom/squareup/haha/guava/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .prologue
    .line 362
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 372
    invoke-virtual {p0, p1}, Lcom/squareup/haha/guava/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 377
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableMap;->values()Lcom/squareup/haha/guava/collect/ImmutableCollection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/haha/guava/collect/ImmutableCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method abstract createEntrySet()Lcom/squareup/haha/guava/collect/ImmutableSet;
.end method

.method public entrySet()Lcom/squareup/haha/guava/collect/ImmutableSet;
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/ImmutableMap;->entrySet:Lcom/squareup/haha/guava/collect/ImmutableSet;

    .line 393
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableMap;->createEntrySet()Lcom/squareup/haha/guava/collect/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/haha/guava/collect/ImmutableMap;->entrySet:Lcom/squareup/haha/guava/collect/ImmutableSet;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableMap;->entrySet()Lcom/squareup/haha/guava/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 507
    invoke-static {p0, p1}, Lcom/squareup/haha/guava/collect/Maps;->equalsImpl(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public abstract get(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 515
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableMap;->entrySet()Lcom/squareup/haha/guava/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableSet;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 367
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method abstract isPartialView()Z
.end method

.method public keySet()Lcom/squareup/haha/guava/collect/ImmutableSet;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/ImmutableMap;->keySet:Lcom/squareup/haha/guava/collect/ImmutableSet;

    .line 407
    if-nez v0, :cond_0

    .line 1411
    new-instance v0, Lcom/squareup/haha/guava/collect/ImmutableMapKeySet;

    invoke-direct {v0, p0}, Lcom/squareup/haha/guava/collect/ImmutableMapKeySet;-><init>(Lcom/squareup/haha/guava/collect/ImmutableMap;)V

    .line 407
    iput-object v0, p0, Lcom/squareup/haha/guava/collect/ImmutableMap;->keySet:Lcom/squareup/haha/guava/collect/ImmutableSet;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableMap;->keySet()Lcom/squareup/haha/guava/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 326
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 1

    .prologue
    .line 350
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 338
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 519
    invoke-static {p0}, Lcom/squareup/haha/guava/collect/Maps;->toStringImpl(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Lcom/squareup/haha/guava/collect/ImmutableCollection;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/ImmutableMap;->values:Lcom/squareup/haha/guava/collect/ImmutableCollection;

    .line 423
    if-nez v0, :cond_0

    new-instance v0, Lcom/squareup/haha/guava/collect/ImmutableMapValues;

    invoke-direct {v0, p0}, Lcom/squareup/haha/guava/collect/ImmutableMapValues;-><init>(Lcom/squareup/haha/guava/collect/ImmutableMap;)V

    iput-object v0, p0, Lcom/squareup/haha/guava/collect/ImmutableMap;->values:Lcom/squareup/haha/guava/collect/ImmutableCollection;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableMap;->values()Lcom/squareup/haha/guava/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method
