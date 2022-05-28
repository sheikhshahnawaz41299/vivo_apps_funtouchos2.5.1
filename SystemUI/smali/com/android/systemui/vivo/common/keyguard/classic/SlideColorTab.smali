.class public Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;
.super Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;
.source "SlideColorTab.java"


# static fields
.field public static mLockColorCount:I

.field private static final mLockIconBg:[I


# instance fields
.field private arrawStep:I

.field private arrow:Landroid/graphics/Bitmap;

.field private chargeBg:Landroid/graphics/Bitmap;

.field private chargeMove:Landroid/graphics/Bitmap;

.field private currentPos:I

.field private endPos:I

.field private isStopArrow:Z

.field private isStopCharging:Z

.field private level:I

.field private levelStep:I

.field private mDisableAnim:Z

.field private moveStep:F

.field private moveX:F

.field private normalBg:[Landroid/graphics/Bitmap;

.field private runnable:Ljava/lang/Runnable;

.field private startPos:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput v0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->mLockColorCount:I

    .line 36
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->mLockIconBg:[I

    return-void

    :array_0
    .array-data 4
        0x7f020256
        0x7f020257
        0x7f020258
        0x7f020259
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/high16 v1, 0x40a00000    # 5.0f

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->isStopCharging:Z

    .line 139
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab$1;-><init>(Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->runnable:Ljava/lang/Runnable;

    .line 44
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->startPos:I

    .line 45
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->screenWidth:I

    div-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->endPos:I

    .line 46
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->startPos:I

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->currentPos:I

    .line 47
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->arrawStep:I

    .line 48
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->screenWidth:I

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->levelStep:I

    .line 49
    const/high16 v0, 0x40c00000    # 6.0f

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->moveStep:F

    .line 50
    invoke-static {}, Lcom/android/systemui/vivo/common/keyguard/utils/KeyguardUtils;->isCmccEntry()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->mDisableAnim:Z

    .line 51
    return-void
.end method


# virtual methods
.method protected changeColorCount()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 170
    sget v0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->mLockColorCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->mLockColorCount:I

    .line 171
    sget v0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->mLockColorCount:I

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->normalBg:[Landroid/graphics/Bitmap;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 172
    sput v2, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->mLockColorCount:I

    .line 175
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->normalBg:[Landroid/graphics/Bitmap;

    sget v1, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->mLockColorCount:I

    aget-object v0, v0, v1

    if-nez v0, :cond_1

    .line 176
    sget v0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->mLockColorCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->mLockColorCount:I

    .line 177
    sget v0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->mLockColorCount:I

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->normalBg:[Landroid/graphics/Bitmap;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 178
    sput v2, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->mLockColorCount:I

    goto :goto_0

    .line 181
    :cond_1
    return-void
.end method

.method protected getBg()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 78
    const/4 v2, 0x4

    new-array v2, v2, [Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->normalBg:[Landroid/graphics/Bitmap;

    .line 79
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 80
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f020250

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->chargeBg:Landroid/graphics/Bitmap;

    .line 82
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->normalBg:[Landroid/graphics/Bitmap;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 83
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->normalBg:[Landroid/graphics/Bitmap;

    sget-object v3, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->mLockIconBg:[I

    aget v3, v3, v0

    invoke-static {v1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v2, v0

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_0
    const v2, 0x7f02024b

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->arrow:Landroid/graphics/Bitmap;

    .line 86
    const v2, 0x7f020251

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->chargeMove:Landroid/graphics/Bitmap;

    .line 88
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->normalBg:[Landroid/graphics/Bitmap;

    sget v3, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->mLockColorCount:I

    aget-object v2, v2, v3

    if-nez v2, :cond_2

    .line 89
    sget v2, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->mLockColorCount:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->mLockColorCount:I

    .line 90
    sget v2, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->mLockColorCount:I

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->normalBg:[Landroid/graphics/Bitmap;

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 91
    const/4 v2, 0x0

    sput v2, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->mLockColorCount:I

    goto :goto_1

    .line 94
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->normalBg:[Landroid/graphics/Bitmap;

    sget v3, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->mLockColorCount:I

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->bg:Landroid/graphics/Bitmap;

    .line 95
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->bg:Landroid/graphics/Bitmap;

    return-object v2
.end method

.method public handleCharge()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 210
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->mCharged:Z

    .line 211
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->moveDis:F

    .line 212
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->isStopCharging:Z

    .line 213
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x0

    const/high16 v0, 0x437f0000    # 255.0f

    const/4 v4, 0x0

    .line 99
    invoke-super {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->onDraw(Landroid/graphics/Canvas;)V

    .line 100
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->bg:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->isOnTouch:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->moveDis:F

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->screenWidth:I

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->startPos:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    .line 105
    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->moveDis:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_2

    :goto_1
    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->alpha:I

    .line 107
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->alpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 108
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->arrow:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->startPos:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->moveDis:F

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->arrow:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 105
    :cond_2
    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->screenWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->moveDis:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->startPos:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->screenWidth:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->startPos:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_1

    .line 109
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->isOnTouch:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->isStopArrow:Z

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->arrow:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->startPos:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->arrow:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 111
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->mDisableAnim:Z

    if-nez v0, :cond_4

    invoke-static {}, Lcom/android/systemui/vivo/common/keyguard/utils/KeyguardUtils;->isPowerSaveMode()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->level:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 115
    :cond_5
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->currentPos:I

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->arrawStep:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->endPos:I

    if-lt v0, v1, :cond_6

    .line 116
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->startPos:I

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->currentPos:I

    .line 117
    :cond_6
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->endPos:I

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->currentPos:I

    sub-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0xff

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->endPos:I

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->startPos:I

    sub-int/2addr v1, v2

    div-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->alpha:I

    .line 118
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->alpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 119
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->arrow:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->currentPos:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->arrow:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 121
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->isStopCharging:Z

    if-nez v0, :cond_9

    .line 122
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->getColorChanging()Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView$ColorChangeType;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView$ColorChangeType;->INVALID:Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView$ColorChangeType;

    if-ne v0, v1, :cond_7

    .line 123
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->chargeMove:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->moveX:F

    invoke-virtual {p1, v0, v1, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 124
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->moveX:F

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->moveStep:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->moveX:F

    .line 125
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->moveX:F

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->screenWidth:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_8

    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->moveDis:F

    :goto_2
    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->moveX:F

    .line 127
    :cond_7
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->currentPos:I

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->arrawStep:I

    div-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->currentPos:I

    .line 128
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->runnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 129
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->runnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1e

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 125
    :cond_8
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->moveX:F

    goto :goto_2

    .line 131
    :cond_9
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->currentPos:I

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->arrawStep:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->currentPos:I

    .line 132
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->runnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 133
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->runnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method protected recycleBitmap()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 54
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->chargeBg:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->chargeBg:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->chargeBg:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 56
    iput-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->chargeBg:Landroid/graphics/Bitmap;

    .line 59
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->normalBg:[Landroid/graphics/Bitmap;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 60
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->normalBg:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->normalBg:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 61
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->normalBg:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 62
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->normalBg:[Landroid/graphics/Bitmap;

    aput-object v2, v1, v0

    .line 59
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->arrow:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->arrow:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 67
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->arrow:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 68
    iput-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->arrow:Landroid/graphics/Bitmap;

    .line 71
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->chargeMove:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->chargeMove:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_4

    .line 72
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->chargeMove:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 73
    iput-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->chargeMove:Landroid/graphics/Bitmap;

    .line 75
    :cond_4
    return-void
.end method

.method public setBg(Z)V
    .locals 2
    .param p1, "pluggedIn"    # Z

    .prologue
    .line 161
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->chargeBg:Landroid/graphics/Bitmap;

    :goto_0
    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->bg:Landroid/graphics/Bitmap;

    .line 162
    if-nez p1, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->stopColorChangeAni()V

    .line 166
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->invalidate()V

    .line 167
    return-void

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->normalBg:[Landroid/graphics/Bitmap;

    sget v1, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->mLockColorCount:I

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public setLevel(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 156
    iput p1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->level:I

    .line 157
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->invalidate()V

    .line 158
    return-void
.end method

.method public startArrowAnim()V
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->isStopArrow:Z

    .line 152
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->invalidate()V

    .line 153
    return-void
.end method

.method public startChargeAnim()V
    .locals 2

    .prologue
    .line 193
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->level:I

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->levelStep:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->moveDis:F

    .line 194
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->isStopCharging:Z

    if-eqz v0, :cond_1

    .line 195
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->isStopCharging:Z

    .line 196
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->moveDis:F

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->moveX:F

    .line 197
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->invalidate()V

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->moveX:F

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->moveDis:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 199
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->moveDis:F

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->moveX:F

    .line 200
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->invalidate()V

    goto :goto_0
.end method

.method public startColorChangeAni()V
    .locals 2

    .prologue
    .line 184
    sget-object v0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView$ColorChangeType;->ALPHAADD:Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView$ColorChangeType;

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->setColorChanging(Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView$ColorChangeType;)V

    .line 185
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->normalBg:[Landroid/graphics/Bitmap;

    sget v1, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->mLockColorCount:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->mColorChangeAniBg:Landroid/graphics/Bitmap;

    .line 186
    return-void
.end method

.method public stopArrowAnim()V
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->isStopArrow:Z

    .line 147
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->startPos:I

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->currentPos:I

    .line 148
    return-void
.end method

.method public stopChargeAnim()V
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->moveDis:F

    .line 206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->isStopCharging:Z

    .line 207
    return-void
.end method

.method public stopColorChangeAni()V
    .locals 1

    .prologue
    .line 189
    sget-object v0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView$ColorChangeType;->INVALID:Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView$ColorChangeType;

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->setColorChanging(Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView$ColorChangeType;)V

    .line 190
    return-void
.end method

.method public updateChargeState(Z)V
    .locals 1
    .param p1, "isPlugged"    # Z

    .prologue
    .line 216
    if-nez p1, :cond_0

    .line 217
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideColorTab;->mCharged:Z

    .line 219
    :cond_0
    return-void
.end method
