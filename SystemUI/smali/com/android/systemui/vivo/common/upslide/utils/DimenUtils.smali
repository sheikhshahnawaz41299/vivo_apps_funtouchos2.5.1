.class public Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;
.super Ljava/lang/Object;
.source "DimenUtils.java"


# static fields
.field private static final DIP_BRIGHTNESS_HEIGHT_H:I = 0x33

.field private static final DIP_BRIGHTNESS_HEIGHT_V:I = 0x33

.field private static final DIP_DRAGER_LENGTH_H:I = 0x15

.field private static final DIP_DRAGER_LENGTH_V:I = 0x12

.field private static final DIP_DRAWER_CONTENT_LENGTH_H:I = 0x14f

.field private static final DIP_DRAWER_CONTENT_LENGTH_V:I = 0x16f

.field private static final DIP_DRAWER_LENGTH_H:I = 0x164

.field private static final DIP_DRAWER_LENGTH_V:I = 0x181

.field private static final DIP_MUSIC_HEIGHT_H:I = 0x52

.field private static final DIP_MUSIC_HEIGHT_V:I = 0x5c

.field private static final DIP_RECENTS_HEIGHT_H:I = 0x62

.field private static final DIP_RECENTS_HEIGHT_V:I = 0x5a

.field private static final DIP_SWITCHERS_HEIGHT_H:I = 0x4e

.field private static final DIP_SWITCHERS_HEIGHT_V:I = 0x53

.field private static final DIP_VOLUME_HEIGHT_H:I = 0x33

.field private static final DIP_VOLUME_HEIGHT_V:I = 0x33

.field private static DIVIDER_HEIGHT:I = 0x0

.field private static FIXED_BRIGHTNESS_HEIGHT_H:I = 0x0

.field private static FIXED_BRIGHTNESS_HEIGHT_V:I = 0x0

.field private static FIXED_DRAGER_LENGTH_H:I = 0x0

.field private static FIXED_DRAGER_LENGTH_V:I = 0x0

.field private static FIXED_DRAWER_CONTENT_LENGTH_H:I = 0x0

.field private static FIXED_DRAWER_CONTENT_LENGTH_V:I = 0x0

.field private static FIXED_DRAWER_LENGTH_H:I = 0x0

.field private static FIXED_DRAWER_LENGTH_V:I = 0x0

.field private static FIXED_MUSIC_HEIGHT_H:I = 0x0

.field private static FIXED_MUSIC_HEIGHT_V:I = 0x0

.field private static FIXED_RECENTS_HEIGHT_H:I = 0x0

.field private static FIXED_RECENTS_HEIGHT_V:I = 0x0

.field private static FIXED_SWITCHERS_HEIGHT_H:I = 0x0

.field private static FIXED_SWITCHERS_HEIGHT_V:I = 0x0

.field private static FIXED_VOLUME_HEIGHT_H:I = 0x0

.field private static FIXED_VOLUME_HEIGHT_V:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DimenUtils"

.field private static final UP_SLIDE_FIXED_LENGTH_ENABLE:Z = true

.field private static sInstance:Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;


# instance fields
.field private mBrightnessHeight:I

.field private mContext:Landroid/content/Context;

.field private mDensity:F

.field private mDragerLength:I

.field private mDrawerContentLength:I

.field private mDrawerLength:I

.field private mMusicHeight:I

.field private mNavigationBarLength:I

.field private mRecentsHeight:I

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSwitchersHeight:I

.field private mVolumeHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->sInstance:Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->mContext:Landroid/content/Context;

    .line 69
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getDensity()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->mDensity:F

    .line 70
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/16 v0, 0x438

    :goto_0
    iput v0, p0, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->mScreenWidth:I

    .line 71
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    const/16 v0, 0x780

    :goto_1
    iput v0, p0, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->mScreenHeight:I

    .line 73
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->initFixedDimens()V

    .line 75
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getDrawerLengthV()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->mDrawerLength:I

    .line 76
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getDragerLengthV()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->mDragerLength:I

    .line 77
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getDrawerContentLengthV()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->mDrawerContentLength:I

    .line 78
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getRecentsHeightV()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->mRecentsHeight:I

    .line 79
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getBrightnessHeightV()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->mBrightnessHeight:I

    .line 80
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getMusicHeightV()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->mMusicHeight:I

    .line 81
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getVolumeHeightV()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->mVolumeHeight:I

    .line 82
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getSwitchersHeightV()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->mSwitchersHeight:I

    .line 83
    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_1
.end method

.method private getBrightnessHeightH()I
    .locals 1

    .prologue
    .line 197
    sget v0, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->FIXED_BRIGHTNESS_HEIGHT_H:I

    return v0
.end method

.method private getBrightnessHeightV()I
    .locals 1

    .prologue
    .line 144
    sget v0, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->FIXED_BRIGHTNESS_HEIGHT_V:I

    return v0
.end method

.method private getDragerLengthH()I
    .locals 1

    .prologue
    .line 179
    sget v0, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->FIXED_DRAGER_LENGTH_H:I

    return v0
.end method

.method private getDragerLengthV()I
    .locals 1

    .prologue
    .line 126
    sget v0, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->FIXED_DRAGER_LENGTH_V:I

    return v0
.end method

.method private getDrawerContentLengthH()I
    .locals 2

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getDrawerLengthH()I

    move-result v0

    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getDragerLengthH()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getDrawerContentLengthV()I
    .locals 2

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getDrawerLengthV()I

    move-result v0

    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getDragerLengthV()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getDrawerLengthH()I
    .locals 1

    .prologue
    .line 172
    sget v0, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->FIXED_DRAWER_LENGTH_H:I

    return v0
.end method

.method private getDrawerLengthV()I
    .locals 1

    .prologue
    .line 119
    sget v0, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->FIXED_DRAWER_LENGTH_V:I

    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    sget-object v0, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->sInstance:Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->sInstance:Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;

    .line 64
    :cond_0
    sget-object v0, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->sInstance:Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;

    return-object v0
.end method

.method private getMusicHeightH()I
    .locals 1

    .prologue
    .line 204
    sget v0, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->FIXED_MUSIC_HEIGHT_H:I

    return v0
.end method

.method private getMusicHeightV()I
    .locals 1

    .prologue
    .line 151
    sget v0, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->FIXED_MUSIC_HEIGHT_V:I

    return v0
.end method

.method private getRecentsHeightH()I
    .locals 1

    .prologue
    .line 190
    sget v0, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->FIXED_RECENTS_HEIGHT_H:I

    return v0
.end method

.method private getRecentsHeightV()I
    .locals 1

    .prologue
    .line 137
    sget v0, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->FIXED_RECENTS_HEIGHT_V:I

    return v0
.end method

.method private getSwitchersHeightH()I
    .locals 1

    .prologue
    .line 218
    sget v0, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->FIXED_SWITCHERS_HEIGHT_H:I

    return v0
.end method

.method private getSwitchersHeightV()I
    .locals 1

    .prologue
    .line 165
    sget v0, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->FIXED_SWITCHERS_HEIGHT_V:I

    return v0
.end method

.method private getVolumeHeightH()I
    .locals 1

    .prologue
    .line 211
    sget v0, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->FIXED_VOLUME_HEIGHT_H:I

    return v0
.end method

.method private getVolumeHeightV()I
    .locals 1

    .prologue
    .line 158
    sget v0, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->FIXED_VOLUME_HEIGHT_V:I

    return v0
.end method

.method private initFixedDimens()V
    .locals 3

    .prologue
    .line 86
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 88
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0f0168

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->FIXED_DRAWER_LENGTH_V:I

    .line 89
    const v1, 0x7f0f0169

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->FIXED_DRAGER_LENGTH_V:I

    .line 90
    sget v1, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->FIXED_DRAWER_LENGTH_V:I

    sget v2, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->FIXED_DRAGER_LENGTH_V:I

    sub-int/2addr v1, v2

    sput v1, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->FIXED_DRAWER_CONTENT_LENGTH_V:I

    .line 91
    const v1, 0x7f0f016a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->FIXED_RECENTS_HEIGHT_V:I

    .line 92
    const v1, 0x7f0f016b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->FIXED_BRIGHTNESS_HEIGHT_V:I

    .line 93
    const v1, 0x7f0f016c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->FIXED_MUSIC_HEIGHT_V:I

    .line 94
    const v1, 0x7f0f016d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->FIXED_VOLUME_HEIGHT_V:I

    .line 95
    const v1, 0x7f0f016e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->FIXED_SWITCHERS_HEIGHT_V:I

    .line 97
    const v1, 0x7f0f016f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->FIXED_DRAWER_LENGTH_H:I

    .line 98
    const v1, 0x7f0f0170

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->FIXED_DRAGER_LENGTH_H:I

    .line 99
    sget v1, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->FIXED_DRAWER_LENGTH_H:I

    sget v2, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->FIXED_DRAGER_LENGTH_H:I

    sub-int/2addr v1, v2

    sput v1, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->FIXED_DRAWER_CONTENT_LENGTH_H:I

    .line 100
    const v1, 0x7f0f0171

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->FIXED_RECENTS_HEIGHT_H:I

    .line 101
    const v1, 0x7f0f0172

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->FIXED_BRIGHTNESS_HEIGHT_H:I

    .line 102
    const v1, 0x7f0f0173

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->FIXED_MUSIC_HEIGHT_H:I

    .line 103
    const v1, 0x7f0f0174

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->FIXED_VOLUME_HEIGHT_H:I

    .line 104
    const v1, 0x7f0f0175

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->FIXED_SWITCHERS_HEIGHT_H:I

    .line 106
    const v1, 0x7f0f017a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->DIVIDER_HEIGHT:I

    .line 107
    const v1, 0x7f0f0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->mNavigationBarLength:I

    .line 108
    return-void
.end method


# virtual methods
.method public getBrightnessHeight()I
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->mBrightnessHeight:I

    return v0
.end method

.method public getDensity()F
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 112
    const/high16 v0, 0x40400000    # 3.0f

    .line 114
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    goto :goto_0
.end method

.method public getDividerHeight()I
    .locals 1

    .prologue
    .line 264
    sget v0, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->DIVIDER_HEIGHT:I

    return v0
.end method

.method public getDragerLength()I
    .locals 1

    .prologue
    .line 236
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->mDragerLength:I

    return v0
.end method

.method public getDrawerContentLength()I
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->mDrawerContentLength:I

    return v0
.end method

.method public getDrawerLength()I
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->mDrawerLength:I

    return v0
.end method

.method public getMusicHeight()I
    .locals 1

    .prologue
    .line 252
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->mMusicHeight:I

    return v0
.end method

.method public getNavigationBarLength()I
    .locals 1

    .prologue
    .line 268
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->mNavigationBarLength:I

    return v0
.end method

.method public getRecentsHeight()I
    .locals 1

    .prologue
    .line 244
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->mRecentsHeight:I

    return v0
.end method

.method public getScreenHeight()I
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->mScreenHeight:I

    return v0
.end method

.method public getScreenWidth()I
    .locals 1

    .prologue
    .line 224
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->mScreenWidth:I

    return v0
.end method

.method public getStatusBarHeight()I
    .locals 5

    .prologue
    .line 272
    const/16 v1, 0x45

    .line 274
    .local v1, "height":I
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050011

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 279
    :goto_0
    return v1

    .line 276
    :catch_0
    move-exception v0

    .line 277
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "DimenUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get status bar height error! e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getSwitchersHeight()I
    .locals 1

    .prologue
    .line 260
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->mSwitchersHeight:I

    return v0
.end method

.method public getVolumeHeight()I
    .locals 1

    .prologue
    .line 256
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->mVolumeHeight:I

    return v0
.end method

.method public isDensityLowLevel()Z
    .locals 1

    .prologue
    .line 317
    const/4 v0, 0x1

    return v0
.end method

.method public onRotationChanged(I)V
    .locals 4
    .param p1, "newRotation"    # I

    .prologue
    .line 283
    const-string v1, "DimenUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRotationChanged, newRotation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    if-nez p1, :cond_1

    .line 285
    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->mScreenWidth:I

    iget v2, p0, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->mScreenHeight:I

    if-le v1, v2, :cond_0

    .line 286
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->mScreenHeight:I

    .line 287
    .local v0, "temp":I
    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->mScreenWidth:I

    iput v1, p0, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->mScreenHeight:I

    .line 288
    iput v0, p0, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->mScreenWidth:I

    .line 290
    .end local v0    # "temp":I
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getDragerLengthV()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->mDragerLength:I

    .line 291
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getDrawerLengthV()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->mDrawerLength:I

    .line 292
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getDrawerContentLengthV()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->mDrawerContentLength:I

    .line 293
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getRecentsHeightV()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->mRecentsHeight:I

    .line 294
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getBrightnessHeightV()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->mBrightnessHeight:I

    .line 295
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getMusicHeightV()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->mMusicHeight:I

    .line 296
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getVolumeHeightV()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->mVolumeHeight:I

    .line 297
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getSwitchersHeightV()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->mSwitchersHeight:I

    .line 313
    :goto_0
    return-void

    .line 299
    :cond_1
    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->mScreenHeight:I

    iget v2, p0, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->mScreenWidth:I

    if-le v1, v2, :cond_2

    .line 300
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->mScreenHeight:I

    .line 301
    .restart local v0    # "temp":I
    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->mScreenWidth:I

    iput v1, p0, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->mScreenHeight:I

    .line 302
    iput v0, p0, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->mScreenWidth:I

    .line 304
    .end local v0    # "temp":I
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getDragerLengthH()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->mDragerLength:I

    .line 305
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getDrawerLengthH()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->mDrawerLength:I

    .line 306
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getDrawerContentLengthH()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->mDrawerContentLength:I

    .line 307
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getRecentsHeightH()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->mRecentsHeight:I

    .line 308
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getBrightnessHeightH()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->mBrightnessHeight:I

    .line 309
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getMusicHeightH()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->mMusicHeight:I

    .line 310
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getVolumeHeightH()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->mVolumeHeight:I

    .line 311
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getSwitchersHeightH()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->mSwitchersHeight:I

    goto :goto_0
.end method
