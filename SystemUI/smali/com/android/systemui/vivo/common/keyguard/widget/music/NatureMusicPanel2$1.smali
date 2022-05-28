.class Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2$1;
.super Ljava/lang/Object;
.source "NatureMusicPanel2.java"

# interfaces
.implements Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFavoriteStateChanged()V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->updateFavoriteState()V

    .line 190
    return-void
.end method

.method public onHideMusicView()V
    .locals 0

    .prologue
    .line 195
    return-void
.end method

.method public onMusicInfoAndStateChanged()V
    .locals 12

    .prologue
    const/4 v9, 0x1

    const-wide v10, 0x4076800000000000L    # 360.0

    const/4 v8, 0x0

    .line 110
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->access$300(Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    invoke-static {v1, v8}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->access$302(Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;Z)Z

    .line 112
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->access$400(Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;)Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->getDuration()J

    move-result-wide v2

    .line 113
    .local v2, "duration":J
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->access$400(Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;)Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->getCurrentPlayTime()J

    move-result-wide v4

    sub-long v4, v2, v4

    long-to-double v4, v4

    mul-double/2addr v4, v10

    long-to-double v6, v2

    div-double/2addr v4, v6

    double-to-float v0, v4

    .line 114
    .local v0, "angle":F
    float-to-double v4, v0

    sub-double v4, v10, v4

    double-to-float v0, v4

    .line 115
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->access$500(Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;)Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;

    move-result-object v1

    long-to-int v4, v2

    invoke-virtual {v1, v4}, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->setMaxProgress(I)V

    .line 116
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->access$500(Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;)Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->setSweepAngle(F)V

    .line 117
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->access$500(Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;)Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->invalidate()V

    .line 120
    .end local v0    # "angle":F
    .end local v2    # "duration":J
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->access$400(Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;)Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->getTrackId()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-ltz v1, :cond_1

    .line 121
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->access$600(Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 122
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->access$600(Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 125
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->access$600(Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 126
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->access$600(Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 127
    return-void
.end method

.method public onMusicInfoToLockscreen()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 150
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->access$400(Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;)Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->getTrackId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->access$600(Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 152
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->access$600(Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 154
    :cond_0
    return-void
.end method

.method public onMusicLocalAlbumeChanged()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->access$202(Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;Z)Z

    .line 176
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->access$1400(Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;)V

    .line 177
    return-void
.end method

.method public onMusicMediaEject()V
    .locals 3

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->access$400(Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;)Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->getIsOnline()Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->access$1000(Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;)V

    .line 160
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->access$1102(Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;Z)Z

    .line 161
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    const v2, 0x7f0202a6

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->access$1200(Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->access$1300(Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;Landroid/graphics/Bitmap;)V

    .line 163
    :cond_0
    return-void
.end method

.method public onMusicMediaMounted()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 167
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->access$400(Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;)Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->getIsOnline()Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->access$302(Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;Z)Z

    .line 169
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->access$202(Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;Z)Z

    .line 171
    :cond_0
    return-void
.end method

.method public onMusicOnlineAlbumChanged([B)V
    .locals 1
    .param p1, "albumBytes"    # [B

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->access$800(Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    invoke-static {v0, p1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->access$900(Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;[B)V

    .line 146
    :cond_0
    return-void
.end method

.method public onMusicPositonChanged(II)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "lastPosition"    # I

    .prologue
    const/4 v2, 0x1

    .line 103
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->access$100(Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;)Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->access$000(Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->setIsNext(Z)V

    .line 104
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    invoke-static {v0, v2}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->access$002(Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;Z)Z

    .line 105
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    invoke-static {v0, v2}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->access$202(Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;Z)Z

    .line 106
    return-void
.end method

.method public onMusicQueueChanged()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->access$202(Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;Z)Z

    .line 132
    return-void
.end method

.method public onMusicStopOrKill()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->access$700(Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;)Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->access$800(Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->access$700(Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;)Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->updatePlayOrPauseBtnState()V

    .line 139
    :cond_0
    return-void
.end method

.method public onMusicTimeChanged()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->access$400(Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;)Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->getIsPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->access$400(Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;)Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->startMusicService()V

    .line 184
    :cond_0
    return-void
.end method
