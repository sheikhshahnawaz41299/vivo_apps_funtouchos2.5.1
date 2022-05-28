.class Lcom/android/systemui/power/LowPowerDialogActivity$2;
.super Ljava/lang/Object;
.source "LowPowerDialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/power/LowPowerDialogActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/LowPowerDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/LowPowerDialogActivity;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/systemui/power/LowPowerDialogActivity$2;->this$0:Lcom/android/systemui/power/LowPowerDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 112
    iget-object v2, p0, Lcom/android/systemui/power/LowPowerDialogActivity$2;->this$0:Lcom/android/systemui/power/LowPowerDialogActivity;

    invoke-static {v2}, Lcom/android/systemui/power/LowPowerDialogActivity;->access$000(Lcom/android/systemui/power/LowPowerDialogActivity;)Lcom/android/systemui/power/PowerWarningsManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/systemui/power/PowerWarningsManager;->setSpsState(Z)V

    .line 113
    iget-object v2, p0, Lcom/android/systemui/power/LowPowerDialogActivity$2;->this$0:Lcom/android/systemui/power/LowPowerDialogActivity;

    invoke-static {v2}, Lcom/android/systemui/power/LowPowerDialogActivity;->access$000(Lcom/android/systemui/power/LowPowerDialogActivity;)Lcom/android/systemui/power/PowerWarningsManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/power/PowerWarningsManager;->showLowPowerWhenUnlock(Z)V

    .line 114
    new-instance v1, Landroid/content/Intent;

    const-string v2, "intent.action.super_power_save"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 115
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "sps_action"

    const-string v3, "start"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    iget-object v2, p0, Lcom/android/systemui/power/LowPowerDialogActivity$2;->this$0:Lcom/android/systemui/power/LowPowerDialogActivity;

    invoke-static {v2}, Lcom/android/systemui/power/LowPowerDialogActivity;->access$100(Lcom/android/systemui/power/LowPowerDialogActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 119
    new-instance v0, Landroid/content/Intent;

    const-string v2, "intent.action.SUPER_POWER_SAVE_SERVICE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 120
    .local v0, "iService":Landroid/content/Intent;
    const-string v2, "service_action"

    const-string v3, "start"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    const-string v2, "com.bbk.SuperPowerSave"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    iget-object v2, p0, Lcom/android/systemui/power/LowPowerDialogActivity$2;->this$0:Lcom/android/systemui/power/LowPowerDialogActivity;

    invoke-static {v2}, Lcom/android/systemui/power/LowPowerDialogActivity;->access$100(Lcom/android/systemui/power/LowPowerDialogActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 123
    iget-object v2, p0, Lcom/android/systemui/power/LowPowerDialogActivity$2;->this$0:Lcom/android/systemui/power/LowPowerDialogActivity;

    invoke-virtual {v2}, Lcom/android/systemui/power/LowPowerDialogActivity;->finish()V

    .line 125
    return-void
.end method
