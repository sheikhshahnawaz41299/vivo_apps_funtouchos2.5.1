.class Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor$4;
.super Landroid/content/BroadcastReceiver;
.source "NotificationContainerParentFloor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;)V
    .locals 0

    .prologue
    .line 509
    iput-object p1, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor$4;->this$0:Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 520
    const-string v0, "intent.action.theme.changed"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor$4;->this$0:Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->access$300(Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;Z)V

    .line 528
    :cond_0
    return-void
.end method
