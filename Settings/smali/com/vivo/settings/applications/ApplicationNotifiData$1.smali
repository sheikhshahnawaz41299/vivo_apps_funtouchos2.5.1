.class Lcom/vivo/settings/applications/ApplicationNotifiData$1;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationNotifiData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/settings/applications/ApplicationNotifiData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/applications/ApplicationNotifiData;


# direct methods
.method constructor <init>(Lcom/vivo/settings/applications/ApplicationNotifiData;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/vivo/settings/applications/ApplicationNotifiData$1;->this$0:Lcom/vivo/settings/applications/ApplicationNotifiData;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 69
    if-nez p2, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "action":Ljava/lang/String;
    const-string v3, "ApplicationNotifiData"

    invoke-static {v3, v0}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v3, "com.vivo.daemonService.unifiedconfig.update_finish_broadcast_StatusBar"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 75
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 76
    .local v1, "extra":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 79
    const-string v3, "identifiers"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    move-object v2, v3

    check-cast v2, [Ljava/lang/String;

    .line 80
    .local v2, "identifiers":[Ljava/lang/String;
    const-string v3, "ApplicationNotifiData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "identifiers "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    if-eqz v2, :cond_0

    .line 84
    iget-object v3, p0, Lcom/vivo/settings/applications/ApplicationNotifiData$1;->this$0:Lcom/vivo/settings/applications/ApplicationNotifiData;

    invoke-static {v3, v2}, Lcom/vivo/settings/applications/ApplicationNotifiData;->access$000(Lcom/vivo/settings/applications/ApplicationNotifiData;[Ljava/lang/String;)V

    .line 85
    iget-object v3, p0, Lcom/vivo/settings/applications/ApplicationNotifiData$1;->this$0:Lcom/vivo/settings/applications/ApplicationNotifiData;

    invoke-static {v3, v2}, Lcom/vivo/settings/applications/ApplicationNotifiData;->access$100(Lcom/vivo/settings/applications/ApplicationNotifiData;[Ljava/lang/String;)V

    goto :goto_0
.end method
