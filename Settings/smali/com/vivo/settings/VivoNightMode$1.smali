.class Lcom/vivo/settings/VivoNightMode$1;
.super Landroid/content/BroadcastReceiver;
.source "VivoNightMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/settings/VivoNightMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/VivoNightMode;


# direct methods
.method constructor <init>(Lcom/vivo/settings/VivoNightMode;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/vivo/settings/VivoNightMode$1;->this$0:Lcom/vivo/settings/VivoNightMode;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 71
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "action":Ljava/lang/String;
    const-string v1, "VivoNightMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v1, p0, Lcom/vivo/settings/VivoNightMode$1;->this$0:Lcom/vivo/settings/VivoNightMode;

    invoke-static {v1}, Lcom/vivo/settings/VivoNightMode;->access$000(Lcom/vivo/settings/VivoNightMode;)V

    .line 74
    iget-object v1, p0, Lcom/vivo/settings/VivoNightMode$1;->this$0:Lcom/vivo/settings/VivoNightMode;

    invoke-static {v1}, Lcom/vivo/settings/VivoNightMode;->access$100(Lcom/vivo/settings/VivoNightMode;)V

    .line 75
    iget-object v1, p0, Lcom/vivo/settings/VivoNightMode$1;->this$0:Lcom/vivo/settings/VivoNightMode;

    invoke-virtual {v1}, Lcom/vivo/settings/VivoNightMode;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->onContentChanged()V

    .line 76
    return-void
.end method
