.class Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$36;
.super Ljava/lang/Object;
.source "KeyguardNature2.java"

# interfaces
.implements Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)V
    .locals 0

    .prologue
    .line 2576
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$36;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFavoriteStateChanged()V
    .locals 0

    .prologue
    .line 2626
    return-void
.end method

.method public onHideMusicView()V
    .locals 2

    .prologue
    .line 2630
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$36;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$8000(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2631
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$36;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$6000(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2633
    :cond_0
    return-void
.end method

.method public onMusicInfoAndStateChanged()V
    .locals 0

    .prologue
    .line 2583
    return-void
.end method

.method public onMusicInfoToLockscreen()V
    .locals 3

    .prologue
    .line 2602
    const-string v0, "KeyguardNature2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMusicInfoToLockscreen isShowing() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$36;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$7800(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2603
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$36;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$7900(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2604
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$36;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$36;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$7600(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->getIsPlaying()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$7700(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;Z)V

    .line 2606
    :cond_0
    return-void
.end method

.method public onMusicLocalAlbumeChanged()V
    .locals 0

    .prologue
    .line 2618
    return-void
.end method

.method public onMusicMediaEject()V
    .locals 0

    .prologue
    .line 2610
    return-void
.end method

.method public onMusicMediaMounted()V
    .locals 0

    .prologue
    .line 2614
    return-void
.end method

.method public onMusicOnlineAlbumChanged([B)V
    .locals 0
    .param p1, "albumBytes"    # [B

    .prologue
    .line 2598
    return-void
.end method

.method public onMusicPositonChanged(II)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "lastPosition"    # I

    .prologue
    .line 2579
    return-void
.end method

.method public onMusicQueueChanged()V
    .locals 0

    .prologue
    .line 2587
    return-void
.end method

.method public onMusicStopOrKill()V
    .locals 2

    .prologue
    .line 2591
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$36;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$7500(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2592
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$36;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2$36;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$7600(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;)Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->getIsPlaying()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;->access$7700(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature2;Z)V

    .line 2594
    :cond_0
    return-void
.end method

.method public onMusicTimeChanged()V
    .locals 0

    .prologue
    .line 2622
    return-void
.end method
