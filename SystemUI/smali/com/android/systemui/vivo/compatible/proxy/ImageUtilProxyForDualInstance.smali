.class public Lcom/android/systemui/vivo/compatible/proxy/ImageUtilProxyForDualInstance;
.super Ljava/lang/Object;
.source "ImageUtilProxyForDualInstance.java"


# static fields
.field static TAG:Ljava/lang/String;

.field static mCloneBitmap:Landroid/graphics/Bitmap;

.field static mCloneBitmapFlag:Z

.field static mCloneBitmapForNotiFlag:Z

.field static mCloneBitmapForNotification:Landroid/graphics/Bitmap;

.field static mDensity:F

.field static mOffset:I

.field static mScaleOffset:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 26
    const-string v0, "ImageUtilProxyForDualInstance"

    sput-object v0, Lcom/android/systemui/vivo/compatible/proxy/ImageUtilProxyForDualInstance;->TAG:Ljava/lang/String;

    .line 27
    sput-object v2, Lcom/android/systemui/vivo/compatible/proxy/ImageUtilProxyForDualInstance;->mCloneBitmap:Landroid/graphics/Bitmap;

    .line 28
    sput-object v2, Lcom/android/systemui/vivo/compatible/proxy/ImageUtilProxyForDualInstance;->mCloneBitmapForNotification:Landroid/graphics/Bitmap;

    .line 29
    sput-boolean v1, Lcom/android/systemui/vivo/compatible/proxy/ImageUtilProxyForDualInstance;->mCloneBitmapFlag:Z

    .line 30
    sput-boolean v1, Lcom/android/systemui/vivo/compatible/proxy/ImageUtilProxyForDualInstance;->mCloneBitmapForNotiFlag:Z

    .line 32
    const/16 v0, 0xf

    sput v0, Lcom/android/systemui/vivo/compatible/proxy/ImageUtilProxyForDualInstance;->mOffset:I

    .line 33
    const v0, 0x3df5c28f    # 0.12f

    sput v0, Lcom/android/systemui/vivo/compatible/proxy/ImageUtilProxyForDualInstance;->mScaleOffset:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static caculateOffsets()V
    .locals 2

    .prologue
    .line 142
    sget v0, Lcom/android/systemui/vivo/compatible/proxy/ImageUtilProxyForDualInstance;->mDensity:F

    const/high16 v1, 0x40800000    # 4.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 143
    const/16 v0, 0xf

    sput v0, Lcom/android/systemui/vivo/compatible/proxy/ImageUtilProxyForDualInstance;->mOffset:I

    .line 144
    const v0, 0x3df5c28f    # 0.12f

    sput v0, Lcom/android/systemui/vivo/compatible/proxy/ImageUtilProxyForDualInstance;->mScaleOffset:F

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    sget v0, Lcom/android/systemui/vivo/compatible/proxy/ImageUtilProxyForDualInstance;->mDensity:F

    const/high16 v1, 0x40400000    # 3.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 146
    const/16 v0, 0xc

    sput v0, Lcom/android/systemui/vivo/compatible/proxy/ImageUtilProxyForDualInstance;->mOffset:I

    .line 147
    const v0, 0x3dcccccd    # 0.1f

    sput v0, Lcom/android/systemui/vivo/compatible/proxy/ImageUtilProxyForDualInstance;->mScaleOffset:F

    goto :goto_0

    .line 148
    :cond_2
    sget v0, Lcom/android/systemui/vivo/compatible/proxy/ImageUtilProxyForDualInstance;->mDensity:F

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 149
    const/4 v0, 0x4

    sput v0, Lcom/android/systemui/vivo/compatible/proxy/ImageUtilProxyForDualInstance;->mOffset:I

    .line 150
    const v0, 0x3d23d70a    # 0.04f

    sput v0, Lcom/android/systemui/vivo/compatible/proxy/ImageUtilProxyForDualInstance;->mScaleOffset:F

    goto :goto_0
.end method

.method public static drawCloneBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 79
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    .line 80
    .local v12, "x":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    .line 82
    .local v13, "y":I
    sget-object v1, Lcom/android/systemui/vivo/compatible/proxy/ImageUtilProxyForDualInstance;->mCloneBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 83
    invoke-static {p0}, Lcom/android/systemui/vivo/compatible/proxy/ImageUtilProxyForDualInstance;->refreshColneBitmap(Landroid/content/Context;)V

    .line 86
    :cond_0
    sget-object v1, Lcom/android/systemui/vivo/compatible/proxy/ImageUtilProxyForDualInstance;->mCloneBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/android/systemui/vivo/compatible/proxy/ImageUtilProxyForDualInstance;->mCloneBitmapFlag:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 87
    sget-object v1, Lcom/android/systemui/vivo/compatible/proxy/ImageUtilProxyForDualInstance;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "refreshColneBitmap()  : mCloneBitmapFlag: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v6, Lcom/android/systemui/vivo/compatible/proxy/ImageUtilProxyForDualInstance;->mCloneBitmapFlag:Z

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    sget-object v1, Lcom/android/systemui/vivo/compatible/proxy/ImageUtilProxyForDualInstance;->mCloneBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 89
    .local v3, "width":I
    sget-object v1, Lcom/android/systemui/vivo/compatible/proxy/ImageUtilProxyForDualInstance;->mCloneBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 90
    .local v4, "height":I
    int-to-float v1, v12

    int-to-float v2, v3

    div-float v11, v1, v2

    .line 91
    .local v11, "scaleWidth":F
    int-to-float v1, v13

    int-to-float v2, v4

    div-float v10, v1, v2

    .line 92
    .local v10, "scaleHeight":F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 93
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, v11, v10}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 94
    sget-object v0, Lcom/android/systemui/vivo/compatible/proxy/ImageUtilProxyForDualInstance;->mCloneBitmap:Landroid/graphics/Bitmap;

    .line 95
    .local v0, "tempBitmap":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/vivo/compatible/proxy/ImageUtilProxyForDualInstance;->mCloneBitmap:Landroid/graphics/Bitmap;

    .line 96
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 99
    :cond_1
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/systemui/vivo/compatible/proxy/ImageUtilProxyForDualInstance;->mCloneBitmapFlag:Z

    .line 105
    .end local v0    # "tempBitmap":Landroid/graphics/Bitmap;
    .end local v3    # "width":I
    .end local v4    # "height":I
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    .end local v10    # "scaleHeight":F
    .end local v11    # "scaleWidth":F
    :cond_2
    :goto_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v12, v13, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 106
    .local v8, "cloneBitmap":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 107
    .local v7, "canvas":Landroid/graphics/Canvas;
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 108
    .local v9, "paint":Landroid/graphics/Paint;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v7, p1, v1, v2, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 109
    sget-object v1, Lcom/android/systemui/vivo/compatible/proxy/ImageUtilProxyForDualInstance;->mCloneBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-virtual {v7, v1, v2, v6, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 110
    const/16 v1, 0x1f

    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->save(I)I

    .line 111
    invoke-virtual {v7}, Landroid/graphics/Canvas;->restore()V

    .line 113
    return-object v8

    .line 101
    .end local v7    # "canvas":Landroid/graphics/Canvas;
    .end local v8    # "cloneBitmap":Landroid/graphics/Bitmap;
    .end local v9    # "paint":Landroid/graphics/Paint;
    :cond_3
    sget-object v1, Lcom/android/systemui/vivo/compatible/proxy/ImageUtilProxyForDualInstance;->mCloneBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    .line 102
    sget-object v1, Lcom/android/systemui/vivo/compatible/proxy/ImageUtilProxyForDualInstance;->TAG:Ljava/lang/String;

    const-string v2, "what\'s a fuck, mCloneBitmap is null!"

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static drawCloneBitmap(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 117
    invoke-static {p0, p1}, Lcom/android/systemui/vivo/common/utils/DoubleInstanceUtils;->drawCloneBitmap(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static drawCloneBitmapForNotification(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 37
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    .line 38
    .local v12, "x":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    .line 39
    .local v13, "y":I
    sget-object v1, Lcom/android/systemui/vivo/compatible/proxy/ImageUtilProxyForDualInstance;->mCloneBitmapForNotification:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 40
    invoke-static {p0}, Lcom/android/systemui/vivo/compatible/proxy/ImageUtilProxyForDualInstance;->refreshColneBitmap(Landroid/content/Context;)V

    .line 43
    :cond_0
    sget-object v1, Lcom/android/systemui/vivo/compatible/proxy/ImageUtilProxyForDualInstance;->mCloneBitmapForNotification:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    sget-boolean v1, Lcom/android/systemui/vivo/compatible/proxy/ImageUtilProxyForDualInstance;->mCloneBitmapForNotiFlag:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 44
    sget-object v1, Lcom/android/systemui/vivo/compatible/proxy/ImageUtilProxyForDualInstance;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "refreshColneBitmap()  : mCloneBitmapForNotiFlag: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v6, Lcom/android/systemui/vivo/compatible/proxy/ImageUtilProxyForDualInstance;->mCloneBitmapForNotiFlag:Z

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    sget-object v1, Lcom/android/systemui/vivo/compatible/proxy/ImageUtilProxyForDualInstance;->mCloneBitmapForNotification:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 46
    .local v3, "width":I
    sget-object v1, Lcom/android/systemui/vivo/compatible/proxy/ImageUtilProxyForDualInstance;->mCloneBitmapForNotification:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 48
    .local v4, "height":I
    int-to-float v1, v12

    int-to-float v2, v3

    div-float/2addr v1, v2

    sget v2, Lcom/android/systemui/vivo/compatible/proxy/ImageUtilProxyForDualInstance;->mScaleOffset:F

    sub-float v11, v1, v2

    .line 49
    .local v11, "scaleWidth":F
    int-to-float v1, v13

    int-to-float v2, v4

    div-float/2addr v1, v2

    sget v2, Lcom/android/systemui/vivo/compatible/proxy/ImageUtilProxyForDualInstance;->mScaleOffset:F

    sub-float v10, v1, v2

    .line 50
    .local v10, "scaleHeight":F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 51
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, v11, v10}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 52
    sget-object v0, Lcom/android/systemui/vivo/compatible/proxy/ImageUtilProxyForDualInstance;->mCloneBitmapForNotification:Landroid/graphics/Bitmap;

    .line 53
    .local v0, "tempBitmap":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/vivo/compatible/proxy/ImageUtilProxyForDualInstance;->mCloneBitmapForNotification:Landroid/graphics/Bitmap;

    .line 54
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 57
    :cond_1
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/systemui/vivo/compatible/proxy/ImageUtilProxyForDualInstance;->mCloneBitmapForNotiFlag:Z

    .line 63
    .end local v0    # "tempBitmap":Landroid/graphics/Bitmap;
    .end local v3    # "width":I
    .end local v4    # "height":I
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    .end local v10    # "scaleHeight":F
    .end local v11    # "scaleWidth":F
    :cond_2
    :goto_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v12, v13, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 64
    .local v8, "cloneBitmap":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 65
    .local v7, "canvas":Landroid/graphics/Canvas;
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 66
    .local v9, "paint":Landroid/graphics/Paint;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v7, p1, v1, v2, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 67
    sget-object v1, Lcom/android/systemui/vivo/compatible/proxy/ImageUtilProxyForDualInstance;->mCloneBitmapForNotification:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 68
    sget-object v1, Lcom/android/systemui/vivo/compatible/proxy/ImageUtilProxyForDualInstance;->mCloneBitmapForNotification:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int v1, v12, v1

    sget v2, Lcom/android/systemui/vivo/compatible/proxy/ImageUtilProxyForDualInstance;->mOffset:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sget-object v2, Lcom/android/systemui/vivo/compatible/proxy/ImageUtilProxyForDualInstance;->mCloneBitmapForNotification:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int v2, v13, v2

    sget v6, Lcom/android/systemui/vivo/compatible/proxy/ImageUtilProxyForDualInstance;->mOffset:I

    sub-int/2addr v2, v6

    int-to-float v2, v2

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 69
    sget-object v1, Lcom/android/systemui/vivo/compatible/proxy/ImageUtilProxyForDualInstance;->mCloneBitmapForNotification:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-virtual {v7, v1, v2, v6, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 71
    :cond_3
    const/16 v1, 0x1f

    invoke-virtual {v7, v1}, Landroid/graphics/Canvas;->save(I)I

    .line 72
    invoke-virtual {v7}, Landroid/graphics/Canvas;->restore()V

    .line 74
    return-object v8

    .line 59
    .end local v7    # "canvas":Landroid/graphics/Canvas;
    .end local v8    # "cloneBitmap":Landroid/graphics/Bitmap;
    .end local v9    # "paint":Landroid/graphics/Paint;
    :cond_4
    sget-object v1, Lcom/android/systemui/vivo/compatible/proxy/ImageUtilProxyForDualInstance;->mCloneBitmapForNotification:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    .line 60
    sget-object v1, Lcom/android/systemui/vivo/compatible/proxy/ImageUtilProxyForDualInstance;->TAG:Ljava/lang/String;

    const-string v2, "what\'s a fuck, mCloneBitmapForNotification is null!"

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static drawCloneDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 121
    invoke-static {p0, p1}, Lcom/android/systemui/vivo/compatible/proxy/ImageUtilProxyForDualInstance;->drawCloneBitmap(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 122
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method public static refreshColneBitmap(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const v6, 0x7f0201da

    const v5, 0x7f0201d9

    const/4 v4, 0x1

    .line 126
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "theme_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "themeId":Ljava/lang/String;
    sget-object v1, Lcom/android/systemui/vivo/compatible/proxy/ImageUtilProxyForDualInstance;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshColneBitmap()  : themeId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    if-eqz v0, :cond_0

    const-string v1, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 129
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/vivo/compatible/proxy/ImageUtilProxyForDualInstance;->mCloneBitmap:Landroid/graphics/Bitmap;

    .line 130
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/vivo/compatible/proxy/ImageUtilProxyForDualInstance;->mCloneBitmapForNotification:Landroid/graphics/Bitmap;

    .line 135
    :goto_0
    sput-boolean v4, Lcom/android/systemui/vivo/compatible/proxy/ImageUtilProxyForDualInstance;->mCloneBitmapFlag:Z

    .line 136
    sput-boolean v4, Lcom/android/systemui/vivo/compatible/proxy/ImageUtilProxyForDualInstance;->mCloneBitmapForNotiFlag:Z

    .line 137
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    sput v1, Lcom/android/systemui/vivo/compatible/proxy/ImageUtilProxyForDualInstance;->mDensity:F

    .line 138
    invoke-static {}, Lcom/android/systemui/vivo/compatible/proxy/ImageUtilProxyForDualInstance;->caculateOffsets()V

    .line 139
    return-void

    .line 132
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/vivo/compatible/proxy/ImageUtilProxyForDualInstance;->mCloneBitmap:Landroid/graphics/Bitmap;

    .line 133
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/vivo/compatible/proxy/ImageUtilProxyForDualInstance;->mCloneBitmapForNotification:Landroid/graphics/Bitmap;

    goto :goto_0
.end method
