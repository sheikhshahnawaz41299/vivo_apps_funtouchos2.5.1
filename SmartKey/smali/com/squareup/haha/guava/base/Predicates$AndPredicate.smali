.class final Lcom/squareup/haha/guava/base/Predicates$AndPredicate;
.super Ljava/lang/Object;
.source "Predicates.java"

# interfaces
.implements Lcom/squareup/haha/guava/base/Predicate;
.implements Ljava/io/Serializable;


# instance fields
.field private final components:Ljava/util/List;


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    iput-object p1, p0, Lcom/squareup/haha/guava/base/Predicates$AndPredicate;->components:Ljava/util/List;

    .line 354
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;B)V
    .locals 0

    .prologue
    .line 349
    invoke-direct {p0, p1}, Lcom/squareup/haha/guava/base/Predicates$AndPredicate;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 358
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/squareup/haha/guava/base/Predicates$AndPredicate;->components:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 359
    iget-object v0, p0, Lcom/squareup/haha/guava/base/Predicates$AndPredicate;->components:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/haha/guava/base/Predicate;

    invoke-interface {v0, p1}, Lcom/squareup/haha/guava/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 363
    :goto_1
    return v2

    .line 358
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 363
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 370
    instance-of v0, p1, Lcom/squareup/haha/guava/base/Predicates$AndPredicate;

    if-eqz v0, :cond_0

    .line 371
    check-cast p1, Lcom/squareup/haha/guava/base/Predicates$AndPredicate;

    .line 372
    iget-object v0, p0, Lcom/squareup/haha/guava/base/Predicates$AndPredicate;->components:Ljava/util/List;

    iget-object v1, p1, Lcom/squareup/haha/guava/base/Predicates$AndPredicate;->components:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 374
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Lcom/squareup/haha/guava/base/Predicates$AndPredicate;->components:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    const v1, 0x12472c2c

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Predicates.and("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/squareup/haha/guava/base/Predicates;->access$800$5d847356()Lcom/squareup/haha/guava/base/Ascii;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/haha/guava/base/Predicates$AndPredicate;->components:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/squareup/haha/guava/base/Ascii;->join(Ljava/lang/Iterable;)Ljava/lang/String;

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
