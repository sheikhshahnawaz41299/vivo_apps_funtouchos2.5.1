.class final Lcom/squareup/haha/guava/collect/ImmutableMultiset$1;
.super Lcom/squareup/haha/guava/collect/UnmodifiableIterator;
.source "ImmutableMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/haha/guava/collect/ImmutableMultiset;->iterator()Lcom/squareup/haha/guava/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/haha/guava/collect/UnmodifiableIterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private element:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private remaining:I

.field private synthetic val$entryIterator:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/squareup/haha/guava/collect/ImmutableMultiset;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 240
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMultiset$1;, "Lcom/squareup/haha/guava/collect/ImmutableMultiset.1;"
    iput-object p2, p0, Lcom/squareup/haha/guava/collect/ImmutableMultiset$1;->val$entryIterator:Ljava/util/Iterator;

    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/UnmodifiableIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .prologue
    .line 246
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMultiset$1;, "Lcom/squareup/haha/guava/collect/ImmutableMultiset.1;"
    iget v0, p0, Lcom/squareup/haha/guava/collect/ImmutableMultiset$1;->remaining:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/squareup/haha/guava/collect/ImmutableMultiset$1;->val$entryIterator:Ljava/util/Iterator;

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

.method public final next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 251
    .local p0, "this":Lcom/squareup/haha/guava/collect/ImmutableMultiset$1;, "Lcom/squareup/haha/guava/collect/ImmutableMultiset.1;"
    iget v1, p0, Lcom/squareup/haha/guava/collect/ImmutableMultiset$1;->remaining:I

    if-gtz v1, :cond_0

    .line 252
    iget-object v1, p0, Lcom/squareup/haha/guava/collect/ImmutableMultiset$1;->val$entryIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/guava/collect/Multiset$Entry;

    .line 253
    .local v0, "entry":Lcom/squareup/haha/guava/collect/Multiset$Entry;, "Lcom/squareup/haha/guava/collect/Multiset$Entry<TE;>;"
    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/haha/guava/collect/ImmutableMultiset$1;->element:Ljava/lang/Object;

    .line 254
    invoke-interface {v0}, Lcom/squareup/haha/guava/collect/Multiset$Entry;->getCount()I

    move-result v1

    iput v1, p0, Lcom/squareup/haha/guava/collect/ImmutableMultiset$1;->remaining:I

    .line 256
    .end local v0    # "entry":Lcom/squareup/haha/guava/collect/Multiset$Entry;, "Lcom/squareup/haha/guava/collect/Multiset$Entry<TE;>;"
    :cond_0
    iget v1, p0, Lcom/squareup/haha/guava/collect/ImmutableMultiset$1;->remaining:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/squareup/haha/guava/collect/ImmutableMultiset$1;->remaining:I

    .line 257
    iget-object v1, p0, Lcom/squareup/haha/guava/collect/ImmutableMultiset$1;->element:Ljava/lang/Object;

    return-object v1
.end method
