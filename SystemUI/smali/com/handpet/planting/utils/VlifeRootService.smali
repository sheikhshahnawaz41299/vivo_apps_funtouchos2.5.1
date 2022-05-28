.class public abstract Lcom/handpet/planting/utils/VlifeRootService;
.super Landroid/app/Service;
.source "VlifeRootService.java"

# interfaces
.implements Lcom/vlife/plugin/module/impl/ISuicideFactor;


# instance fields
.field private log:Lcom/handpet/common/utils/log/ILogger;

.field private serviceHandler:Lcom/vlife/plugin/module/impl/IServiceHandler;

.field private shutdownReceiver:Landroid/content/BroadcastReceiver;

.field private time:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 30
    const-class v0, Lcom/handpet/planting/utils/VlifeRootService;

    invoke-static {v0}, Lcom/handpet/common/utils/log/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/handpet/common/utils/log/ILogger;

    move-result-object v0

    iput-object v0, p0, Lcom/handpet/planting/utils/VlifeRootService;->log:Lcom/handpet/common/utils/log/ILogger;

    .line 34
    new-instance v0, Lcom/handpet/planting/utils/VlifeRootService$1;

    invoke-direct {v0, p0}, Lcom/handpet/planting/utils/VlifeRootService$1;-><init>(Lcom/handpet/planting/utils/VlifeRootService;)V

    iput-object v0, p0, Lcom/handpet/planting/utils/VlifeRootService;->shutdownReceiver:Landroid/content/BroadcastReceiver;

    .line 28
    return-void
.end method

.method static synthetic access$0(Lcom/handpet/planting/utils/VlifeRootService;)Lcom/handpet/common/utils/log/ILogger;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/handpet/planting/utils/VlifeRootService;->log:Lcom/handpet/common/utils/log/ILogger;

    return-object v0
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 2
    .param p1, "newBase"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/app/Service;->attachBaseContext(Landroid/content/Context;)V

    .line 52
    invoke-static {}, Lcom/vlife/plugin/module/ModuleFactory;->getStatusModule()Lcom/vlife/plugin/module/IStatusModule;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/vlife/plugin/module/IStatusModule;->createServiceHandler(Ljava/lang/String;)Lcom/vlife/plugin/module/impl/IServiceHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/handpet/planting/utils/VlifeRootService;->serviceHandler:Lcom/vlife/plugin/module/impl/IServiceHandler;

    .line 53
    iget-object v0, p0, Lcom/handpet/planting/utils/VlifeRootService;->serviceHandler:Lcom/vlife/plugin/module/impl/IServiceHandler;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/handpet/planting/utils/VlifeRootService;->serviceHandler:Lcom/vlife/plugin/module/impl/IServiceHandler;

    invoke-interface {v0, p1, p0}, Lcom/vlife/plugin/module/impl/IServiceHandler;->attachBaseContext(Landroid/content/Context;Landroid/app/Service;)V

    .line 56
    :cond_0
    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 136
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "action":Ljava/lang/String;
    const/4 v3, 0x2

    new-array v2, v3, [[Ljava/lang/String;

    const/4 v3, 0x0

    .line 138
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "ua_action"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "action"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    aput-object v4, v2, v3

    .line 139
    .local v2, "ua":[[Ljava/lang/String;
    invoke-static {}, Lcom/vlife/plugin/module/ModuleFactory;->getStatusModule()Lcom/vlife/plugin/module/IStatusModule;

    move-result-object v3

    const-string v4, "dev_service_bind"

    invoke-interface {v3, v4, v2}, Lcom/vlife/plugin/module/IStatusModule;->ua(Ljava/lang/String;[[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .end local v0    # "action":Ljava/lang/String;
    .end local v2    # "ua":[[Ljava/lang/String;
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/handpet/planting/utils/VlifeRootService;->serviceHandler:Lcom/vlife/plugin/module/impl/IServiceHandler;

    if-eqz v3, :cond_0

    .line 145
    iget-object v3, p0, Lcom/handpet/planting/utils/VlifeRootService;->serviceHandler:Lcom/vlife/plugin/module/impl/IServiceHandler;

    invoke-interface {v3, p1}, Lcom/vlife/plugin/module/impl/IServiceHandler;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 150
    :goto_1
    return-object v3

    .line 140
    :catch_0
    move-exception v1

    .line 141
    .local v1, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/handpet/planting/utils/VlifeRootService;->log:Lcom/handpet/common/utils/log/ILogger;

    invoke-interface {v3, v1}, Lcom/handpet/common/utils/log/ILogger;->error(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 147
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 148
    .restart local v1    # "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/handpet/planting/utils/VlifeRootService;->log:Lcom/handpet/common/utils/log/ILogger;

    invoke-interface {v3, v1}, Lcom/handpet/common/utils/log/ILogger;->error(Ljava/lang/Throwable;)V

    .line 150
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 190
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 192
    :try_start_0
    iget-object v1, p0, Lcom/handpet/planting/utils/VlifeRootService;->serviceHandler:Lcom/vlife/plugin/module/impl/IServiceHandler;

    if-eqz v1, :cond_0

    .line 193
    iget-object v1, p0, Lcom/handpet/planting/utils/VlifeRootService;->serviceHandler:Lcom/vlife/plugin/module/impl/IServiceHandler;

    invoke-interface {v1, p1}, Lcom/vlife/plugin/module/impl/IServiceHandler;->onConfigurationChanged(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/handpet/planting/utils/VlifeRootService;->log:Lcom/handpet/common/utils/log/ILogger;

    invoke-interface {v1, v0}, Lcom/handpet/common/utils/log/ILogger;->error(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onCreate()V
    .locals 9

    .prologue
    .line 60
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 62
    :try_start_0
    iget-object v2, p0, Lcom/handpet/planting/utils/VlifeRootService;->log:Lcom/handpet/common/utils/log/ILogger;

    const-string v3, "{} oncreate"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/handpet/common/utils/log/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    invoke-static {}, Lcom/vlife/plugin/module/ModuleFactory;->getSuicideManagerModule()Lcom/vlife/plugin/module/ISuicideManagerModule;

    move-result-object v2

    invoke-interface {v2, p0}, Lcom/vlife/plugin/module/ISuicideManagerModule;->addSuicideFactor(Lcom/vlife/plugin/module/impl/ISuicideFactor;)V

    .line 64
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 65
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    const-string v2, "android.intent.action.ACTION_SHUTDOWN_IPO"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 67
    iget-object v2, p0, Lcom/handpet/planting/utils/VlifeRootService;->shutdownReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/handpet/planting/utils/VlifeRootService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 68
    invoke-static {}, Lcom/vlife/plugin/module/ModuleFactory;->getStatusModule()Lcom/vlife/plugin/module/IStatusModule;

    move-result-object v2

    const-string v3, "dev_service_create"

    .line 69
    const/4 v4, 0x1

    new-array v4, v4, [[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "ua_action"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    aput-object v6, v4, v5

    .line 68
    invoke-interface {v2, v3, v4}, Lcom/vlife/plugin/module/IStatusModule;->ua(Ljava/lang/String;[[Ljava/lang/String;)V

    .line 70
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/handpet/planting/utils/VlifeRootService;->time:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/handpet/planting/utils/VlifeRootService;->serviceHandler:Lcom/vlife/plugin/module/impl/IServiceHandler;

    if-eqz v2, :cond_0

    .line 76
    iget-object v2, p0, Lcom/handpet/planting/utils/VlifeRootService;->serviceHandler:Lcom/vlife/plugin/module/impl/IServiceHandler;

    invoke-interface {v2}, Lcom/vlife/plugin/module/impl/IServiceHandler;->onCreate()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 81
    :cond_0
    :goto_1
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/handpet/planting/utils/VlifeRootService;->log:Lcom/handpet/common/utils/log/ILogger;

    invoke-interface {v2, v0}, Lcom/handpet/common/utils/log/ILogger;->error(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 78
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 79
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/handpet/planting/utils/VlifeRootService;->log:Lcom/handpet/common/utils/log/ILogger;

    invoke-interface {v2, v0}, Lcom/handpet/common/utils/log/ILogger;->error(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public final onDestroy()V
    .locals 9

    .prologue
    .line 111
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 113
    :try_start_0
    iget-object v4, p0, Lcom/handpet/planting/utils/VlifeRootService;->log:Lcom/handpet/common/utils/log/ILogger;

    const-string v5, "{} ondestory"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-interface {v4, v5, v6}, Lcom/handpet/common/utils/log/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    invoke-static {}, Lcom/vlife/plugin/module/ModuleFactory;->getSuicideManagerModule()Lcom/vlife/plugin/module/ISuicideManagerModule;

    move-result-object v4

    invoke-interface {v4, p0}, Lcom/vlife/plugin/module/ISuicideManagerModule;->removeSuicideFactor(Lcom/vlife/plugin/module/impl/ISuicideFactor;)V

    .line 115
    iget-object v4, p0, Lcom/handpet/planting/utils/VlifeRootService;->shutdownReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4}, Lcom/handpet/planting/utils/VlifeRootService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 116
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/handpet/planting/utils/VlifeRootService;->time:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long v2, v4, v6

    .line 117
    .local v2, "minute":J
    const/4 v4, 0x2

    new-array v1, v4, [[Ljava/lang/String;

    const/4 v4, 0x0

    .line 118
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "ua_action"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    aput-object v5, v1, v4

    const/4 v4, 0x1

    .line 119
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "dev_value"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    aput-object v5, v1, v4

    .line 120
    .local v1, "ua":[[Ljava/lang/String;
    invoke-static {}, Lcom/vlife/plugin/module/ModuleFactory;->getStatusModule()Lcom/vlife/plugin/module/IStatusModule;

    move-result-object v4

    const-string v5, "dev_service_end"

    invoke-interface {v4, v5, v1}, Lcom/vlife/plugin/module/IStatusModule;->ua(Ljava/lang/String;[[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .end local v1    # "ua":[[Ljava/lang/String;
    .end local v2    # "minute":J
    :goto_0
    :try_start_1
    iget-object v4, p0, Lcom/handpet/planting/utils/VlifeRootService;->serviceHandler:Lcom/vlife/plugin/module/impl/IServiceHandler;

    if-eqz v4, :cond_0

    .line 126
    iget-object v4, p0, Lcom/handpet/planting/utils/VlifeRootService;->serviceHandler:Lcom/vlife/plugin/module/impl/IServiceHandler;

    invoke-interface {v4}, Lcom/vlife/plugin/module/impl/IServiceHandler;->onDestroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 131
    :cond_0
    :goto_1
    return-void

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/handpet/planting/utils/VlifeRootService;->log:Lcom/handpet/common/utils/log/ILogger;

    invoke-interface {v4, v0}, Lcom/handpet/common/utils/log/ILogger;->error(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 128
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 129
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/handpet/planting/utils/VlifeRootService;->log:Lcom/handpet/common/utils/log/ILogger;

    invoke-interface {v4, v0}, Lcom/handpet/common/utils/log/ILogger;->error(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 178
    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    .line 180
    :try_start_0
    iget-object v1, p0, Lcom/handpet/planting/utils/VlifeRootService;->serviceHandler:Lcom/vlife/plugin/module/impl/IServiceHandler;

    if-eqz v1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/handpet/planting/utils/VlifeRootService;->serviceHandler:Lcom/vlife/plugin/module/impl/IServiceHandler;

    invoke-interface {v1}, Lcom/vlife/plugin/module/impl/IServiceHandler;->onLowMemory()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/handpet/planting/utils/VlifeRootService;->log:Lcom/handpet/common/utils/log/ILogger;

    invoke-interface {v1, v0}, Lcom/handpet/common/utils/log/ILogger;->error(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 168
    :try_start_0
    iget-object v1, p0, Lcom/handpet/planting/utils/VlifeRootService;->serviceHandler:Lcom/vlife/plugin/module/impl/IServiceHandler;

    if-eqz v1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/handpet/planting/utils/VlifeRootService;->serviceHandler:Lcom/vlife/plugin/module/impl/IServiceHandler;

    invoke-interface {v1, p1}, Lcom/vlife/plugin/module/impl/IServiceHandler;->onRebind(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/handpet/planting/utils/VlifeRootService;->log:Lcom/handpet/common/utils/log/ILogger;

    invoke-interface {v1, v0}, Lcom/handpet/common/utils/log/ILogger;->error(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 87
    if-eqz p1, :cond_0

    .line 88
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "action":Ljava/lang/String;
    const/4 v3, 0x2

    new-array v2, v3, [[Ljava/lang/String;

    const/4 v3, 0x0

    .line 90
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "ua_action"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "action"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    aput-object v4, v2, v3

    .line 91
    .local v2, "ua":[[Ljava/lang/String;
    invoke-static {}, Lcom/vlife/plugin/module/ModuleFactory;->getStatusModule()Lcom/vlife/plugin/module/IStatusModule;

    move-result-object v3

    const-string v4, "dev_service_start"

    invoke-interface {v3, v4, v2}, Lcom/vlife/plugin/module/IStatusModule;->ua(Ljava/lang/String;[[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .end local v0    # "action":Ljava/lang/String;
    .end local v2    # "ua":[[Ljava/lang/String;
    :cond_0
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/handpet/planting/utils/VlifeRootService;->serviceHandler:Lcom/vlife/plugin/module/impl/IServiceHandler;

    if-eqz v3, :cond_1

    .line 99
    iget-object v3, p0, Lcom/handpet/planting/utils/VlifeRootService;->serviceHandler:Lcom/vlife/plugin/module/impl/IServiceHandler;

    invoke-interface {v3, p1, p2, p3}, Lcom/vlife/plugin/module/impl/IServiceHandler;->onStartCommand(Landroid/content/Intent;II)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 105
    :goto_1
    return v3

    .line 93
    :catch_0
    move-exception v1

    .line 95
    .local v1, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/handpet/planting/utils/VlifeRootService;->log:Lcom/handpet/common/utils/log/ILogger;

    invoke-interface {v3, v1}, Lcom/handpet/common/utils/log/ILogger;->error(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 101
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_2
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v3

    goto :goto_1

    .line 103
    :catch_1
    move-exception v1

    .line 104
    .restart local v1    # "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/handpet/planting/utils/VlifeRootService;->log:Lcom/handpet/common/utils/log/ILogger;

    invoke-interface {v3, v1}, Lcom/handpet/common/utils/log/ILogger;->error(Ljava/lang/Throwable;)V

    .line 105
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v3

    goto :goto_1
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 2
    .param p1, "rootIntent"    # Landroid/content/Intent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 203
    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    .line 205
    :try_start_0
    iget-object v1, p0, Lcom/handpet/planting/utils/VlifeRootService;->serviceHandler:Lcom/vlife/plugin/module/impl/IServiceHandler;

    if-eqz v1, :cond_0

    .line 206
    iget-object v1, p0, Lcom/handpet/planting/utils/VlifeRootService;->serviceHandler:Lcom/vlife/plugin/module/impl/IServiceHandler;

    invoke-interface {v1, p1}, Lcom/vlife/plugin/module/impl/IServiceHandler;->onTaskRemoved(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/handpet/planting/utils/VlifeRootService;->log:Lcom/handpet/common/utils/log/ILogger;

    invoke-interface {v1, v0}, Lcom/handpet/common/utils/log/ILogger;->error(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onTrimMemory(I)V
    .locals 2
    .param p1, "level"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 216
    invoke-super {p0, p1}, Landroid/app/Service;->onTrimMemory(I)V

    .line 218
    :try_start_0
    iget-object v1, p0, Lcom/handpet/planting/utils/VlifeRootService;->serviceHandler:Lcom/vlife/plugin/module/impl/IServiceHandler;

    if-eqz v1, :cond_0

    .line 219
    iget-object v1, p0, Lcom/handpet/planting/utils/VlifeRootService;->serviceHandler:Lcom/vlife/plugin/module/impl/IServiceHandler;

    invoke-interface {v1, p1}, Lcom/vlife/plugin/module/impl/IServiceHandler;->onTrimMemory(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/handpet/planting/utils/VlifeRootService;->log:Lcom/handpet/common/utils/log/ILogger;

    invoke-interface {v1, v0}, Lcom/handpet/common/utils/log/ILogger;->error(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 156
    :try_start_0
    iget-object v1, p0, Lcom/handpet/planting/utils/VlifeRootService;->serviceHandler:Lcom/vlife/plugin/module/impl/IServiceHandler;

    if-eqz v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/handpet/planting/utils/VlifeRootService;->serviceHandler:Lcom/vlife/plugin/module/impl/IServiceHandler;

    invoke-interface {v1, p1}, Lcom/vlife/plugin/module/impl/IServiceHandler;->onUnbind(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 162
    :goto_0
    return v1

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/handpet/planting/utils/VlifeRootService;->log:Lcom/handpet/common/utils/log/ILogger;

    invoke-interface {v1, v0}, Lcom/handpet/common/utils/log/ILogger;->error(Ljava/lang/Throwable;)V

    .line 162
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
