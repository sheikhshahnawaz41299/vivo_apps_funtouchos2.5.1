.class Lcom/android/settings/dashboard/DashboardTileStatusManager$1;
.super Landroid/content/BroadcastReceiver;
.source "DashboardTileStatusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/DashboardTileStatusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dashboard/DashboardTileStatusManager;


# direct methods
.method constructor <init>(Lcom/android/settings/dashboard/DashboardTileStatusManager;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager$1;->this$0:Lcom/android/settings/dashboard/DashboardTileStatusManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const v9, 0x7f0e02ea

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 104
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "action":Ljava/lang/String;
    const-string v6, "DashboardTileStatusManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onReceive act = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/vivo/settings/Vlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v6, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 107
    const-string v4, "wifi_state"

    const/4 v5, 0x4

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 110
    .local v3, "wifiState":I
    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager$1;->this$0:Lcom/android/settings/dashboard/DashboardTileStatusManager;

    invoke-static {v4, v3}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->access$000(Lcom/android/settings/dashboard/DashboardTileStatusManager;I)V

    .line 144
    .end local v3    # "wifiState":I
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    const-string v6, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 113
    const-string v4, "networkInfo"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 115
    .local v2, "info":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 116
    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager$1;->this$0:Lcom/android/settings/dashboard/DashboardTileStatusManager;

    invoke-static {v4}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->access$100(Lcom/android/settings/dashboard/DashboardTileStatusManager;)V

    goto :goto_0

    .line 118
    :cond_2
    const-string v4, "DashboardTileStatusManager"

    const-string v5, "net work info is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 120
    .end local v2    # "info":Landroid/net/NetworkInfo;
    :cond_3
    const-string v6, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 122
    const-string v6, "wifi_p2p_state"

    invoke-virtual {p2, v6, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    :goto_1
    invoke-static {v4}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->access$202(Z)Z

    .line 125
    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager$1;->this$0:Lcom/android/settings/dashboard/DashboardTileStatusManager;

    invoke-static {v4}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->access$300(Lcom/android/settings/dashboard/DashboardTileStatusManager;)V

    goto :goto_0

    :cond_4
    move v4, v5

    .line 122
    goto :goto_1

    .line 126
    :cond_5
    const-string v6, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 127
    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager$1;->this$0:Lcom/android/settings/dashboard/DashboardTileStatusManager;

    invoke-static {v4}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->access$400(Lcom/android/settings/dashboard/DashboardTileStatusManager;)V

    goto :goto_0

    .line 128
    :cond_6
    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 129
    const-string v6, "plugged"

    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_8

    move v1, v4

    .line 130
    .local v1, "gloveEnabled":Z
    :goto_2
    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager$1;->this$0:Lcom/android/settings/dashboard/DashboardTileStatusManager;

    invoke-static {v4}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->access$500(Lcom/android/settings/dashboard/DashboardTileStatusManager;)Z

    move-result v4

    if-eq v4, v1, :cond_7

    .line 131
    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager$1;->this$0:Lcom/android/settings/dashboard/DashboardTileStatusManager;

    invoke-static {v4, v1}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->access$502(Lcom/android/settings/dashboard/DashboardTileStatusManager;Z)Z

    .line 133
    :cond_7
    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager$1;->this$0:Lcom/android/settings/dashboard/DashboardTileStatusManager;

    invoke-static {v4, v9}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->access$600(Lcom/android/settings/dashboard/DashboardTileStatusManager;I)Lcom/android/settings/dashboard/DashboardCategory;

    move-result-object v5

    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager$1;->this$0:Lcom/android/settings/dashboard/DashboardTileStatusManager;

    invoke-static {v4}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->access$500(Lcom/android/settings/dashboard/DashboardTileStatusManager;)Z

    move-result v4

    if-eqz v4, :cond_9

    const v4, 0x7f0b0838

    :goto_3
    iput v4, v5, Lcom/android/settings/dashboard/DashboardCategory;->summaryRes:I

    .line 135
    const-string v4, "DashboardTileStatusManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "glove mode enabled set to ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager$1;->this$0:Lcom/android/settings/dashboard/DashboardTileStatusManager;

    invoke-static {v6}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->access$500(Lcom/android/settings/dashboard/DashboardTileStatusManager;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] with battery changed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager$1;->this$0:Lcom/android/settings/dashboard/DashboardTileStatusManager;

    invoke-static {v4, v9}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->access$700(Lcom/android/settings/dashboard/DashboardTileStatusManager;I)V

    .line 137
    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager$1;->this$0:Lcom/android/settings/dashboard/DashboardTileStatusManager;

    invoke-static {v4}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->access$800(Lcom/android/settings/dashboard/DashboardTileStatusManager;)V

    goto/16 :goto_0

    .end local v1    # "gloveEnabled":Z
    :cond_8
    move v1, v5

    .line 129
    goto :goto_2

    .line 133
    .restart local v1    # "gloveEnabled":Z
    :cond_9
    const v4, 0x7f0b0837

    goto :goto_3

    .line 138
    .end local v1    # "gloveEnabled":Z
    :cond_a
    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 140
    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager$1;->this$0:Lcom/android/settings/dashboard/DashboardTileStatusManager;

    invoke-static {v4}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->access$900(Lcom/android/settings/dashboard/DashboardTileStatusManager;)V

    goto/16 :goto_0

    .line 141
    :cond_b
    const-string v4, "launcher.action.CHANGE_APPLICATION_NOTIFICATION_NUM"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 142
    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardTileStatusManager$1;->this$0:Lcom/android/settings/dashboard/DashboardTileStatusManager;

    invoke-static {v4}, Lcom/android/settings/dashboard/DashboardTileStatusManager;->access$1000(Lcom/android/settings/dashboard/DashboardTileStatusManager;)V

    goto/16 :goto_0
.end method
