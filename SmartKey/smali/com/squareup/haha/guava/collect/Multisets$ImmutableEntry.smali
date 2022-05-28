.class final Lcom/squareup/haha/guava/collect/Multisets$ImmutableEntry;
.super Lcom/squareup/haha/guava/collect/Multisets$AbstractEntry;
.source "Multisets.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private count:I

.field private element:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;I)V
    .locals 1

    .prologue
    .line 220
    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/Multisets$AbstractEntry;-><init>()V

    .line 221
    iput-object p1, p0, Lcom/squareup/haha/guava/collect/Multisets$ImmutableEntry;->element:Ljava/lang/Object;

    .line 222
    iput p2, p0, Lcom/squareup/haha/guava/collect/Multisets$ImmutableEntry;->count:I

    .line 223
    const-string v0, "count"

    invoke-static {p2, v0}, Lcom/squareup/haha/guava/base/Ascii;->checkNonnegative(ILjava/lang/String;)I

    .line 224
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Lcom/squareup/haha/guava/collect/Multisets$ImmutableEntry;->count:I

    return v0
.end method

.method public final getElement()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/Multisets$ImmutableEntry;->element:Ljava/lang/Object;

    return-object v0
.end method
