.class final Lcom/squareup/haha/guava/collect/AbstractNavigableMap$DescendingMap;
.super Lcom/squareup/haha/guava/collect/Maps$DescendingMap;
.source "AbstractNavigableMap.java"


# instance fields
.field private synthetic this$0:Lcom/squareup/haha/guava/collect/AbstractNavigableMap;


# direct methods
.method private constructor <init>(Lcom/squareup/haha/guava/collect/AbstractNavigableMap;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/squareup/haha/guava/collect/AbstractNavigableMap$DescendingMap;->this$0:Lcom/squareup/haha/guava/collect/AbstractNavigableMap;

    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/Maps$DescendingMap;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/haha/guava/collect/AbstractNavigableMap;B)V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lcom/squareup/haha/guava/collect/AbstractNavigableMap$DescendingMap;-><init>(Lcom/squareup/haha/guava/collect/AbstractNavigableMap;)V

    return-void
.end method


# virtual methods
.method final entryIterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractNavigableMap$DescendingMap;->this$0:Lcom/squareup/haha/guava/collect/AbstractNavigableMap;

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/AbstractNavigableMap;->descendingEntryIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method final forward()Ljava/util/NavigableMap;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractNavigableMap$DescendingMap;->this$0:Lcom/squareup/haha/guava/collect/AbstractNavigableMap;

    return-object v0
.end method
