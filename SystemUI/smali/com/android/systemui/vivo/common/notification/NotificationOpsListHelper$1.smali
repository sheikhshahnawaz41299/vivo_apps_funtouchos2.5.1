.class Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "NotificationOpsListHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$1;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v12, 0x2715

    const/16 v11, 0x2714

    const/16 v10, 0x2713

    const/16 v9, 0x2712

    .line 156
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "action":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$1;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    iget-object v6, v6, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "action: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v6, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 159
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 160
    .local v3, "packageName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$1;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    iget-object v6, v6, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "packageName: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v6, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$1;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->access$200(Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;)Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$H;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$H;->removeMessages(I)V

    .line 162
    iget-object v6, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$1;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->access$200(Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;)Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$H;

    move-result-object v6

    invoke-virtual {v6, v9, v3}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 163
    .local v2, "msg":Landroid/os/Message;
    iget-object v6, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$1;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->access$200(Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;)Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$H;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$H;->sendMessage(Landroid/os/Message;)Z

    .line 193
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    const-string v6, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 165
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 166
    .restart local v3    # "packageName":Ljava/lang/String;
    const-string v6, "android.intent.extra.REPLACING"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 167
    .local v5, "replacing":Z
    iget-object v6, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$1;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    iget-object v6, v6, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "packageName: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  replacing: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v6, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$1;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->access$200(Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;)Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$H;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$H;->removeMessages(I)V

    .line 169
    iget-object v6, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$1;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->access$200(Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;)Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$H;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 170
    .restart local v2    # "msg":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 171
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v6, "pkg"

    invoke-virtual {v1, v6, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v6, "replacing"

    invoke-virtual {v1, v6, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 173
    invoke-virtual {v2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 174
    iget-object v6, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$1;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->access$200(Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;)Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$H;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$H;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 175
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v5    # "replacing":Z
    :cond_2
    const-string v6, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 176
    const-string v6, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 177
    .local v4, "packages":[Ljava/lang/String;
    if-eqz v4, :cond_0

    array-length v6, v4

    if-eqz v6, :cond_0

    .line 180
    iget-object v6, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$1;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->access$200(Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;)Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$H;

    move-result-object v6

    invoke-virtual {v6, v11}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$H;->removeMessages(I)V

    .line 181
    iget-object v6, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$1;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->access$200(Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;)Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$H;

    move-result-object v6

    invoke-virtual {v6, v11, v4}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 182
    .restart local v2    # "msg":Landroid/os/Message;
    iget-object v6, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$1;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->access$200(Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;)Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$H;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$H;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 183
    .end local v2    # "msg":Landroid/os/Message;
    .end local v4    # "packages":[Ljava/lang/String;
    :cond_3
    const-string v6, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 184
    const-string v6, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 185
    .restart local v4    # "packages":[Ljava/lang/String;
    if-eqz v4, :cond_0

    array-length v6, v4

    if-eqz v6, :cond_0

    .line 188
    iget-object v6, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$1;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->access$200(Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;)Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$H;

    move-result-object v6

    invoke-virtual {v6, v12}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$H;->removeMessages(I)V

    .line 189
    iget-object v6, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$1;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->access$200(Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;)Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$H;

    move-result-object v6

    invoke-virtual {v6, v12, v4}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 190
    .restart local v2    # "msg":Landroid/os/Message;
    iget-object v6, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$1;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;->access$200(Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper;)Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$H;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/android/systemui/vivo/common/notification/NotificationOpsListHelper$H;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
