.class public Lcom/android/systemui/vivo/common/ui/BlurFilter;
.super Ljava/lang/Object;
.source "BlurFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/vivo/common/ui/BlurFilter$BlurThread;
    }
.end annotation


# static fields
.field private static final BLUR_OVERLAY_SCALE:F = 0.05f

.field private static final BLUR_RADIUS:I = 0xb

.field public static final DIM_STYLE:I = 0x1

.field public static final LAYER_OF_UPSLIDE:I = 0x1ffb8

.field public static final LIGHT_STYLE:I = 0x2

.field public static final NO_STYLE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BlurFilter"

.field private static mArrayDim:[F

.field private static mArrayLight:[F

.field private static mArrayNone:[F

.field private static tmpArrayDim:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x14

    .line 48
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/vivo/common/ui/BlurFilter;->mArrayDim:[F

    .line 56
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/systemui/vivo/common/ui/BlurFilter;->tmpArrayDim:[F

    .line 63
    new-array v0, v1, [F

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/systemui/vivo/common/ui/BlurFilter;->mArrayLight:[F

    .line 68
    new-array v0, v1, [F

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/systemui/vivo/common/ui/BlurFilter;->mArrayNone:[F

    return-void

    .line 48
    nop

    :array_0
    .array-data 4
        0x3f806e87
        -0x40ec92ef
        -0x42614cec    # -0.07749f
        0x0
        0x4225199a
        -0x416aafde
        0x3f38180d
        -0x42614cec    # -0.07749f
        0x0
        0x4225199a
        -0x416aafde
        -0x40ec92ef
        0x3f9bd75e
        0x0
        0x4225199a
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 56
    :array_1
    .array-data 4
        0x3f0828c3
        -0x416a3bde    # -0.292512f
        -0x42dec80c    # -0.03936f
        0x0
        0x424b3333    # 50.8f
        -0x41e85122
        0x3ec664d4
        -0x42dec80c    # -0.03936f
        0x0
        0x424b3333    # 50.8f
        -0x41e85122
        -0x416a3bde    # -0.292512f
        0x3f2400fc
        0x0
        0x424b3333    # 50.8f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 63
    :array_2
    .array-data 4
        0x3f9a8cbd    # 1.20742f
        -0x41c4cad5    # -0.18282f
        -0x43367a10    # -0.0246f
        0x0
        0x42340000    # 45.0f
        -0x4242656b    # -0.09258f
        0x3f8effc1
        -0x43367a10    # -0.0246f
        0x0
        0x42340000    # 45.0f
        -0x4242656b    # -0.09258f
        -0x41c4cad5    # -0.18282f
        0x3fa3404f    # 1.2754f
        0x0
        0x42340000    # 45.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 68
    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    return-void
.end method

.method static synthetic access$000(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Landroid/graphics/Bitmap;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 35
    invoke-static {p0, p1, p2}, Lcom/android/systemui/vivo/common/ui/BlurFilter;->doStackBlur(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()[F
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/android/systemui/vivo/common/ui/BlurFilter;->tmpArrayDim:[F

    return-object v0
.end method

.method public static blur(Landroid/content/Context;Landroid/graphics/Bitmap;IIFZ)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "src"    # Landroid/graphics/Bitmap;
    .param p2, "lightness"    # I
    .param p3, "radius"    # I
    .param p4, "scaled"    # F
    .param p5, "canBeReused"    # Z

    .prologue
    .line 173
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 174
    .local v4, "startMs":J
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, p4

    float-to-int v6, v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, p4

    float-to-int v7, v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 176
    .local v2, "overlay":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 177
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v0, p4, p4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 178
    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 179
    .local v1, "lightnessMatrix":Landroid/graphics/ColorMatrix;
    const/4 v6, 0x1

    if-ne p2, v6, :cond_1

    .line 180
    sget-object v6, Lcom/android/systemui/vivo/common/ui/BlurFilter;->tmpArrayDim:[F

    invoke-virtual {v1, v6}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 186
    :cond_0
    :goto_0
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 187
    .local v3, "paint":Landroid/graphics/Paint;
    new-instance v6, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v6, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 188
    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setFlags(I)V

    .line 189
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0, p1, v6, v7, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 190
    invoke-static {p0}, Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager;->getsInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager;->releaseBitmap(Landroid/graphics/Bitmap;)V

    .line 192
    invoke-static {v2, p3, p5}, Lcom/android/systemui/vivo/common/ui/BlurFilter;->doStackBlur(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 194
    const-string v6, "BlurFilter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "blur time : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    return-object v2

    .line 181
    .end local v3    # "paint":Landroid/graphics/Paint;
    :cond_1
    const/4 v6, 0x2

    if-ne p2, v6, :cond_2

    .line 182
    sget-object v6, Lcom/android/systemui/vivo/common/ui/BlurFilter;->mArrayLight:[F

    invoke-virtual {v1, v6}, Landroid/graphics/ColorMatrix;->set([F)V

    goto :goto_0

    .line 183
    :cond_2
    if-nez p2, :cond_0

    .line 184
    sget-object v6, Lcom/android/systemui/vivo/common/ui/BlurFilter;->mArrayNone:[F

    invoke-virtual {v1, v6}, Landroid/graphics/ColorMatrix;->set([F)V

    goto :goto_0
.end method

.method public static blur(Landroid/content/Context;Landroid/graphics/Rect;IIFZ)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "r"    # Landroid/graphics/Rect;
    .param p2, "lightness"    # I
    .param p3, "radius"    # I
    .param p4, "scaled"    # F
    .param p5, "canBeReused"    # Z

    .prologue
    .line 149
    invoke-static {p0}, Lcom/android/systemui/vivo/common/ui/BlurFilter;->takeScreenShot(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 150
    .local v3, "bm":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_1

    .line 151
    if-eqz p1, :cond_0

    .line 152
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {v3, v0, v2, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 153
    .local v1, "b":Landroid/graphics/Bitmap;
    invoke-static {p0}, Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager;->getsInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager;->releaseBitmap(Landroid/graphics/Bitmap;)V

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 154
    invoke-static/range {v0 .. v5}, Lcom/android/systemui/vivo/common/ui/BlurFilter;->blur(Landroid/content/Context;Landroid/graphics/Bitmap;IIFZ)Landroid/graphics/Bitmap;

    .end local v3    # "bm":Landroid/graphics/Bitmap;
    move-result-object v0

    .line 162
    .end local v1    # "b":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .restart local v3    # "bm":Landroid/graphics/Bitmap;
    :cond_0
    move-object v2, p0

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    .line 156
    invoke-static/range {v2 .. v7}, Lcom/android/systemui/vivo/common/ui/BlurFilter;->blur(Landroid/content/Context;Landroid/graphics/Bitmap;IIFZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 160
    :cond_1
    const-string v0, "BlurFilter|blur"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bm is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static blurFractional([I[IIIF)V
    .locals 26
    .param p0, "in"    # [I
    .param p1, "out"    # [I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "radius"    # F

    .prologue
    .line 514
    move/from16 v0, p4

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float p4, p4, v23

    .line 515
    const/high16 v23, 0x3f800000    # 1.0f

    const/high16 v24, 0x3f800000    # 1.0f

    const/high16 v25, 0x40000000    # 2.0f

    mul-float v25, v25, p4

    add-float v24, v24, v25

    div-float v8, v23, v24

    .line 516
    .local v8, "f":F
    const/4 v13, 0x0

    .line 518
    .local v13, "inIndex":I
    const/16 v22, 0x0

    .local v22, "y":I
    :goto_0
    move/from16 v0, v22

    move/from16 v1, p3

    if-ge v0, v1, :cond_1

    .line 519
    move/from16 v14, v22

    .line 521
    .local v14, "outIndex":I
    const/16 v23, 0x0

    aget v23, p0, v23

    aput v23, p1, v14

    .line 522
    add-int v14, v14, p3

    .line 523
    const/16 v21, 0x1

    .local v21, "x":I
    :goto_1
    add-int/lit8 v23, p2, -0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_0

    .line 524
    add-int v12, v13, v21

    .line 525
    .local v12, "i":I
    add-int/lit8 v23, v12, -0x1

    aget v18, p0, v23

    .line 526
    .local v18, "rgb1":I
    aget v19, p0, v12

    .line 527
    .local v19, "rgb2":I
    add-int/lit8 v23, v12, 0x1

    aget v20, p0, v23

    .line 529
    .local v20, "rgb3":I
    shr-int/lit8 v23, v18, 0x18

    move/from16 v0, v23

    and-int/lit16 v2, v0, 0xff

    .line 530
    .local v2, "a1":I
    shr-int/lit8 v23, v18, 0x10

    move/from16 v0, v23

    and-int/lit16 v15, v0, 0xff

    .line 531
    .local v15, "r1":I
    shr-int/lit8 v23, v18, 0x8

    move/from16 v0, v23

    and-int/lit16 v9, v0, 0xff

    .line 532
    .local v9, "g1":I
    move/from16 v0, v18

    and-int/lit16 v5, v0, 0xff

    .line 533
    .local v5, "b1":I
    shr-int/lit8 v23, v19, 0x18

    move/from16 v0, v23

    and-int/lit16 v3, v0, 0xff

    .line 534
    .local v3, "a2":I
    shr-int/lit8 v23, v19, 0x10

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    .line 535
    .local v16, "r2":I
    shr-int/lit8 v23, v19, 0x8

    move/from16 v0, v23

    and-int/lit16 v10, v0, 0xff

    .line 536
    .local v10, "g2":I
    move/from16 v0, v19

    and-int/lit16 v6, v0, 0xff

    .line 537
    .local v6, "b2":I
    shr-int/lit8 v23, v20, 0x18

    move/from16 v0, v23

    and-int/lit16 v4, v0, 0xff

    .line 538
    .local v4, "a3":I
    shr-int/lit8 v23, v20, 0x10

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    .line 539
    .local v17, "r3":I
    shr-int/lit8 v23, v20, 0x8

    move/from16 v0, v23

    and-int/lit16 v11, v0, 0xff

    .line 540
    .local v11, "g3":I
    move/from16 v0, v20

    and-int/lit16 v7, v0, 0xff

    .line 541
    .local v7, "b3":I
    add-int v23, v2, v4

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, p4

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    add-int v2, v3, v23

    .line 542
    add-int v23, v15, v17

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, p4

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    add-int v15, v16, v23

    .line 543
    add-int v23, v9, v11

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, p4

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    add-int v9, v10, v23

    .line 544
    add-int v23, v5, v7

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, p4

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    add-int v5, v6, v23

    .line 545
    int-to-float v0, v2

    move/from16 v23, v0

    mul-float v23, v23, v8

    move/from16 v0, v23

    float-to-int v2, v0

    .line 546
    int-to-float v0, v15

    move/from16 v23, v0

    mul-float v23, v23, v8

    move/from16 v0, v23

    float-to-int v15, v0

    .line 547
    int-to-float v0, v9

    move/from16 v23, v0

    mul-float v23, v23, v8

    move/from16 v0, v23

    float-to-int v9, v0

    .line 548
    int-to-float v0, v5

    move/from16 v23, v0

    mul-float v23, v23, v8

    move/from16 v0, v23

    float-to-int v5, v0

    .line 549
    shl-int/lit8 v23, v2, 0x18

    shl-int/lit8 v24, v15, 0x10

    or-int v23, v23, v24

    shl-int/lit8 v24, v9, 0x8

    or-int v23, v23, v24

    or-int v23, v23, v5

    aput v23, p1, v14

    .line 550
    add-int v14, v14, p3

    .line 523
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_1

    .line 552
    .end local v2    # "a1":I
    .end local v3    # "a2":I
    .end local v4    # "a3":I
    .end local v5    # "b1":I
    .end local v6    # "b2":I
    .end local v7    # "b3":I
    .end local v9    # "g1":I
    .end local v10    # "g2":I
    .end local v11    # "g3":I
    .end local v12    # "i":I
    .end local v15    # "r1":I
    .end local v16    # "r2":I
    .end local v17    # "r3":I
    .end local v18    # "rgb1":I
    .end local v19    # "rgb2":I
    .end local v20    # "rgb3":I
    :cond_0
    add-int/lit8 v23, p2, -0x1

    aget v23, p0, v23

    aput v23, p1, v14

    .line 553
    add-int v13, v13, p2

    .line 518
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_0

    .line 555
    .end local v14    # "outIndex":I
    .end local v21    # "x":I
    :cond_1
    return-void
.end method

.method private static boxblur([I[IIIF)V
    .locals 22
    .param p0, "in"    # [I
    .param p1, "out"    # [I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "radius"    # F

    .prologue
    .line 466
    add-int/lit8 v17, p2, -0x1

    .line 467
    .local v17, "widthMinus1":I
    move/from16 v0, p4

    float-to-int v8, v0

    .line 468
    .local v8, "r":I
    mul-int/lit8 v20, v8, 0x2

    add-int/lit8 v13, v20, 0x1

    .line 469
    .local v13, "tableSize":I
    mul-int/lit16 v0, v13, 0x100

    move/from16 v20, v0

    move/from16 v0, v20

    new-array v2, v0, [I

    .line 471
    .local v2, "divide":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    mul-int/lit16 v0, v13, 0x100

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v3, v0, :cond_0

    .line 472
    div-int v20, v3, v13

    aput v20, v2, v3

    .line 471
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 474
    :cond_0
    const/4 v6, 0x0

    .line 476
    .local v6, "inIndex":I
    const/16 v19, 0x0

    .local v19, "y":I
    :goto_1
    move/from16 v0, v19

    move/from16 v1, p3

    if-ge v0, v1, :cond_5

    .line 477
    move/from16 v7, v19

    .line 478
    .local v7, "outIndex":I
    const/4 v12, 0x0

    .local v12, "ta":I
    const/16 v16, 0x0

    .local v16, "tr":I
    const/4 v15, 0x0

    .local v15, "tg":I
    const/4 v14, 0x0

    .line 480
    .local v14, "tb":I
    neg-int v3, v8

    :goto_2
    if-gt v3, v8, :cond_1

    .line 481
    const/16 v20, 0x0

    add-int/lit8 v21, p2, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v3, v0, v1}, Lcom/android/systemui/vivo/common/ui/BlurFilter;->clamp(III)I

    move-result v20

    add-int v20, v20, v6

    aget v9, p0, v20

    .line 482
    .local v9, "rgb":I
    shr-int/lit8 v20, v9, 0x18

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    add-int v12, v12, v20

    .line 483
    shr-int/lit8 v20, v9, 0x10

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    add-int v16, v16, v20

    .line 484
    shr-int/lit8 v20, v9, 0x8

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    add-int v15, v15, v20

    .line 485
    and-int/lit16 v0, v9, 0xff

    move/from16 v20, v0

    add-int v14, v14, v20

    .line 480
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 488
    .end local v9    # "rgb":I
    :cond_1
    const/16 v18, 0x0

    .local v18, "x":I
    :goto_3
    move/from16 v0, v18

    move/from16 v1, p2

    if-ge v0, v1, :cond_4

    .line 489
    aget v20, v2, v12

    shl-int/lit8 v20, v20, 0x18

    aget v21, v2, v16

    shl-int/lit8 v21, v21, 0x10

    or-int v20, v20, v21

    aget v21, v2, v15

    shl-int/lit8 v21, v21, 0x8

    or-int v20, v20, v21

    aget v21, v2, v14

    or-int v20, v20, v21

    aput v20, p1, v7

    .line 492
    add-int v20, v18, v8

    add-int/lit8 v4, v20, 0x1

    .line 493
    .local v4, "i1":I
    move/from16 v0, v17

    if-le v4, v0, :cond_2

    .line 494
    move/from16 v4, v17

    .line 495
    :cond_2
    sub-int v5, v18, v8

    .line 496
    .local v5, "i2":I
    if-gez v5, :cond_3

    .line 497
    const/4 v5, 0x0

    .line 498
    :cond_3
    add-int v20, v6, v4

    aget v10, p0, v20

    .line 499
    .local v10, "rgb1":I
    add-int v20, v6, v5

    aget v11, p0, v20

    .line 501
    .local v11, "rgb2":I
    shr-int/lit8 v20, v10, 0x18

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    shr-int/lit8 v21, v11, 0x18

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    sub-int v20, v20, v21

    add-int v12, v12, v20

    .line 502
    const/high16 v20, 0xff0000

    and-int v20, v20, v10

    const/high16 v21, 0xff0000

    and-int v21, v21, v11

    sub-int v20, v20, v21

    shr-int/lit8 v20, v20, 0x10

    add-int v16, v16, v20

    .line 503
    const v20, 0xff00

    and-int v20, v20, v10

    const v21, 0xff00

    and-int v21, v21, v11

    sub-int v20, v20, v21

    shr-int/lit8 v20, v20, 0x8

    add-int v15, v15, v20

    .line 504
    and-int/lit16 v0, v10, 0xff

    move/from16 v20, v0

    and-int/lit16 v0, v11, 0xff

    move/from16 v21, v0

    sub-int v20, v20, v21

    add-int v14, v14, v20

    .line 505
    add-int v7, v7, p3

    .line 488
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .line 507
    .end local v4    # "i1":I
    .end local v5    # "i2":I
    .end local v10    # "rgb1":I
    .end local v11    # "rgb2":I
    :cond_4
    add-int v6, v6, p2

    .line 476
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_1

    .line 509
    .end local v7    # "outIndex":I
    .end local v12    # "ta":I
    .end local v14    # "tb":I
    .end local v15    # "tg":I
    .end local v16    # "tr":I
    .end local v18    # "x":I
    :cond_5
    return-void
.end method

.method private static clamp(III)I
    .locals 0
    .param p0, "x"    # I
    .param p1, "a"    # I
    .param p2, "b"    # I

    .prologue
    .line 558
    if-ge p0, p1, :cond_0

    .end local p1    # "a":I
    :goto_0
    return p1

    .restart local p1    # "a":I
    :cond_0
    if-le p0, p2, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p0

    goto :goto_0
.end method

.method private static doBlurByRenderScript(Landroid/graphics/Bitmap;ILandroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "src"    # Landroid/graphics/Bitmap;
    .param p1, "radius"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 201
    :try_start_0
    invoke-static {p2}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v3

    .line 202
    .local v3, "rs":Landroid/renderscript/RenderScript;
    sget-object v6, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v7, 0x1

    invoke-static {v3, p0, v6, v7}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v1

    .line 205
    .local v1, "input":Landroid/renderscript/Allocation;
    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v2

    .line 207
    .local v2, "output":Landroid/renderscript/Allocation;
    invoke-static {v3}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v4

    .line 209
    .local v4, "script":Landroid/renderscript/ScriptIntrinsicBlur;
    int-to-float v6, p1

    invoke-virtual {v4, v6}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 210
    invoke-virtual {v4, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 211
    invoke-virtual {v4, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 212
    invoke-virtual {v2, p0}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 214
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 215
    invoke-virtual {v4}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V

    .line 216
    invoke-virtual {v1}, Landroid/renderscript/Allocation;->destroy()V

    .line 217
    invoke-virtual {v2}, Landroid/renderscript/Allocation;->destroy()V

    .line 218
    invoke-virtual {v3}, Landroid/renderscript/RenderScript;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    .end local v1    # "input":Landroid/renderscript/Allocation;
    .end local v2    # "output":Landroid/renderscript/Allocation;
    .end local v3    # "rs":Landroid/renderscript/RenderScript;
    .end local v4    # "script":Landroid/renderscript/ScriptIntrinsicBlur;
    .end local p0    # "src":Landroid/graphics/Bitmap;
    :goto_0
    return-object p0

    .line 219
    .restart local p0    # "src":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object p0, v5

    .line 221
    goto :goto_0
.end method

.method private static doBoxBlur(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .locals 20
    .param p0, "bmp"    # Landroid/graphics/Bitmap;
    .param p1, "mHRadius"    # I
    .param p2, "mVRadius"    # I
    .param p3, "mIterations"    # I

    .prologue
    .line 435
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 436
    .local v16, "start":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 437
    .local v12, "end":J
    move-wide/from16 v18, v16

    .line 438
    .local v18, "temp":J
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 439
    .local v5, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 441
    .local v9, "height":I
    mul-int v2, v5, v9

    new-array v3, v2, [I

    .line 442
    .local v3, "inPixels":[I
    mul-int v2, v5, v9

    new-array v14, v2, [I

    .line 443
    .local v14, "outPixels":[I
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v9, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 445
    .local v10, "bitmap":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 446
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    move/from16 v0, p3

    if-ge v11, v0, :cond_0

    .line 447
    move/from16 v0, p1

    int-to-float v2, v0

    invoke-static {v3, v14, v5, v9, v2}, Lcom/android/systemui/vivo/common/ui/BlurFilter;->boxblur([I[IIIF)V

    .line 448
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 449
    move-wide/from16 v16, v12

    .line 450
    move/from16 v0, p2

    int-to-float v2, v0

    invoke-static {v14, v3, v9, v5, v2}, Lcom/android/systemui/vivo/common/ui/BlurFilter;->boxblur([I[IIIF)V

    .line 451
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 452
    move-wide/from16 v16, v12

    .line 446
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 454
    :cond_0
    move/from16 v0, p1

    int-to-float v2, v0

    invoke-static {v3, v14, v5, v9, v2}, Lcom/android/systemui/vivo/common/ui/BlurFilter;->blurFractional([I[IIIF)V

    .line 455
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 456
    move-wide/from16 v16, v12

    .line 457
    move/from16 v0, p2

    int-to-float v2, v0

    invoke-static {v14, v3, v9, v5, v2}, Lcom/android/systemui/vivo/common/ui/BlurFilter;->blurFractional([I[IIIF)V

    .line 458
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 459
    move-wide/from16 v16, v12

    .line 460
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v10

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 461
    return-object v10
.end method

.method private static doStackBlur(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 42
    .param p0, "sentBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "radius"    # I
    .param p2, "canReuseInBitmap"    # Z

    .prologue
    .line 228
    if-eqz p2, :cond_0

    .line 229
    move-object/from16 v2, p0

    .line 234
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    const/4 v4, 0x1

    move/from16 v0, p1

    if-ge v0, v4, :cond_1

    .line 235
    const/4 v2, 0x0

    .line 428
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    :goto_1
    return-object v2

    .line 231
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 238
    :cond_1
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 239
    .local v5, "w":I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 240
    .local v9, "h":I
    mul-int v4, v5, v9

    new-array v3, v4, [I

    .line 241
    .local v3, "pix":[I
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 243
    add-int/lit8 v36, v5, -0x1

    .line 244
    .local v36, "wm":I
    add-int/lit8 v21, v9, -0x1

    .line 245
    .local v21, "hm":I
    mul-int v35, v5, v9

    .line 246
    .local v35, "wh":I
    add-int v4, p1, p1

    add-int/lit8 v14, v4, 0x1

    .line 248
    .local v14, "div":I
    move/from16 v0, v35

    new-array v0, v0, [I

    move-object/from16 v24, v0

    .line 249
    .local v24, "r":[I
    move/from16 v0, v35

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 250
    .local v17, "g":[I
    move/from16 v0, v35

    new-array v10, v0, [I

    .line 252
    .local v10, "b":[I
    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    new-array v0, v4, [I

    move-object/from16 v34, v0

    .line 254
    .local v34, "vmin":[I
    add-int/lit8 v4, v14, 0x1

    shr-int/lit8 v15, v4, 0x1

    .line 255
    .local v15, "divsum":I
    mul-int/2addr v15, v15

    .line 256
    mul-int/lit16 v4, v15, 0x100

    new-array v0, v4, [I

    move-object/from16 v16, v0

    .line 257
    .local v16, "dv":[I
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_2
    mul-int/lit16 v4, v15, 0x100

    move/from16 v0, v22

    if-ge v0, v4, :cond_2

    .line 258
    div-int v4, v22, v15

    aput v4, v16, v22

    .line 257
    add-int/lit8 v22, v22, 0x1

    goto :goto_2

    .line 261
    :cond_2
    const/16 v39, 0x0

    .local v39, "yi":I
    move/from16 v41, v39

    .line 263
    .local v41, "yw":I
    const/4 v4, 0x3

    filled-new-array {v14, v4}, [I

    move-result-object v4

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, [[I

    .line 268
    .local v31, "stack":[[I
    add-int/lit8 v25, p1, 0x1

    .line 272
    .local v25, "r1":I
    const/16 v38, 0x0

    .local v38, "y":I
    :goto_3
    move/from16 v0, v38

    if-ge v0, v9, :cond_7

    .line 273
    const/4 v13, 0x0

    .local v13, "bsum":I
    move/from16 v20, v13

    .local v20, "gsum":I
    move/from16 v29, v13

    .local v29, "rsum":I
    move v12, v13

    .local v12, "boutsum":I
    move/from16 v19, v13

    .local v19, "goutsum":I
    move/from16 v28, v13

    .local v28, "routsum":I
    move v11, v13

    .local v11, "binsum":I
    move/from16 v18, v13

    .local v18, "ginsum":I
    move/from16 v27, v13

    .line 274
    .local v27, "rinsum":I
    move/from16 v0, p1

    neg-int v0, v0

    move/from16 v22, v0

    :goto_4
    move/from16 v0, v22

    move/from16 v1, p1

    if-gt v0, v1, :cond_4

    .line 275
    const/4 v4, 0x0

    move/from16 v0, v22

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    move/from16 v0, v36

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int v4, v4, v39

    aget v23, v3, v4

    .line 276
    .local v23, "p":I
    add-int v4, v22, p1

    aget-object v30, v31, v4

    .line 277
    .local v30, "sir":[I
    const/4 v4, 0x0

    const/high16 v6, 0xff0000

    and-int v6, v6, v23

    shr-int/lit8 v6, v6, 0x10

    aput v6, v30, v4

    .line 278
    const/4 v4, 0x1

    const v6, 0xff00

    and-int v6, v6, v23

    shr-int/lit8 v6, v6, 0x8

    aput v6, v30, v4

    .line 279
    const/4 v4, 0x2

    move/from16 v0, v23

    and-int/lit16 v6, v0, 0xff

    aput v6, v30, v4

    .line 280
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sub-int v26, v25, v4

    .line 281
    .local v26, "rbs":I
    const/4 v4, 0x0

    aget v4, v30, v4

    mul-int v4, v4, v26

    add-int v29, v29, v4

    .line 282
    const/4 v4, 0x1

    aget v4, v30, v4

    mul-int v4, v4, v26

    add-int v20, v20, v4

    .line 283
    const/4 v4, 0x2

    aget v4, v30, v4

    mul-int v4, v4, v26

    add-int/2addr v13, v4

    .line 284
    if-lez v22, :cond_3

    .line 285
    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v27, v27, v4

    .line 286
    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v18, v18, v4

    .line 287
    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v11, v4

    .line 274
    :goto_5
    add-int/lit8 v22, v22, 0x1

    goto :goto_4

    .line 289
    :cond_3
    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v28, v28, v4

    .line 290
    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v19, v19, v4

    .line 291
    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v12, v4

    goto :goto_5

    .line 294
    .end local v23    # "p":I
    .end local v26    # "rbs":I
    .end local v30    # "sir":[I
    :cond_4
    move/from16 v32, p1

    .line 296
    .local v32, "stackpointer":I
    const/16 v37, 0x0

    .local v37, "x":I
    :goto_6
    move/from16 v0, v37

    if-ge v0, v5, :cond_6

    .line 298
    aget v4, v16, v29

    aput v4, v24, v39

    .line 299
    aget v4, v16, v20

    aput v4, v17, v39

    .line 300
    aget v4, v16, v13

    aput v4, v10, v39

    .line 302
    sub-int v29, v29, v28

    .line 303
    sub-int v20, v20, v19

    .line 304
    sub-int/2addr v13, v12

    .line 306
    sub-int v4, v32, p1

    add-int v33, v4, v14

    .line 307
    .local v33, "stackstart":I
    rem-int v4, v33, v14

    aget-object v30, v31, v4

    .line 309
    .restart local v30    # "sir":[I
    const/4 v4, 0x0

    aget v4, v30, v4

    sub-int v28, v28, v4

    .line 310
    const/4 v4, 0x1

    aget v4, v30, v4

    sub-int v19, v19, v4

    .line 311
    const/4 v4, 0x2

    aget v4, v30, v4

    sub-int/2addr v12, v4

    .line 313
    if-nez v38, :cond_5

    .line 314
    add-int v4, v37, p1

    add-int/lit8 v4, v4, 0x1

    move/from16 v0, v36

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    aput v4, v34, v37

    .line 316
    :cond_5
    aget v4, v34, v37

    add-int v4, v4, v41

    aget v23, v3, v4

    .line 318
    .restart local v23    # "p":I
    const/4 v4, 0x0

    const/high16 v6, 0xff0000

    and-int v6, v6, v23

    shr-int/lit8 v6, v6, 0x10

    aput v6, v30, v4

    .line 319
    const/4 v4, 0x1

    const v6, 0xff00

    and-int v6, v6, v23

    shr-int/lit8 v6, v6, 0x8

    aput v6, v30, v4

    .line 320
    const/4 v4, 0x2

    move/from16 v0, v23

    and-int/lit16 v6, v0, 0xff

    aput v6, v30, v4

    .line 322
    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v27, v27, v4

    .line 323
    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v18, v18, v4

    .line 324
    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v11, v4

    .line 326
    add-int v29, v29, v27

    .line 327
    add-int v20, v20, v18

    .line 328
    add-int/2addr v13, v11

    .line 330
    add-int/lit8 v4, v32, 0x1

    rem-int v32, v4, v14

    .line 331
    rem-int v4, v32, v14

    aget-object v30, v31, v4

    .line 333
    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v28, v28, v4

    .line 334
    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v19, v19, v4

    .line 335
    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v12, v4

    .line 337
    const/4 v4, 0x0

    aget v4, v30, v4

    sub-int v27, v27, v4

    .line 338
    const/4 v4, 0x1

    aget v4, v30, v4

    sub-int v18, v18, v4

    .line 339
    const/4 v4, 0x2

    aget v4, v30, v4

    sub-int/2addr v11, v4

    .line 341
    add-int/lit8 v39, v39, 0x1

    .line 296
    add-int/lit8 v37, v37, 0x1

    goto/16 :goto_6

    .line 343
    .end local v23    # "p":I
    .end local v30    # "sir":[I
    .end local v33    # "stackstart":I
    :cond_6
    add-int v41, v41, v5

    .line 272
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_3

    .line 345
    .end local v11    # "binsum":I
    .end local v12    # "boutsum":I
    .end local v13    # "bsum":I
    .end local v18    # "ginsum":I
    .end local v19    # "goutsum":I
    .end local v20    # "gsum":I
    .end local v27    # "rinsum":I
    .end local v28    # "routsum":I
    .end local v29    # "rsum":I
    .end local v32    # "stackpointer":I
    .end local v37    # "x":I
    :cond_7
    const/16 v37, 0x0

    .restart local v37    # "x":I
    :goto_7
    move/from16 v0, v37

    if-ge v0, v5, :cond_d

    .line 346
    const/4 v13, 0x0

    .restart local v13    # "bsum":I
    move/from16 v20, v13

    .restart local v20    # "gsum":I
    move/from16 v29, v13

    .restart local v29    # "rsum":I
    move v12, v13

    .restart local v12    # "boutsum":I
    move/from16 v19, v13

    .restart local v19    # "goutsum":I
    move/from16 v28, v13

    .restart local v28    # "routsum":I
    move v11, v13

    .restart local v11    # "binsum":I
    move/from16 v18, v13

    .restart local v18    # "ginsum":I
    move/from16 v27, v13

    .line 347
    .restart local v27    # "rinsum":I
    move/from16 v0, p1

    neg-int v4, v0

    mul-int v40, v4, v5

    .line 348
    .local v40, "yp":I
    move/from16 v0, p1

    neg-int v0, v0

    move/from16 v22, v0

    :goto_8
    move/from16 v0, v22

    move/from16 v1, p1

    if-gt v0, v1, :cond_a

    .line 349
    const/4 v4, 0x0

    move/from16 v0, v40

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int v39, v4, v37

    .line 351
    add-int v4, v22, p1

    aget-object v30, v31, v4

    .line 353
    .restart local v30    # "sir":[I
    const/4 v4, 0x0

    aget v6, v24, v39

    aput v6, v30, v4

    .line 354
    const/4 v4, 0x1

    aget v6, v17, v39

    aput v6, v30, v4

    .line 355
    const/4 v4, 0x2

    aget v6, v10, v39

    aput v6, v30, v4

    .line 357
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sub-int v26, v25, v4

    .line 359
    .restart local v26    # "rbs":I
    aget v4, v24, v39

    mul-int v4, v4, v26

    add-int v29, v29, v4

    .line 360
    aget v4, v17, v39

    mul-int v4, v4, v26

    add-int v20, v20, v4

    .line 361
    aget v4, v10, v39

    mul-int v4, v4, v26

    add-int/2addr v13, v4

    .line 363
    if-lez v22, :cond_9

    .line 364
    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v27, v27, v4

    .line 365
    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v18, v18, v4

    .line 366
    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v11, v4

    .line 373
    :goto_9
    move/from16 v0, v22

    move/from16 v1, v21

    if-ge v0, v1, :cond_8

    .line 374
    add-int v40, v40, v5

    .line 348
    :cond_8
    add-int/lit8 v22, v22, 0x1

    goto :goto_8

    .line 368
    :cond_9
    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v28, v28, v4

    .line 369
    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v19, v19, v4

    .line 370
    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v12, v4

    goto :goto_9

    .line 377
    .end local v26    # "rbs":I
    .end local v30    # "sir":[I
    :cond_a
    move/from16 v39, v37

    .line 378
    move/from16 v32, p1

    .line 379
    .restart local v32    # "stackpointer":I
    const/16 v38, 0x0

    :goto_a
    move/from16 v0, v38

    if-ge v0, v9, :cond_c

    .line 381
    const/high16 v4, -0x1000000

    aget v6, v3, v39

    and-int/2addr v4, v6

    aget v6, v16, v29

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v4, v6

    aget v6, v16, v20

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v4, v6

    aget v6, v16, v13

    or-int/2addr v4, v6

    aput v4, v3, v39

    .line 383
    sub-int v29, v29, v28

    .line 384
    sub-int v20, v20, v19

    .line 385
    sub-int/2addr v13, v12

    .line 387
    sub-int v4, v32, p1

    add-int v33, v4, v14

    .line 388
    .restart local v33    # "stackstart":I
    rem-int v4, v33, v14

    aget-object v30, v31, v4

    .line 390
    .restart local v30    # "sir":[I
    const/4 v4, 0x0

    aget v4, v30, v4

    sub-int v28, v28, v4

    .line 391
    const/4 v4, 0x1

    aget v4, v30, v4

    sub-int v19, v19, v4

    .line 392
    const/4 v4, 0x2

    aget v4, v30, v4

    sub-int/2addr v12, v4

    .line 394
    if-nez v37, :cond_b

    .line 395
    add-int v4, v38, v25

    move/from16 v0, v21

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    mul-int/2addr v4, v5

    aput v4, v34, v38

    .line 397
    :cond_b
    aget v4, v34, v38

    add-int v23, v37, v4

    .line 399
    .restart local v23    # "p":I
    const/4 v4, 0x0

    aget v6, v24, v23

    aput v6, v30, v4

    .line 400
    const/4 v4, 0x1

    aget v6, v17, v23

    aput v6, v30, v4

    .line 401
    const/4 v4, 0x2

    aget v6, v10, v23

    aput v6, v30, v4

    .line 403
    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v27, v27, v4

    .line 404
    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v18, v18, v4

    .line 405
    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v11, v4

    .line 407
    add-int v29, v29, v27

    .line 408
    add-int v20, v20, v18

    .line 409
    add-int/2addr v13, v11

    .line 411
    add-int/lit8 v4, v32, 0x1

    rem-int v32, v4, v14

    .line 412
    aget-object v30, v31, v32

    .line 414
    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v28, v28, v4

    .line 415
    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v19, v19, v4

    .line 416
    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v12, v4

    .line 418
    const/4 v4, 0x0

    aget v4, v30, v4

    sub-int v27, v27, v4

    .line 419
    const/4 v4, 0x1

    aget v4, v30, v4

    sub-int v18, v18, v4

    .line 420
    const/4 v4, 0x2

    aget v4, v30, v4

    sub-int/2addr v11, v4

    .line 422
    add-int v39, v39, v5

    .line 379
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_a

    .line 345
    .end local v23    # "p":I
    .end local v30    # "sir":[I
    .end local v33    # "stackstart":I
    :cond_c
    add-int/lit8 v37, v37, 0x1

    goto/16 :goto_7

    .line 426
    .end local v11    # "binsum":I
    .end local v12    # "boutsum":I
    .end local v13    # "bsum":I
    .end local v18    # "ginsum":I
    .end local v19    # "goutsum":I
    .end local v20    # "gsum":I
    .end local v27    # "rinsum":I
    .end local v28    # "routsum":I
    .end local v29    # "rsum":I
    .end local v32    # "stackpointer":I
    .end local v40    # "yp":I
    :cond_d
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    goto/16 :goto_1
.end method

.method public static saveScreenShot(Landroid/graphics/Bitmap;)V
    .locals 5
    .param p0, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 126
    if-nez p0, :cond_0

    .line 127
    const-string v3, "BlurFilter"

    const-string v4, "no bitmap"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :goto_0
    return-void

    .line 130
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "blur.png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "imagePath":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 133
    .local v2, "out":Ljava/io/FileOutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p0, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 134
    .end local v2    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "BlurFilter"

    const-string v4, "error:"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static takeScreenShot(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 108
    const-string v5, "BlurFilter"

    const-string v6, "take shot"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 110
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    const-string v5, "window"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 111
    .local v4, "wm":Landroid/view/WindowManager;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 112
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 113
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 114
    .local v3, "w":I
    iget v1, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 115
    .local v1, "h":I
    if-le v3, v1, :cond_0

    .line 117
    invoke-static {v1, v3}, Landroid/view/SurfaceControl;->screenshot(II)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 120
    :goto_0
    return-object v5

    :cond_0
    invoke-static {v3, v1}, Landroid/view/SurfaceControl;->screenshot(II)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_0
.end method
