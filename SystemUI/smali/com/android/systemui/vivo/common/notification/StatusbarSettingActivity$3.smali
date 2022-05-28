.class Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "StatusbarSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity$3;->this$0:Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 313
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, "action":Ljava/lang/String;
    const-string v5, "StatusbarSettingActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "action: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const-string v5, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 316
    iget-object v5, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity$3;->this$0:Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;

    invoke-static {v5}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->access$300(Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;)Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->isSIMInserted(I)Z

    move-result v1

    .line 317
    .local v1, "isSlot1Insert":Z
    iget-object v5, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity$3;->this$0:Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;

    invoke-static {v5}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->access$300(Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;)Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/systemui/vivo/common/network/SIMAndNetworkHelper;->isSIMInserted(I)Z

    move-result v2

    .line 319
    .local v2, "isSlot2Insert":Z
    if-nez v1, :cond_1

    if-nez v2, :cond_1

    .line 320
    iget-object v4, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity$3;->this$0:Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;

    invoke-static {v4}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->access$400(Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 321
    iget-object v4, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity$3;->this$0:Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;

    invoke-static {v4}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->access$400(Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 327
    .end local v1    # "isSlot1Insert":Z
    .end local v2    # "isSlot2Insert":Z
    :cond_0
    :goto_0
    return-void

    .line 323
    .restart local v1    # "isSlot1Insert":Z
    .restart local v2    # "isSlot2Insert":Z
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity$3;->this$0:Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;

    invoke-static {v5}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->access$400(Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity$3;->this$0:Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;

    invoke-static {v6}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->access$500(Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "data_usage_show_flow"

    invoke-static {v6, v7, v3}, Lcom/android/systemui/vivo/common/utils/SettingsUtils$System;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_2

    move v3, v4

    :cond_2
    invoke-virtual {v5, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 324
    iget-object v3, p0, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity$3;->this$0:Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;->access$400(Lcom/android/systemui/vivo/common/notification/StatusbarSettingActivity;)Landroid/preference/CheckBoxPreference;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method
