.class Lcom/android/systemui/power/PowerWarningsManager$2;
.super Ljava/lang/Object;
.source "PowerWarningsManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/power/PowerWarningsManager;->showLowBatteryWarningDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/PowerWarningsManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/PowerWarningsManager;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/android/systemui/power/PowerWarningsManager$2;->this$0:Lcom/android/systemui/power/PowerWarningsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 250
    new-instance v1, Landroid/content/Intent;

    const-string v2, "intent.action.super_power_save"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 251
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "sps_action"

    const-string v3, "start"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    iget-object v2, p0, Lcom/android/systemui/power/PowerWarningsManager$2;->this$0:Lcom/android/systemui/power/PowerWarningsManager;

    invoke-static {v2}, Lcom/android/systemui/power/PowerWarningsManager;->access$100(Lcom/android/systemui/power/PowerWarningsManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 255
    new-instance v0, Landroid/content/Intent;

    const-string v2, "intent.action.SUPER_POWER_SAVE_SERVICE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 256
    .local v0, "iService":Landroid/content/Intent;
    const-string v2, "service_action"

    const-string v3, "start"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    const-string v2, "com.bbk.SuperPowerSave"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    iget-object v2, p0, Lcom/android/systemui/power/PowerWarningsManager$2;->this$0:Lcom/android/systemui/power/PowerWarningsManager;

    invoke-static {v2}, Lcom/android/systemui/power/PowerWarningsManager;->access$100(Lcom/android/systemui/power/PowerWarningsManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 260
    return-void
.end method
