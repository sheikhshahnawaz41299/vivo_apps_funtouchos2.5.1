.class public Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;
.super Landroid/view/View;
.source "SlideBaseView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView$ColorChangeType;
    }
.end annotation


# static fields
.field private static final mChangeColorDistance:I = -0xfa

.field private static final mMaxAlpha:I = 0xff

.field private static final mStepAlpha:I = 0xa


# instance fields
.field private DEBUG:Z

.field private TAG:Ljava/lang/String;

.field protected alpha:I

.field protected bg:Landroid/graphics/Bitmap;

.field private color:I

.field protected density:F

.field private downX:F

.field protected isOnTouch:Z

.field private mCallback:Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;

.field protected mChargeAlpha:I

.field protected mCharged:Z

.field protected mColorChangeAniBg:Landroid/graphics/Bitmap;

.field private mColorChanging:Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView$ColorChangeType;

.field private mNotifcationState:Z

.field private mTouchSlop:I

.field protected moveDis:F

.field protected paint:Landroid/graphics/Paint;

.field protected resources:Landroid/content/res/Resources;

.field protected screenWidth:I

.field private unlockDistance:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const-string v0, "SlideBaseView"

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->TAG:Ljava/lang/String;

    .line 24
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->DEBUG:Z

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->bg:Landroid/graphics/Bitmap;

    .line 30
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->mCharged:Z

    .line 35
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->isOnTouch:Z

    .line 39
    sget-object v0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView$ColorChangeType;->INVALID:Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView$ColorChangeType;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->mColorChanging:Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView$ColorChangeType;

    .line 54
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->resources:Landroid/content/res/Resources;

    .line 55
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->resources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->density:F

    .line 56
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->mTouchSlop:I

    .line 57
    sget-object v0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView$ColorChangeType;->INVALID:Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView$ColorChangeType;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->mColorChanging:Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView$ColorChangeType;

    .line 58
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->paint:Landroid/graphics/Paint;

    .line 59
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 60
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x41600000    # 14.0f

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->density:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 61
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->resources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->screenWidth:I

    .line 62
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->density:F

    const/high16 v1, 0x40400000    # 3.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 63
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->screenWidth:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->unlockDistance:I

    .line 67
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->updateSkin()V

    .line 68
    return-void

    .line 65
    :cond_0
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->screenWidth:I

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->unlockDistance:I

    goto :goto_0
.end method

.method private drawColorChangeAniBg(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 88
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->mColorChanging:Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView$ColorChangeType;

    sget-object v2, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView$ColorChangeType;->INVALID:Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView$ColorChangeType;

    if-eq v0, v2, :cond_1

    .line 89
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->mColorChangeAniBg:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->mColorChanging:Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView$ColorChangeType;

    sget-object v2, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView$ColorChangeType;->ALPHASUB:Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView$ColorChangeType;

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->setPaintAlpha(Z)V

    .line 91
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->mColorChangeAniBg:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->mColorChanging:Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView$ColorChangeType;

    sget-object v2, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView$ColorChangeType;->ALPHASUB:Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView$ColorChangeType;

    if-ne v0, v2, :cond_3

    .line 95
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->mChargeAlpha:I

    add-int/lit8 v0, v0, -0xa

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->mChargeAlpha:I

    .line 96
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->mChargeAlpha:I

    if-gtz v0, :cond_1

    .line 97
    iput v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->mChargeAlpha:I

    .line 98
    sget-object v0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView$ColorChangeType;->INVALID:Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView$ColorChangeType;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->mColorChanging:Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView$ColorChangeType;

    .line 108
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v1

    .line 90
    goto :goto_0

    .line 100
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->mColorChanging:Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView$ColorChangeType;

    sget-object v1, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView$ColorChangeType;->ALPHAADD:Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView$ColorChangeType;

    if-ne v0, v1, :cond_1

    .line 101
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->mChargeAlpha:I

    add-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->mChargeAlpha:I

    .line 102
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->mChargeAlpha:I

    const/16 v1, 0xff

    if-lt v0, v1, :cond_1

    .line 103
    const/16 v0, 0xf5

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->mChargeAlpha:I

    .line 104
    sget-object v0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView$ColorChangeType;->ALPHASUB:Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView$ColorChangeType;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->mColorChanging:Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView$ColorChangeType;

    goto :goto_1
.end method

.method private setPaintAlpha(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->mColorChanging:Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView$ColorChangeType;

    sget-object v1, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView$ColorChangeType;->INVALID:Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView$ColorChangeType;

    if-eq v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->mChargeAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->paint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0
.end method

.method private touchUp()V
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->moveDis:F

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->isOnTouch:Z

    .line 193
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->invalidate()V

    .line 194
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->mCallback:Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->touchUp()V

    .line 195
    return-void
.end method

.method private unlock()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->mCallback:Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->dismiss()V

    .line 199
    return-void
.end method

.method private userActivity()V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->mCallback:Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->mCallback:Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->userActivity()V

    .line 235
    :cond_0
    return-void
.end method


# virtual methods
.method protected changeColorCount()V
    .locals 0

    .prologue
    .line 219
    return-void
.end method

.method protected getBg()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x0

    return-object v0
.end method

.method public getColorChanging()Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView$ColorChangeType;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->mColorChanging:Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView$ColorChangeType;

    return-object v0
.end method

.method protected getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->recycleBitmap()V

    .line 113
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 114
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 117
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->bg:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 143
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->mColorChanging:Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView$ColorChangeType;

    sget-object v4, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView$ColorChangeType;->ALPHAADD:Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView$ColorChangeType;

    if-ne v0, v4, :cond_2

    move v0, v2

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->setPaintAlpha(Z)V

    .line 121
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->mCharged:Z

    if-eqz v0, :cond_4

    .line 122
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->bg:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 124
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->bg:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->color:I

    .line 125
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->paint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->color:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 126
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->mColorChanging:Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView$ColorChangeType;

    sget-object v4, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView$ColorChangeType;->ALPHAADD:Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView$ColorChangeType;

    if-ne v0, v4, :cond_3

    :goto_2
    invoke-direct {p0, v2}, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->setPaintAlpha(Z)V

    .line 127
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 142
    :cond_1
    :goto_3
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->drawColorChangeAniBg(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_2
    move v0, v3

    .line 120
    goto :goto_1

    :cond_3
    move v2, v3

    .line 126
    goto :goto_2

    .line 129
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->bg:Landroid/graphics/Bitmap;

    iget v4, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->moveDis:F

    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 130
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->moveDis:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->bg:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3, v3}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->color:I

    .line 132
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->paint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->color:I

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 133
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->mColorChanging:Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView$ColorChangeType;

    sget-object v4, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView$ColorChangeType;->ALPHAADD:Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView$ColorChangeType;

    if-ne v0, v4, :cond_5

    :goto_4
    invoke-direct {p0, v2}, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->setPaintAlpha(Z)V

    .line 134
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    const/16 v2, 0xff

    if-ne v0, v2, :cond_6

    .line 135
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->moveDis:F

    const/high16 v2, 0x3f800000    # 1.0f

    add-float v3, v0, v2

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_5
    move v2, v3

    .line 133
    goto :goto_4

    .line 137
    :cond_6
    iget v3, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->moveDis:F

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 146
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->userActivity()V

    .line 148
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    packed-switch v1, :pswitch_data_0

    .line 186
    :cond_0
    :goto_0
    :pswitch_0
    return v3

    .line 150
    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->TAG:Ljava/lang/String;

    const-string v2, "ACTION_DOWN"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iput-boolean v3, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->isOnTouch:Z

    .line 152
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->downX:F

    .line 153
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->mCallback:Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->touchDown()V

    goto :goto_0

    .line 156
    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->TAG:Ljava/lang/String;

    const-string v2, "ACTION_POINTER_DOWN"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->isOnTouch:Z

    if-eqz v1, :cond_0

    .line 158
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->touchUp()V

    goto :goto_0

    .line 161
    :pswitch_3
    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->isOnTouch:Z

    if-eqz v1, :cond_0

    .line 162
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->downX:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->moveDis:F

    .line 163
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->mCallback:Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;->getNotificationView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->moveDis:F

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->mTouchSlop:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 167
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->invalidate()V

    goto :goto_0

    .line 171
    :pswitch_4
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->TAG:Ljava/lang/String;

    const-string v2, "ACTION_UP"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->isOnTouch:Z

    if-eqz v1, :cond_0

    .line 173
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->downX:F

    sub-float v0, v1, v2

    .line 174
    .local v0, "dis":F
    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->unlockDistance:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 175
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->unlock()V

    goto :goto_0

    .line 177
    :cond_2
    const/high16 v1, -0x3c860000    # -250.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_3

    .line 178
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->changeColorCount()V

    .line 180
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->touchUp()V

    goto/16 :goto_0

    .line 148
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected recycleBitmap()V
    .locals 0

    .prologue
    .line 215
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->moveDis:F

    .line 227
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->isOnTouch:Z

    .line 228
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->invalidate()V

    .line 229
    return-void
.end method

.method public setCallback(Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->mCallback:Lcom/android/systemui/vivo/common/keyguard/classic/KeyguardClassical;

    .line 223
    return-void
.end method

.method public setColorChanging(Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView$ColorChangeType;)V
    .locals 1
    .param p1, "value"    # Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView$ColorChangeType;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->mColorChanging:Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView$ColorChangeType;

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->mChargeAlpha:I

    .line 73
    return-void
.end method

.method public updateSkin()V
    .locals 1

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->getBg()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/classic/SlideBaseView;->bg:Landroid/graphics/Bitmap;

    .line 207
    return-void
.end method
