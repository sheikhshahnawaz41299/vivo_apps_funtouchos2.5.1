.class Lcom/vivo/settings/ExternalStorageFormatter$3;
.super Ljava/lang/Thread;
.source "ExternalStorageFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/settings/ExternalStorageFormatter;->deleteFileDir(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/ExternalStorageFormatter;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/vivo/settings/ExternalStorageFormatter;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 366
    iput-object p1, p0, Lcom/vivo/settings/ExternalStorageFormatter$3;->this$0:Lcom/vivo/settings/ExternalStorageFormatter;

    iput-object p2, p0, Lcom/vivo/settings/ExternalStorageFormatter$3;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 369
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/vivo/settings/ExternalStorageFormatter$3;->val$path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 370
    .local v0, "dir":Ljava/io/File;
    iget-object v1, p0, Lcom/vivo/settings/ExternalStorageFormatter$3;->this$0:Lcom/vivo/settings/ExternalStorageFormatter;

    invoke-virtual {v1, v0}, Lcom/vivo/settings/ExternalStorageFormatter;->deleteFiles(Ljava/io/File;)V

    .line 373
    const-string v1, "Settings.ESF"

    const-string v2, "deleteFileDir done"

    invoke-static {v1, v2}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    iget-object v1, p0, Lcom/vivo/settings/ExternalStorageFormatter$3;->this$0:Lcom/vivo/settings/ExternalStorageFormatter;

    invoke-static {v1}, Lcom/vivo/settings/ExternalStorageFormatter;->access$400(Lcom/vivo/settings/ExternalStorageFormatter;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 376
    return-void
.end method
