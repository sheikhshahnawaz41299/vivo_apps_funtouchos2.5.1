.class public Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;
.super Landroid/view/View;
.source "AlbumView.java"


# static fields
.field public static final CIRCLE:I = 0x1

.field public static final RECT:I = 0x0

.field public static final ROUND_RECT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "AlbumView"

.field public static final TOTAL_FRAME:I = 0xf


# instance fields
.field private mBitmapRectF:Landroid/graphics/RectF;

.field private mContext:Landroid/content/Context;

.field private mCoverPaint:Landroid/graphics/Paint;

.field private mCurrentAlbum:Landroid/graphics/Bitmap;

.field private mCurrentFrame:I

.field private mHeight:I

.field private mIsNext:Z

.field private mNextAlbum:Landroid/graphics/Bitmap;

.field private mPaint:Landroid/graphics/Paint;

.field private mPaintFlagsDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

.field private mPath:Landroid/graphics/Path;

.field private mScaled:Z

.field private mShape:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mShape:I

    .line 54
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mContext:Landroid/content/Context;

    .line 55
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->setupPaint()V

    .line 56
    return-void
.end method

.method private cleanUp()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 257
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mCurrentAlbum:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mCurrentAlbum:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mCurrentAlbum:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 259
    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mCurrentAlbum:Landroid/graphics/Bitmap;

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mNextAlbum:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mNextAlbum:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mNextAlbum:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 263
    iput-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mNextAlbum:Landroid/graphics/Bitmap;

    .line 265
    :cond_1
    return-void
.end method

.method private createScaleOvalAlbum()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 134
    const-string v0, "AlbumView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createScaleOvalAlbum : mWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mScaled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mHeight:I

    if-lez v0, :cond_0

    .line 136
    iput-boolean v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mScaled:Z

    .line 137
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mNextAlbum:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mWidth:I

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mHeight:I

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->getOvalBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mNextAlbum:Landroid/graphics/Bitmap;

    .line 139
    :cond_0
    return-void
.end method

.method private createScaleRectAlbum()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 142
    const-string v0, "AlbumView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createScaleRectAlbum : mWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mScaled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mScaled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mScaled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mHeight:I

    if-lez v0, :cond_0

    .line 144
    iput-boolean v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mScaled:Z

    .line 145
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mNextAlbum:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mWidth:I

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mHeight:I

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mNextAlbum:Landroid/graphics/Bitmap;

    .line 147
    :cond_0
    return-void
.end method

.method private drawCircleAlbum(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    .line 110
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mNextAlbum:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mNextAlbum:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->createScaleOvalAlbum()V

    .line 112
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mIsNext:Z

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mNextAlbum:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mCurrentFrame:I

    rsub-int/lit8 v1, v1, 0xf

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0xf

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mNextAlbum:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mCurrentFrame:I

    rsub-int/lit8 v2, v2, 0xf

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0xf

    div-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 119
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mNextAlbum:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 120
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->drawCover(Landroid/graphics/Canvas;)V

    .line 122
    :cond_0
    return-void

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mNextAlbum:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    neg-int v0, v0

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mCurrentFrame:I

    rsub-int/lit8 v1, v1, 0xf

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0xf

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mNextAlbum:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mCurrentFrame:I

    rsub-int/lit8 v2, v2, 0xf

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0xf

    div-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0
.end method

.method private drawCover(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 187
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mShape:I

    packed-switch v0, :pswitch_data_0

    .line 200
    :goto_0
    :pswitch_0
    return-void

    .line 189
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mBitmapRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mWidth:I

    div-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mHeight:I

    div-int/lit8 v2, v2, 0xa

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mCoverPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 192
    :pswitch_2
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mWidth:I

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mHeight:I

    div-int/lit8 v3, v3, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mCoverPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 187
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private drawNextAlbum(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 92
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mShape:I

    packed-switch v0, :pswitch_data_0

    .line 105
    :goto_0
    return-void

    .line 94
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->drawRoundRectAlbum(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 97
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->drawCircleAlbum(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 100
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->drawRectAlbum(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 92
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private drawNextFrameIfNeed()V
    .locals 3

    .prologue
    const/16 v2, 0xf

    .line 171
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mCurrentFrame:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mCurrentFrame:I

    .line 172
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mCurrentFrame:I

    if-le v0, v2, :cond_2

    .line 173
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mCurrentAlbum:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mNextAlbum:Landroid/graphics/Bitmap;

    if-eq v0, v1, :cond_1

    .line 174
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mCurrentAlbum:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mCurrentAlbum:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mCurrentAlbum:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mCurrentAlbum:Landroid/graphics/Bitmap;

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mNextAlbum:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mCurrentAlbum:Landroid/graphics/Bitmap;

    .line 180
    :cond_1
    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mCurrentFrame:I

    .line 184
    :goto_0
    return-void

    .line 182
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->invalidate()V

    goto :goto_0
.end method

.method private drawRectAlbum(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 125
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mNextAlbum:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mNextAlbum:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->createScaleRectAlbum()V

    .line 127
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mNextAlbum:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 129
    :cond_0
    return-void
.end method

.method private drawRoundRectAlbum(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 107
    return-void
.end method

.method private getOvalBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v9, 0x0

    .line 231
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 232
    .local v2, "output":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 234
    .local v0, "canvas":Landroid/graphics/Canvas;
    const v1, -0xbdbdbe

    .line 235
    .local v1, "color":I
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 236
    .local v3, "paint":Landroid/graphics/Paint;
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v4, v9, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 238
    .local v4, "rect":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 240
    .local v5, "rectF":Landroid/graphics/RectF;
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 241
    invoke-virtual {v0, v9, v9, v9, v9}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 242
    const v6, -0xbdbdbe

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 244
    invoke-virtual {v0, v5, v3}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 246
    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 247
    invoke-virtual {v0, p1, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 249
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_0

    .line 250
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 251
    const/4 p1, 0x0

    .line 253
    :cond_0
    return-object v2
.end method

.method private initClipPath(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 150
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mPath:Landroid/graphics/Path;

    if-nez v0, :cond_0

    .line 151
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mPath:Landroid/graphics/Path;

    .line 152
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mShape:I

    packed-switch v0, :pswitch_data_0

    .line 167
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mPath:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 168
    return-void

    .line 154
    :pswitch_0
    new-instance v0, Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mHeight:I

    int-to-float v3, v3

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mBitmapRectF:Landroid/graphics/RectF;

    .line 155
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mBitmapRectF:Landroid/graphics/RectF;

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mWidth:I

    div-int/lit8 v2, v2, 0xa

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mHeight:I

    div-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    goto :goto_0

    .line 158
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mHeight:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mWidth:I

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mHeight:I

    div-int/lit8 v4, v4, 0x2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    goto :goto_0

    .line 161
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mPath:Landroid/graphics/Path;

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mWidth:I

    int-to-float v3, v2

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mHeight:I

    int-to-float v4, v2

    sget-object v5, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto :goto_0

    .line 152
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setupPaint()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 63
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mPaintFlagsDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    .line 64
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mPaint:Landroid/graphics/Paint;

    .line 65
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 66
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 67
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 69
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mCoverPaint:Landroid/graphics/Paint;

    .line 70
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mCoverPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 71
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mCoverPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 72
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mCoverPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 73
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mCoverPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 74
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 269
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 270
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 274
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->cleanUp()V

    .line 275
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 276
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 77
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 78
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mPaintFlagsDrawFilter:Landroid/graphics/PaintFlagsDrawFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 79
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->initClipPath(Landroid/graphics/Canvas;)V

    .line 81
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mCurrentAlbum:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mCurrentAlbum:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 85
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->drawNextAlbum(Landroid/graphics/Canvas;)V

    .line 86
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->drawNextFrameIfNeed()V

    .line 87
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 88
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v5, -0x80000000

    .line 280
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 281
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 282
    .local v2, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 284
    .local v3, "widthValue":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 285
    .local v0, "heightMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 286
    .local v1, "heightValue":I
    if-ne v2, v5, :cond_0

    .line 287
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->getSuggestedMinimumWidth()I

    move-result v4

    iput v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mWidth:I

    .line 292
    :goto_0
    if-ne v0, v5, :cond_1

    .line 293
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->getSuggestedMinimumHeight()I

    move-result v4

    iput v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mHeight:I

    .line 297
    :goto_1
    return-void

    .line 289
    :cond_0
    iput v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mWidth:I

    goto :goto_0

    .line 295
    :cond_1
    iput v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mHeight:I

    goto :goto_1
.end method

.method public setImage(IZ)V
    .locals 2
    .param p1, "res"    # I
    .param p2, "playAnim"    # Z

    .prologue
    .line 207
    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 208
    .local v0, "album":Landroid/graphics/Bitmap;
    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->setImage(Landroid/graphics/Bitmap;Z)V

    .line 209
    return-void
.end method

.method public setImage(Landroid/graphics/Bitmap;Z)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "playAnim"    # Z

    .prologue
    const/4 v3, 0x0

    .line 212
    const-string v0, "AlbumView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setImage bitmap = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", playAnim = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mNextAlbum:Landroid/graphics/Bitmap;

    .line 214
    iput-boolean v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mScaled:Z

    .line 215
    if-eqz p2, :cond_0

    .line 216
    iput v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mCurrentFrame:I

    .line 220
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->invalidate()V

    .line 221
    return-void

    .line 218
    :cond_0
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mCurrentFrame:I

    goto :goto_0
.end method

.method public setIsNext(Z)V
    .locals 0
    .param p1, "isNext"    # Z

    .prologue
    .line 203
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mIsNext:Z

    .line 204
    return-void
.end method

.method public setViewShape(I)V
    .locals 0
    .param p1, "shape"    # I

    .prologue
    .line 306
    iput p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/music/AlbumView;->mShape:I

    .line 307
    return-void
.end method
