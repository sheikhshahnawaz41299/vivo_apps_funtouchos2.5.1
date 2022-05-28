.class Lcom/vivo/settings/VivoDateTimeSettingsEx$1;
.super Landroid/content/BroadcastReceiver;
.source "VivoDateTimeSettingsEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/settings/VivoDateTimeSettingsEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/VivoDateTimeSettingsEx;


# direct methods
.method constructor <init>(Lcom/vivo/settings/VivoDateTimeSettingsEx;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/vivo/settings/VivoDateTimeSettingsEx$1;->this$0:Lcom/vivo/settings/VivoDateTimeSettingsEx;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 236
    iget-object v1, p0, Lcom/vivo/settings/VivoDateTimeSettingsEx$1;->this$0:Lcom/vivo/settings/VivoDateTimeSettingsEx;

    invoke-virtual {v1}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 237
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 238
    iget-object v1, p0, Lcom/vivo/settings/VivoDateTimeSettingsEx$1;->this$0:Lcom/vivo/settings/VivoDateTimeSettingsEx;

    invoke-virtual {v1, v0}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 239
    iget-object v1, p0, Lcom/vivo/settings/VivoDateTimeSettingsEx$1;->this$0:Lcom/vivo/settings/VivoDateTimeSettingsEx;

    invoke-static {v1}, Lcom/vivo/settings/VivoDateTimeSettingsEx;->access$000(Lcom/vivo/settings/VivoDateTimeSettingsEx;)V

    .line 241
    :cond_0
    return-void
.end method
