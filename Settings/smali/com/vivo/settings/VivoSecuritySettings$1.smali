.class Lcom/vivo/settings/VivoSecuritySettings$1;
.super Landroid/content/BroadcastReceiver;
.source "VivoSecuritySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/settings/VivoSecuritySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/VivoSecuritySettings;


# direct methods
.method constructor <init>(Lcom/vivo/settings/VivoSecuritySettings;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/vivo/settings/VivoSecuritySettings$1;->this$0:Lcom/vivo/settings/VivoSecuritySettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 96
    const-string v0, "SecuritySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receive act="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/vivo/settings/VivoSecuritySettings$1;->this$0:Lcom/vivo/settings/VivoSecuritySettings;

    invoke-static {v0}, Lcom/vivo/settings/VivoSecuritySettings;->access$100(Lcom/vivo/settings/VivoSecuritySettings;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v0, p0, Lcom/vivo/settings/VivoSecuritySettings$1;->this$0:Lcom/vivo/settings/VivoSecuritySettings;

    invoke-virtual {v0}, Lcom/vivo/settings/VivoSecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/AppFeature;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/vivo/settings/VivoSecuritySettings$1;->this$0:Lcom/vivo/settings/VivoSecuritySettings;

    invoke-static {v0}, Lcom/vivo/settings/VivoSecuritySettings;->access$000(Lcom/vivo/settings/VivoSecuritySettings;)Lcom/vivo/settings/SimUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/settings/SimUtils;->getInertedSimCount()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 104
    :cond_1
    :goto_1
    return-void

    .line 99
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 101
    :cond_3
    const-string v0, "android.settings.VisitMode.action.TURN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/vivo/settings/VivoSecuritySettings$1;->this$0:Lcom/vivo/settings/VivoSecuritySettings;

    invoke-static {v0}, Lcom/vivo/settings/VivoSecuritySettings;->access$200(Lcom/vivo/settings/VivoSecuritySettings;)V

    goto :goto_1
.end method
