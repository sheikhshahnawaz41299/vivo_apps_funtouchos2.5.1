.class Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver$1;
.super Landroid/os/Handler;
.source "WifiReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 40
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 57
    :goto_0
    return-void

    .line 42
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->access$000(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;)Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiSwitcher;->refreshDisplay()V

    goto :goto_0

    .line 45
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->access$100(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;Ljava/lang/Object;)V

    goto :goto_0

    .line 48
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->access$200(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;)V

    goto :goto_0

    .line 51
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->access$300(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;Ljava/lang/Object;)V

    goto :goto_0

    .line 54
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;->access$400(Lcom/android/systemui/vivo/common/upslide/switcher/WifiSwitcher/WifiReceiver;)V

    goto :goto_0

    .line 40
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
