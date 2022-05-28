.class Lcom/squareup/haha/guava/collect/AbstractMultimap$Entries;
.super Lcom/squareup/haha/guava/collect/Multimaps$Entries;
.source "AbstractMultimap.java"


# instance fields
.field private synthetic this$0:Lcom/squareup/haha/guava/collect/AbstractMultimap;


# direct methods
.method private constructor <init>(Lcom/squareup/haha/guava/collect/AbstractMultimap;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/squareup/haha/guava/collect/AbstractMultimap$Entries;->this$0:Lcom/squareup/haha/guava/collect/AbstractMultimap;

    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/Multimaps$Entries;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/haha/guava/collect/AbstractMultimap;B)V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/squareup/haha/guava/collect/AbstractMultimap$Entries;-><init>(Lcom/squareup/haha/guava/collect/AbstractMultimap;)V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMultimap$Entries;->this$0:Lcom/squareup/haha/guava/collect/AbstractMultimap;

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/AbstractMultimap;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method final multimap()Lcom/squareup/haha/guava/collect/Multimap;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractMultimap$Entries;->this$0:Lcom/squareup/haha/guava/collect/AbstractMultimap;

    return-object v0
.end method
