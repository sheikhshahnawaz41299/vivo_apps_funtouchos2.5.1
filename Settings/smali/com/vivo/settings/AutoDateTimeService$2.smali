.class Lcom/vivo/settings/AutoDateTimeService$2;
.super Landroid/os/Handler;
.source "AutoDateTimeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/settings/AutoDateTimeService;
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
    .line 289
    iput-object p1, p0, Lcom/vivo/settings/AutoDateTimeService$2;->this$0:Lcom/vivo/settings/AutoDateTimeService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 292
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 294
    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 295
    .local v0, "curTime":J
    iget-object v4, p0, Lcom/vivo/settings/AutoDateTimeService$2;->this$0:Lcom/vivo/settings/AutoDateTimeService;

    invoke-static {v4}, Lcom/vivo/settings/AutoDateTimeService;->access$100(Lcom/vivo/settings/AutoDateTimeService;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "auto_time_begin"

    invoke-interface {v4, v5, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 297
    .local v2, "oldTime":J
    const-string v4, "AutoDateTimeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSG_AUTO_DATE_TIME oldTime:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " curTime:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    sub-long v4, v2, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    invoke-static {}, Lcom/vivo/settings/AutoDateTimeService;->access$200()I

    move-result v6

    mul-int/lit8 v6, v6, 0x3

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 300
    iget-object v4, p0, Lcom/vivo/settings/AutoDateTimeService$2;->this$0:Lcom/vivo/settings/AutoDateTimeService;

    invoke-static {v4}, Lcom/vivo/settings/AutoDateTimeService;->getConnectionType(Landroid/content/Context;)I

    move-result v4

    const/16 v5, 0x3e9

    if-eq v4, v5, :cond_0

    .line 301
    iget-object v4, p0, Lcom/vivo/settings/AutoDateTimeService$2;->this$0:Lcom/vivo/settings/AutoDateTimeService;

    invoke-static {v4}, Lcom/vivo/settings/AutoDateTimeService;->access$300(Lcom/vivo/settings/AutoDateTimeService;)V

    goto :goto_0

    .line 292
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
