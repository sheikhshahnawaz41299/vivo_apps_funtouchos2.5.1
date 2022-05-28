.class Lcom/vivo/settings/AutoDateTimeService$1;
.super Ljava/lang/Thread;
.source "AutoDateTimeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vivo/settings/AutoDateTimeService;->getTimeFromServer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/AutoDateTimeService;


# direct methods
.method constructor <init>(Lcom/vivo/settings/AutoDateTimeService;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/vivo/settings/AutoDateTimeService$1;->this$0:Lcom/vivo/settings/AutoDateTimeService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 86
    const-string v3, "AutoDateTimeService"

    const-string v6, "getTimeFromServer run"

    invoke-static {v3, v6}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v3, p0, Lcom/vivo/settings/AutoDateTimeService$1;->this$0:Lcom/vivo/settings/AutoDateTimeService;

    invoke-static {v3}, Lcom/vivo/settings/AutoDateTimeService;->updateTimeDate(Landroid/content/Context;)J

    move-result-wide v4

    .line 89
    .local v4, "serverTime":J
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 91
    .local v0, "curTime":J
    iget-object v3, p0, Lcom/vivo/settings/AutoDateTimeService$1;->this$0:Lcom/vivo/settings/AutoDateTimeService;

    invoke-static {v3}, Lcom/vivo/settings/AutoDateTimeService;->access$000(Lcom/vivo/settings/AutoDateTimeService;)Z

    move-result v2

    .line 92
    .local v2, "isAutoTime":Z
    const-string v3, "AutoDateTimeService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getTimeFromServer serverTime:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " curTime:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isAutoTime:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    sub-long v6, v0, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/32 v8, 0x186a0

    cmp-long v3, v6, v8

    if-lez v3, :cond_0

    if-eqz v2, :cond_0

    .line 95
    const-string v3, "AutoDateTimeService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getTimeFromServer set time to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-static {v4, v5}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 100
    .end local v0    # "curTime":J
    .end local v2    # "isAutoTime":Z
    :cond_0
    iget-object v3, p0, Lcom/vivo/settings/AutoDateTimeService$1;->this$0:Lcom/vivo/settings/AutoDateTimeService;

    invoke-virtual {v3}, Lcom/vivo/settings/AutoDateTimeService;->stopSelf()V

    .line 101
    return-void
.end method
