.class public final Lcom/squareup/leakcanary/HeapDump;
.super Ljava/lang/Object;
.source "HeapDump.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/leakcanary/HeapDump$Listener;
    }
.end annotation


# instance fields
.field public final excludedRefs:Lcom/squareup/leakcanary/ExcludedRefs;

.field public final gcDurationMs:J

.field public final heapDumpDurationMs:J

.field public final heapDumpFile:Ljava/io/File;

.field public final referenceKey:Ljava/lang/String;

.field public final referenceName:Ljava/lang/String;

.field public final watchDurationMs:J


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/squareup/leakcanary/ExcludedRefs;JJJ)V
    .locals 1
    .param p1, "heapDumpFile"    # Ljava/io/File;
    .param p2, "referenceKey"    # Ljava/lang/String;
    .param p3, "referenceName"    # Ljava/lang/String;
    .param p4, "excludedRefs"    # Lcom/squareup/leakcanary/ExcludedRefs;
    .param p5, "watchDurationMs"    # J
    .param p7, "gcDurationMs"    # J
    .param p9, "heapDumpDurationMs"    # J

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "heapDumpFile"

    invoke-static {p1, v0}, Lcom/squareup/leakcanary/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Lcom/squareup/leakcanary/HeapDump;->heapDumpFile:Ljava/io/File;

    .line 22
    const-string v0, "referenceKey"

    invoke-static {p2, v0}, Lcom/squareup/leakcanary/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/squareup/leakcanary/HeapDump;->referenceKey:Ljava/lang/String;

    .line 23
    const-string v0, "referenceName"

    invoke-static {p3, v0}, Lcom/squareup/leakcanary/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/squareup/leakcanary/HeapDump;->referenceName:Ljava/lang/String;

    .line 24
    const-string v0, "excludedRefs"

    invoke-static {p4, v0}, Lcom/squareup/leakcanary/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/leakcanary/ExcludedRefs;

    iput-object v0, p0, Lcom/squareup/leakcanary/HeapDump;->excludedRefs:Lcom/squareup/leakcanary/ExcludedRefs;

    .line 25
    iput-wide p5, p0, Lcom/squareup/leakcanary/HeapDump;->watchDurationMs:J

    .line 26
    iput-wide p7, p0, Lcom/squareup/leakcanary/HeapDump;->gcDurationMs:J

    .line 27
    iput-wide p9, p0, Lcom/squareup/leakcanary/HeapDump;->heapDumpDurationMs:J

    .line 28
    return-void
.end method


# virtual methods
.method public renameFile(Ljava/io/File;)Lcom/squareup/leakcanary/HeapDump;
    .locals 12
    .param p1, "newFile"    # Ljava/io/File;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/squareup/leakcanary/HeapDump;->heapDumpFile:Ljava/io/File;

    invoke-virtual {v0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 32
    new-instance v1, Lcom/squareup/leakcanary/HeapDump;

    iget-object v3, p0, Lcom/squareup/leakcanary/HeapDump;->referenceKey:Ljava/lang/String;

    iget-object v4, p0, Lcom/squareup/leakcanary/HeapDump;->referenceName:Ljava/lang/String;

    iget-object v5, p0, Lcom/squareup/leakcanary/HeapDump;->excludedRefs:Lcom/squareup/leakcanary/ExcludedRefs;

    iget-wide v6, p0, Lcom/squareup/leakcanary/HeapDump;->watchDurationMs:J

    iget-wide v8, p0, Lcom/squareup/leakcanary/HeapDump;->gcDurationMs:J

    iget-wide v10, p0, Lcom/squareup/leakcanary/HeapDump;->heapDumpDurationMs:J

    move-object v2, p1

    invoke-direct/range {v1 .. v11}, Lcom/squareup/leakcanary/HeapDump;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lcom/squareup/leakcanary/ExcludedRefs;JJJ)V

    return-object v1
.end method
