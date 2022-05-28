.class Lcom/squareup/leakcanary/AndroidHeapDumper$1;
.super Ljava/lang/Object;
.source "AndroidHeapDumper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/leakcanary/AndroidHeapDumper;->cleanup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/squareup/leakcanary/AndroidHeapDumper;


# direct methods
.method constructor <init>(Lcom/squareup/leakcanary/AndroidHeapDumper;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/squareup/leakcanary/AndroidHeapDumper$1;->this$0:Lcom/squareup/leakcanary/AndroidHeapDumper;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 75
    invoke-static {}, Lcom/squareup/leakcanary/internal/LeakCanaryInternals;->isExternalStorageWritable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 76
    const-string v1, "AndroidHeapDumper"

    const-string v2, "Could not attempt cleanup, external storage not mounted."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/squareup/leakcanary/AndroidHeapDumper$1;->this$0:Lcom/squareup/leakcanary/AndroidHeapDumper;

    invoke-static {v1}, Lcom/squareup/leakcanary/AndroidHeapDumper;->access$0(Lcom/squareup/leakcanary/AndroidHeapDumper;)Ljava/io/File;

    move-result-object v0

    .line 79
    .local v0, "heapDumpFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    const-string v1, "AndroidHeapDumper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Previous analysis did not complete correctly, cleaning: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 83
    :cond_1
    return-void
.end method
