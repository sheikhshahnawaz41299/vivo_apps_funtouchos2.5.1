.class Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor$1;
.super Landroid/content/BroadcastReceiver;
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
    .line 53
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v10, 0x3ea

    const/16 v9, 0x3e9

    const/16 v8, 0x3e8

    const-wide/16 v6, 0xc8

    const/16 v5, 0x3f3

    .line 57
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "action":Ljava/lang/String;
    const-string v2, "SwitcherUpdateMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "receive broadcast, action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const-string v2, "bbk.intent.action.KILL_ALL_APPS_START"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 61
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->access$000(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 62
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 63
    .local v1, "msg":Landroid/os/Message;
    iput v8, v1, Landroid/os/Message;->what:I

    .line 64
    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 65
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->access$000(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 186
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    const-string v2, "bbk.intent.action.KILL_ALL_APPS_DONE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 68
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->access$000(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 69
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 70
    .restart local v1    # "msg":Landroid/os/Message;
    iput v9, v1, Landroid/os/Message;->what:I

    .line 71
    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 72
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->access$000(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 75
    .end local v1    # "msg":Landroid/os/Message;
    :cond_2
    const-string v2, "android.media.VIBRATE_SETTING_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 77
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->access$000(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 78
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 79
    .restart local v1    # "msg":Landroid/os/Message;
    iput v10, v1, Landroid/os/Message;->what:I

    .line 80
    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 81
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->access$000(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 84
    .end local v1    # "msg":Landroid/os/Message;
    :cond_4
    const-string v2, "android.intent.action.AT_AIRPLANE_MODE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 85
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->access$000(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x3eb

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 86
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 87
    .restart local v1    # "msg":Landroid/os/Message;
    const/16 v2, 0x3eb

    iput v2, v1, Landroid/os/Message;->what:I

    .line 88
    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 89
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->access$000(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 91
    .end local v1    # "msg":Landroid/os/Message;
    :cond_5
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 92
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->access$000(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x3f2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 93
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 94
    .restart local v1    # "msg":Landroid/os/Message;
    const/16 v2, 0x3f2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 95
    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 96
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->access$000(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 99
    .end local v1    # "msg":Landroid/os/Message;
    :cond_6
    const-string v2, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 100
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->access$000(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x3ec

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 101
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 102
    .restart local v1    # "msg":Landroid/os/Message;
    const/16 v2, 0x3ec

    iput v2, v1, Landroid/os/Message;->what:I

    .line 103
    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 104
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->access$000(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 107
    .end local v1    # "msg":Landroid/os/Message;
    :cond_7
    const-string v2, "intent.action.super_power_save_send"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 108
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->access$000(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x3ed

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 109
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 110
    .restart local v1    # "msg":Landroid/os/Message;
    const/16 v2, 0x3ed

    iput v2, v1, Landroid/os/Message;->what:I

    .line 111
    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 112
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->access$000(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 115
    .end local v1    # "msg":Landroid/os/Message;
    :cond_8
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 116
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->access$000(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x3ef

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 117
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 118
    .restart local v1    # "msg":Landroid/os/Message;
    const/16 v2, 0x3ef

    iput v2, v1, Landroid/os/Message;->what:I

    .line 119
    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 120
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->access$000(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 123
    .end local v1    # "msg":Landroid/os/Message;
    :cond_9
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 124
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->access$000(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x3f0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 125
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 126
    .restart local v1    # "msg":Landroid/os/Message;
    const/16 v2, 0x3f0

    iput v2, v1, Landroid/os/Message;->what:I

    .line 127
    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 128
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->access$000(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 130
    .end local v1    # "msg":Landroid/os/Message;
    :cond_a
    const-string v2, "com.vivo.flashlight.ACTION_FLASHLIGHT_STATE_CHANGD"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 131
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->access$000(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x3f1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 132
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 133
    .restart local v1    # "msg":Landroid/os/Message;
    const/16 v2, 0x3f1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 134
    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 135
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->access$000(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 138
    .end local v1    # "msg":Landroid/os/Message;
    :cond_b
    const-string v2, "statusbar.finish.order"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 139
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->access$000(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x3ee

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 140
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 141
    .restart local v1    # "msg":Landroid/os/Message;
    const/16 v2, 0x3ee

    iput v2, v1, Landroid/os/Message;->what:I

    .line 142
    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 143
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->access$000(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 146
    .end local v1    # "msg":Landroid/os/Message;
    :cond_c
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 148
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->access$000(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x3f5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 149
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 150
    .restart local v1    # "msg":Landroid/os/Message;
    const/16 v2, 0x3f5

    iput v2, v1, Landroid/os/Message;->what:I

    .line 151
    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 152
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->access$000(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 154
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->access$100(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;)Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->onAirplaneModeChanged()V

    .line 157
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->access$000(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 158
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->access$000(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 161
    .end local v1    # "msg":Landroid/os/Message;
    :cond_d
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 162
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->access$000(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 163
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->access$000(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 164
    :cond_e
    const-string v2, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 165
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->access$000(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 166
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->access$000(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 167
    :cond_f
    const-string v2, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 168
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->access$000(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 169
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->access$000(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 171
    :cond_10
    const-string v2, "com.android.telephony.mobile_data_tip"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 172
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->access$200(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "first_data_enable"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 175
    :cond_11
    const-string v2, "com.vivo.night.mode.change.intent"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 176
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->access$100(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;)Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->onNightModeChanged()V

    goto/16 :goto_0

    .line 177
    :cond_12
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 178
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->access$100(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;)Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->onBootCompleted()V

    goto/16 :goto_0

    .line 179
    :cond_13
    const-string v2, "com.vivo.night.eyes.intent"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 180
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->access$100(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;)Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->onNightModeAlarmAlert()V

    goto/16 :goto_0

    .line 183
    :cond_14
    const-string v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 184
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor$1;->this$0:Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;->access$100(Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherUpdateMonitor;)Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/systemui/vivo/common/upslide/switcher/SwitcherHelper;->onWifiApStateChanged(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
