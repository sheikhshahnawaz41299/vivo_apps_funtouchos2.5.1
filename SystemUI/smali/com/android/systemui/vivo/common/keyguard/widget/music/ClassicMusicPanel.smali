.class public Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel;
.super Landroid/widget/RelativeLayout;
.source "ClassicMusicPanel.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ShortCutMusicWidget"


# instance fields
.field private final mCallback:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;

.field private mContext:Landroid/content/Context;

.field private mMusicButtonPanel:Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;

.field private mMusicManager:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

.field private mMusicName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel;->mMusicName:Landroid/widget/TextView;

    .line 19
    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel;->mMusicManager:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    .line 94
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel$1;-><init>(Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel;->mCallback:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;

    .line 24
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel;->mContext:Landroid/content/Context;

    .line 25
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel;->mMusicManager:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel;

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel;->setMusicPlayerInfo()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel;

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel;->updateMusicButtonPanel()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel;)Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel;->mMusicButtonPanel:Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;

    return-object v0
.end method

.method private relayoutMusicPanel(Landroid/widget/RelativeLayout;)V
    .locals 3
    .param p1, "parent"    # Landroid/widget/RelativeLayout;

    .prologue
    .line 58
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel;->mMusicButtonPanel:Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 59
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 60
    const/4 v1, 0x3

    const v2, 0x7f110174

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 61
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel;->mMusicButtonPanel:Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;

    invoke-virtual {p1, v1, v0}, Landroid/widget/RelativeLayout;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel;->setMusicPlayerInfo()V

    .line 63
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel;->updateMusicButtonPanel()V

    .line 65
    return-void
.end method

.method private setMusicPlayerInfo()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel;->mMusicButtonPanel:Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel;->mMusicName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel;->mMusicButtonPanel:Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->getMode()I

    move-result v0

    if-nez v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel;->mMusicName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel;->mMusicManager:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->getTrackName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel;->mMusicName:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 76
    :cond_0
    return-void

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel;->mMusicName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel;->mMusicManager:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->getArtistName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateMusicButtonPanel()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel;->mMusicButtonPanel:Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel;->mMusicManager:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->getIsRadioMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel;->mMusicButtonPanel:Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->setMode(I)V

    .line 89
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel;->mMusicButtonPanel:Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->updateFavoriteBtnState()V

    .line 90
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel;->mMusicButtonPanel:Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->updatePlayOrPauseBtnState()V

    .line 92
    :cond_0
    return-void

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel;->mMusicButtonPanel:Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;->setMode(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 34
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 35
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel;->mMusicManager:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel;->mCallback:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->registerCallback(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;)V

    .line 36
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 40
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 41
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel;->mMusicManager:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel;->mCallback:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->removeCallback(Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager$KeyguardMusicManagerCallback;)V

    .line 42
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 46
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 48
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 49
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f04005b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 51
    .local v0, "container":Landroid/widget/RelativeLayout;
    const v2, 0x7f110174

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel;->mMusicName:Landroid/widget/TextView;

    .line 52
    const v2, 0x7f110175

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;

    iput-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel;->mMusicButtonPanel:Lcom/android/systemui/vivo/common/keyguard/widget/music/MusicButtonPanel;

    .line 53
    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel;->addView(Landroid/view/View;)V

    .line 54
    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel;->relayoutMusicPanel(Landroid/widget/RelativeLayout;)V

    .line 55
    return-void
.end method

.method public startService()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/ClassicMusicPanel;->mMusicManager:Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/KeyguardMusicManager;->startMusicService()V

    .line 80
    return-void
.end method
