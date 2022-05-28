.class abstract Lcom/squareup/haha/guava/collect/Maps$ImprovedAbstractMap;
.super Ljava/util/AbstractMap;
.source "Maps.java"


# instance fields
.field private transient entrySet:Ljava/util/Set;

.field private transient keySet:Ljava/util/Set;

.field private transient values:Ljava/util/Collection;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3303
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    return-void
.end method


# virtual methods
.method abstract createEntrySet()Ljava/util/Set;
.end method

.method createKeySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 3326
    new-instance v0, Lcom/squareup/haha/guava/collect/Maps$KeySet;

    invoke-direct {v0, p0}, Lcom/squareup/haha/guava/collect/Maps$KeySet;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method createValues()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 3337
    new-instance v0, Lcom/squareup/haha/guava/collect/Maps$Values;

    invoke-direct {v0, p0}, Lcom/squareup/haha/guava/collect/Maps$Values;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 3314
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/Maps$ImprovedAbstractMap;->entrySet:Ljava/util/Set;

    .line 3315
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/Maps$ImprovedAbstractMap;->createEntrySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/haha/guava/collect/Maps$ImprovedAbstractMap;->entrySet:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 3321
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/Maps$ImprovedAbstractMap;->keySet:Ljava/util/Set;

    .line 3322
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/Maps$ImprovedAbstractMap;->createKeySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/haha/guava/collect/Maps$ImprovedAbstractMap;->keySet:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 3332
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/Maps$ImprovedAbstractMap;->values:Ljava/util/Collection;

    .line 3333
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/Maps$ImprovedAbstractMap;->createValues()Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/haha/guava/collect/Maps$ImprovedAbstractMap;->values:Ljava/util/Collection;

    :cond_0
    return-object v0
.end method
