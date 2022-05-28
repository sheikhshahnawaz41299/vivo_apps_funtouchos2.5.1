.class Lcom/squareup/haha/perflib/analysis/ShortestDistanceVisitor$1;
.super Ljava/lang/Object;
.source "ShortestDistanceVisitor.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic this$0:Lcom/squareup/haha/perflib/analysis/ShortestDistanceVisitor;


# direct methods
.method constructor <init>(Lcom/squareup/haha/perflib/analysis/ShortestDistanceVisitor;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/squareup/haha/perflib/analysis/ShortestDistanceVisitor$1;->this$0:Lcom/squareup/haha/perflib/analysis/ShortestDistanceVisitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/squareup/haha/perflib/Instance;Lcom/squareup/haha/perflib/Instance;)I
    .locals 2

    .prologue
    .line 29
    invoke-virtual {p1}, Lcom/squareup/haha/perflib/Instance;->getDistanceToGcRoot()I

    move-result v0

    invoke-virtual {p2}, Lcom/squareup/haha/perflib/Instance;->getDistanceToGcRoot()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 26
    check-cast p1, Lcom/squareup/haha/perflib/Instance;

    check-cast p2, Lcom/squareup/haha/perflib/Instance;

    invoke-virtual {p0, p1, p2}, Lcom/squareup/haha/perflib/analysis/ShortestDistanceVisitor$1;->compare(Lcom/squareup/haha/perflib/Instance;Lcom/squareup/haha/perflib/Instance;)I

    move-result v0

    return v0
.end method
