.class Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$1;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardMusicManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 197
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "action":Ljava/lang/String;
    const-string v2, "KeyguardMusicManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v2, "com.android.music.playbackcomplete"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.android.music.metachanged"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.android.music.queuechanged"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.android.music.playstatechanged"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "widget.shining"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.android.music.send_music_info"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 205
    :cond_0
    const/4 v1, 0x0

    .line 207
    .local v1, "bundle":Landroid/os/Bundle;
    :try_start_0
    const-string v2, "updatePlaylist"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 211
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    invoke-static {v2, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->access$000(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;Landroid/os/Bundle;)V

    .line 212
    const-string v2, "com.android.music.queuechanged"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 213
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->access$100(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;)V

    .line 265
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_1
    :goto_1
    return-void

    .line 215
    :cond_2
    const-string v2, "android.intent.action.FORCE_STOP_PACKAGE.com.android.bbkmusic"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "android.intent.action.KILL_BACKGROUND_SERVICE.com.android.bbkmusic"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 216
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->access$200(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 217
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->access$300(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;)V

    .line 219
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    invoke-static {v2, v5}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->access$202(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;Z)Z

    .line 220
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->access$400(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;)V

    goto :goto_1

    .line 221
    :cond_5
    const-string v2, "com.android.music.send_music_album_url"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 222
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    const-string v3, "SMALLALBUM"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->access$500(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;[B)V

    goto :goto_1

    .line 223
    :cond_6
    const-string v2, "com.android.music.send_music_position"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 224
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    const-string v3, "DURATION"

    const-wide/16 v4, -0x1

    invoke-virtual {p2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->access$602(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;J)J

    .line 225
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    const-string v3, "CURRENT_POS"

    const-wide/16 v4, 0x0

    invoke-virtual {p2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->setCurrentPlayTime(J)V

    .line 226
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    iput-boolean v6, v2, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->mUpdateMusic:Z

    .line 228
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    invoke-static {v3}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->access$700(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    invoke-static {v4}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->access$800(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;)I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->access$900(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;II)V

    goto :goto_1

    .line 229
    :cond_7
    const-string v2, "com.android.intent.MUSIC_INFORMATION_TO_LOCKSCREEN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 230
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    const-string v3, "isPlaying"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->access$202(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;Z)Z

    .line 231
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    const-string v3, "private_music"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->access$1002(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;Z)Z

    .line 232
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    const-string v3, "isOnline"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->access$1102(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;Z)Z

    .line 233
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    const-string v3, "isPrepared"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->access$1202(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;Z)Z

    .line 234
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    const-string v3, "song_artist_name"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->access$1302(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;Ljava/lang/String;)Ljava/lang/String;

    .line 235
    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    const-string v2, "audio_id"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->access$1402(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;J)J

    .line 236
    const-string v2, "KeyguardMusicManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIsPlaying = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    invoke-static {v4}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->access$200(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", private = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    invoke-static {v4}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->access$1000(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->access$1500(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;)V

    goto/16 :goto_1

    .line 238
    :cond_8
    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 239
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->access$1100(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 240
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->access$802(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;I)I

    .line 242
    :cond_9
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->access$1600(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;)V

    goto/16 :goto_1

    .line 243
    :cond_a
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 244
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->access$1700(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;)V

    goto/16 :goto_1

    .line 245
    :cond_b
    const-string v2, "com.android.music.update.photo"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 246
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->access$1800(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;)V

    goto/16 :goto_1

    .line 247
    :cond_c
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 248
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->access$1900(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;)V

    goto/16 :goto_1

    .line 249
    :cond_d
    const-string v2, "com.android.music.favoritechanged"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 250
    const/4 v1, 0x0

    .line 252
    .restart local v1    # "bundle":Landroid/os/Bundle;
    :try_start_1
    const-string v2, "updatePlaylist"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 256
    :goto_2
    if-eqz v1, :cond_1

    .line 257
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    const-string v3, "isRadio"

    invoke-virtual {v1, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->access$2002(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;Z)Z

    .line 258
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    const-string v3, "isFavorite"

    invoke-virtual {v1, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->access$2102(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;Z)Z

    .line 259
    const-string v2, "KeyguardMusicManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIsRadioOn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    invoke-static {v4}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->access$2000(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mIsFavoriteRadio = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    invoke-static {v4}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->access$2100(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->access$2200(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;)V

    goto/16 :goto_1

    .line 262
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_e
    const-string v2, "com.android.systemui.keyguard.autohidemusic"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 263
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->access$2300(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;)V

    goto/16 :goto_1

    .line 253
    .restart local v1    # "bundle":Landroid/os/Bundle;
    :catch_0
    move-exception v2

    goto :goto_2

    .line 208
    :catch_1
    move-exception v2

    goto/16 :goto_0
.end method
