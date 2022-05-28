.class final Lcom/squareup/haha/guava/collect/NaturalOrdering;
.super Lcom/squareup/haha/guava/collect/Ordering;
.source "NaturalOrdering.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final INSTANCE:Lcom/squareup/haha/guava/collect/NaturalOrdering;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/squareup/haha/guava/collect/NaturalOrdering;

    invoke-direct {v0}, Lcom/squareup/haha/guava/collect/NaturalOrdering;-><init>()V

    sput-object v0, Lcom/squareup/haha/guava/collect/NaturalOrdering;->INSTANCE:Lcom/squareup/haha/guava/collect/NaturalOrdering;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/Ordering;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 26
    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    .line 1033
    invoke-static {p1}, Lcom/squareup/haha/guava/base/Ascii;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1034
    invoke-static {p2}, Lcom/squareup/haha/guava/base/Ascii;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1035
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    .line 26
    return v0
.end method

.method public final reverse()Lcom/squareup/haha/guava/collect/Ordering;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/squareup/haha/guava/collect/ReverseNaturalOrdering;->INSTANCE:Lcom/squareup/haha/guava/collect/ReverseNaturalOrdering;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    const-string v0, "Ordering.natural()"

    return-object v0
.end method
