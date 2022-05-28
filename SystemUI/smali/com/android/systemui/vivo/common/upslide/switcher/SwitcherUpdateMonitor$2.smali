.class Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor$2;
.super Landroid/os/Handler;
.source "SwitcherUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor$2;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 200
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 241
    :goto_0
    :pswitch_0
    return-void

    .line 202
    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor$2;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-static {v1, v0}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->access$300(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;Landroid/content/Intent;)V

    goto :goto_0

    .line 205
    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor$2;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-static {v1, v0}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->access$400(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;Landroid/content/Intent;)V

    goto :goto_0

    .line 208
    :pswitch_3
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor$2;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-static {v1, v0}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->access$500(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;Landroid/content/Intent;)V

    goto :goto_0

    .line 211
    :pswitch_4
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor$2;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-static {v1, v0}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->access$600(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;Landroid/content/Intent;)V

    goto :goto_0

    .line 214
    :pswitch_5
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor$2;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-static {v1, v0}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->access$700(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;Landroid/content/Intent;)V

    goto :goto_0

    .line 217
    :pswitch_6
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor$2;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-static {v1, v0}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->access$800(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;Landroid/content/Intent;)V

    goto :goto_0

    .line 220
    :pswitch_7
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor$2;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->access$900(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;)V

    goto :goto_0

    .line 223
    :pswitch_8
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor$2;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-static {v1, v0}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->access$1000(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;Landroid/content/Intent;)V

    goto :goto_0

    .line 226
    :pswitch_9
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor$2;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->handleRefreshDisplayOffline()V

    goto :goto_0

    .line 229
    :pswitch_a
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor$2;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v1, v0}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->handleBatteryChanged(Landroid/content/Intent;)V

    goto :goto_0

    .line 232
    :pswitch_b
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor$2;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v1, v0}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->handleFlashlightStateChanged(Landroid/content/Intent;)V

    goto :goto_0

    .line 235
    :pswitch_c
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor$2;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-static {v1, v0}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->access$1100(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;Landroid/content/Intent;)V

    goto :goto_0

    .line 238
    :pswitch_d
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor$2;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->handleApnStateChanged()V

    goto :goto_0

    .line 200
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method
