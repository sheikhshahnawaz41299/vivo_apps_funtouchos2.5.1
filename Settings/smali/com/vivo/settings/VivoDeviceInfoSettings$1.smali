.class Lcom/vivo/settings/VivoDeviceInfoSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "VivoDeviceInfoSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vivo/settings/VivoDeviceInfoSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vivo/settings/VivoDeviceInfoSettings;


# direct methods
.method constructor <init>(Lcom/vivo/settings/VivoDeviceInfoSettings;)V
    .locals 0

    .prologue
    .line 409
    iput-object p1, p0, Lcom/vivo/settings/VivoDeviceInfoSettings$1;->this$0:Lcom/vivo/settings/VivoDeviceInfoSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    .line 413
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 414
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 415
    const-string v4, "plugged"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 416
    .local v1, "plugType":I
    const-string v4, "status"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 418
    .local v2, "status":I
    const-string v3, ""

    .line 419
    .local v3, "statusString":Ljava/lang/String;
    const/4 v4, 0x2

    if-ne v2, v4, :cond_3

    .line 420
    iget-object v4, p0, Lcom/vivo/settings/VivoDeviceInfoSettings$1;->this$0:Lcom/vivo/settings/VivoDeviceInfoSettings;

    const v5, 0x7f0b0044

    invoke-virtual {v4, v5}, Lcom/vivo/settings/VivoDeviceInfoSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 421
    if-lez v1, :cond_0

    .line 422
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/vivo/settings/VivoDeviceInfoSettings$1;->this$0:Lcom/vivo/settings/VivoDeviceInfoSettings;

    if-ne v1, v7, :cond_2

    const v4, 0x7f0b0045

    :goto_0
    invoke-virtual {v6, v4}, Lcom/vivo/settings/VivoDeviceInfoSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 436
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/vivo/settings/VivoDeviceInfoSettings$1;->this$0:Lcom/vivo/settings/VivoDeviceInfoSettings;

    invoke-static {v4}, Lcom/vivo/settings/VivoDeviceInfoSettings;->access$000(Lcom/vivo/settings/VivoDeviceInfoSettings;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 438
    .end local v1    # "plugType":I
    .end local v2    # "status":I
    .end local v3    # "statusString":Ljava/lang/String;
    :cond_1
    return-void

    .line 422
    .restart local v1    # "plugType":I
    .restart local v2    # "status":I
    .restart local v3    # "statusString":Ljava/lang/String;
    :cond_2
    const v4, 0x7f0b0046

    goto :goto_0

    .line 427
    :cond_3
    const/4 v4, 0x3

    if-ne v2, v4, :cond_4

    .line 428
    iget-object v4, p0, Lcom/vivo/settings/VivoDeviceInfoSettings$1;->this$0:Lcom/vivo/settings/VivoDeviceInfoSettings;

    const v5, 0x7f0b0048

    invoke-virtual {v4, v5}, Lcom/vivo/settings/VivoDeviceInfoSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 429
    :cond_4
    const/4 v4, 0x4

    if-ne v2, v4, :cond_5

    .line 430
    iget-object v4, p0, Lcom/vivo/settings/VivoDeviceInfoSettings$1;->this$0:Lcom/vivo/settings/VivoDeviceInfoSettings;

    const v5, 0x7f0b0049

    invoke-virtual {v4, v5}, Lcom/vivo/settings/VivoDeviceInfoSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 431
    :cond_5
    const/4 v4, 0x5

    if-ne v2, v4, :cond_6

    .line 432
    iget-object v4, p0, Lcom/vivo/settings/VivoDeviceInfoSettings$1;->this$0:Lcom/vivo/settings/VivoDeviceInfoSettings;

    const v5, 0x7f0b004a

    invoke-virtual {v4, v5}, Lcom/vivo/settings/VivoDeviceInfoSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 434
    :cond_6
    iget-object v4, p0, Lcom/vivo/settings/VivoDeviceInfoSettings$1;->this$0:Lcom/vivo/settings/VivoDeviceInfoSettings;

    const v5, 0x7f0b0043

    invoke-virtual {v4, v5}, Lcom/vivo/settings/VivoDeviceInfoSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method
