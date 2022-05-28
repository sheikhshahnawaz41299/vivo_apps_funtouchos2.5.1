.class final Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongValueReference;
.super Ljava/lang/Object;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;


# instance fields
.field private referent:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1767
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1768
    iput-object p1, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongValueReference;->referent:Ljava/lang/Object;

    .line 1769
    return-void
.end method


# virtual methods
.method public final clear$5ca9f1d3()V
    .locals 0

    .prologue
    .line 1798
    return-void
.end method

.method public final copyFor(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;)Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ValueReference;
    .locals 0

    .prologue
    .line 1784
    return-object p0
.end method

.method public final get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1773
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/MapMakerInternalMap$StrongValueReference;->referent:Ljava/lang/Object;

    return-object v0
.end method

.method public final getEntry()Lcom/squareup/haha/guava/collect/MapMakerInternalMap$ReferenceEntry;
    .locals 1

    .prologue
    .line 1778
    const/4 v0, 0x0

    return-object v0
.end method
