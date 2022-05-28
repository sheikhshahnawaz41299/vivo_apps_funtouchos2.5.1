.class Lcom/vivo/settings/LightSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "LightSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/settings/LightSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/LightSettings;


# direct methods
.method constructor <init>(Lcom/vivo/settings/LightSettings;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/vivo/settings/LightSettings$1;->this$0:Lcom/vivo/settings/LightSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 76
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "action":Ljava/lang/String;
    const-string v1, "LightSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcast receive act="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v1, "android.intent.action.BRIGHTNESS_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    iget-object v1, p0, Lcom/vivo/settings/LightSettings$1;->this$0:Lcom/vivo/settings/LightSettings;

    invoke-static {v1}, Lcom/vivo/settings/LightSettings;->access$100(Lcom/vivo/settings/LightSettings;)V

    .line 80
    iget-object v1, p0, Lcom/vivo/settings/LightSettings$1;->this$0:Lcom/vivo/settings/LightSettings;

    invoke-virtual {v1}, Lcom/vivo/settings/LightSettings;->updateBrightness()V

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    const-string v1, "com.vivo.night.mode.change.intent"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/vivo/settings/LightSettings$1;->this$0:Lcom/vivo/settings/LightSettings;

    invoke-static {v1}, Lcom/vivo/settings/LightSettings;->access$200(Lcom/vivo/settings/LightSettings;)V

    goto :goto_0
.end method
