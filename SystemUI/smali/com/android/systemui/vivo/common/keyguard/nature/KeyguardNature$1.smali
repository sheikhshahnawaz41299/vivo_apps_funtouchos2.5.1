.class Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$1;
.super Ljava/lang/Object;
.source "KeyguardNature.java"

# interfaces
.implements Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;


# direct methods
.method constructor <init>(Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature$1;->this$0:Lcom/android/systemui/vivo/common/keyguard/nature/KeyguardNature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFavoriteStateChanged()V
    .locals 0

    .prologue
    .line 236
    return-void
.end method

.method public onHideMusicView()V
    .locals 0

    .prologue
    .line 241
    return-void
.end method

.method public onMusicInfoAndStateChanged()V
    .locals 0

    .prologue
    .line 182
    return-void
.end method

.method public onMusicInfoToLockscreen()V
    .locals 0

    .prologue
    .line 206
    return-void
.end method

.method public onMusicLocalAlbumeChanged()V
    .locals 0

    .prologue
    .line 224
    return-void
.end method

.method public onMusicMediaEject()V
    .locals 0

    .prologue
    .line 212
    return-void
.end method

.method public onMusicMediaMounted()V
    .locals 0

    .prologue
    .line 218
    return-void
.end method

.method public onMusicOnlineAlbumChanged([B)V
    .locals 0
    .param p1, "albumBytes"    # [B

    .prologue
    .line 200
    return-void
.end method

.method public onMusicPositonChanged(II)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "lastPosition"    # I

    .prologue
    .line 176
    return-void
.end method

.method public onMusicQueueChanged()V
    .locals 0

    .prologue
    .line 188
    return-void
.end method

.method public onMusicStopOrKill()V
    .locals 0

    .prologue
    .line 194
    return-void
.end method

.method public onMusicTimeChanged()V
    .locals 0

    .prologue
    .line 230
    return-void
.end method
