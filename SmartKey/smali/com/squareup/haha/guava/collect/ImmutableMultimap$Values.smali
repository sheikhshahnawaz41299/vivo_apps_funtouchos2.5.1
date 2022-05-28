.class final Lcom/squareup/haha/guava/collect/ImmutableMultimap$Values;
.super Lcom/squareup/haha/guava/collect/ImmutableCollection;
.source "ImmutableMultimap.java"


# instance fields
.field private final transient multimap:Lcom/squareup/haha/guava/collect/ImmutableMultimap;


# direct methods
.method constructor <init>(Lcom/squareup/haha/guava/collect/ImmutableMultimap;)V
    .locals 0

    .prologue
    .line 644
    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/ImmutableCollection;-><init>()V

    .line 645
    iput-object p1, p0, Lcom/squareup/haha/guava/collect/ImmutableMultimap$Values;->multimap:Lcom/squareup/haha/guava/collect/ImmutableMultimap;

    .line 646
    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/ImmutableMultimap$Values;->multimap:Lcom/squareup/haha/guava/collect/ImmutableMultimap;

    invoke-virtual {v0, p1}, Lcom/squareup/haha/guava/collect/ImmutableMultimap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method final copyIntoArray([Ljava/lang/Object;I)I
    .locals 2

    .prologue
    .line 660
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/ImmutableMultimap$Values;->multimap:Lcom/squareup/haha/guava/collect/ImmutableMultimap;

    iget-object v0, v0, Lcom/squareup/haha/guava/collect/ImmutableMultimap;->map:Lcom/squareup/haha/guava/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableMap;->values()Lcom/squareup/haha/guava/collect/ImmutableCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/guava/collect/ImmutableCollection;

    .line 661
    invoke-virtual {v0, p1, p2}, Lcom/squareup/haha/guava/collect/ImmutableCollection;->copyIntoArray([Ljava/lang/Object;I)I

    move-result p2

    goto :goto_0

    .line 663
    :cond_0
    return p2
.end method

.method final isPartialView()Z
    .locals 1

    .prologue
    .line 672
    const/4 v0, 0x1

    return v0
.end method

.method public final iterator()Lcom/squareup/haha/guava/collect/UnmodifiableIterator;
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/ImmutableMultimap$Values;->multimap:Lcom/squareup/haha/guava/collect/ImmutableMultimap;

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableMultimap;->valueIterator()Lcom/squareup/haha/guava/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 641
    .line 1654
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/ImmutableMultimap$Values;->multimap:Lcom/squareup/haha/guava/collect/ImmutableMultimap;

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableMultimap;->valueIterator()Lcom/squareup/haha/guava/collect/UnmodifiableIterator;

    move-result-object v0

    .line 641
    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 668
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/ImmutableMultimap$Values;->multimap:Lcom/squareup/haha/guava/collect/ImmutableMultimap;

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableMultimap;->size()I

    move-result v0

    return v0
.end method
