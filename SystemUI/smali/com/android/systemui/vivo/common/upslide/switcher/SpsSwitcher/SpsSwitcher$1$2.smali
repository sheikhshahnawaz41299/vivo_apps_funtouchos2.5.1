.class Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher$1$2;
.super Ljava/lang/Object;
.source "SpsSwitcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher$1;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher$1$2;->this$1:Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 103
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher$1$2;->this$1:Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher$1;

    iget-object v2, v2, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;->access$600(Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;)V

    .line 105
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher$1$2;->this$1:Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher$1;

    iget-object v2, v2, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;->access$700(Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "super_remind"

    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher$1$2;->this$1:Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher$1;

    iget-object v4, v4, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;

    invoke-static {v4}, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;->access$500(Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 107
    new-instance v0, Landroid/content/Intent;

    const-string v2, "intent.action.super_power_save"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 108
    .local v0, "i":Landroid/content/Intent;
    const-string v2, "sps_action"

    const-string v3, "start"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher$1$2;->this$1:Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher$1;

    iget-object v2, v2, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;->access$800(Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 111
    new-instance v1, Landroid/content/Intent;

    const-string v2, "intent.action.SUPER_POWER_SAVE_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 112
    .local v1, "iService":Landroid/content/Intent;
    const-string v2, "service_action"

    const-string v3, "start"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    const-string v2, "com.bbk.SuperPowerSave"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher$1$2;->this$1:Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher$1;

    iget-object v2, v2, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;->access$900(Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 116
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher$1$2;->this$1:Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher$1;

    iget-object v2, v2, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;->access$200(Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;)Landroid/app/AlertDialog;

    move-result-object v2

    if-nez v2, :cond_0

    .line 117
    const-string v2, "SpsSwitcher"

    const-string v3, "mAlertDialog is null"

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher$1$2;->this$1:Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher$1;

    iget-object v2, v2, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;->access$200(Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 121
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher$1$2;->this$1:Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher$1;

    iget-object v2, v2, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;->access$202(Lcom/android/systemui/vivo/common/upslide/switcher/SpsSwitcher/SpsSwitcher;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto :goto_0
.end method
