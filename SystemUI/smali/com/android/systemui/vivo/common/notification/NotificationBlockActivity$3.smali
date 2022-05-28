.class Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$3;
.super Landroid/os/Handler;
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
    .line 515
    iput-object p1, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$3;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 521
    iget v0, p1, Landroid/os/Message;->what:I

    .line 522
    .local v0, "what":I
    const-string v1, "NotificationBlockActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "at handleMessage,msg.what = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    packed-switch v0, :pswitch_data_0

    .line 532
    :cond_0
    :goto_0
    return-void

    .line 525
    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$3;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->access$1300(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;)V

    .line 526
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$3;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->access$1400(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;)V

    .line 527
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$3;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->access$1500(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;)Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 528
    iget-object v1, p0, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$3;->this$0:Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;->access$1500(Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity;)Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/notification/NotificationBlockActivity$NotificationAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 523
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch
.end method
