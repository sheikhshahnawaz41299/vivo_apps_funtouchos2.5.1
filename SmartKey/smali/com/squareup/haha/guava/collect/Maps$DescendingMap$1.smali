.class final Lcom/squareup/haha/guava/collect/Maps$DescendingMap$1;
.super Lcom/squareup/haha/guava/collect/Maps$EntrySet;
.source "Maps.java"


# instance fields
.field private synthetic this$0:Lcom/squareup/haha/guava/collect/Maps$DescendingMap;


# direct methods
.method constructor <init>(Lcom/squareup/haha/guava/collect/Maps$DescendingMap;)V
    .locals 0

    .prologue
    .line 3906
    iput-object p1, p0, Lcom/squareup/haha/guava/collect/Maps$DescendingMap$1;->this$0:Lcom/squareup/haha/guava/collect/Maps$DescendingMap;

    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/Maps$EntrySet;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 3914
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/Maps$DescendingMap$1;->this$0:Lcom/squareup/haha/guava/collect/Maps$DescendingMap;

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/Maps$DescendingMap;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method final map()Ljava/util/Map;
    .locals 1

    .prologue
    .line 3909
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/Maps$DescendingMap$1;->this$0:Lcom/squareup/haha/guava/collect/Maps$DescendingMap;

    return-object v0
.end method
