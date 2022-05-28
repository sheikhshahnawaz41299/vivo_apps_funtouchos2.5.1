.class public abstract Lcom/squareup/haha/guava/collect/AbstractIterator;
.super Lcom/squareup/haha/guava/collect/UnmodifiableIterator;
.source "AbstractIterator.java"


# instance fields
.field private next:Ljava/lang/Object;

.field private state$7fb44498:I


# virtual methods
.method protected abstract computeNext()Ljava/lang/Object;
.end method

.method public final hasNext()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 130
    iget v0, p0, Lcom/squareup/haha/guava/collect/AbstractIterator;->state$7fb44498:I

    sget v3, Lcom/squareup/haha/guava/collect/AbstractIterator$State;->FAILED$7fb44498:I

    if-eq v0, v3, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/squareup/haha/guava/base/Ascii;->checkState(Z)V

    .line 131
    sget-object v0, Lcom/squareup/haha/guava/collect/AbstractIterator$1;->$SwitchMap$com$google$common$collect$AbstractIterator$State:[I

    iget v3, p0, Lcom/squareup/haha/guava/collect/AbstractIterator;->state$7fb44498:I

    add-int/lit8 v3, v3, -0x1

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 1142
    sget v0, Lcom/squareup/haha/guava/collect/AbstractIterator$State;->FAILED$7fb44498:I

    iput v0, p0, Lcom/squareup/haha/guava/collect/AbstractIterator;->state$7fb44498:I

    .line 1143
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/AbstractIterator;->computeNext()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractIterator;->next:Ljava/lang/Object;

    .line 1144
    iget v0, p0, Lcom/squareup/haha/guava/collect/AbstractIterator;->state$7fb44498:I

    sget v3, Lcom/squareup/haha/guava/collect/AbstractIterator$State;->DONE$7fb44498:I

    if-eq v0, v3, :cond_0

    .line 1145
    sget v0, Lcom/squareup/haha/guava/collect/AbstractIterator$State;->READY$7fb44498:I

    iput v0, p0, Lcom/squareup/haha/guava/collect/AbstractIterator;->state$7fb44498:I

    move v2, v1

    .line 1146
    :cond_0
    :goto_1
    :pswitch_0
    return v2

    :cond_1
    move v0, v2

    .line 130
    goto :goto_0

    :pswitch_1
    move v2, v1

    .line 135
    goto :goto_1

    .line 131
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/squareup/haha/guava/collect/AbstractIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 156
    :cond_0
    sget v0, Lcom/squareup/haha/guava/collect/AbstractIterator$State;->NOT_READY$7fb44498:I

    iput v0, p0, Lcom/squareup/haha/guava/collect/AbstractIterator;->state$7fb44498:I

    .line 157
    iget-object v0, p0, Lcom/squareup/haha/guava/collect/AbstractIterator;->next:Ljava/lang/Object;

    .line 158
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/squareup/haha/guava/collect/AbstractIterator;->next:Ljava/lang/Object;

    .line 159
    return-object v0
.end method
