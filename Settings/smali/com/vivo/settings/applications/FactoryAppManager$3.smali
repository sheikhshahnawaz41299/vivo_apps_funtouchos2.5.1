.class Lcom/vivo/settings/applications/FactoryAppManager$3;
.super Ljava/lang/Object;
.source "FactoryAppManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/settings/applications/FactoryAppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/applications/FactoryAppManager;


# direct methods
.method constructor <init>(Lcom/vivo/settings/applications/FactoryAppManager;)V
    .locals 0

    .prologue
    .line 401
    iput-object p1, p0, Lcom/vivo/settings/applications/FactoryAppManager$3;->this$0:Lcom/vivo/settings/applications/FactoryAppManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 406
    :goto_0
    iget-object v3, p0, Lcom/vivo/settings/applications/FactoryAppManager$3;->this$0:Lcom/vivo/settings/applications/FactoryAppManager;

    invoke-static {v3}, Lcom/vivo/settings/applications/FactoryAppManager;->access$1100(Lcom/vivo/settings/applications/FactoryAppManager;)I

    move-result v3

    if-ne v3, v7, :cond_0

    .line 407
    const-string v3, "FactoryAppManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mLoadApksThreadState is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/vivo/settings/applications/FactoryAppManager$3;->this$0:Lcom/vivo/settings/applications/FactoryAppManager;

    invoke-static {v5}, Lcom/vivo/settings/applications/FactoryAppManager;->access$1100(Lcom/vivo/settings/applications/FactoryAppManager;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object v3, p0, Lcom/vivo/settings/applications/FactoryAppManager$3;->this$0:Lcom/vivo/settings/applications/FactoryAppManager;

    invoke-static {v3}, Lcom/vivo/settings/applications/FactoryAppManager;->access$1100(Lcom/vivo/settings/applications/FactoryAppManager;)I

    move-result v3

    if-ne v3, v9, :cond_6

    .line 418
    :cond_0
    iget-object v3, p0, Lcom/vivo/settings/applications/FactoryAppManager$3;->this$0:Lcom/vivo/settings/applications/FactoryAppManager;

    invoke-static {v3, v6}, Lcom/vivo/settings/applications/FactoryAppManager;->access$1102(Lcom/vivo/settings/applications/FactoryAppManager;I)I

    .line 419
    iget-object v3, p0, Lcom/vivo/settings/applications/FactoryAppManager$3;->this$0:Lcom/vivo/settings/applications/FactoryAppManager;

    invoke-static {v3}, Lcom/vivo/settings/applications/FactoryAppManager;->access$600(Lcom/vivo/settings/applications/FactoryAppManager;)Ljava/util/ArrayList;

    move-result-object v4

    monitor-enter v4

    .line 420
    :try_start_0
    iget-object v3, p0, Lcom/vivo/settings/applications/FactoryAppManager$3;->this$0:Lcom/vivo/settings/applications/FactoryAppManager;

    invoke-static {v3}, Lcom/vivo/settings/applications/FactoryAppManager;->access$600(Lcom/vivo/settings/applications/FactoryAppManager;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/vivo/settings/applications/FactoryAppManager$3;->this$0:Lcom/vivo/settings/applications/FactoryAppManager;

    invoke-static {v3}, Lcom/vivo/settings/applications/FactoryAppManager;->access$600(Lcom/vivo/settings/applications/FactoryAppManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 421
    iget-object v3, p0, Lcom/vivo/settings/applications/FactoryAppManager$3;->this$0:Lcom/vivo/settings/applications/FactoryAppManager;

    invoke-static {v3}, Lcom/vivo/settings/applications/FactoryAppManager;->access$600(Lcom/vivo/settings/applications/FactoryAppManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 424
    :cond_1
    iget-object v3, p0, Lcom/vivo/settings/applications/FactoryAppManager$3;->this$0:Lcom/vivo/settings/applications/FactoryAppManager;

    invoke-static {v3}, Lcom/vivo/settings/applications/FactoryAppManager;->access$1200(Lcom/vivo/settings/applications/FactoryAppManager;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/vivo/settings/applications/FactoryAppManager$3;->this$0:Lcom/vivo/settings/applications/FactoryAppManager;

    invoke-static {v3}, Lcom/vivo/settings/applications/FactoryAppManager;->access$1200(Lcom/vivo/settings/applications/FactoryAppManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 426
    iget-object v3, p0, Lcom/vivo/settings/applications/FactoryAppManager$3;->this$0:Lcom/vivo/settings/applications/FactoryAppManager;

    invoke-static {v3}, Lcom/vivo/settings/applications/FactoryAppManager;->access$1200(Lcom/vivo/settings/applications/FactoryAppManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 429
    :cond_2
    iget-object v3, p0, Lcom/vivo/settings/applications/FactoryAppManager$3;->this$0:Lcom/vivo/settings/applications/FactoryAppManager;

    invoke-static {v3}, Lcom/vivo/settings/applications/FactoryAppManager;->access$1300(Lcom/vivo/settings/applications/FactoryAppManager;)Ljava/util/HashSet;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 430
    iget-object v3, p0, Lcom/vivo/settings/applications/FactoryAppManager$3;->this$0:Lcom/vivo/settings/applications/FactoryAppManager;

    invoke-static {v3}, Lcom/vivo/settings/applications/FactoryAppManager;->access$1300(Lcom/vivo/settings/applications/FactoryAppManager;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 432
    :cond_3
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    new-instance v1, Ljava/io/File;

    const-string v3, "/apps"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 434
    .local v1, "rootFile":Ljava/io/File;
    iget-object v3, p0, Lcom/vivo/settings/applications/FactoryAppManager$3;->this$0:Lcom/vivo/settings/applications/FactoryAppManager;

    invoke-static {v3, v1}, Lcom/vivo/settings/applications/FactoryAppManager;->access$1400(Lcom/vivo/settings/applications/FactoryAppManager;Ljava/io/File;)V

    .line 436
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "/vivo-apps"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 437
    .local v2, "vivoFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 438
    const-string v3, "FactoryAppManager"

    const-string v4, "mApkFileLoader SCAN_VIVO_PATH"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget-object v3, p0, Lcom/vivo/settings/applications/FactoryAppManager$3;->this$0:Lcom/vivo/settings/applications/FactoryAppManager;

    invoke-static {v3, v2}, Lcom/vivo/settings/applications/FactoryAppManager;->access$1400(Lcom/vivo/settings/applications/FactoryAppManager;Ljava/io/File;)V

    .line 442
    :cond_4
    iget-object v3, p0, Lcom/vivo/settings/applications/FactoryAppManager$3;->this$0:Lcom/vivo/settings/applications/FactoryAppManager;

    invoke-static {v3}, Lcom/vivo/settings/applications/FactoryAppManager;->access$1100(Lcom/vivo/settings/applications/FactoryAppManager;)I

    move-result v3

    if-eq v3, v9, :cond_5

    iget-object v3, p0, Lcom/vivo/settings/applications/FactoryAppManager$3;->this$0:Lcom/vivo/settings/applications/FactoryAppManager;

    invoke-static {v3}, Lcom/vivo/settings/applications/FactoryAppManager;->access$1100(Lcom/vivo/settings/applications/FactoryAppManager;)I

    move-result v3

    if-ne v3, v7, :cond_7

    .line 443
    :cond_5
    const-string v3, "FactoryAppManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mApkFileLoader  mLoadApksThreadState:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/vivo/settings/applications/FactoryAppManager$3;->this$0:Lcom/vivo/settings/applications/FactoryAppManager;

    invoke-static {v5}, Lcom/vivo/settings/applications/FactoryAppManager;->access$1100(Lcom/vivo/settings/applications/FactoryAppManager;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    iget-object v3, p0, Lcom/vivo/settings/applications/FactoryAppManager$3;->this$0:Lcom/vivo/settings/applications/FactoryAppManager;

    invoke-static {v3}, Lcom/vivo/settings/applications/FactoryAppManager;->access$1500(Lcom/vivo/settings/applications/FactoryAppManager;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 450
    :goto_1
    return-void

    .line 412
    .end local v1    # "rootFile":Ljava/io/File;
    .end local v2    # "vivoFile":Ljava/io/File;
    :cond_6
    const-wide/16 v4, 0x64

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 413
    :catch_0
    move-exception v0

    .line 415
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v3, "FactoryAppManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InterruptedException is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 432
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 446
    .restart local v1    # "rootFile":Ljava/io/File;
    .restart local v2    # "vivoFile":Ljava/io/File;
    :cond_7
    iget-object v3, p0, Lcom/vivo/settings/applications/FactoryAppManager$3;->this$0:Lcom/vivo/settings/applications/FactoryAppManager;

    invoke-static {v3, v8}, Lcom/vivo/settings/applications/FactoryAppManager;->access$1102(Lcom/vivo/settings/applications/FactoryAppManager;I)I

    .line 447
    const-string v3, "FactoryAppManager"

    const-string v4, "to refresh ui ! "

    invoke-static {v3, v4}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    iget-object v3, p0, Lcom/vivo/settings/applications/FactoryAppManager$3;->this$0:Lcom/vivo/settings/applications/FactoryAppManager;

    invoke-static {v3}, Lcom/vivo/settings/applications/FactoryAppManager;->access$1500(Lcom/vivo/settings/applications/FactoryAppManager;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method
