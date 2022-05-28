.class Lcom/squareup/leakcanary/AndroidHeapDumper$1;
.super Ljava/lang/Object;
.source "AndroidHeapDumper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/squareup/leakcanary/AndroidHeapDumper;


# direct methods
.method constructor <init>(Lcom/squareup/leakcanary/AndroidHeapDumper;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/squareup/leakcanary/AndroidHeapDumper$1;->this$0:Lcom/squareup/leakcanary/AndroidHeapDumper;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 102
    iget-object v0, p0, Lcom/squareup/leakcanary/AndroidHeapDumper$1;->this$0:Lcom/squareup/leakcanary/AndroidHeapDumper;

    iget-object v0, v0, Lcom/squareup/leakcanary/AndroidHeapDumper;->leakDirectoryProvider:Lcom/squareup/leakcanary/LeakDirectoryProvider;

    invoke-interface {v0}, Lcom/squareup/leakcanary/LeakDirectoryProvider;->isLeakStorageWritable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 103
    const-string v0, "Could not attempt cleanup, leak storage not writable."

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/squareup/leakcanary/CanaryLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/squareup/leakcanary/AndroidHeapDumper$1;->this$0:Lcom/squareup/leakcanary/AndroidHeapDumper;

    invoke-virtual {v0}, Lcom/squareup/leakcanary/AndroidHeapDumper;->getHeapDumpFile()Ljava/io/File;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    const-string v1, "Previous analysis did not complete correctly, cleaning: %s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/squareup/leakcanary/CanaryLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    .line 110
    if-nez v1, :cond_0

    .line 111
    const-string v1, "Could not delete file %s"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/squareup/leakcanary/CanaryLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
