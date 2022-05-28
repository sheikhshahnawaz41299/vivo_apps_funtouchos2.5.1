.class final Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$2;
.super Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$Itr;
.source "AbstractMapBasedMultimap.java"


# direct methods
.method constructor <init>(Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;)V
    .locals 0

    .prologue
    .line 1214
    invoke-direct {p0, p1}, Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap$Itr;-><init>(Lcom/squareup/haha/guava/collect/AbstractMapBasedMultimap;)V

    return-void
.end method


# virtual methods
.method final synthetic output(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1214
    .line 2217
    invoke-static {p1, p2}, Lcom/squareup/haha/guava/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 1214
    return-object v0
.end method
