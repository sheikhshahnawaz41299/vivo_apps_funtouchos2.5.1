.class final Lcom/squareup/haha/guava/collect/RegularImmutableList;
.super Lcom/squareup/haha/guava/collect/ImmutableList;
.source "RegularImmutableList.java"


# instance fields
.field private final transient array:[Ljava/lang/Object;

.field private final transient offset:I

.field private final transient size:I


# direct methods
.method constructor <init>([Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 43
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/squareup/haha/guava/collect/RegularImmutableList;-><init>([Ljava/lang/Object;II)V

    .line 44
    return-void
.end method

.method private constructor <init>([Ljava/lang/Object;II)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/ImmutableList;-><init>()V

    .line 37
    iput p2, p0, Lcom/squareup/haha/guava/collect/RegularImmutableList;->offset:I

    .line 38
    iput p3, p0, Lcom/squareup/haha/guava/collect/RegularImmutableList;->size:I

    .line 39
    iput-object p1, p0, Lcom/squareup/haha/guava/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    .line 40
    return-void
.end method


# virtual methods
.method final copyIntoArray([Ljava/lang/Object;I)I
    .locals 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    iget v1, p0, Lcom/squareup/haha/guava/collect/RegularImmutableList;->offset:I

    iget v2, p0, Lcom/squareup/haha/guava/collect/RegularImmutableList;->size:I

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    iget v0, p0, Lcom/squareup/haha/guava/collect/RegularImmutableList;->size:I

    add-int/2addr v0, p2

    return v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 65
    iget v0, p0, Lcom/squareup/haha/guava/collect/RegularImmutableList;->size:I

    invoke-static {p1, v0}, Lcom/squareup/haha/guava/base/Ascii;->checkElementIndex(II)I

    .line 66
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    iget v1, p0, Lcom/squareup/haha/guava/collect/RegularImmutableList;->offset:I

    add-int/2addr v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 71
    if-nez p1, :cond_1

    move v0, v1

    .line 79
    :cond_0
    :goto_0
    return v0

    .line 74
    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Lcom/squareup/haha/guava/collect/RegularImmutableList;->size:I

    if-ge v0, v2, :cond_2

    .line 75
    iget-object v2, p0, Lcom/squareup/haha/guava/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    iget v3, p0, Lcom/squareup/haha/guava/collect/RegularImmutableList;->offset:I

    add-int/2addr v3, v0

    aget-object v2, v2, v3

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 79
    goto :goto_0
.end method

.method final isPartialView()Z
    .locals 2

    .prologue
    .line 52
    iget v0, p0, Lcom/squareup/haha/guava/collect/RegularImmutableList;->size:I

    iget-object v1, p0, Lcom/squareup/haha/guava/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    array-length v1, v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 84
    if-nez p1, :cond_1

    .line 92
    :cond_0
    :goto_0
    return v0

    .line 87
    :cond_1
    iget v1, p0, Lcom/squareup/haha/guava/collect/RegularImmutableList;->size:I

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_0

    .line 88
    iget-object v2, p0, Lcom/squareup/haha/guava/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    iget v3, p0, Lcom/squareup/haha/guava/collect/RegularImmutableList;->offset:I

    add-int/2addr v3, v1

    aget-object v2, v2, v3

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 89
    goto :goto_0

    .line 87
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public final listIterator(I)Lcom/squareup/haha/guava/collect/UnmodifiableListIterator;
    .locals 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    iget v1, p0, Lcom/squareup/haha/guava/collect/RegularImmutableList;->offset:I

    iget v2, p0, Lcom/squareup/haha/guava/collect/RegularImmutableList;->size:I

    invoke-static {v0, v1, v2, p1}, Lcom/squareup/haha/guava/collect/Iterators;->forArray([Ljava/lang/Object;III)Lcom/squareup/haha/guava/collect/UnmodifiableListIterator;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/squareup/haha/guava/collect/RegularImmutableList;->listIterator(I)Lcom/squareup/haha/guava/collect/UnmodifiableListIterator;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/squareup/haha/guava/collect/RegularImmutableList;->size:I

    return v0
.end method

.method final subListUnchecked(II)Lcom/squareup/haha/guava/collect/ImmutableList;
    .locals 4

    .prologue
    .line 97
    new-instance v0, Lcom/squareup/haha/guava/collect/RegularImmutableList;

    iget-object v1, p0, Lcom/squareup/haha/guava/collect/RegularImmutableList;->array:[Ljava/lang/Object;

    iget v2, p0, Lcom/squareup/haha/guava/collect/RegularImmutableList;->offset:I

    add-int/2addr v2, p1

    sub-int v3, p2, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/squareup/haha/guava/collect/RegularImmutableList;-><init>([Ljava/lang/Object;II)V

    return-object v0
.end method
