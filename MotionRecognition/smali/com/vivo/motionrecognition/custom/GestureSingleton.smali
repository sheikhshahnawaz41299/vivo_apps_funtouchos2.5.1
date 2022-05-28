.class public Lcom/vivo/motionrecognition/custom/GestureSingleton;
.super Ljava/lang/Object;
.source "GestureSingleton.java"


# static fields
.field private static mGestureSinleton:Lcom/vivo/motionrecognition/custom/GestureSingleton;


# instance fields
.field private gestureItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vivo/motionrecognition/custom/DataItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vivo/motionrecognition/custom/GestureSingleton;->gestureItems:Ljava/util/ArrayList;

    .line 17
    return-void
.end method

.method public static getGestureSingleton()Lcom/vivo/motionrecognition/custom/GestureSingleton;
    .locals 2

    .prologue
    .line 20
    sget-object v0, Lcom/vivo/motionrecognition/custom/GestureSingleton;->mGestureSinleton:Lcom/vivo/motionrecognition/custom/GestureSingleton;

    if-nez v0, :cond_1

    .line 21
    const-class v1, Lcom/vivo/motionrecognition/custom/GestureSingleton;

    monitor-enter v1

    .line 22
    :try_start_0
    sget-object v0, Lcom/vivo/motionrecognition/custom/GestureSingleton;->mGestureSinleton:Lcom/vivo/motionrecognition/custom/GestureSingleton;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/vivo/motionrecognition/custom/GestureSingleton;

    invoke-direct {v0}, Lcom/vivo/motionrecognition/custom/GestureSingleton;-><init>()V

    sput-object v0, Lcom/vivo/motionrecognition/custom/GestureSingleton;->mGestureSinleton:Lcom/vivo/motionrecognition/custom/GestureSingleton;

    .line 25
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :cond_1
    sget-object v0, Lcom/vivo/motionrecognition/custom/GestureSingleton;->mGestureSinleton:Lcom/vivo/motionrecognition/custom/GestureSingleton;

    return-object v0

    .line 25
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public addNewGesture(Lcom/vivo/motionrecognition/custom/DataItem;)V
    .locals 1
    .param p1, "item"    # Lcom/vivo/motionrecognition/custom/DataItem;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vivo/motionrecognition/custom/GestureSingleton;->gestureItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/vivo/motionrecognition/custom/GestureSingleton;->gestureItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    :cond_0
    return-void
.end method

.method public getDataItemByIcNumber(I)Lcom/vivo/motionrecognition/custom/DataItem;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 98
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/vivo/motionrecognition/custom/GestureSingleton;->gestureItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 99
    iget-object v2, p0, Lcom/vivo/motionrecognition/custom/GestureSingleton;->gestureItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/motionrecognition/custom/DataItem;

    .line 100
    .local v0, "dataItem":Lcom/vivo/motionrecognition/custom/DataItem;
    invoke-virtual {v0}, Lcom/vivo/motionrecognition/custom/DataItem;->getIndex()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 104
    .end local v0    # "dataItem":Lcom/vivo/motionrecognition/custom/DataItem;
    :goto_1
    return-object v0

    .line 98
    .restart local v0    # "dataItem":Lcom/vivo/motionrecognition/custom/DataItem;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 104
    .end local v0    # "dataItem":Lcom/vivo/motionrecognition/custom/DataItem;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getDataItemsSize()I
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vivo/motionrecognition/custom/GestureSingleton;->gestureItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getFirstDataItem()Lcom/vivo/motionrecognition/custom/DataItem;
    .locals 3

    .prologue
    .line 79
    const/4 v0, 0x0

    .line 80
    .local v0, "item":Lcom/vivo/motionrecognition/custom/DataItem;
    iget-object v1, p0, Lcom/vivo/motionrecognition/custom/GestureSingleton;->gestureItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/vivo/motionrecognition/custom/GestureSingleton;->gestureItems:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "item":Lcom/vivo/motionrecognition/custom/DataItem;
    check-cast v0, Lcom/vivo/motionrecognition/custom/DataItem;

    .line 83
    .restart local v0    # "item":Lcom/vivo/motionrecognition/custom/DataItem;
    :cond_0
    return-object v0
.end method

.method public getGestureItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vivo/motionrecognition/custom/DataItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/vivo/motionrecognition/custom/GestureSingleton;->gestureItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getIndexDataItem(I)Lcom/vivo/motionrecognition/custom/DataItem;
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 49
    const/4 v2, 0x0

    .line 50
    .local v2, "item":Lcom/vivo/motionrecognition/custom/DataItem;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/vivo/motionrecognition/custom/GestureSingleton;->gestureItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 51
    iget-object v3, p0, Lcom/vivo/motionrecognition/custom/GestureSingleton;->gestureItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/motionrecognition/custom/DataItem;

    .line 52
    .local v0, "dataItem":Lcom/vivo/motionrecognition/custom/DataItem;
    invoke-virtual {v0}, Lcom/vivo/motionrecognition/custom/DataItem;->getIndex()I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 53
    move-object v2, v0

    .line 57
    .end local v0    # "dataItem":Lcom/vivo/motionrecognition/custom/DataItem;
    :cond_0
    return-object v2

    .line 50
    .restart local v0    # "dataItem":Lcom/vivo/motionrecognition/custom/DataItem;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getLastDataItem()Lcom/vivo/motionrecognition/custom/DataItem;
    .locals 3

    .prologue
    .line 71
    const/4 v0, 0x0

    .line 72
    .local v0, "item":Lcom/vivo/motionrecognition/custom/DataItem;
    iget-object v1, p0, Lcom/vivo/motionrecognition/custom/GestureSingleton;->gestureItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/vivo/motionrecognition/custom/GestureSingleton;->gestureItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/vivo/motionrecognition/custom/GestureSingleton;->gestureItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "item":Lcom/vivo/motionrecognition/custom/DataItem;
    check-cast v0, Lcom/vivo/motionrecognition/custom/DataItem;

    .line 75
    .restart local v0    # "item":Lcom/vivo/motionrecognition/custom/DataItem;
    :cond_0
    return-object v0
.end method

.method public removeAllDataItem()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/vivo/motionrecognition/custom/GestureSingleton;->gestureItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 109
    return-void
.end method

.method public removeDataItemByIcNumber(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 61
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/vivo/motionrecognition/custom/GestureSingleton;->gestureItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 62
    iget-object v2, p0, Lcom/vivo/motionrecognition/custom/GestureSingleton;->gestureItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/motionrecognition/custom/DataItem;

    .line 63
    .local v0, "dataItem":Lcom/vivo/motionrecognition/custom/DataItem;
    invoke-virtual {v0}, Lcom/vivo/motionrecognition/custom/DataItem;->getIndex()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 64
    iget-object v2, p0, Lcom/vivo/motionrecognition/custom/GestureSingleton;->gestureItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 68
    .end local v0    # "dataItem":Lcom/vivo/motionrecognition/custom/DataItem;
    :cond_0
    return-void

    .line 61
    .restart local v0    # "dataItem":Lcom/vivo/motionrecognition/custom/DataItem;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setGestureItems(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vivo/motionrecognition/custom/DataItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, "gestureItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vivo/motionrecognition/custom/DataItem;>;"
    iput-object p1, p0, Lcom/vivo/motionrecognition/custom/GestureSingleton;->gestureItems:Ljava/util/ArrayList;

    .line 42
    return-void
.end method

.method public updateDataItemByIcNumber(ILcom/vivo/motionrecognition/custom/DataItem;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "item"    # Lcom/vivo/motionrecognition/custom/DataItem;

    .prologue
    .line 87
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/vivo/motionrecognition/custom/GestureSingleton;->gestureItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 88
    iget-object v2, p0, Lcom/vivo/motionrecognition/custom/GestureSingleton;->gestureItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/motionrecognition/custom/DataItem;

    .line 89
    .local v0, "dataItem":Lcom/vivo/motionrecognition/custom/DataItem;
    invoke-virtual {v0}, Lcom/vivo/motionrecognition/custom/DataItem;->getIndex()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 90
    iget-object v2, p0, Lcom/vivo/motionrecognition/custom/GestureSingleton;->gestureItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 95
    .end local v0    # "dataItem":Lcom/vivo/motionrecognition/custom/DataItem;
    :cond_0
    return-void

    .line 87
    .restart local v0    # "dataItem":Lcom/vivo/motionrecognition/custom/DataItem;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
