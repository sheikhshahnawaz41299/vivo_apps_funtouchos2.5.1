.class Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$5;
.super Landroid/content/BroadcastReceiver;
.source "NotificationBlockActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;)V
    .locals 0

    .prologue
    .line 597
    iput-object p1, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$5;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 601
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 602
    .local v0, "action":Ljava/lang/String;
    const-string v2, "NotificationBlockActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "receive action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 604
    const-string v2, "reason"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 605
    .local v1, "reason":Ljava/lang/String;
    const-string v2, "homekey"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 606
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$5;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->finish()V

    .line 609
    .end local v1    # "reason":Ljava/lang/String;
    :cond_0
    return-void
.end method
