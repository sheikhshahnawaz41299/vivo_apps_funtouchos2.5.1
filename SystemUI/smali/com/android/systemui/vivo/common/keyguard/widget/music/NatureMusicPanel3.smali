.class public Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;
.super Landroid/widget/RelativeLayout;
.source "NatureMusicPanel3.java"


# static fields
.field private static final MSG_UPDATE_TRACKINFO:I = 0x0

.field private static final MST_UPDATE_PLAY_BUTTON_STATE:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mButtonPanel:Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;

.field private mContext:Landroid/content/Context;

.field private mCurrentMusicMode:I

.field private mHandler:Landroid/os/Handler;

.field private mKeyguardOnResumed:Z

.field private mMusicManager:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

.field private mMusicPanelMarginLeft:I

.field private mMusicStreamHelper:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;

.field private mPanelVisible:Z

.field private mRadioBtnPanelMarginLeft:I

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSongNameView:Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->mMusicManager:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->mCurrentMusicMode:I

    .line 36
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3$1;-><init>(Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->mHandler:Landroid/os/Handler;

    .line 55
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->mContext:Landroid/content/Context;

    .line 56
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->mMusicManager:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    .line 57
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->mMusicStreamHelper:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;

    .line 58
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0119

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->mMusicPanelMarginLeft:I

    .line 59
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0118

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->mRadioBtnPanelMarginLeft:I

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->handleUpdateTrackInfo()V

    return-void
.end method

.method private handleUpdateTrackInfo()V
    .locals 3

    .prologue
    .line 113
    sget-object v0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleUpdateTrackInfo mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->mMusicManager:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->getIsRadioMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->updateMusicButtonPanel()V

    .line 115
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->mSongNameView:Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->mButtonPanel:Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->getMode()I

    move-result v0

    if-nez v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->mSongNameView:Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->mMusicManager:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->getTrackName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;->setText(Ljava/lang/String;)V

    .line 121
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->marqueeSongNameIfNeed()V

    .line 128
    :cond_0
    return-void

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->mSongNameView:Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->mMusicManager:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->getArtistName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private layoutButtonPanel()V
    .locals 4

    .prologue
    const/4 v1, -0x2

    const/4 v3, 0x0

    .line 76
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 78
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, 0x2

    const v2, 0x7f110194

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 79
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 80
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->mButtonPanel:Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->getMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 81
    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->mRadioBtnPanelMarginLeft:I

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 85
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->mButtonPanel:Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    return-void

    .line 83
    :cond_0
    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->mMusicPanelMarginLeft:I

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method

.method private marqueeSongNameIfNeed()V
    .locals 3

    .prologue
    .line 247
    sget-object v0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyguardResumed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->mKeyguardOnResumed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", PanelVisible = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->mPanelVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->mSongNameView:Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;

    if-eqz v0, :cond_0

    .line 249
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->mKeyguardOnResumed:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->mPanelVisible:Z

    if-eqz v0, :cond_1

    .line 250
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->mSongNameView:Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;->startMarquee()V

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->mSongNameView:Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;->stopMarquee()V

    goto :goto_0
.end method

.method private updateMusicButtonPanel()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->mButtonPanel:Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->mMusicManager:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->getIsRadioMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->mButtonPanel:Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->setMode(I)V

    .line 136
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->mButtonPanel:Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->updateFavoriteBtnState()V

    .line 137
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->mButtonPanel:Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->updatePlayOrPauseBtnState()V

    .line 139
    :cond_0
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->mCurrentMusicMode:I

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->mButtonPanel:Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->getMode()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 140
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->mButtonPanel:Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->mCurrentMusicMode:I

    .line 141
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->layoutButtonPanel()V

    .line 143
    :cond_1
    return-void

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->mButtonPanel:Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->setMode(I)V

    goto :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 95
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 96
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 100
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 101
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->mMusicStreamHelper:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->mMusicStreamHelper:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->leave()V

    .line 104
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 64
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 68
    const v0, 0x7f110195

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->mSongNameView:Lcom/android/systemui/vivo/common/keyguard/widget/music/MarqueeTextView;

    .line 69
    const v0, 0x7f110175

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->mButtonPanel:Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;

    .line 70
    const v0, 0x7f1101b8

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->mSeekBar:Landroid/widget/SeekBar;

    .line 71
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->mMusicStreamHelper:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->setSeekBar(Landroid/widget/SeekBar;)V

    .line 72
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->layoutButtonPanel()V

    .line 73
    return-void
.end method

.method public onMusicInfoToLockscreen()V
    .locals 4

    .prologue
    .line 209
    sget-object v0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMusicInfoToLockscreen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->mMusicManager:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->getTrackId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->updateTrackInfo()V

    .line 211
    return-void
.end method

.method public onMusicMediaEject()V
    .locals 4

    .prologue
    .line 225
    sget-object v0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMusicMediaEject = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->mMusicManager:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->getTrackId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method public onMusicMediaMounted()V
    .locals 4

    .prologue
    .line 232
    sget-object v0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMusicMediaMounted = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->mMusicManager:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->getTrackId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method public onMusicQueueChanged()V
    .locals 0

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->updateTrackInfo()V

    .line 215
    return-void
.end method

.method public onMusicStopOrKill()V
    .locals 4

    .prologue
    .line 218
    sget-object v0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMusicStopOrKill = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->mMusicManager:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->getTrackId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->mButtonPanel:Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->mButtonPanel:Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->updatePlayOrPauseBtnState()V

    .line 222
    :cond_0
    return-void
.end method

.method public onResume(Z)V
    .locals 3
    .param p1, "resume"    # Z

    .prologue
    .line 241
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->mKeyguardOnResumed:Z

    .line 242
    sget-object v0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->marqueeSongNameIfNeed()V

    .line 244
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 237
    const/4 v0, 0x1

    return v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 3
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 170
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 171
    if-ne p1, p0, :cond_0

    .line 172
    sget-object v0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "visibility = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    if-nez p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->mPanelVisible:Z

    .line 174
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->marqueeSongNameIfNeed()V

    .line 175
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->mMusicStreamHelper:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->mMusicStreamHelper:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicStreamHelper;->resetProgress()V

    .line 179
    :cond_0
    return-void

    .line 173
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateFavoriteState()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->mButtonPanel:Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->mButtonPanel:Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->updateFavoriteBtnState()V

    .line 149
    :cond_0
    return-void
.end method

.method public updateMusicInfoAndState()V
    .locals 4

    .prologue
    .line 188
    sget-object v0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMusicInfoAndState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->mMusicManager:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->getTrackId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->updateTrackInfo()V

    .line 190
    return-void
.end method

.method public updateMusicLocalAlbum()V
    .locals 4

    .prologue
    .line 198
    sget-object v0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMusicLocalAlbum"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->mMusicManager:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->getTrackId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    return-void
.end method

.method public updateMusicOnlineAlbum([B)V
    .locals 4
    .param p1, "albumBytes"    # [B

    .prologue
    .line 193
    sget-object v0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMusicOnlineAlbum"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->mMusicManager:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->getTrackId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method public updateMusicPosition(II)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "lastPosition"    # I

    .prologue
    .line 183
    sget-object v0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMusicPositon position =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", lastPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method public updateMusicTime()V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->mMusicManager:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->getIsPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->mMusicManager:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->startMusicService()V

    .line 206
    :cond_0
    return-void
.end method

.method public updateTrackInfo()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 107
    sget-object v0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateTrackInfo mMusicManager.getTrackId() =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->mMusicManager:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->getTrackId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 109
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/NatureMusicPanel3;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 110
    return-void
.end method
