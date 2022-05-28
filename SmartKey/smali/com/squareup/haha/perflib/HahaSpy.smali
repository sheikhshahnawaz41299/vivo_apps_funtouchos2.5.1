.class public final Lcom/squareup/haha/perflib/HahaSpy;
.super Ljava/lang/Object;
.source "HahaSpy.java"


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static allocatingThread(Lcom/squareup/haha/perflib/Instance;)Lcom/squareup/haha/perflib/Instance;
    .locals 4

    .prologue
    .line 21
    iget-object v0, p0, Lcom/squareup/haha/perflib/Instance;->mHeap:Lcom/squareup/haha/perflib/Heap;

    iget-object v1, v0, Lcom/squareup/haha/perflib/Heap;->mSnapshot:Lcom/squareup/haha/perflib/Snapshot;

    .line 23
    instance-of v0, p0, Lcom/squareup/haha/perflib/RootObj;

    if-eqz v0, :cond_0

    .line 24
    check-cast p0, Lcom/squareup/haha/perflib/RootObj;

    iget v0, p0, Lcom/squareup/haha/perflib/RootObj;->mThread:I

    .line 28
    :goto_0
    invoke-virtual {v1, v0}, Lcom/squareup/haha/perflib/Snapshot;->getThread(I)Lcom/squareup/haha/perflib/ThreadObj;

    move-result-object v0

    .line 29
    iget-wide v2, v0, Lcom/squareup/haha/perflib/ThreadObj;->mId:J

    invoke-virtual {v1, v2, v3}, Lcom/squareup/haha/perflib/Snapshot;->findInstance(J)Lcom/squareup/haha/perflib/Instance;

    move-result-object v0

    return-object v0

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/squareup/haha/perflib/Instance;->mStack:Lcom/squareup/haha/perflib/StackTrace;

    iget v0, v0, Lcom/squareup/haha/perflib/StackTrace;->mThreadSerialNumber:I

    goto :goto_0
.end method
