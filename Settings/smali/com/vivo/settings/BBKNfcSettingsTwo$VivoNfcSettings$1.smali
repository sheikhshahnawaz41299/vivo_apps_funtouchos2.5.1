.class Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "BBKNfcSettingsTwo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;


# direct methods
.method constructor <init>(Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings$1;->this$0:Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 95
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "action":Ljava/lang/String;
    const-string v1, "VivoNfcSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive act="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    iget-object v1, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings$1;->this$0:Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;

    const-string v2, "android.nfc.extra.ADAPTER_STATE"

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->access$000(Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;I)V

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings$1;->this$0:Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;

    invoke-static {v1}, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->access$100(Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 102
    iget-object v1, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings$1;->this$0:Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;

    invoke-static {v1}, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->access$200(Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;)Lcom/vivo/settings/SimUtils;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings$1;->this$0:Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;

    invoke-static {v1}, Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;->access$200(Lcom/vivo/settings/BBKNfcSettingsTwo$VivoNfcSettings;)Lcom/vivo/settings/SimUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vivo/settings/SimUtils;->forceFlush()V

    goto :goto_0
.end method
