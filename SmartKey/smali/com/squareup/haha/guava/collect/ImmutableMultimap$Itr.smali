.class abstract Lcom/squareup/haha/guava/collect/ImmutableMultimap$Itr;
.super Lcom/squareup/haha/guava/collect/UnmodifiableIterator;
.source "ImmutableMultimap.java"


# instance fields
.field private key:Ljava/lang/Object;

.field private mapIterator:Ljava/util/Iterator;

.field private synthetic this$0:Lcom/squareup/haha/guava/collect/ImmutableMultimap;

.field private valueIterator:Ljava/util/Iterator;


# direct methods
.method private constructor <init>(Lcom/squareup/haha/guava/collect/ImmutableMultimap;)V
    .locals 1

    .prologue
    .line 532
    iput-object p1, p0, Lcom/squareup/haha/guava/collect/ImmutableMultimap$Itr;->this$0:Lcom/squareup/haha/guava/collect/ImmutableMultimap;

    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/UnmodifiableIterator;-><init>()V

    .line 533
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/ImmutableMultimap$Itr;->this$0:Lcom/squareup/haha/guava/collect/ImmutableMultimap;

    .line 1477
    iget-object v0, v0, Lcom/squareup/haha/guava/collect/ImmutableMultimap;->map:Lcom/squareup/haha/guava/collect/ImmutableMap;

    .line 533
    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableMap;->entrySet()Lcom/squareup/haha/guava/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableSet;->iterator()Lcom/squareup/haha/guava/collect/UnmodifiableIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/haha/guava/collect/ImmutableMultimap$Itr;->mapIterator:Ljava/util/Iterator;

    .line 534
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/haha/guava/collect/ImmutableMultimap$Itr;->key:Ljava/lang/Object;

    .line 535
    invoke-static {}, Lcom/squareup/haha/guava/collect/Iterators;->emptyIterator()Lcom/squareup/haha/guava/collect/UnmodifiableIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/haha/guava/collect/ImmutableMultimap$Itr;->valueIterator:Ljava/util/Iterator;

    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/haha/guava/collect/ImmutableMultimap;B)V
    .locals 0

    .prologue
    .line 532
    invoke-direct {p0, p1}, Lcom/squareup/haha/guava/collect/ImmutableMultimap$Itr;-><init>(Lcom/squareup/haha/guava/collect/ImmutableMultimap;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/ImmutableMultimap$Itr;->mapIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/squareup/haha/guava/collect/ImmutableMultimap$Itr;->valueIterator:Ljava/util/Iterator;

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

.method public next()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 546
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/ImmutableMultimap$Itr;->valueIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/ImmutableMultimap$Itr;->mapIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 548
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/haha/guava/collect/ImmutableMultimap$Itr;->key:Ljava/lang/Object;

    .line 549
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/haha/guava/collect/ImmutableMultimap$Itr;->valueIterator:Ljava/util/Iterator;

    .line 551
    :cond_0
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/ImmutableMultimap$Itr;->key:Ljava/lang/Object;

    iget-object v1, p0, Lcom/squareup/haha/guava/collect/ImmutableMultimap$Itr;->valueIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/squareup/haha/guava/collect/ImmutableMultimap$Itr;->output(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method abstract output(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method
