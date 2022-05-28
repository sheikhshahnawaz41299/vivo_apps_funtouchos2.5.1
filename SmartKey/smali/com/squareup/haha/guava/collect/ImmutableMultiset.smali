.class public abstract Lcom/squareup/haha/guava/collect/ImmutableMultiset;
.super Lcom/squareup/haha/guava/collect/ImmutableCollection;
.source "ImmutableMultiset.java"

# interfaces
.implements Lcom/squareup/haha/guava/collect/Multiset;


# instance fields
.field private transient entrySet:Lcom/squareup/haha/guava/collect/ImmutableSet;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 55
    new-instance v0, Lcom/squareup/haha/guava/collect/RegularImmutableMultiset;

    invoke-static {}, Lcom/squareup/haha/guava/collect/ImmutableMap;->of()Lcom/squareup/haha/guava/collect/ImmutableMap;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/squareup/haha/guava/collect/RegularImmutableMultiset;-><init>(Lcom/squareup/haha/guava/collect/ImmutableMap;I)V

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 236
    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/ImmutableCollection;-><init>()V

    return-void
.end method

.method private entrySet()Lcom/squareup/haha/guava/collect/ImmutableSet;
    .locals 2

    .prologue
    .line 346
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/ImmutableMultiset;->entrySet:Lcom/squareup/haha/guava/collect/ImmutableSet;

    .line 347
    if-nez v0, :cond_0

    .line 1351
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableMultiset;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/squareup/haha/guava/collect/ImmutableSet;->of()Lcom/squareup/haha/guava/collect/ImmutableSet;

    move-result-object v0

    .line 347
    :goto_0
    iput-object v0, p0, Lcom/squareup/haha/guava/collect/ImmutableMultiset;->entrySet:Lcom/squareup/haha/guava/collect/ImmutableSet;

    :cond_0
    return-object v0

    .line 1351
    :cond_1
    new-instance v0, Lcom/squareup/haha/guava/collect/ImmutableMultiset$EntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/squareup/haha/guava/collect/ImmutableMultiset$EntrySet;-><init>(Lcom/squareup/haha/guava/collect/ImmutableMultiset;B)V

    goto :goto_0
.end method


# virtual methods
.method public final add(Ljava/lang/Object;I)I
    .locals 1

    .prologue
    .line 281
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 264
    invoke-virtual {p0, p1}, Lcom/squareup/haha/guava/collect/ImmutableMultiset;->count(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableMultiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method final copyIntoArray([Ljava/lang/Object;I)I
    .locals 4

    .prologue
    .line 323
    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/ImmutableMultiset;->entrySet()Lcom/squareup/haha/guava/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/guava/collect/Multiset$Entry;

    .line 324
    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/Multiset$Entry;->getCount()I

    move-result v2

    add-int/2addr v2, p2

    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, p2, v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 325
    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/Multiset$Entry;->getCount()I

    move-result v0

    add-int/2addr p2, v0

    .line 326
    goto :goto_0

    .line 327
    :cond_0
    return p2
.end method

.method public final bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/ImmutableMultiset;->entrySet()Lcom/squareup/haha/guava/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 331
    invoke-static {p0, p1}, Lcom/squareup/haha/guava/collect/Multisets;->equalsImpl(Lcom/squareup/haha/guava/collect/Multiset;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method abstract getEntry(I)Lcom/squareup/haha/guava/collect/Multiset$Entry;
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 335
    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/ImmutableMultiset;->entrySet()Lcom/squareup/haha/guava/collect/ImmutableSet;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/haha/guava/base/Ascii;->hashCodeImpl(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method public final iterator()Lcom/squareup/haha/guava/collect/UnmodifiableIterator;
    .locals 2

    .prologue
    .line 239
    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/ImmutableMultiset;->entrySet()Lcom/squareup/haha/guava/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableSet;->iterator()Lcom/squareup/haha/guava/collect/UnmodifiableIterator;

    move-result-object v0

    .line 240
    new-instance v1, Lcom/squareup/haha/guava/collect/ImmutableMultiset$1;

    invoke-direct {v1, p0, v0}, Lcom/squareup/haha/guava/collect/ImmutableMultiset$1;-><init>(Lcom/squareup/haha/guava/collect/ImmutableMultiset;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableMultiset;->iterator()Lcom/squareup/haha/guava/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;I)I
    .locals 1

    .prologue
    .line 293
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final setCount(Ljava/lang/Object;I)I
    .locals 1

    .prologue
    .line 305
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final setCount(Ljava/lang/Object;II)Z
    .locals 1

    .prologue
    .line 317
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 339
    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/ImmutableMultiset;->entrySet()Lcom/squareup/haha/guava/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableSet;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
