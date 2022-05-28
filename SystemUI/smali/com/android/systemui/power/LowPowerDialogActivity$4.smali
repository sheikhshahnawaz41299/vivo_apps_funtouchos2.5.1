.class Lcom/android/systemui/power/LowPowerDialogActivity$4;
.super Landroid/content/BroadcastReceiver;
.source "LowPowerDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/power/LowPowerDialogActivity;
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
    .line 137
    iput-object p1, p0, Lcom/android/systemui/power/LowPowerDialogActivity$4;->this$0:Lcom/android/systemui/power/LowPowerDialogActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 139
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.android.service.hallobserver.unlock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 141
    iget-object v1, p0, Lcom/android/systemui/power/LowPowerDialogActivity$4;->this$0:Lcom/android/systemui/power/LowPowerDialogActivity;

    invoke-virtual {v1}, Lcom/android/systemui/power/LowPowerDialogActivity;->finish()V

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    const-string v1, "com.vivo.dismiss.lowpower"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/android/systemui/power/LowPowerDialogActivity$4;->this$0:Lcom/android/systemui/power/LowPowerDialogActivity;

    invoke-static {v1}, Lcom/android/systemui/power/LowPowerDialogActivity;->access$000(Lcom/android/systemui/power/LowPowerDialogActivity;)Lcom/android/systemui/power/PowerWarningsManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/power/PowerWarningsManager;->showLowPowerWhenUnlock(Z)V

    .line 144
    iget-object v1, p0, Lcom/android/systemui/power/LowPowerDialogActivity$4;->this$0:Lcom/android/systemui/power/LowPowerDialogActivity;

    invoke-virtual {v1}, Lcom/android/systemui/power/LowPowerDialogActivity;->finish()V

    goto :goto_0
.end method
