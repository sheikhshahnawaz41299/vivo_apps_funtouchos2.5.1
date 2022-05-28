.class public Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;
.super Landroid/widget/ImageView;
.source "GifView.java"


# static fields
.field public static final CIRCLE:I = 0x1

.field public static final RECT:I = 0x0

.field public static final ROUNDRECT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "GifView"


# instance fields
.field private mHeight:I

.field private mPath:Landroid/graphics/Path;

.field private mShape:I

.field private mSizeChanged:Z

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;->mShape:I

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;->mShape:I

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;->mShape:I

    .line 65
    return-void
.end method

.method private initPath()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 146
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;->mPath:Landroid/graphics/Path;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;->mSizeChanged:Z

    if-eqz v2, :cond_1

    :cond_0
    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;->mShape:I

    if-eqz v2, :cond_1

    .line 147
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;->mPath:Landroid/graphics/Path;

    .line 148
    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;->mShape:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 149
    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;->mWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;->mHeight:I

    int-to-float v3, v3

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 150
    .local v1, "rectF":Landroid/graphics/RectF;
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;->mPath:Landroid/graphics/Path;

    iget v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;->mWidth:I

    div-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;->mHeight:I

    div-int/lit8 v4, v4, 0xa

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 151
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 158
    .end local v1    # "rectF":Landroid/graphics/RectF;
    :cond_1
    :goto_0
    return-void

    .line 152
    :cond_2
    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;->mShape:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 153
    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;->mWidth:I

    shr-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;->mHeight:I

    shr-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 154
    .local v0, "radius":I
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;->mPath:Landroid/graphics/Path;

    iget v3, p0, Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;->mWidth:I

    shr-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;->mHeight:I

    shr-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    int-to-float v5, v0

    sget-object v6, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 155
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    goto :goto_0
.end method

.method private setImagePath(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 110
    if-eqz p1, :cond_0

    .line 112
    :try_start_0
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "GifView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to set image path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;->initPath()V

    .line 90
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;->mPath:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;->mPath:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 94
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 95
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 126
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 128
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 129
    .local v1, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 130
    .local v0, "height":I
    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;->mWidth:I

    if-ne v1, v2, :cond_0

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;->mHeight:I

    if-eq v0, v2, :cond_2

    :cond_0
    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;->mSizeChanged:Z

    .line 131
    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;->mSizeChanged:Z

    if-eqz v2, :cond_1

    .line 132
    iput v1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;->mWidth:I

    .line 133
    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;->mHeight:I

    .line 135
    :cond_1
    return-void

    .line 130
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setBackgroundResource(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;->setResource(ZILandroid/content/res/Resources;)V

    .line 75
    return-void
.end method

.method public setImage(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;->setImageResource(I)V

    .line 99
    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;->setImagePath(Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public setImage([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;->setImageByte([B)V

    .line 107
    return-void
.end method

.method setImageByte([B)V
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 120
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 122
    return-void
.end method

.method public setImageResource(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 69
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;->setResource(ZILandroid/content/res/Resources;)V

    .line 70
    return-void
.end method

.method setResource(ZILandroid/content/res/Resources;)V
    .locals 0
    .param p1, "isSrc"    # Z
    .param p2, "resId"    # I
    .param p3, "res"    # Landroid/content/res/Resources;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 81
    if-eqz p1, :cond_0

    .line 82
    invoke-super {p0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_0
    invoke-super {p0, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public setViewShape(I)V
    .locals 0
    .param p1, "shape"    # I

    .prologue
    .line 142
    iput p1, p0, Lcom/android/systemui/vivo/common/keyguard/nature/widget/GifView;->mShape:I

    .line 143
    return-void
.end method
