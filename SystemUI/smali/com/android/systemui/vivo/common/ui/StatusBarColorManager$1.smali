.class Lcom/android/systemui/vivo/common/ui/StatusBarColorManager$1;
.super Landroid/content/BroadcastReceiver;
.source "StatusBarColorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;)V
    .locals 0

    .prologue
    .line 521
    iput-object p1, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager$1;->this$0:Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v6, 0x3ea

    const/16 v5, 0x3e9

    .line 525
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 526
    .local v0, "action":Ljava/lang/String;
    const-string v2, "StatusBarColorManager"

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

    .line 527
    const-string v2, "com.mediatek.lockscreen.action.WALLPAPER_SET.DONE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 528
    iget-object v2, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager$1;->this$0:Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->access$000(Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 529
    iget-object v2, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager$1;->this$0:Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->access$000(Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 538
    :cond_0
    :goto_0
    return-void

    .line 530
    :cond_1
    const-string v2, "android.intent.action.WALLPAPER_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 531
    iget-object v2, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager$1;->this$0:Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->access$000(Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 532
    iget-object v2, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager$1;->this$0:Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->access$000(Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 533
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 534
    .local v1, "msg":Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    .line 535
    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 536
    iget-object v2, p0, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager$1;->this$0:Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;->access$000(Lcom/android/systemui/vivo/common/ui/StatusBarColorManager;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
