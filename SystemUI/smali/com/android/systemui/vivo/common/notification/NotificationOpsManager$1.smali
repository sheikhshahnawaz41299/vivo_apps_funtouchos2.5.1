.class Lcom/android/systemui/vivo/common/notification/NotificationOpsManager$1;
.super Landroid/content/BroadcastReceiver;
.source "NotificationOpsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager$1;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    .line 92
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "action":Ljava/lang/String;
    const-string v6, "NotificationOpsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "action: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v6, "com.vivo.secure.keyguard.enable.or.disable"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 95
    const-string v6, "enable"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 98
    .local v1, "enable":Z
    if-eqz v1, :cond_0

    .line 99
    iget-object v6, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager$1;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->access$000(Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x3e9

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 132
    .end local v1    # "enable":Z
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    const-string v6, "com.vivo.action.SOFTWARE_LOCK_LIST_CHANGE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 103
    const-string v6, "packagename"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 104
    .local v5, "pkg":Ljava/lang/String;
    const-string v6, "locked"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 105
    .local v4, "locked":Z
    const-string v6, "NotificationOpsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "action = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";packagename = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";locked  = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v6, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager$1;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->access$102(Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;Z)Z

    .line 107
    if-eqz v5, :cond_2

    .line 108
    iget-object v6, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager$1;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    invoke-static {v6, v5, v4}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->access$200(Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;Ljava/lang/String;Z)V

    goto :goto_0

    .line 110
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager$1;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->access$300(Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;)V

    goto :goto_0

    .line 114
    .end local v4    # "locked":Z
    .end local v5    # "pkg":Ljava/lang/String;
    :cond_3
    const-string v6, "intent.action.notifcation.ops.changed"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 115
    const-string v6, "pkg"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 116
    .local v5, "pkg":Ljava/lang/CharSequence;
    if-eqz v5, :cond_0

    iget-object v6, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager$1;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->isDesktopAppIconBadgeAvailable(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 117
    iget-object v6, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager$1;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->access$000(Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x3eb

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 121
    .end local v5    # "pkg":Ljava/lang/CharSequence;
    :cond_4
    const-string v6, "com.vivo.daemonService.unifiedconfig.update_finish_broadcast_StatusBar"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 122
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 123
    .local v2, "extra":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 124
    const-string v6, "identifiers"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    move-object v3, v6

    check-cast v3, [Ljava/lang/String;

    .line 125
    .local v3, "identifiers":[Ljava/lang/String;
    const-string v6, "NotificationOpsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "identifiers = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    if-eqz v3, :cond_0

    array-length v6, v3

    if-lez v6, :cond_0

    .line 127
    iget-object v6, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager$1;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    invoke-static {v6, v3}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->access$400(Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;[Ljava/lang/String;)V

    .line 128
    iget-object v6, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager$1;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    invoke-static {v6, v3}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->access$500(Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;[Ljava/lang/String;)V

    goto/16 :goto_0
.end method
