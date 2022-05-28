.class Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$3;
.super Ljava/lang/Thread;
.source "KeyguardMusicManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->saveOnlineAlbum([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

.field final synthetic val$albumBytes:[B


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;[B)V
    .locals 0

    .prologue
    .line 575
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    iput-object p2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$3;->val$albumBytes:[B

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 580
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 581
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    monitor-enter v2

    .line 582
    :try_start_0
    const-string v1, "/data/bbkcore/lock_screen_nature/online_music_album"

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$3;->val$albumBytes:[B

    invoke-static {v1, v3}, Lcom/android/systemui/vivo/common/keyguard/nature/iconset/Utils;->writeImageDataToFile(Ljava/lang/String;[B)V

    .line 583
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->access$2400(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;)Landroid/content/Context;

    move-result-object v1

    const-string v3, "custom_settings"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 584
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "online_music_album_name"

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    invoke-static {v4}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->access$2500(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 585
    const-string v1, "KeyguardMusicManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveOnlineAlbum mAblumName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$3;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    invoke-static {v4}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->access$2500(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    monitor-exit v2

    .line 587
    return-void

    .line 586
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
