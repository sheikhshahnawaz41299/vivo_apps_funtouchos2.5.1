.class Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$2;
.super Landroid/content/BroadcastReceiver;
.source "MusicControlPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$2;->this$0:Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 149
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "action":Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->access$300()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "action = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v7, "com.android.music.playbackcomplete"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "com.android.music.metachanged"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "com.android.music.queuechanged"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "com.android.music.playstatechanged"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "widget.shining"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 156
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v6

    .line 157
    .local v6, "msg":Landroid/os/Message;
    const/4 v7, 0x5

    iput v7, v6, Landroid/os/Message;->what:I

    .line 158
    iput-object p2, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 159
    iget-object v7, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$2;->this$0:Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;

    invoke-static {v7}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->access$400(Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;)Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 160
    iget-object v7, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$2;->this$0:Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;

    invoke-static {v7}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->access$400(Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 214
    .end local v6    # "msg":Landroid/os/Message;
    :cond_1
    :goto_0
    return-void

    .line 161
    :cond_2
    const-string v7, "android.intent.action.FORCE_STOP_PACKAGE.com.android.bbkmusic"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "android.intent.action.KILL_BACKGROUND_SERVICE.com.android.bbkmusic"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 163
    :cond_3
    iget-object v7, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$2;->this$0:Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;

    invoke-static {v7}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->access$500(Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 164
    iget-object v7, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$2;->this$0:Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;

    invoke-static {v7}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->access$400(Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;)Landroid/os/Handler;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 166
    :cond_4
    const-string v7, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 167
    iget-object v7, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$2;->this$0:Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;

    invoke-static {v7}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->access$600(Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 170
    const-string v7, "status"

    const/4 v8, 0x1

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 173
    .local v3, "batteryStatus":I
    const/4 v7, 0x2

    if-ne v3, v7, :cond_5

    .line 174
    iget-object v7, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$2;->this$0:Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->access$702(Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;Z)Z

    .line 178
    :goto_1
    const-string v7, "level"

    const/16 v8, 0x64

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 180
    .local v1, "batteryLevel":I
    const-string v7, "scale"

    const/16 v8, 0x64

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    int-to-float v2, v7

    .line 181
    .local v2, "batteryScale":F
    int-to-float v7, v1

    div-float/2addr v7, v2

    const v8, 0x3dcccccd    # 0.1f

    cmpl-float v7, v7, v8

    if-lez v7, :cond_6

    .line 182
    iget-object v7, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$2;->this$0:Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->access$802(Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;Z)Z

    .line 186
    :goto_2
    iget-object v7, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$2;->this$0:Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->access$900(Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;Z)V

    goto :goto_0

    .line 176
    .end local v1    # "batteryLevel":I
    .end local v2    # "batteryScale":F
    :cond_5
    iget-object v7, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$2;->this$0:Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->access$702(Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;Z)Z

    goto :goto_1

    .line 184
    .restart local v1    # "batteryLevel":I
    .restart local v2    # "batteryScale":F
    :cond_6
    iget-object v7, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$2;->this$0:Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->access$802(Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;Z)Z

    goto :goto_2

    .line 187
    .end local v1    # "batteryLevel":I
    .end local v2    # "batteryScale":F
    .end local v3    # "batteryStatus":I
    :cond_7
    const-string v7, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 188
    iget-object v7, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$2;->this$0:Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;

    invoke-static {v7}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->access$600(Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 191
    invoke-static {}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->access$300()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "state:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$2;->this$0:Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;

    invoke-static {v9}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->access$1000(Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    .line 193
    .local v5, "message":Landroid/os/Message;
    const/4 v7, 0x3

    iput v7, v5, Landroid/os/Message;->what:I

    .line 194
    iput-object p2, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 195
    iget-object v7, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$2;->this$0:Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;

    invoke-static {v7}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->access$400(Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;)Landroid/os/Handler;

    move-result-object v7

    iget v8, v5, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 196
    iget-object v7, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$2;->this$0:Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;

    invoke-static {v7}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->access$400(Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 197
    .end local v5    # "message":Landroid/os/Message;
    :cond_8
    const-string v7, "android.intent.action.CLEAR_PACKAGE_DATA.com.android.bbkmusic"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 198
    iget-object v7, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$2;->this$0:Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;

    invoke-static {v7}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->access$1100(Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;)Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$2;->this$0:Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;

    invoke-static {v8}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->access$1200(Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e0245

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;->musicName:Ljava/lang/String;

    .line 199
    iget-object v7, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$2;->this$0:Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;

    invoke-static {v7}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->access$1100(Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;)Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$2;->this$0:Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;

    invoke-static {v8}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->access$1200(Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e0244

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;->artistName:Ljava/lang/String;

    .line 200
    iget-object v7, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$2;->this$0:Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;

    iget-object v8, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$2;->this$0:Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;

    invoke-static {v8}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->access$1100(Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;)Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->access$1300(Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;)V

    goto/16 :goto_0

    .line 201
    :cond_9
    const-string v7, "com.android.music.favoritechanged"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 202
    const/4 v4, 0x0

    .line 204
    .local v4, "bundle":Landroid/os/Bundle;
    :try_start_0
    const-string v7, "updatePlaylist"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 208
    :goto_3
    if-eqz v4, :cond_1

    .line 209
    iget-object v7, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$2;->this$0:Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;

    invoke-static {v7}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->access$1100(Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;)Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;

    move-result-object v7

    const-string v8, "isRadio"

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, v7, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;->isRadioOn:Z

    .line 210
    iget-object v7, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$2;->this$0:Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;

    invoke-static {v7}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->access$1100(Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;)Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;

    move-result-object v7

    const-string v8, "isFavorite"

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, v7, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;->isFavorite:Z

    .line 211
    iget-object v7, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$2;->this$0:Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;

    iget-object v8, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$2;->this$0:Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;

    invoke-static {v8}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->access$1100(Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;)Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;->isRadioOn:Z

    iget-object v9, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$2;->this$0:Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;

    invoke-static {v9}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->access$1100(Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;)Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;

    move-result-object v9

    iget-boolean v9, v9, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;->isFavorite:Z

    invoke-static {v7, v8, v9}, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;->access$1400(Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;ZZ)V

    goto/16 :goto_0

    .line 205
    :catch_0
    move-exception v7

    goto :goto_3
.end method
