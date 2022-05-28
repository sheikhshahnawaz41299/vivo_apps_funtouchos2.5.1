.class public Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;
.super Landroid/widget/RelativeLayout;
.source "MusicButtonPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel$ButtonPanelCallback;
    }
.end annotation


# static fields
.field public static final BUTTON_DO_FAV:I = 0x1

.field public static final BUTTON_DO_NEXT:I = 0x3

.field public static final BUTTON_DO_PALY_OR_PAUSE:I = 0x2

.field public static final BUTTON_DO_PREV:I = 0x0

.field public static final MODE_MUSIC:I = 0x0

.field public static final MODE_RADIO:I = 0x1

.field private static final MSG_RELAYOUT_BUTTONS:I = 0x0

.field private static final MSG_UPDATE_PLAY_BUTTON_STATE:I = 0x1

.field private static final PLAY_BUTTON_ANIM_DURATION:I = 0x96

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mButtonImageWidth:I

.field private mButtonMarginLeftInMusicMode:I

.field private mButtonMarginLeftInRadioMode:I

.field private mContext:Landroid/content/Context;

.field private mDeleteBtn:Landroid/widget/ImageButton;

.field private mFavouriteBtn:Landroid/widget/ImageButton;

.field private mHandler:Landroid/os/Handler;

.field private mIsButtonWhileStyle:Z

.field private mLastClickTimeMillis:J

.field private mMode:I

.field private mMusicManager:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

.field private final mMusicPanels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel$ButtonPanelCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private mNextBtn:Landroid/widget/ImageButton;

.field private mPauseBtn:Landroid/widget/ImageButton;

.field private mPauseBtnToBeShowing:Z

.field private mPlayBtn:Landroid/widget/ImageButton;

.field private mPlayOrPauseContainer:Landroid/view/View;

.field private mPlayPauseBtnAnim:Landroid/animation/AnimatorSet;

.field private mPreBtn:Landroid/widget/ImageButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 76
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mMode:I

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mIsButtonWhileStyle:Z

    .line 34
    iput-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mMusicManager:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    .line 35
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mLastClickTimeMillis:J

    .line 50
    iput-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mPlayPauseBtnAnim:Landroid/animation/AnimatorSet;

    .line 53
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mMusicPanels:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel$1;-><init>(Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mHandler:Landroid/os/Handler;

    .line 77
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mContext:Landroid/content/Context;

    .line 78
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mMusicManager:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    .line 80
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->adjustDimens()V

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;
    .param p1, "x1"    # Z

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->handleUpdatePlayButtonState(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->visitButtons()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->offsetButtons()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mPlayBtn:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mPlayPauseBtnAnim:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mPauseBtn:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private adjustDimens()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f011a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mButtonMarginLeftInMusicMode:I

    .line 90
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f011c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mButtonMarginLeftInRadioMode:I

    .line 91
    return-void
.end method

.method private buttonClicked(I)V
    .locals 3
    .param p1, "buttonId"    # I

    .prologue
    .line 123
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mMusicPanels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 124
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mMusicPanels:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel$ButtonPanelCallback;

    .line 125
    .local v0, "cb":Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel$ButtonPanelCallback;
    if-eqz v0, :cond_0

    .line 126
    invoke-interface {v0, p1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel$ButtonPanelCallback;->onButtonPanelClicked(I)V

    .line 123
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    .end local v0    # "cb":Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel$ButtonPanelCallback;
    :cond_1
    return-void
.end method

.method private enableClickAgain()Z
    .locals 7

    .prologue
    .line 182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 183
    .local v2, "now":J
    iget-wide v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mLastClickTimeMillis:J

    sub-long v0, v2, v4

    .line 184
    .local v0, "diff":J
    sget-object v4, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "diff = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-wide/16 v4, 0x320

    cmp-long v4, v0, v4

    if-gez v4, :cond_0

    .line 186
    const/4 v4, 0x0

    .line 189
    :goto_0
    return v4

    .line 188
    :cond_0
    iput-wide v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mLastClickTimeMillis:J

    .line 189
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private handleUpdatePlayButtonState(Z)V
    .locals 10
    .param p1, "anim"    # Z

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 261
    sget-object v0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "anim = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPauseBtnShowing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mPauseBtnToBeShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", playing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mMusicManager:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->getIsPlaying()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mMusicManager:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->getIsPlaying()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mPauseBtnToBeShowing:Z

    if-ne v0, v1, :cond_0

    .line 319
    :goto_0
    return-void

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mMusicManager:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->getIsPlaying()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mPauseBtnToBeShowing:Z

    .line 266
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->cancelPlayButtonAnim()V

    .line 267
    if-eqz p1, :cond_3

    .line 268
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mPlayPauseBtnAnim:Landroid/animation/AnimatorSet;

    .line 269
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mPlayPauseBtnAnim:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 270
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mPauseBtnToBeShowing:Z

    if-eqz v0, :cond_2

    .line 271
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mPauseBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mPauseBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 273
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mPlayPauseBtnAnim:Landroid/animation/AnimatorSet;

    const/4 v1, 0x6

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mPlayBtn:Landroid/widget/ImageButton;

    const-string v3, "alpha"

    new-array v4, v5, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mPlayBtn:Landroid/widget/ImageButton;

    const-string v3, "scaleX"

    new-array v4, v5, [F

    fill-array-data v4, :array_1

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mPlayBtn:Landroid/widget/ImageButton;

    const-string v3, "scaleY"

    new-array v4, v5, [F

    fill-array-data v4, :array_2

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mPauseBtn:Landroid/widget/ImageButton;

    const-string v3, "alpha"

    new-array v4, v5, [F

    fill-array-data v4, :array_3

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v8

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mPauseBtn:Landroid/widget/ImageButton;

    const-string v3, "scaleX"

    new-array v4, v5, [F

    fill-array-data v4, :array_4

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v9

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mPauseBtn:Landroid/widget/ImageButton;

    const-string v4, "scaleY"

    new-array v5, v5, [F

    fill-array-data v5, :array_5

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 279
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mPlayPauseBtnAnim:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel$2;-><init>(Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 309
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mPlayPauseBtnAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 290
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mPlayBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 291
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mPlayBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 292
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mPlayPauseBtnAnim:Landroid/animation/AnimatorSet;

    const/4 v1, 0x6

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mPlayBtn:Landroid/widget/ImageButton;

    const-string v3, "alpha"

    new-array v4, v5, [F

    fill-array-data v4, :array_6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mPlayBtn:Landroid/widget/ImageButton;

    const-string v3, "scaleX"

    new-array v4, v5, [F

    fill-array-data v4, :array_7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mPlayBtn:Landroid/widget/ImageButton;

    const-string v3, "scaleY"

    new-array v4, v5, [F

    fill-array-data v4, :array_8

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mPauseBtn:Landroid/widget/ImageButton;

    const-string v3, "alpha"

    new-array v4, v5, [F

    fill-array-data v4, :array_9

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v8

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mPauseBtn:Landroid/widget/ImageButton;

    const-string v3, "scaleX"

    new-array v4, v5, [F

    fill-array-data v4, :array_a

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v9

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mPauseBtn:Landroid/widget/ImageButton;

    const-string v4, "scaleY"

    new-array v5, v5, [F

    fill-array-data v5, :array_b

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 298
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mPlayPauseBtnAnim:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel$3;-><init>(Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/16 :goto_1

    .line 311
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mPauseBtnToBeShowing:Z

    if-eqz v0, :cond_4

    .line 312
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mPauseBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 313
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mPlayBtn:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_0

    .line 315
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mPlayBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 316
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mPauseBtn:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_0

    .line 273
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x3fc00000    # 1.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x3fc00000    # 1.5f
        0x3f800000    # 1.0f
    .end array-data

    .line 292
    :array_6
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_7
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_8
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_9
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_a
    .array-data 4
        0x3f800000    # 1.0f
        0x3fc00000    # 1.5f
    .end array-data

    :array_b
    .array-data 4
        0x3f800000    # 1.0f
        0x3fc00000    # 1.5f
    .end array-data
.end method

.method private offsetButtons()V
    .locals 7

    .prologue
    const v6, 0x7f110170

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 227
    sget-object v1, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "offsetButtons mMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", playing = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mMusicManager:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    invoke-virtual {v3}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->getIsPlaying()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mMode:I

    if-nez v1, :cond_0

    .line 230
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mPlayOrPauseContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 231
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const v1, 0x7f11016f

    invoke-virtual {v0, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 232
    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mButtonMarginLeftInMusicMode:I

    invoke-virtual {v0, v1, v4, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 233
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mPlayOrPauseContainer:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 234
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mNextBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 235
    .restart local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 236
    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mButtonMarginLeftInMusicMode:I

    invoke-virtual {v0, v1, v4, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 237
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mNextBtn:Landroid/widget/ImageButton;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    :goto_0
    return-void

    .line 239
    .end local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mFavouriteBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 240
    .restart local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const v1, 0x7f11016d

    invoke-virtual {v0, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 241
    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mButtonMarginLeftInRadioMode:I

    invoke-virtual {v0, v1, v4, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 242
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mFavouriteBtn:Landroid/widget/ImageButton;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 243
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mPlayOrPauseContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 244
    .restart local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const v1, 0x7f11016e

    invoke-virtual {v0, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 245
    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mButtonMarginLeftInRadioMode:I

    invoke-virtual {v0, v1, v4, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 246
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mPlayOrPauseContainer:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 247
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mNextBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 248
    .restart local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 249
    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mButtonMarginLeftInRadioMode:I

    invoke-virtual {v0, v1, v4, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 250
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mNextBtn:Landroid/widget/ImageButton;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private reLayoutButtons()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 194
    sget-object v0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", playing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mMusicManager:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->getIsPlaying()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 196
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 197
    return-void
.end method

.method private visitButtons()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 200
    sget-object v0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "visitButtons mMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", playing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mMusicManager:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    invoke-virtual {v2}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->getIsPlaying()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mMode:I

    if-nez v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mDeleteBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 203
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mFavouriteBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 204
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mPreBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 205
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mMusicManager:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->getIsPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mPlayBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mPauseBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 224
    :goto_0
    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mPlayBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mPauseBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mPreBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 214
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mDeleteBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mFavouriteBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mMusicManager:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->getIsPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 217
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mPlayBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mPauseBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 220
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mPlayBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 221
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mPauseBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public cancelPlayButtonAnim()V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mPlayPauseBtnAnim:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mPlayPauseBtnAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mPlayPauseBtnAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 258
    :cond_0
    return-void
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mMode:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "button"    # Landroid/view/View;

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->enableClickAgain()Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    sget-object v0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->TAG:Ljava/lang/String;

    const-string v1, "click to frequantly"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 179
    :goto_0
    :pswitch_0
    return-void

    .line 161
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mMusicManager:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->musicDoPrevOrDelete()V

    .line 162
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->buttonClicked(I)V

    goto :goto_0

    .line 165
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mMusicManager:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->musicDoFavorite()V

    .line 166
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->buttonClicked(I)V

    goto :goto_0

    .line 170
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mMusicManager:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->musicPlayOrPause()V

    .line 171
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->buttonClicked(I)V

    goto :goto_0

    .line 174
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mMusicManager:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->musicDoNext()V

    .line 175
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->buttonClicked(I)V

    goto :goto_0

    .line 158
    nop

    :pswitch_data_0
    .packed-switch 0x7f11016d
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 134
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 135
    const v1, 0x7f11016d

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mDeleteBtn:Landroid/widget/ImageButton;

    .line 136
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mDeleteBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    const v1, 0x7f11016e

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mFavouriteBtn:Landroid/widget/ImageButton;

    .line 138
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mFavouriteBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    const v1, 0x7f11016f

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mPreBtn:Landroid/widget/ImageButton;

    .line 140
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mPreBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    const v1, 0x7f110171

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mPlayBtn:Landroid/widget/ImageButton;

    .line 142
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mPlayBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    const v1, 0x7f110172

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mPauseBtn:Landroid/widget/ImageButton;

    .line 144
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mPauseBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    const v1, 0x7f110173

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mNextBtn:Landroid/widget/ImageButton;

    .line 146
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mNextBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    const v1, 0x7f110170

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mPlayOrPauseContainer:Landroid/view/View;

    .line 148
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mMusicManager:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->getIsRadioMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 149
    .local v0, "mode":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->setMode(I)V

    .line 150
    return-void

    .line 148
    .end local v0    # "mode":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeMusicPanel(Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel$ButtonPanelCallback;)V
    .locals 2
    .param p1, "musicPanel"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel$ButtonPanelCallback;

    .prologue
    .line 115
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mMusicPanels:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 116
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mMusicPanels:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mMusicPanels:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 115
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 120
    :cond_1
    return-void
.end method

.method public setButtonsMargin(II)V
    .locals 1
    .param p1, "marginMusicMode"    # I
    .param p2, "marginRadioMode"    # I

    .prologue
    const/4 v0, -0x1

    .line 365
    if-le p1, v0, :cond_0

    .line 366
    iput p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mButtonMarginLeftInMusicMode:I

    .line 368
    :cond_0
    if-le p2, v0, :cond_1

    .line 369
    iput p2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mButtonMarginLeftInRadioMode:I

    .line 371
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->offsetButtons()V

    .line 372
    return-void
.end method

.method public setMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 94
    sget-object v0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", old mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mMode:I

    if-eq v0, p1, :cond_0

    .line 96
    iput p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mMode:I

    .line 97
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->reLayoutButtons()V

    .line 99
    :cond_0
    return-void
.end method

.method public setMusicPanel(Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel$ButtonPanelCallback;)V
    .locals 3
    .param p1, "musicPanel"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel$ButtonPanelCallback;

    .prologue
    .line 106
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mMusicPanels:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 107
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mMusicPanels:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 112
    :goto_1
    return-void

    .line 106
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 111
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mMusicPanels:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public updateFavoriteBtnState()V
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mMusicManager:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->getIsRadioMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mMusicManager:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->getIsFavorite()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 324
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mFavouriteBtn:Landroid/widget/ImageButton;

    const v1, 0x7f020287

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 334
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mIsButtonWhileStyle:Z

    if-eqz v0, :cond_2

    .line 327
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mFavouriteBtn:Landroid/widget/ImageButton;

    const v1, 0x7f020285

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 329
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mFavouriteBtn:Landroid/widget/ImageButton;

    const v1, 0x7f020283

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public updatePlayOrPauseBtnState()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 337
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 338
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 339
    return-void
.end method

.method public updateViewsColor(Z)V
    .locals 2
    .param p1, "isWhite"    # Z

    .prologue
    .line 342
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mIsButtonWhileStyle:Z

    .line 343
    if-eqz p1, :cond_1

    .line 344
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mDeleteBtn:Landroid/widget/ImageButton;

    const v1, 0x7f020298

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 345
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mPreBtn:Landroid/widget/ImageButton;

    const v1, 0x7f0202a2

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 346
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mNextBtn:Landroid/widget/ImageButton;

    const v1, 0x7f02029c

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 347
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mPlayBtn:Landroid/widget/ImageButton;

    const v1, 0x7f0202a0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 348
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mPauseBtn:Landroid/widget/ImageButton;

    const v1, 0x7f02029e

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 349
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mMusicManager:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->getIsFavorite()Z

    move-result v0

    if-nez v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mFavouriteBtn:Landroid/widget/ImageButton;

    const v1, 0x7f020285

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mDeleteBtn:Landroid/widget/ImageButton;

    const v1, 0x7f020299

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 354
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mPreBtn:Landroid/widget/ImageButton;

    const v1, 0x7f0202a3

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 355
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mNextBtn:Landroid/widget/ImageButton;

    const v1, 0x7f02029d

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 356
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mPlayBtn:Landroid/widget/ImageButton;

    const v1, 0x7f0202a1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 357
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mPauseBtn:Landroid/widget/ImageButton;

    const v1, 0x7f02029f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 358
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mMusicManager:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->getIsFavorite()Z

    move-result v0

    if-nez v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->mFavouriteBtn:Landroid/widget/ImageButton;

    const v1, 0x7f020283

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0
.end method
