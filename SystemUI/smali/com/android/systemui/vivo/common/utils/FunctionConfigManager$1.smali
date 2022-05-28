.class Lcom/android/systemui/vivo/common/utils/FunctionConfigManager$1;
.super Landroid/content/BroadcastReceiver;
.source "FunctionConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/systemui/vivo/common/utils/FunctionConfigManager$1;->this$0:Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 42
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.android.providers.calendar.intent.CalendarProvider2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    iget-object v1, p0, Lcom/android/systemui/vivo/common/utils/FunctionConfigManager$1;->this$0:Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;->access$000(Lcom/android/systemui/vivo/common/utils/FunctionConfigManager;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3e9

    const/16 v3, 0x7d1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 46
    :cond_0
    return-void
.end method
