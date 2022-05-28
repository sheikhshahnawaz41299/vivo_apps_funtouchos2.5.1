.class final Lcom/squareup/haha/guava/collect/AbstractMultiset$EntrySet;
.super Lcom/squareup/haha/guava/collect/Multisets$EntrySet;
.source "AbstractMultiset.java"


# instance fields
.field private synthetic this$0:Lcom/squareup/haha/guava/collect/AbstractMultiset;


# direct methods
.method constructor <init>(Lcom/squareup/haha/guava/collect/AbstractMultiset;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/squareup/haha/guava/collect/AbstractMultiset$EntrySet;->this$0:Lcom/squareup/haha/guava/collect/AbstractMultiset;

    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/Multisets$EntrySet;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMultiset$EntrySet;->this$0:Lcom/squareup/haha/guava/collect/AbstractMultiset;

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/AbstractMultiset;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method final multiset()Lcom/squareup/haha/guava/collect/Multiset;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMultiset$EntrySet;->this$0:Lcom/squareup/haha/guava/collect/AbstractMultiset;

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMultiset$EntrySet;->this$0:Lcom/squareup/haha/guava/collect/AbstractMultiset;

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/AbstractMultiset;->distinctElements()I

    move-result v0

    return v0
.end method
