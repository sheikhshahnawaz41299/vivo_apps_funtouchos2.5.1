.class public abstract Lcom/handpet/planting/utils/VlifeBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VlifeBroadcastReceiver.java"


# instance fields
.field private log:Lcom/handpet/common/utils/log/ILogger;

.field private receiverHandler:Lcom/vlife/plugin/module/impl/IBroadcastReceiverHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 19
    const-class v0, Lcom/handpet/planting/utils/VlifeBroadcastReceiver;

    invoke-static {v0}, Lcom/handpet/common/utils/log/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/handpet/common/utils/log/ILogger;

    move-result-object v0

    iput-object v0, p0, Lcom/handpet/planting/utils/VlifeBroadcastReceiver;->log:Lcom/handpet/common/utils/log/ILogger;

    .line 18
    return-void
.end method

.method private doReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 32
    invoke-static {}, Lcom/vlife/plugin/module/ModuleFactory;->getStatusModule()Lcom/vlife/plugin/module/IStatusModule;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/vlife/plugin/module/IStatusModule;->createBroadcastReceiverHandler(Ljava/lang/String;)Lcom/vlife/plugin/module/impl/IBroadcastReceiverHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/handpet/planting/utils/VlifeBroadcastReceiver;->receiverHandler:Lcom/vlife/plugin/module/impl/IBroadcastReceiverHandler;

    .line 33
    iget-object v0, p0, Lcom/handpet/planting/utils/VlifeBroadcastReceiver;->receiverHandler:Lcom/vlife/plugin/module/impl/IBroadcastReceiverHandler;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/handpet/planting/utils/VlifeBroadcastReceiver;->receiverHandler:Lcom/vlife/plugin/module/impl/IBroadcastReceiverHandler;

    invoke-interface {v0, p1, p2}, Lcom/vlife/plugin/module/impl/IBroadcastReceiverHandler;->doReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 36
    :cond_0
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 25
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/handpet/planting/utils/VlifeBroadcastReceiver;->doReceive(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :goto_0
    return-void

    .line 26
    :catch_0
    move-exception v0

    .line 27
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/handpet/planting/utils/VlifeBroadcastReceiver;->log:Lcom/handpet/common/utils/log/ILogger;

    const-string v2, ""

    invoke-interface {v1, v2, v0}, Lcom/handpet/common/utils/log/ILogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
