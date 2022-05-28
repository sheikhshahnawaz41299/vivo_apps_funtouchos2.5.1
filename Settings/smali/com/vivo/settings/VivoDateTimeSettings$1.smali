.class Lcom/vivo/settings/VivoDateTimeSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "VivoDateTimeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/settings/VivoDateTimeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/VivoDateTimeSettings;


# direct methods
.method constructor <init>(Lcom/vivo/settings/VivoDateTimeSettings;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/vivo/settings/VivoDateTimeSettings$1;->this$0:Lcom/vivo/settings/VivoDateTimeSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 93
    iget-object v1, p0, Lcom/vivo/settings/VivoDateTimeSettings$1;->this$0:Lcom/vivo/settings/VivoDateTimeSettings;

    invoke-virtual {v1}, Lcom/vivo/settings/VivoDateTimeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 94
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 95
    iget-object v1, p0, Lcom/vivo/settings/VivoDateTimeSettings$1;->this$0:Lcom/vivo/settings/VivoDateTimeSettings;

    invoke-virtual {v1, v0}, Lcom/vivo/settings/VivoDateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 97
    :cond_0
    return-void
.end method
