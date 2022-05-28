.class Lcom/vivo/settings/OtgSettingsFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "OtgSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/settings/OtgSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/OtgSettingsFragment;


# direct methods
.method constructor <init>(Lcom/vivo/settings/OtgSettingsFragment;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/vivo/settings/OtgSettingsFragment$1;->this$0:Lcom/vivo/settings/OtgSettingsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 42
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "action":Ljava/lang/String;
    const-string v1, "OtgSettingsFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcast receive act="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const-string v1, "android.intent.action.REBOOT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    iget-object v1, p0, Lcom/vivo/settings/OtgSettingsFragment$1;->this$0:Lcom/vivo/settings/OtgSettingsFragment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/vivo/settings/OtgSettingsFragment;->access$000(Lcom/vivo/settings/OtgSettingsFragment;Z)V

    .line 47
    :cond_0
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 48
    iget-object v1, p0, Lcom/vivo/settings/OtgSettingsFragment$1;->this$0:Lcom/vivo/settings/OtgSettingsFragment;

    iget-object v1, v1, Lcom/vivo/settings/OtgSettingsFragment;->mOtgCheckbox:Landroid/preference/VivoCheckBoxPreference;

    invoke-static {}, Lcom/vivo/settings/OtgSettingsFragment;->isEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/VivoCheckBoxPreference;->setChecked(Z)V

    .line 50
    :cond_1
    return-void
.end method
