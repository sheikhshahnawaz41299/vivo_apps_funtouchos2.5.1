.class public Lcom/android/systemui/vivo/common/upslide/ui/VivoRotateDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "VivoRotateDrawable.java"


# static fields
.field private static final DELTA_DEGREES:F = 15.0f


# instance fields
.field private mAnimator:Landroid/animation/TimeAnimator;

.field private mBitmap:Landroid/graphics/Bitmap;

.field protected mFactor:Ljava/lang/Float;

.field private mPaint:Landroid/graphics/Paint;

.field private mRadius:F

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 23
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/VivoRotateDrawable;->mFactor:Ljava/lang/Float;

    .line 27
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/ui/VivoRotateDrawable;->mBitmap:Landroid/graphics/Bitmap;

    .line 28
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 30
    .local v0, "bitmapShader":Landroid/graphics/BitmapShader;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/VivoRotateDrawable;->mPaint:Landroid/graphics/Paint;

    .line 31
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/VivoRotateDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 32
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/VivoRotateDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 33
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/VivoRotateDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/ui/VivoRotateDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/VivoRotateDrawable;->mWidth:I

    .line 34
    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/VivoRotateDrawable;->mWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/VivoRotateDrawable;->mRadius:F

    .line 35
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/VivoRotateDrawable;->mFactor:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/VivoRotateDrawable;->mRadius:F

    iget v2, p0, Lcom/android/systemui/vivo/common/upslide/ui/VivoRotateDrawable;->mRadius:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 41
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/VivoRotateDrawable;->mRadius:F

    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/VivoRotateDrawable;->mRadius:F

    iget v2, p0, Lcom/android/systemui/vivo/common/upslide/ui/VivoRotateDrawable;->mRadius:F

    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/ui/VivoRotateDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 42
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/VivoRotateDrawable;->mWidth:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/VivoRotateDrawable;->mWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 102
    const/4 v0, -0x3

    return v0
.end method

.method public isAnimationRunning()Z
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/VivoRotateDrawable;->mAnimator:Landroid/animation/TimeAnimator;

    if-nez v0, :cond_0

    .line 70
    const/4 v0, 0x0

    .line 72
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/VivoRotateDrawable;->mAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->isStarted()Z

    move-result v0

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/VivoRotateDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 91
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/VivoRotateDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 97
    return-void
.end method

.method public startAnimation()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Landroid/animation/TimeAnimator;

    invoke-direct {v0}, Landroid/animation/TimeAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/VivoRotateDrawable;->mAnimator:Landroid/animation/TimeAnimator;

    .line 46
    const/high16 v0, 0x41700000    # 15.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/VivoRotateDrawable;->mFactor:Ljava/lang/Float;

    .line 47
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/VivoRotateDrawable;->mAnimator:Landroid/animation/TimeAnimator;

    new-instance v1, Lcom/android/systemui/vivo/common/upslide/ui/VivoRotateDrawable$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/upslide/ui/VivoRotateDrawable$1;-><init>(Lcom/android/systemui/vivo/common/upslide/ui/VivoRotateDrawable;)V

    invoke-virtual {v0, v1}, Landroid/animation/TimeAnimator;->setTimeListener(Landroid/animation/TimeAnimator$TimeListener;)V

    .line 58
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/VivoRotateDrawable;->mAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->start()V

    .line 59
    return-void
.end method

.method public stopAnimation()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/VivoRotateDrawable;->mAnimator:Landroid/animation/TimeAnimator;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/VivoRotateDrawable;->mAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->cancel()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/VivoRotateDrawable;->mAnimator:Landroid/animation/TimeAnimator;

    .line 66
    :cond_0
    return-void
.end method
