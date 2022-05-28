.class Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity$4;
.super Landroid/content/BroadcastReceiver;
.source "SwitcherOrderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;)V
    .locals 0

    .prologue
    .line 425
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity$4;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 429
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 431
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 432
    const-string v2, "reason"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 433
    .local v1, "reason":Ljava/lang/String;
    const-string v2, "homekey"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 434
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity$4;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherOrderActivity;->finish()V

    .line 437
    .end local v1    # "reason":Ljava/lang/String;
    :cond_0
    return-void
.end method
