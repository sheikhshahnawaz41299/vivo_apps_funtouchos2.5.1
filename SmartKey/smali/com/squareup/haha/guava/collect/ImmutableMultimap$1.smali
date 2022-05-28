.class final Lcom/squareup/haha/guava/collect/ImmutableMultimap$1;
.super Lcom/squareup/haha/guava/collect/ImmutableMultimap$Itr;
.source "ImmutableMultimap.java"


# direct methods
.method constructor <init>(Lcom/squareup/haha/guava/collect/ImmutableMultimap;)V
    .locals 1

    .prologue
    .line 557
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/squareup/haha/guava/collect/ImmutableMultimap$Itr;-><init>(Lcom/squareup/haha/guava/collect/ImmutableMultimap;B)V

    return-void
.end method


# virtual methods
.method final synthetic output(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 557
    .line 1560
    invoke-static {p1, p2}, Lcom/squareup/haha/guava/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 557
    return-object v0
.end method
