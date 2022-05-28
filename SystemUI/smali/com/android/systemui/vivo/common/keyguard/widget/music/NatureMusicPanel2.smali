.class public Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;
.super Landroid/widget/RelativeLayout;
.source "NatureMusicPanel2.java"

# interfaces
.implements Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel$ButtonPanelCallback;


# static fields
.field private static final ANGLE_OFFSET:I = 0xa

.field private static final MSG_START_CIRCLE:I = 0x1

.field private static final MSG_UPDATE_TRACKINFO:I = 0x0

.field private static final TAG:Ljava/lang/String; = "NatureMusicPanel2"


# instance fields
.field private final loopRunnable:Ljava/lang/Runnable;

.field private mAlbumNotRotate:Z

.field private mAlbumRotate:Z

.field private mAlbumView:Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;

.field private mButtonMarginLeftInMusicMode:I

.field private final mCallback:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;

.field private mCircleView:Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;

.field private mContext:Landroid/content/Context;

.field private mFirstUpdateView:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsNext:Z

.field private mMusicButtonPanel:Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;

.field private mMusicManager:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

.field private mSongName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mContext:Landroid/content/Context;

    .line 33
    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mMusicManager:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    .line 35
    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mCircleView:Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;

    .line 36
    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mAlbumView:Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;

    .line 37
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mAlbumNotRotate:Z

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mAlbumRotate:Z

    .line 39
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mIsNext:Z

    .line 40
    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mSongName:Landroid/widget/TextView;

    .line 41
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mFirstUpdateView:Z

    .line 100
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2$1;-><init>(Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mCallback:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;

    .line 254
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2$2;-><init>(Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mHandler:Landroid/os/Handler;

    .line 273
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2$3;-><init>(Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->loopRunnable:Ljava/lang/Runnable;

    .line 47
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mContext:Landroid/content/Context;

    .line 48
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mMusicManager:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f011b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mButtonMarginLeftInMusicMode:I

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mIsNext:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mIsNext:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;)Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mAlbumView:Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->resetProgress()V

    return-void
.end method

.method static synthetic access$1102(Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mAlbumNotRotate:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;
    .param p1, "x1"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->getBitmapFromRes(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->updateAlbumImage(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->updateAlbum()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->updateTrackInfo()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->startCircleAnimation()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->loopRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mAlbumRotate:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mFirstUpdateView:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mFirstUpdateView:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;)Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mMusicManager:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;)Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mCircleView:Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;)Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mMusicButtonPanel:Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->getWidgetHide()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;[B)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;
    .param p1, "x1"    # [B

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->updateOnlineAlbum([B)V

    return-void
.end method

.method private bytes2Bimap([B)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "b"    # [B

    .prologue
    .line 368
    const-string v0, "NatureMusicPanel2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bytes2Bimap b.length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    array-length v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getBitmapFromRes(I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private getWidgetHide()Z
    .locals 1

    .prologue
    .line 377
    const/4 v0, 0x0

    return v0
.end method

.method private relayoutButtonPanel()V
    .locals 3

    .prologue
    .line 205
    const v0, 0x7f110175

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mMusicButtonPanel:Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;

    .line 206
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mMusicButtonPanel:Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mButtonMarginLeftInMusicMode:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->setButtonsMargin(II)V

    .line 207
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mMusicButtonPanel:Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;

    invoke-virtual {v0, p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->setMusicPanel(Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel$ButtonPanelCallback;)V

    .line 208
    return-void
.end method

.method private resetProgress()V
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->loopRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 328
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mCircleView:Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->setSweepAngle(F)V

    .line 329
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mCircleView:Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->invalidate()V

    .line 330
    return-void
.end method

.method private startCircleAnimation()V
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mMusicManager:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->getIsPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->getWidgetHide()Z

    move-result v0

    if-nez v0, :cond_0

    .line 431
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->startUpdateLoop()V

    .line 435
    :goto_0
    return-void

    .line 433
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->stopUpdateLoop()V

    goto :goto_0
.end method

.method private startResetAnim(Z)V
    .locals 2
    .param p1, "isNext"    # Z

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->loopRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 302
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2$4;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2$4;-><init>(Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 324
    return-void
.end method

.method private startUpdateLoop()V
    .locals 4

    .prologue
    .line 287
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->setLayerType(ILandroid/graphics/Paint;)V

    .line 288
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->loopRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 289
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mCircleView:Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mMusicManager:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->getDuration()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->setMaxProgress(I)V

    .line 290
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mCircleView:Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->invalidate()V

    .line 291
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->loopRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 292
    return-void
.end method

.method private stopUpdateLoop()V
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->loopRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 296
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mCircleView:Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->invalidate()V

    .line 297
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->setLayerType(ILandroid/graphics/Paint;)V

    .line 298
    return-void
.end method

.method private updateAlbum()V
    .locals 7

    .prologue
    .line 422
    const/4 v6, 0x0

    .line 423
    .local v6, "bm":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mMusicManager:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->getIsOnline()Z

    move-result v0

    if-nez v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mMusicManager:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mMusicManager:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->getTrackId()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mMusicManager:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    invoke-virtual {v4}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->getAlbumId()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->getLocalAlbum(Landroid/content/Context;JJ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 426
    :cond_0
    invoke-direct {p0, v6}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->updateAlbumImage(Landroid/graphics/Bitmap;)V

    .line 427
    return-void
.end method

.method private updateAlbumImage(Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 346
    const-string v0, "NatureMusicPanel2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAlbumImage albumImageNotRotate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mAlbumNotRotate:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", albumImageRotate ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mAlbumRotate:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mMusicManager:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->getIsOnline()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 349
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mAlbumNotRotate:Z

    if-eqz v0, :cond_1

    .line 350
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mAlbumView:Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;

    invoke-virtual {v0, p1, v3}, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->setImage(Landroid/graphics/Bitmap;Z)V

    .line 351
    iput-boolean v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mAlbumNotRotate:Z

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 352
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mAlbumRotate:Z

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mAlbumView:Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;

    invoke-virtual {v0, p1, v4}, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->setImage(Landroid/graphics/Bitmap;Z)V

    .line 354
    iput-boolean v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mAlbumRotate:Z

    goto :goto_0

    .line 357
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mAlbumNotRotate:Z

    if-eqz v0, :cond_3

    .line 358
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mAlbumView:Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;

    invoke-virtual {v0, p1, v3}, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->setImage(Landroid/graphics/Bitmap;Z)V

    .line 359
    iput-boolean v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mAlbumNotRotate:Z

    goto :goto_0

    .line 360
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mAlbumRotate:Z

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mAlbumView:Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;

    invoke-virtual {v0, p1, v4}, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->setImage(Landroid/graphics/Bitmap;Z)V

    .line 362
    iput-boolean v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mAlbumRotate:Z

    goto :goto_0
.end method

.method private updateMusicButtonPanel()V
    .locals 2

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mMusicButtonPanel:Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mMusicManager:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->getIsRadioMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 406
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mMusicButtonPanel:Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->setMode(I)V

    .line 410
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mMusicButtonPanel:Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->updateFavoriteBtnState()V

    .line 411
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mMusicButtonPanel:Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->updatePlayOrPauseBtnState()V

    .line 413
    :cond_0
    return-void

    .line 408
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mMusicButtonPanel:Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->setMode(I)V

    goto :goto_0
.end method

.method private updateOnlineAlbum([B)V
    .locals 4
    .param p1, "albumBytes"    # [B

    .prologue
    .line 333
    const/4 v0, 0x0

    .line 334
    .local v0, "album":Landroid/graphics/Bitmap;
    const-string v1, "NatureMusicPanel2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "albumBytes = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    if-eqz p1, :cond_0

    .line 336
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mAlbumRotate:Z

    .line 337
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->bytes2Bimap([B)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 339
    :cond_0
    if-nez v0, :cond_1

    .line 340
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mMusicManager:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->getDefaultAlbum()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 342
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->updateAlbumImage(Landroid/graphics/Bitmap;)V

    .line 343
    return-void
.end method

.method private updateTrackInfo()V
    .locals 2

    .prologue
    .line 388
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->getWidgetHide()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mSongName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mMusicButtonPanel:Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mMusicButtonPanel:Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->getMode()I

    move-result v0

    if-nez v0, :cond_1

    .line 390
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mSongName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mMusicManager:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->getTrackName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 394
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mMusicManager:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->getIsOnline()Z

    move-result v0

    if-nez v0, :cond_2

    .line 395
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->updateAlbum()V

    .line 399
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->updateMusicButtonPanel()V

    .line 401
    :cond_0
    return-void

    .line 392
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mSongName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mMusicManager:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->getArtistName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 397
    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->updateOnlineAlbum([B)V

    goto :goto_1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 211
    const-string v0, "NatureMusicPanel2"

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mMusicManager:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mCallback:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->registerCallback(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;)V

    .line 213
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mMusicManager:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->startMusicService()V

    .line 216
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mAlbumNotRotate:Z

    .line 217
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 218
    return-void
.end method

.method public onButtonPanelClicked(I)V
    .locals 5
    .param p1, "buttonId"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/high16 v2, 0x41200000    # 10.0f

    const/4 v1, 0x1

    .line 64
    packed-switch p1, :pswitch_data_0

    .line 98
    :goto_0
    :pswitch_0
    return-void

    .line 66
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mCircleView:Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->getSweepAngle()F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    .line 67
    invoke-direct {p0, v3}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->startResetAnim(Z)V

    goto :goto_0

    .line 69
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->resetProgress()V

    .line 70
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mMusicManager:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->musicDoPrevOrDelete()V

    .line 71
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mMusicManager:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->getIsOnline()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mAlbumNotRotate:Z

    .line 73
    invoke-direct {p0, v4}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->updateOnlineAlbum([B)V

    .line 75
    :cond_1
    iput-boolean v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mIsNext:Z

    goto :goto_0

    .line 81
    :pswitch_2
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mAlbumNotRotate:Z

    goto :goto_0

    .line 84
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mCircleView:Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->getSweepAngle()F

    move-result v0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    .line 85
    invoke-direct {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->startResetAnim(Z)V

    goto :goto_0

    .line 87
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->resetProgress()V

    .line 88
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mMusicManager:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->musicDoNext()V

    .line 89
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mMusicManager:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->getIsOnline()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 90
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mAlbumNotRotate:Z

    .line 91
    invoke-direct {p0, v4}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->updateOnlineAlbum([B)V

    .line 93
    :cond_3
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mIsNext:Z

    goto :goto_0

    .line 64
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 222
    const-string v0, "NatureMusicPanel2"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mMusicManager:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mCallback:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->removeCallback(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;)V

    .line 224
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->stopUpdateLoop()V

    .line 225
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mMusicButtonPanel:Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mMusicButtonPanel:Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;

    invoke-virtual {v0, p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->removeMusicPanel(Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel$ButtonPanelCallback;)V

    .line 229
    :cond_0
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 230
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 200
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 201
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->relayoutButtonPanel()V

    .line 202
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 5
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    const/4 v4, 0x0

    .line 234
    if-ne p1, p0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mCircleView:Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;

    if-eqz v0, :cond_1

    .line 235
    if-nez p2, :cond_2

    .line 236
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mMusicManager:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->getIsPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mMusicManager:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->startMusicService()V

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mCircleView:Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mMusicManager:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->getIsPlaying()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->setShowProgress(ZZ)V

    .line 240
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mMusicManager:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->getTrackId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 242
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 248
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 249
    return-void

    .line 245
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mCircleView:Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mMusicManager:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->getIsPlaying()Z

    move-result v1

    invoke-virtual {v0, v4, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;->setShowProgress(ZZ)V

    goto :goto_0
.end method

.method public setMusicInfoViews(Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;Landroid/widget/TextView;Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;)V
    .locals 3
    .param p1, "albumView"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;
    .param p2, "songName"    # Landroid/widget/TextView;
    .param p3, "seekbar"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;

    .prologue
    .line 381
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mAlbumView:Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;

    .line 382
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mAlbumView:Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;

    const v1, 0x7f0202a6

    invoke-direct {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->getBitmapFromRes(I)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->setImage(Landroid/graphics/Bitmap;Z)V

    .line 383
    iput-object p2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mSongName:Landroid/widget/TextView;

    .line 384
    iput-object p3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mCircleView:Lcom/android/systemui/vivo/common/keyguard/widget/music/CircularSeekBar;

    .line 385
    return-void
.end method

.method public updateButtonColor(Z)V
    .locals 1
    .param p1, "isWhite"    # Z

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mMusicButtonPanel:Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mMusicButtonPanel:Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->updateViewsColor(Z)V

    .line 441
    :cond_0
    return-void
.end method

.method public updateFavoriteState()V
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mMusicButtonPanel:Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel2;->mMusicButtonPanel:Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->updateFavoriteBtnState()V

    .line 419
    :cond_0
    return-void
.end method
