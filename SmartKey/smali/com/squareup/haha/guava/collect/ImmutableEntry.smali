.class Lcom/squareup/haha/guava/collect/ImmutableEntry;
.super Lcom/squareup/haha/guava/collect/AbstractMapEntry;
.source "ImmutableEntry.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private key:Ljava/lang/Object;

.field private value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/AbstractMapEntry;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/squareup/haha/guava/collect/ImmutableEntry;->key:Ljava/lang/Object;

    .line 36
    iput-object p2, p0, Lcom/squareup/haha/guava/collect/ImmutableEntry;->value:Ljava/lang/Object;

    .line 37
    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/ImmutableEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/ImmutableEntry;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
