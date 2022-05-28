.class public abstract Lcom/squareup/haha/guava/collect/ImmutableBiMap;
.super Lcom/squareup/haha/guava/collect/ImmutableMap;
.source "ImmutableBiMap.java"

# interfaces
.implements Lcom/squareup/haha/guava/collect/BiMap;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/ImmutableMap;-><init>()V

    return-void
.end method

.method public static of()Lcom/squareup/haha/guava/collect/ImmutableBiMap;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/squareup/haha/guava/collect/EmptyImmutableBiMap;->INSTANCE:Lcom/squareup/haha/guava/collect/EmptyImmutableBiMap;

    return-object v0
.end method


# virtual methods
.method public abstract inverse()Lcom/squareup/haha/guava/collect/ImmutableBiMap;
.end method

.method public final synthetic values()Lcom/squareup/haha/guava/collect/ImmutableCollection;
    .locals 1

    .prologue
    .line 40
    .line 1232
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableBiMap;->inverse()Lcom/squareup/haha/guava/collect/ImmutableBiMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableBiMap;->keySet()Lcom/squareup/haha/guava/collect/ImmutableSet;

    move-result-object v0

    .line 40
    return-object v0
.end method

.method public synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 40
    .line 2232
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/ImmutableBiMap;->inverse()Lcom/squareup/haha/guava/collect/ImmutableBiMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/ImmutableBiMap;->keySet()Lcom/squareup/haha/guava/collect/ImmutableSet;

    move-result-object v0

    .line 40
    return-object v0
.end method
