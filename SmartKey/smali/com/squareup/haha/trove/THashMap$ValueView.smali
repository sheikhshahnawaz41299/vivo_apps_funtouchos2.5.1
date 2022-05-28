.class public final Lcom/squareup/haha/trove/THashMap$ValueView;
.super Lcom/squareup/haha/trove/THashMap$MapBackedView;
.source "THashMap.java"


# instance fields
.field final synthetic this$0:Lcom/squareup/haha/trove/THashMap;


# direct methods
.method protected constructor <init>(Lcom/squareup/haha/trove/THashMap;)V
    .locals 0

    .prologue
    .line 507
    iput-object p1, p0, Lcom/squareup/haha/trove/THashMap$ValueView;->this$0:Lcom/squareup/haha/trove/THashMap;

    invoke-direct {p0, p1}, Lcom/squareup/haha/trove/THashMap$MapBackedView;-><init>(Lcom/squareup/haha/trove/THashMap;)V

    return-void
.end method


# virtual methods
.method public final containsElement(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/squareup/haha/trove/THashMap$ValueView;->this$0:Lcom/squareup/haha/trove/THashMap;

    invoke-virtual {v0, p1}, Lcom/squareup/haha/trove/THashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 510
    new-instance v0, Lcom/squareup/haha/trove/THashMap$ValueView$1;

    iget-object v1, p0, Lcom/squareup/haha/trove/THashMap$ValueView;->this$0:Lcom/squareup/haha/trove/THashMap;

    invoke-direct {v0, p0, v1}, Lcom/squareup/haha/trove/THashMap$ValueView$1;-><init>(Lcom/squareup/haha/trove/THashMap$ValueView;Lcom/squareup/haha/trove/TObjectHash;)V

    return-object v0
.end method

.method public final removeElement(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    .line 525
    const/4 v1, 0x0

    .line 526
    iget-object v0, p0, Lcom/squareup/haha/trove/THashMap$ValueView;->this$0:Lcom/squareup/haha/trove/THashMap;

    iget-object v3, v0, Lcom/squareup/haha/trove/THashMap;->_values:[Ljava/lang/Object;

    .line 527
    iget-object v0, p0, Lcom/squareup/haha/trove/THashMap$ValueView;->this$0:Lcom/squareup/haha/trove/THashMap;

    iget-object v4, v0, Lcom/squareup/haha/trove/THashMap;->_set:[Ljava/lang/Object;

    .line 529
    array-length v0, v3

    move v2, v1

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_2

    .line 530
    aget-object v0, v4, v1

    if-eqz v0, :cond_0

    aget-object v0, v4, v1

    sget-object v5, Lcom/squareup/haha/trove/TObjectHash;->REMOVED:Ljava/lang/Object;

    if-eq v0, v5, :cond_0

    aget-object v0, v3, v1

    if-eq p1, v0, :cond_1

    :cond_0
    aget-object v0, v3, v1

    if-eqz v0, :cond_3

    aget-object v0, v3, v1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 533
    :cond_1
    iget-object v0, p0, Lcom/squareup/haha/trove/THashMap$ValueView;->this$0:Lcom/squareup/haha/trove/THashMap;

    invoke-virtual {v0, v1}, Lcom/squareup/haha/trove/THashMap;->removeAt(I)V

    .line 534
    const/4 v0, 0x1

    move v2, v0

    move v0, v1

    goto :goto_0

    .line 537
    :cond_2
    return v2

    :cond_3
    move v0, v1

    goto :goto_0
.end method
