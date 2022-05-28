.class Lcom/vivo/settings/ExternalStorageFormatter$2;
.super Ljava/lang/Thread;
.source "ExternalStorageFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/settings/ExternalStorageFormatter;->updateProgressState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/ExternalStorageFormatter;

.field final synthetic val$mountService:Landroid/os/storage/IMountService;


# direct methods
.method constructor <init>(Lcom/vivo/settings/ExternalStorageFormatter;Landroid/os/storage/IMountService;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/vivo/settings/ExternalStorageFormatter$2;->this$0:Lcom/vivo/settings/ExternalStorageFormatter;

    iput-object p2, p0, Lcom/vivo/settings/ExternalStorageFormatter$2;->val$mountService:Landroid/os/storage/IMountService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 265
    const/4 v2, 0x0

    .line 266
    .local v2, "success":Z
    const/4 v1, 0x0

    .line 270
    .local v1, "extStoragePath":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/vivo/settings/ExternalStorageFormatter$2;->this$0:Lcom/vivo/settings/ExternalStorageFormatter;

    invoke-static {v3}, Lcom/vivo/settings/ExternalStorageFormatter;->access$200(Lcom/vivo/settings/ExternalStorageFormatter;)Landroid/os/storage/StorageVolume;

    move-result-object v3

    if-nez v3, :cond_1

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    iget-object v3, p0, Lcom/vivo/settings/ExternalStorageFormatter$2;->this$0:Lcom/vivo/settings/ExternalStorageFormatter;

    invoke-static {v3}, Lcom/vivo/settings/ExternalStorageFormatter;->access$200(Lcom/vivo/settings/ExternalStorageFormatter;)Landroid/os/storage/StorageVolume;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 275
    const-string v3, "Settings.ESF"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "format volume "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-object v3, p0, Lcom/vivo/settings/ExternalStorageFormatter$2;->val$mountService:Landroid/os/storage/IMountService;

    invoke-interface {v3, v1}, Landroid/os/storage/IMountService;->formatVolume(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    const/4 v2, 0x1

    .line 282
    :goto_1
    if-eqz v2, :cond_2

    .line 283
    iget-object v3, p0, Lcom/vivo/settings/ExternalStorageFormatter$2;->this$0:Lcom/vivo/settings/ExternalStorageFormatter;

    invoke-static {v3}, Lcom/vivo/settings/ExternalStorageFormatter;->access$300(Lcom/vivo/settings/ExternalStorageFormatter;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 287
    iget-object v3, p0, Lcom/vivo/settings/ExternalStorageFormatter$2;->this$0:Lcom/vivo/settings/ExternalStorageFormatter;

    invoke-static {v3}, Lcom/vivo/settings/ExternalStorageFormatter;->access$400(Lcom/vivo/settings/ExternalStorageFormatter;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/vivo/settings/ExternalStorageFormatter$2;->this$0:Lcom/vivo/settings/ExternalStorageFormatter;

    const v4, 0x7f0b0832

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 293
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    if-nez v2, :cond_3

    iget-object v3, p0, Lcom/vivo/settings/ExternalStorageFormatter$2;->this$0:Lcom/vivo/settings/ExternalStorageFormatter;

    invoke-static {v3}, Lcom/vivo/settings/ExternalStorageFormatter;->access$500(Lcom/vivo/settings/ExternalStorageFormatter;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 307
    :goto_2
    iget-object v3, p0, Lcom/vivo/settings/ExternalStorageFormatter$2;->this$0:Lcom/vivo/settings/ExternalStorageFormatter;

    invoke-static {v3}, Lcom/vivo/settings/ExternalStorageFormatter;->access$400(Lcom/vivo/settings/ExternalStorageFormatter;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 297
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/vivo/settings/ExternalStorageFormatter$2;->this$0:Lcom/vivo/settings/ExternalStorageFormatter;

    invoke-static {v3}, Lcom/vivo/settings/ExternalStorageFormatter;->access$200(Lcom/vivo/settings/ExternalStorageFormatter;)Landroid/os/storage/StorageVolume;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 300
    iget-object v3, p0, Lcom/vivo/settings/ExternalStorageFormatter$2;->this$0:Lcom/vivo/settings/ExternalStorageFormatter;

    invoke-static {v3}, Lcom/vivo/settings/ExternalStorageFormatter;->access$200(Lcom/vivo/settings/ExternalStorageFormatter;)Landroid/os/storage/StorageVolume;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 301
    iget-object v3, p0, Lcom/vivo/settings/ExternalStorageFormatter$2;->val$mountService:Landroid/os/storage/IMountService;

    invoke-interface {v3, v1}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 302
    :catch_1
    move-exception v0

    .line 303
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "Settings.ESF"

    const-string v4, "Failed talking with mount service"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method
