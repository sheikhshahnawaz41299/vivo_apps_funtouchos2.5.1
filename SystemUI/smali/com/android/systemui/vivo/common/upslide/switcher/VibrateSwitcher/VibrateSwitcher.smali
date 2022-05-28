.class public Lcom/android/systemui/vivo/common/upslide/switcher/VibrateSwitcher/VibrateSwitcher;
.super Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;
.source "VibrateSwitcher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VibrateSwitcher"


# instance fields
.field private mRingerMode:I

.field private mVibrateMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/widget/TextView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nameId"    # I
    .param p3, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/vivo/common/upslide/switcher/Switcher;-><init>(Landroid/content/Context;ILandroid/widget/TextView;)V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/VibrateSwitcher/VibrateSwitcher;->mVibrateMode:I

    .line 20
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/VibrateSwitcher/VibrateSwitcher;->mRingerMode:I

    .line 24
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/vivo/common/upslide/switcher/VibrateSwitcher/VibrateSwitcher;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/VibrateSwitcher/VibrateSwitcher;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/VibrateSwitcher/VibrateSwitcher;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/vivo/common/upslide/switcher/VibrateSwitcher/VibrateSwitcher;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/VibrateSwitcher/VibrateSwitcher;

    .prologue
    .line 16
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/VibrateSwitcher/VibrateSwitcher;->mRingerMode:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/vivo/common/upslide/switcher/VibrateSwitcher/VibrateSwitcher;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/VibrateSwitcher/VibrateSwitcher;

    .prologue
    .line 16
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/VibrateSwitcher/VibrateSwitcher;->mVibrateMode:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/vivo/common/upslide/switcher/VibrateSwitcher/VibrateSwitcher;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/switcher/VibrateSwitcher/VibrateSwitcher;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/VibrateSwitcher/VibrateSwitcher;->vibrate()V

    return-void
.end method

.method private updateVibrateButton()V
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v9, 0x0

    const/4 v4, 0x0

    .line 103
    iget-object v5, p0, Lcom/android/systemui/vivo/common/upslide/switcher/VibrateSwitcher/VibrateSwitcher;->mContext:Landroid/content/Context;

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 104
    .local v1, "mAudioManager":Landroid/media/AudioManager;
    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    .line 105
    .local v3, "ringerMode":I
    if-ne v3, v2, :cond_1

    .line 106
    .local v2, "on":Z
    :goto_0
    const-string v5, "VibrateSwitcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "update Switcher_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/vivo/common/upslide/switcher/VibrateSwitcher/VibrateSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget v8, p0, Lcom/android/systemui/vivo/common/upslide/switcher/VibrateSwitcher/VibrateSwitcher;->mName:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", on is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/switcher/VibrateSwitcher/VibrateSwitcher;->mTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    iget v5, p0, Lcom/android/systemui/vivo/common/upslide/switcher/VibrateSwitcher/VibrateSwitcher;->mTextColorLight:I

    :goto_1
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_3

    .line 111
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/VibrateSwitcher/VibrateSwitcher;->mIconLight:Landroid/graphics/drawable/Drawable;

    .line 115
    :goto_2
    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {v0, v4, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 117
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/switcher/VibrateSwitcher/VibrateSwitcher;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v9, v0, v9, v9}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 119
    :cond_0
    return-void

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v2    # "on":Z
    :cond_1
    move v2, v4

    .line 105
    goto :goto_0

    .line 108
    .restart local v2    # "on":Z
    :cond_2
    iget v5, p0, Lcom/android/systemui/vivo/common/upslide/switcher/VibrateSwitcher/VibrateSwitcher;->mTextColorDark:I

    goto :goto_1

    .line 113
    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/VibrateSwitcher/VibrateSwitcher;->mIconDark:Landroid/graphics/drawable/Drawable;

    goto :goto_2
.end method

.method private vibrate()V
    .locals 4

    .prologue
    .line 122
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/VibrateSwitcher/VibrateSwitcher;->mContext:Landroid/content/Context;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 124
    .local v0, "vib":Landroid/os/Vibrator;
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 125
    return-void
.end method


# virtual methods
.method public getSwitcherIcon()V
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/VibrateSwitcher/VibrateSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020608

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/VibrateSwitcher/VibrateSwitcher;->mIconLight:Landroid/graphics/drawable/Drawable;

    .line 36
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/VibrateSwitcher/VibrateSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020607

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/VibrateSwitcher/VibrateSwitcher;->mIconDark:Landroid/graphics/drawable/Drawable;

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/VibrateSwitcher/VibrateSwitcher;->mIconIntermediate:Landroid/graphics/drawable/Drawable;

    .line 38
    return-void
.end method

.method public prepare()V
    .locals 0

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/VibrateSwitcher/VibrateSwitcher;->getSwitcherIcon()V

    .line 50
    return-void
.end method

.method public refreshDisplay()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/VibrateSwitcher/VibrateSwitcher;->updateVibrateButton()V

    .line 30
    return-void
.end method

.method public setOnClickListener()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/switcher/VibrateSwitcher/VibrateSwitcher$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/upslide/switcher/VibrateSwitcher/VibrateSwitcher$1;-><init>(Lcom/android/systemui/vivo/common/upslide/switcher/VibrateSwitcher/VibrateSwitcher;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/switcher/VibrateSwitcher/VibrateSwitcher;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 80
    return-void
.end method

.method public setOnLongClickListener()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public turnToIntermediateState()V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method public vibrateChanged(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 90
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/switcher/VibrateSwitcher/VibrateSwitcher;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 91
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 92
    .local v1, "ringerMode":I
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v2

    .line 94
    .local v2, "vibrateMode":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    .line 95
    iput v1, p0, Lcom/android/systemui/vivo/common/upslide/switcher/VibrateSwitcher/VibrateSwitcher;->mRingerMode:I

    .line 96
    iput v2, p0, Lcom/android/systemui/vivo/common/upslide/switcher/VibrateSwitcher/VibrateSwitcher;->mVibrateMode:I

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/switcher/VibrateSwitcher/VibrateSwitcher;->refreshDisplay()V

    .line 99
    return-void
.end method
