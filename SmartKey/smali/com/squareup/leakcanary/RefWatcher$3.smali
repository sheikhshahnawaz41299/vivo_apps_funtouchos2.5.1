.class Lcom/squareup/leakcanary/RefWatcher$3;
.super Ljava/lang/Object;
.source "RefWatcher.java"

# interfaces
.implements Lcom/squareup/leakcanary/HeapDumper;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public dumpHeap()Ljava/io/File;
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return-object v0
.end method
