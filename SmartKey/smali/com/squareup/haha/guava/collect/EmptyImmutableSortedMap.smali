.class final Lcom/squareup/haha/guava/collect/EmptyImmutableSortedMap;
.super Lcom/squareup/haha/guava/collect/ImmutableSortedMap;
.source "EmptyImmutableSortedMap.java"


# instance fields
.field private final transient keySet:Lcom/squareup/haha/guava/collect/ImmutableSortedSet;


# direct methods
.method constructor <init>(Ljava/util/Comparator;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;-><init>()V

    .line 37
    invoke-static {p1}, Lcom/squareup/haha/guava/collect/ImmutableSortedSet;->emptySet(Ljava/util/Comparator;)Lcom/squareup/haha/guava/collect/ImmutableSortedSet;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/haha/guava/collect/EmptyImmutableSortedMap;->keySet:Lcom/squareup/haha/guava/collect/ImmutableSortedSet;

    .line 38
    return-void
.end method

.method private constructor <init>(Ljava/util/Comparator;Lcom/squareup/haha/guava/collect/ImmutableSortedMap;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p2}, Lcom/squareup/haha/guava/collect/ImmutableSortedMap;-><init>(Lcom/squareup/haha/guava/collect/ImmutableSortedMap;)V

    .line 43
    invoke-static {p1}, Lcom/squareup/haha/guava/collect/ImmutableSortedSet;->emptySet(Ljava/util/Comparator;)Lcom/squareup/haha/guava/collect/ImmutableSortedSet;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/haha/guava/collect/EmptyImmutableSortedMap;->keySet:Lcom/squareup/haha/guava/collect/ImmutableSortedSet;

    .line 44
    return-void
.end method


# virtual methods
.method final createDescendingMap()Lcom/squareup/haha/guava/collect/ImmutableSortedMap;
    .locals 2

    .prologue
    .line 110
    new-instance v0, Lcom/squareup/haha/guava/collect/EmptyImmutableSortedMap;

    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/EmptyImmutableSortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v1}, Lcom/squareup/haha/guava/collect/Ordering;->from(Ljava/util/Comparator;)Lcom/squareup/haha/guava/collect/Ordering;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/haha/guava/collect/Ordering;->reverse()Lcom/squareup/haha/guava/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/squareup/haha/guava/collect/EmptyImmutableSortedMap;-><init>(Ljava/util/Comparator;Lcom/squareup/haha/guava/collect/ImmutableSortedMap;)V

    return-object v0
.end method

.method final createEntrySet()Lcom/squareup/haha/guava/collect/ImmutableSet;
    .locals 2

    .prologue
    .line 88
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final entrySet()Lcom/squareup/haha/guava/collect/ImmutableSet;
    .locals 1

    .prologue
    .line 83
    invoke-static {}, Lcom/squareup/haha/guava/collect/ImmutableSet;->of()Lcom/squareup/haha/guava/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic entrySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 31
    .line 3083
    invoke-static {}, Lcom/squareup/haha/guava/collect/ImmutableSet;->of()Lcom/squareup/haha/guava/collect/ImmutableSet;

    move-result-object v0

    .line 31
    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method public final synthetic headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    .prologue
    .line 31
    .line 2098
    invoke-static {p1}, Lcom/squareup/haha/guava/base/Ascii;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    return-object p0
.end method

.method public final headMap$166011c5(Ljava/lang/Object;)Lcom/squareup/haha/guava/collect/ImmutableSortedMap;
    .locals 0

    .prologue
    .line 98
    invoke-static {p1}, Lcom/squareup/haha/guava/base/Ascii;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    return-object p0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x1

    return v0
.end method

.method final isPartialView()Z
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic keySet()Lcom/squareup/haha/guava/collect/ImmutableSet;
    .locals 1

    .prologue
    .line 31
    .line 6053
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/EmptyImmutableSortedMap;->keySet:Lcom/squareup/haha/guava/collect/ImmutableSortedSet;

    .line 31
    return-object v0
.end method

.method public final keySet()Lcom/squareup/haha/guava/collect/ImmutableSortedSet;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/EmptyImmutableSortedMap;->keySet:Lcom/squareup/haha/guava/collect/ImmutableSortedSet;

    return-object v0
.end method

.method public final bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .prologue
    .line 31
    .line 5053
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/EmptyImmutableSortedMap;->keySet:Lcom/squareup/haha/guava/collect/ImmutableSortedSet;

    .line 31
    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    .prologue
    .line 31
    .line 1104
    invoke-static {p1}, Lcom/squareup/haha/guava/base/Ascii;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    return-object p0
.end method

.method public final tailMap$166011c5(Ljava/lang/Object;)Lcom/squareup/haha/guava/collect/ImmutableSortedMap;
    .locals 0

    .prologue
    .line 104
    invoke-static {p1}, Lcom/squareup/haha/guava/base/Ascii;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    const-string v0, "{}"

    return-object v0
.end method

.method public final values()Lcom/squareup/haha/guava/collect/ImmutableCollection;
    .locals 1

    .prologue
    .line 68
    invoke-static {}, Lcom/squareup/haha/guava/collect/ImmutableList;->of()Lcom/squareup/haha/guava/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic values()Ljava/util/Collection;
    .locals 1

    .prologue
    .line 31
    .line 4068
    invoke-static {}, Lcom/squareup/haha/guava/collect/ImmutableList;->of()Lcom/squareup/haha/guava/collect/ImmutableList;

    move-result-object v0

    .line 31
    return-object v0
.end method
