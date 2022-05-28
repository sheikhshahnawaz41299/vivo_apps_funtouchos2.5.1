.class final Lcom/squareup/haha/guava/collect/AbstractNavigableMap$1;
.super Lcom/squareup/haha/guava/collect/Maps$EntrySet;
.source "AbstractNavigableMap.java"


# instance fields
.field private synthetic this$0:Lcom/squareup/haha/guava/collect/AbstractNavigableMap;


# direct methods
.method constructor <init>(Lcom/squareup/haha/guava/collect/AbstractNavigableMap;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/squareup/haha/guava/collect/AbstractNavigableMap$1;->this$0:Lcom/squareup/haha/guava/collect/AbstractNavigableMap;

    invoke-direct {p0}, Lcom/squareup/haha/guava/collect/Maps$EntrySet;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractNavigableMap$1;->this$0:Lcom/squareup/haha/guava/collect/AbstractNavigableMap;

    invoke-virtual {v0}, Lcom/squareup/haha/guava/collect/AbstractNavigableMap;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method final map()Ljava/util/Map;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractNavigableMap$1;->this$0:Lcom/squareup/haha/guava/collect/AbstractNavigableMap;

    return-object v0
.end method
