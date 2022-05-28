.class public Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;
.super Landroid/view/View;
.source "ChargeView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ChargeView"


# instance fields
.field private alpha:I

.field private animator:Landroid/animation/ValueAnimator;

.field private deltaX:F

.field private flash:Landroid/graphics/Bitmap;

.field private isAnimating:Z

.field private level:I

.field private listenerAdapter:Landroid/animation/AnimatorListenerAdapter;

.field private mRightSpace:I

.field private mSkin:Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;

.field private move:Landroid/graphics/Bitmap;

.field private moveX:I

.field private paint:Landroid/graphics/Paint;

.field private progress:Landroid/graphics/Bitmap;

.field private step:F

.field private updateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->isAnimating:Z

    .line 54
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView$1;-><init>(Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->updateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 67
    new-instance v0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView$2;-><init>(Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->listenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->paint:Landroid/graphics/Paint;

    .line 41
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->step:F

    .line 42
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->initAnimator()V

    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->updateSkin()V

    .line 44
    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;
    .param p1, "x1"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->moveX:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;

    .prologue
    .line 21
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->deltaX:F

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;
    .param p1, "x1"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->alpha:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;
    .param p1, "x1"    # Z

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->isAnimating:Z

    return p1
.end method

.method private getSkin()Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/keyguard/xmlParse/KeyguardParseManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/keyguard/xmlParse/KeyguardParseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/keyguard/xmlParse/KeyguardParseManager;->getSkin()Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;

    move-result-object v0

    return-object v0
.end method

.method private initAnimator()V
    .locals 4

    .prologue
    .line 47
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->animator:Landroid/animation/ValueAnimator;

    .line 48
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 49
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->animator:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 50
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->animator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->updateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 51
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->animator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->listenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 52
    return-void

    .line 47
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 152
    const-string v0, "ChargeView"

    invoke-static {v0, p1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method private recycleSkin()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 135
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->flash:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->flash:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->flash:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 137
    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->flash:Landroid/graphics/Bitmap;

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->move:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->move:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->move:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 141
    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->move:Landroid/graphics/Bitmap;

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->progress:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->progress:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 144
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->progress:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 145
    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->progress:Landroid/graphics/Bitmap;

    .line 148
    :cond_2
    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->mSkin:Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;

    .line 149
    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->stopChargeAnimation()V

    .line 158
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->recycleSkin()V

    .line 160
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 161
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    .line 75
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->progress:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->deltaX:F

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->progress:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->mRightSpace:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->flash:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->progress:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 77
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->isAnimating:Z

    if-nez v0, :cond_1

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->move:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->moveX:I

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->move:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->mRightSpace:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->flash:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->move:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 80
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->alpha:I

    if-lez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->alpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 82
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->flash:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->deltaX:F

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->mRightSpace:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public setLevel(I)V
    .locals 4
    .param p1, "level"    # I

    .prologue
    .line 87
    iput p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->level:I

    .line 88
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->step:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->deltaX:F

    .line 89
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->animator:Landroid/animation/ValueAnimator;

    const/high16 v1, 0x447a0000    # 1000.0f

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->deltaX:F

    add-float/2addr v1, v2

    float-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 90
    return-void
.end method

.method public startChargeAnimation()V
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->isAnimating:Z

    if-nez v0, :cond_0

    .line 94
    const-string v0, "start charge animation"

    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->log(Ljava/lang/String;)V

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->isAnimating:Z

    .line 96
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 98
    :cond_0
    return-void
.end method

.method public stopChargeAnimation()V
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->isAnimating:Z

    if-eqz v0, :cond_0

    .line 102
    const-string v0, "stop charge animation"

    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->log(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->invalidate()V

    .line 106
    return-void
.end method

.method public updateSkin()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->mSkin:Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;

    if-nez v0, :cond_0

    .line 114
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->getSkin()Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->mSkin:Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->mSkin:Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->mSkin:Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;

    const-string v1, "charge_flash"

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->flash:Landroid/graphics/Bitmap;

    .line 119
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->mSkin:Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;

    const-string v1, "charge_move"

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->move:Landroid/graphics/Bitmap;

    .line 120
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->mSkin:Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;

    const-string v1, "charge_progress"

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/xmlParse/LockSkin;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->progress:Landroid/graphics/Bitmap;

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->flash:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->move:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->progress:Landroid/graphics/Bitmap;

    if-nez v0, :cond_3

    .line 124
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->recycleSkin()V

    .line 126
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020248

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->flash:Landroid/graphics/Bitmap;

    .line 127
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020249

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->move:Landroid/graphics/Bitmap;

    .line 128
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02024a

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->progress:Landroid/graphics/Bitmap;

    .line 131
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->flash:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/ChargeView;->mRightSpace:I

    .line 132
    return-void
.end method
