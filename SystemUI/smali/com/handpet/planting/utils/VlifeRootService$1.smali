.class Lcom/handpet/planting/utils/VlifeRootService$1;
.super Landroid/content/BroadcastReceiver;
.source "VlifeRootService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/handpet/planting/utils/VlifeRootService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/handpet/planting/utils/VlifeRootService;


# direct methods
.method constructor <init>(Lcom/handpet/planting/utils/VlifeRootService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/handpet/planting/utils/VlifeRootService$1;->this$0:Lcom/handpet/planting/utils/VlifeRootService;

    .line 34
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 39
    :try_start_0
    iget-object v1, p0, Lcom/handpet/planting/utils/VlifeRootService$1;->this$0:Lcom/handpet/planting/utils/VlifeRootService;

    invoke-static {v1}, Lcom/handpet/planting/utils/VlifeRootService;->access$0(Lcom/handpet/planting/utils/VlifeRootService;)Lcom/handpet/common/utils/log/ILogger;

    move-result-object v2

    const-string v3, "onReceive={}"

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 40
    :goto_0
    aput-object v1, v4, v5

    .line 39
    invoke-interface {v2, v3, v4}, Lcom/handpet/common/utils/log/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    iget-object v1, p0, Lcom/handpet/planting/utils/VlifeRootService$1;->this$0:Lcom/handpet/planting/utils/VlifeRootService;

    invoke-virtual {v1}, Lcom/handpet/planting/utils/VlifeRootService;->stopSelf()V

    .line 45
    :goto_1
    return-void

    .line 40
    :cond_0
    const-string v1, "null"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/handpet/planting/utils/VlifeRootService$1;->this$0:Lcom/handpet/planting/utils/VlifeRootService;

    invoke-static {v1}, Lcom/handpet/planting/utils/VlifeRootService;->access$0(Lcom/handpet/planting/utils/VlifeRootService;)Lcom/handpet/common/utils/log/ILogger;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/handpet/common/utils/log/ILogger;->error(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
