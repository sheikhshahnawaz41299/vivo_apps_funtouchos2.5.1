.class Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel$1;
.super Ljava/lang/Object;
.source "ClassicMusicPanel.java"

# interfaces
.implements Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFavoriteStateChanged()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel;->access$200(Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel;)Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel;->access$200(Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel;)Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->updateFavoriteBtnState()V

    .line 148
    :cond_0
    return-void
.end method

.method public onHideMusicView()V
    .locals 0

    .prologue
    .line 153
    return-void
.end method

.method public onMusicInfoAndStateChanged()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel;->access$000(Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel;)V

    .line 102
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel;->access$100(Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel;)V

    .line 103
    return-void
.end method

.method public onMusicInfoToLockscreen()V
    .locals 0

    .prologue
    .line 124
    return-void
.end method

.method public onMusicLocalAlbumeChanged()V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method public onMusicMediaEject()V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method public onMusicMediaMounted()V
    .locals 0

    .prologue
    .line 132
    return-void
.end method

.method public onMusicOnlineAlbumChanged([B)V
    .locals 0
    .param p1, "albumBytes"    # [B

    .prologue
    .line 119
    return-void
.end method

.method public onMusicPositonChanged(II)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "lastPosition"    # I

    .prologue
    .line 97
    return-void
.end method

.method public onMusicQueueChanged()V
    .locals 0

    .prologue
    .line 107
    return-void
.end method

.method public onMusicStopOrKill()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel;->access$000(Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel;)V

    .line 112
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel;->access$200(Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel;)Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel;->access$200(Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel;)Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->updatePlayOrPauseBtnState()V

    .line 115
    :cond_0
    return-void
.end method

.method public onMusicTimeChanged()V
    .locals 0

    .prologue
    .line 140
    return-void
.end method
