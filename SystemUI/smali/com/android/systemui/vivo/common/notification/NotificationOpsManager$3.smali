.class Lcom/android/systemui/vivo/common/notification/NotificationOpsManager$3;
.super Landroid/os/Handler;
.source "NotificationOpsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager$3;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 174
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 175
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 177
    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager$3;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->access$900(Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;Z)V

    goto :goto_0

    .line 180
    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager$3;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->access$900(Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;Z)V

    goto :goto_0

    .line 184
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 185
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 186
    .local v0, "pkg":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager$3;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->onNotificationEnabledChange(Ljava/lang/String;I)V

    goto :goto_0

    .line 190
    .end local v0    # "pkg":Ljava/lang/String;
    :pswitch_3
    iget-object v2, p0, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager$3;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;->access$500(Lcom/android/systemui/vivo/common/notification/NotificationOpsManager;[Ljava/lang/String;)V

    goto :goto_0

    .line 175
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
