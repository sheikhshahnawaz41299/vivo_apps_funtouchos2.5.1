.class Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;
.super Ljava/lang/Object;
.source "MusicControlPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MusicInfo"
.end annotation


# instance fields
.field artistName:Ljava/lang/String;

.field isFavorite:Z

.field isHifiOn:Z

.field isOnLine:Z

.field isPlaying:Z

.field isRadioOn:Z

.field musicName:Ljava/lang/String;

.field radioName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 780
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 781
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;->musicName:Ljava/lang/String;

    .line 782
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;->artistName:Ljava/lang/String;

    .line 783
    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;->radioName:Ljava/lang/String;

    .line 784
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;->isPlaying:Z

    .line 785
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;->isRadioOn:Z

    .line 786
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;->isHifiOn:Z

    .line 787
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;->isOnLine:Z

    .line 788
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/upslide/media/MusicControlPanel$MusicInfo;->isFavorite:Z

    .line 789
    return-void
.end method
