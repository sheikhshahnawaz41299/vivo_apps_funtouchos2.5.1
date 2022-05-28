.class final Lcom/squareup/haha/guava/base/Predicates$NotPredicate;
.super Ljava/lang/Object;
.source "Predicates.java"

# interfaces
.implements Lcom/squareup/haha/guava/base/Predicate;
.implements Ljava/io/Serializable;


# instance fields
.field private predicate:Lcom/squareup/haha/guava/base/Predicate;


# direct methods
.method constructor <init>(Lcom/squareup/haha/guava/base/Predicate;)V
    .locals 1

    .prologue
    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    invoke-static {p1}, Lcom/squareup/haha/guava/base/Ascii;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/guava/base/Predicate;

    iput-object v0, p0, Lcom/squareup/haha/guava/base/Predicates$NotPredicate;->predicate:Lcom/squareup/haha/guava/base/Predicate;

    .line 325
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/squareup/haha/guava/base/Predicates$NotPredicate;->predicate:Lcom/squareup/haha/guava/base/Predicate;

    invoke-interface {v0, p1}, Lcom/squareup/haha/guava/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 334
    instance-of v0, p1, Lcom/squareup/haha/guava/base/Predicates$NotPredicate;

    if-eqz v0, :cond_0

    .line 335
    check-cast p1, Lcom/squareup/haha/guava/base/Predicates$NotPredicate;

    .line 336
    iget-object v0, p0, Lcom/squareup/haha/guava/base/Predicates$NotPredicate;->predicate:Lcom/squareup/haha/guava/base/Predicate;

    iget-object v1, p1, Lcom/squareup/haha/guava/base/Predicates$NotPredicate;->predicate:Lcom/squareup/haha/guava/base/Predicate;

    invoke-interface {v0, v1}, Lcom/squareup/haha/guava/base/Predicate;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 338
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/squareup/haha/guava/base/Predicates$NotPredicate;->predicate:Lcom/squareup/haha/guava/base/Predicate;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Predicates.not("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/squareup/haha/guava/base/Predicates$NotPredicate;->predicate:Lcom/squareup/haha/guava/base/Predicate;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
