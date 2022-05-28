.class Lcom/vivo/settings/ClearAllDataConfirm$3;
.super Ljava/lang/Thread;
.source "ClearAllDataConfirm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/settings/ClearAllDataConfirm;->clearAllData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/ClearAllDataConfirm;


# direct methods
.method constructor <init>(Lcom/vivo/settings/ClearAllDataConfirm;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/vivo/settings/ClearAllDataConfirm$3;->this$0:Lcom/vivo/settings/ClearAllDataConfirm;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 242
    :try_start_0
    invoke-static {}, Lcom/vivo/settings/SocketClient;->clearNetworkLock()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    :goto_0
    iget-object v1, p0, Lcom/vivo/settings/ClearAllDataConfirm$3;->this$0:Lcom/vivo/settings/ClearAllDataConfirm;

    invoke-static {v1}, Lcom/vivo/settings/ClearAllDataConfirm;->access$300(Lcom/vivo/settings/ClearAllDataConfirm;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 247
    return-void

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ClearAllDataConfirm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set nv failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/settings/Vlog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
