.class final Lcom/squareup/haha/guava/collect/ImmutableMultiset$EntrySet;
.super Lcom/squareup/haha/guava/collect/ImmutableSet;
.source "ImmutableMultiset.java"


# instance fields
.field final synthetic this$0:Lcom/squareup/haha/guava/collect/ImmutableMultiset;


# direct methods
.method private constructor <init>(Lcom/squareup/haha/guava/collect/ImmutableMultiset;)V
    .locals 0

    .prologue
    .line 356
    iput-object p1, p0, Lcom/squareup/haha/guava/collect/ImmutableMultiset$EntrySet;->this$0:Lcom/squareup/haha/guava/collect/ImmutableMultiset;

    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/ImmutableSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/haha/guava/collect/ImmutableMultiset;B)V
    .locals 0

    .prologue
    .line 356
    invoke-direct {p0, p1}, Lcom/squareup/haha/guava/collect/ImmutableMultiset$EntrySet;-><init>(Lcom/squareup/haha/guava/collect/ImmutableMultiset;)V

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 389
    instance-of v1, p1, Lcom/squareup/haha/guava/collect/Multiset$Entry;

    if-eqz v1, :cond_0

    .line 390
    check-cast p1, Lcom/squareup/haha/guava/collect/Multiset$Entry;

    .line 391
    invoke-interface {p1}, Lcom/squareup/haha/guava/collect/Multiset$Entry;->getCount()I

    move-result v1

    if-gtz v1, :cond_1

    .line 397
    :cond_0
    :goto_0
    return v0

    .line 394
    :cond_1
    iget-object v1, p0, Lcom/squareup/haha/guava/collect/ImmutableMultiset$EntrySet;->this$0:Lcom/squareup/haha/guava/collect/ImmutableMultiset;

    invoke-interface {p1}, Lcom/squareup/haha/guava/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/haha/guava/collect/ImmutableMultiset;->count(Ljava/lang/Object;)I

    move-result v1

    .line 395
    invoke-interface {p1}, Lcom/squareup/haha/guava/collect/Multiset$Entry;->getCount()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method final createAsList()Lcom/squareup/haha/guava/collect/ImmutableList;
    .locals 1

    .prologue
    .line 369
    new-instance v0, Lcom/squareup/haha/guava/collect/ImmutableMultiset$EntrySet$1;

    invoke-direct {v0, p0}, Lcom/squareup/haha/guava/collect/ImmutableMultiset$EntrySet$1;-><init>(Lcom/squareup/haha/guava/collect/ImmutableMultiset$EntrySet;)V

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/ImmutableMultiset$EntrySet;->this$0:Lcom/squareup/haha/guava/collect/ImmutableMultiset;

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableMultiset;->hashCode()I

    move-result v0

    return v0
.end method

.method final isPartialView()Z
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/ImmutableMultiset$EntrySet;->this$0:Lcom/squareup/haha/guava/collect/ImmutableMultiset;

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableMultiset;->isPartialView()Z

    move-result v0

    return v0
.end method

.method public final iterator()Lcom/squareup/haha/guava/collect/UnmodifiableIterator;
    .locals 1

    .prologue
    .line 364
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableMultiset$EntrySet;->asList()Lcom/squareup/haha/guava/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableList;->iterator()Lcom/squareup/haha/guava/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 356
    .line 1364
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableMultiset$EntrySet;->asList()Lcom/squareup/haha/guava/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableList;->iterator()Lcom/squareup/haha/guava/collect/UnmodifiableIterator;

    move-result-object v0

    .line 356
    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/ImmutableMultiset$EntrySet;->this$0:Lcom/squareup/haha/guava/collect/ImmutableMultiset;

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableMultiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
