.class final Lcom/squareup/haha/guava/collect/AbstractMultimap$Values;
.super Ljava/util/AbstractCollection;
.source "AbstractMultimap.java"


# instance fields
.field private synthetic this$0:Lcom/squareup/haha/guava/collect/AbstractMultimap;


# direct methods
.method constructor <init>(Lcom/squareup/haha/guava/collect/AbstractMultimap;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/squareup/haha/guava/collect/AbstractMultimap$Values;->this$0:Lcom/squareup/haha/guava/collect/AbstractMultimap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMultimap$Values;->this$0:Lcom/squareup/haha/guava/collect/AbstractMultimap;

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/AbstractMultimap;->clear()V

    .line 196
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMultimap$Values;->this$0:Lcom/squareup/haha/guava/collect/AbstractMultimap;

    invoke-virtual {v0, p1}, Lcom/squareup/haha/guava/collect/AbstractMultimap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMultimap$Values;->this$0:Lcom/squareup/haha/guava/collect/AbstractMultimap;

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/AbstractMultimap;->valueIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMultimap$Values;->this$0:Lcom/squareup/haha/guava/collect/AbstractMultimap;

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/AbstractMultimap;->size()I

    move-result v0

    return v0
.end method
