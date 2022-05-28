.class Lcom/vivo/settings/GeneralSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "GeneralSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/settings/GeneralSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/GeneralSettings;


# direct methods
.method constructor <init>(Lcom/vivo/settings/GeneralSettings;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/vivo/settings/GeneralSettings$1;->this$0:Lcom/vivo/settings/GeneralSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 121
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "action":Ljava/lang/String;
    const-string v3, "GeneralSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "broadcast receive act="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 124
    const-string v3, "android.bluetooth.adapter.extra.STATE"

    const/high16 v4, -0x80000000

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 125
    .local v1, "state":I
    iget-object v3, p0, Lcom/vivo/settings/GeneralSettings$1;->this$0:Lcom/vivo/settings/GeneralSettings;

    invoke-static {v3, v1}, Lcom/vivo/settings/GeneralSettings;->access$000(Lcom/vivo/settings/GeneralSettings;I)V

    .line 141
    .end local v1    # "state":I
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 127
    const-string v3, "wifi_state"

    const/4 v4, 0x4

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 128
    .local v2, "wifiState":I
    iget-object v3, p0, Lcom/vivo/settings/GeneralSettings$1;->this$0:Lcom/vivo/settings/GeneralSettings;

    invoke-static {v3}, Lcom/vivo/settings/GeneralSettings;->access$100(Lcom/vivo/settings/GeneralSettings;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_0

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 130
    :cond_2
    iget-object v3, p0, Lcom/vivo/settings/GeneralSettings$1;->this$0:Lcom/vivo/settings/GeneralSettings;

    invoke-static {v3}, Lcom/vivo/settings/GeneralSettings;->access$100(Lcom/vivo/settings/GeneralSettings;)Landroid/preference/Preference;

    move-result-object v3

    const v4, 0x7f0b087a

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 132
    .end local v2    # "wifiState":I
    :cond_3
    const-string v3, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 133
    iget-object v3, p0, Lcom/vivo/settings/GeneralSettings$1;->this$0:Lcom/vivo/settings/GeneralSettings;

    invoke-static {v3}, Lcom/vivo/settings/GeneralSettings;->access$200(Lcom/vivo/settings/GeneralSettings;)V

    goto :goto_0

    .line 134
    :cond_4
    const-string v3, "android.intent.action.REBOOT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 135
    sget-object v3, Lcom/vivo/settings/GeneralSettings;->SETTINGS_RESOUCE:Lcom/vivo/settings/xml/SettingsResouce;

    iget-object v4, p0, Lcom/vivo/settings/GeneralSettings$1;->this$0:Lcom/vivo/settings/GeneralSettings;

    invoke-virtual {v4}, Lcom/vivo/settings/GeneralSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "otg"

    invoke-virtual {v3, v4, v5}, Lcom/vivo/settings/xml/SettingsResouce;->isItemEnabled(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/vivo/settings/GeneralSettings$1;->this$0:Lcom/vivo/settings/GeneralSettings;

    invoke-static {v3}, Lcom/vivo/settings/GeneralSettings;->access$300(Lcom/vivo/settings/GeneralSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 136
    iget-object v3, p0, Lcom/vivo/settings/GeneralSettings$1;->this$0:Lcom/vivo/settings/GeneralSettings;

    invoke-static {v3}, Lcom/vivo/settings/GeneralSettings;->access$300(Lcom/vivo/settings/GeneralSettings;)Landroid/preference/PreferenceScreen;

    move-result-object v3

    const v4, 0x7f0b0950

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    .line 138
    :cond_5
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 139
    iget-object v3, p0, Lcom/vivo/settings/GeneralSettings$1;->this$0:Lcom/vivo/settings/GeneralSettings;

    invoke-static {v3}, Lcom/vivo/settings/GeneralSettings;->access$400(Lcom/vivo/settings/GeneralSettings;)V

    goto :goto_0
.end method
