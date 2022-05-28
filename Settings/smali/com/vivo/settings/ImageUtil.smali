.class public Lcom/vivo/settings/ImageUtil;
.super Ljava/lang/Object;
.source "ImageUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vivo/settings/ImageUtil$PointSolution;
    }
.end annotation


# static fields
.field private static final BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

.field private static final BOTTOMDIRECTION:I = 0x3ec

.field private static final DEBUG_ADAPTION:Z = false

.field private static final LEFTDIRECTION:I = 0x3e9

.field private static final RIGHTDIRECTION:I = 0x3ea

.field private static final TAG:Ljava/lang/String; = "ImageUtil"

.field private static final TOPDIRECTION:I = 0x3eb

.field private static final TRY_TIMES:I = 0x1

.field private static mInstance:Lcom/vivo/settings/ImageUtil;


# instance fields
.field private mBgDrawable:Landroid/graphics/drawable/Drawable;

.field private sIconBgHeight:I

.field private sIconBgRadius:I

.field private sIconBgRect:Landroid/graphics/Rect;

.field private sIconBgWidth:I

.field private sIconLeftOffset:I

.field private sIconTopOffset:I

.field private sMaskBitmap:Landroid/graphics/Bitmap;

.field private sMaskCanvas:Landroid/graphics/Canvas;

.field private sMaskRadius:I

.field private sMaskRect:Landroid/graphics/Rect;

.field private sOldBounds:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/vivo/settings/ImageUtil;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 473
    iput v2, p0, Lcom/vivo/settings/ImageUtil;->sIconBgRadius:I

    .line 474
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/vivo/settings/ImageUtil;->sIconBgRect:Landroid/graphics/Rect;

    .line 477
    iput v2, p0, Lcom/vivo/settings/ImageUtil;->sMaskRadius:I

    .line 478
    iput v1, p0, Lcom/vivo/settings/ImageUtil;->sIconBgWidth:I

    .line 479
    iput v1, p0, Lcom/vivo/settings/ImageUtil;->sIconBgHeight:I

    .line 480
    iput v1, p0, Lcom/vivo/settings/ImageUtil;->sIconLeftOffset:I

    .line 481
    iput v1, p0, Lcom/vivo/settings/ImageUtil;->sIconTopOffset:I

    .line 482
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/settings/ImageUtil;->sMaskBitmap:Landroid/graphics/Bitmap;

    .line 483
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/vivo/settings/ImageUtil;->sMaskRect:Landroid/graphics/Rect;

    .line 484
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/vivo/settings/ImageUtil;->sMaskCanvas:Landroid/graphics/Canvas;

    .line 485
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/vivo/settings/ImageUtil;->sOldBounds:Landroid/graphics/Rect;

    .line 50
    iget-object v0, p0, Lcom/vivo/settings/ImageUtil;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200ca

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/settings/ImageUtil;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/vivo/settings/ImageUtil;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/vivo/settings/ImageUtil;->sIconBgWidth:I

    .line 54
    iget-object v0, p0, Lcom/vivo/settings/ImageUtil;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/vivo/settings/ImageUtil;->sIconBgHeight:I

    .line 55
    return-void
.end method

.method private static getFitableRector(IIIIZ[III)[I
    .locals 9
    .param p0, "xStart"    # I
    .param p1, "yStart"    # I
    .param p2, "LRdirection"    # I
    .param p3, "TBdirection"    # I
    .param p4, "rowFirst"    # Z
    .param p5, "pix"    # [I
    .param p6, "width"    # I
    .param p7, "height"    # I

    .prologue
    .line 165
    const/4 v5, 0x0

    .line 166
    .local v5, "xEnd":I
    const/4 v7, 0x0

    .line 167
    .local v7, "yEnd":I
    const/4 v2, 0x0

    .line 168
    .local v2, "sXIncrementally":Z
    const/4 v3, 0x0

    .line 170
    .local v3, "sYIncrementally":Z
    const/4 v8, 0x2

    new-array v0, v8, [I

    .line 172
    .local v0, "rector":[I
    const/16 v8, 0x3e9

    if-ne p2, v8, :cond_3

    const/16 v8, 0x3eb

    if-ne p3, v8, :cond_3

    .line 173
    move v5, p6

    .line 174
    move/from16 v7, p7

    .line 175
    const/4 v2, 0x1

    .line 176
    const/4 v3, 0x1

    .line 207
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 208
    .local v1, "sFetch":Z
    if-eqz p4, :cond_10

    .line 209
    if-eqz v2, :cond_a

    .line 210
    move v4, p0

    .local v4, "x":I
    :goto_1
    if-ge v4, v5, :cond_2

    .line 211
    if-eqz v3, :cond_7

    .line 212
    move v6, p1

    .local v6, "y":I
    :goto_2
    if-ge v6, v7, :cond_1

    .line 213
    mul-int v8, v6, p6

    add-int/2addr v8, v4

    aget v8, p5, v8

    if-gez v8, :cond_6

    .line 214
    const/4 v8, 0x0

    aput v4, v0, v8

    .line 215
    const/4 v8, 0x1

    aput v6, v0, v8

    .line 216
    const/4 v1, 0x1

    .line 231
    :cond_1
    :goto_3
    if-eqz v1, :cond_9

    .line 232
    const/4 v1, 0x0

    .line 319
    .end local v4    # "x":I
    .end local v6    # "y":I
    :cond_2
    :goto_4
    return-object v0

    .line 177
    .end local v1    # "sFetch":Z
    :cond_3
    const/16 v8, 0x3e9

    if-ne p2, v8, :cond_4

    const/16 v8, 0x3ec

    if-ne p3, v8, :cond_4

    .line 178
    move v5, p6

    .line 179
    const/4 v7, 0x0

    .line 180
    const/4 v2, 0x1

    .line 181
    const/4 v3, 0x0

    goto :goto_0

    .line 182
    :cond_4
    const/16 v8, 0x3ea

    if-ne p2, v8, :cond_5

    const/16 v8, 0x3eb

    if-ne p3, v8, :cond_5

    .line 183
    const/4 v5, 0x0

    .line 184
    move/from16 v7, p7

    .line 185
    const/4 v2, 0x0

    .line 186
    const/4 v3, 0x1

    goto :goto_0

    .line 187
    :cond_5
    const/16 v8, 0x3ea

    if-ne p2, v8, :cond_0

    const/16 v8, 0x3ec

    if-ne p3, v8, :cond_0

    .line 188
    const/4 v5, 0x0

    .line 189
    const/4 v7, 0x0

    .line 190
    const/4 v2, 0x0

    .line 191
    const/4 v3, 0x0

    goto :goto_0

    .line 212
    .restart local v1    # "sFetch":Z
    .restart local v4    # "x":I
    .restart local v6    # "y":I
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 221
    .end local v6    # "y":I
    :cond_7
    move v6, p1

    .restart local v6    # "y":I
    :goto_5
    if-lt v6, v7, :cond_1

    .line 222
    mul-int v8, v6, p6

    add-int/2addr v8, v4

    aget v8, p5, v8

    if-gez v8, :cond_8

    .line 223
    const/4 v8, 0x0

    aput v4, v0, v8

    .line 224
    const/4 v8, 0x1

    aput v6, v0, v8

    .line 225
    const/4 v1, 0x1

    .line 226
    goto :goto_3

    .line 221
    :cond_8
    add-int/lit8 v6, v6, -0x1

    goto :goto_5

    .line 210
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 237
    .end local v4    # "x":I
    .end local v6    # "y":I
    :cond_a
    move v4, p0

    .restart local v4    # "x":I
    :goto_6
    if-lt v4, v5, :cond_2

    .line 238
    if-eqz v3, :cond_d

    .line 239
    move v6, p1

    .restart local v6    # "y":I
    :goto_7
    if-ge v6, v7, :cond_b

    .line 240
    mul-int v8, v6, p6

    add-int/2addr v8, v4

    aget v8, p5, v8

    if-gez v8, :cond_c

    .line 241
    const/4 v8, 0x0

    aput v4, v0, v8

    .line 242
    const/4 v8, 0x1

    aput v6, v0, v8

    .line 243
    const/4 v1, 0x1

    .line 258
    :cond_b
    :goto_8
    if-eqz v1, :cond_f

    .line 259
    const/4 v1, 0x0

    .line 260
    goto :goto_4

    .line 239
    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 248
    .end local v6    # "y":I
    :cond_d
    move v6, p1

    .restart local v6    # "y":I
    :goto_9
    if-lt v6, v7, :cond_b

    .line 249
    mul-int v8, v6, p6

    add-int/2addr v8, v4

    aget v8, p5, v8

    if-gez v8, :cond_e

    .line 250
    const/4 v8, 0x0

    aput v4, v0, v8

    .line 251
    const/4 v8, 0x1

    aput v6, v0, v8

    .line 252
    const/4 v1, 0x1

    .line 253
    goto :goto_8

    .line 248
    :cond_e
    add-int/lit8 v6, v6, -0x1

    goto :goto_9

    .line 237
    :cond_f
    add-int/lit8 v4, v4, -0x1

    goto :goto_6

    .line 265
    .end local v4    # "x":I
    .end local v6    # "y":I
    :cond_10
    if-eqz v3, :cond_16

    .line 266
    move v6, p1

    .restart local v6    # "y":I
    :goto_a
    if-ge v6, v7, :cond_2

    .line 267
    if-eqz v2, :cond_13

    .line 268
    move v4, p0

    .restart local v4    # "x":I
    :goto_b
    if-ge v4, v5, :cond_11

    .line 269
    mul-int v8, v6, p6

    add-int/2addr v8, v4

    aget v8, p5, v8

    if-gez v8, :cond_12

    .line 270
    const/4 v8, 0x0

    aput v4, v0, v8

    .line 271
    const/4 v8, 0x1

    aput v6, v0, v8

    .line 272
    const/4 v1, 0x1

    .line 286
    :cond_11
    :goto_c
    if-eqz v1, :cond_15

    .line 287
    const/4 v1, 0x0

    .line 288
    goto/16 :goto_4

    .line 268
    :cond_12
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 277
    .end local v4    # "x":I
    :cond_13
    move v4, p0

    .restart local v4    # "x":I
    :goto_d
    if-lt v4, v5, :cond_11

    .line 278
    mul-int v8, v6, p6

    add-int/2addr v8, v4

    aget v8, p5, v8

    if-gez v8, :cond_14

    .line 279
    const/4 v8, 0x0

    aput v4, v0, v8

    .line 280
    const/4 v8, 0x1

    aput v6, v0, v8

    .line 281
    const/4 v1, 0x1

    .line 282
    goto :goto_c

    .line 277
    :cond_14
    add-int/lit8 v4, v4, -0x1

    goto :goto_d

    .line 266
    :cond_15
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    .line 292
    .end local v4    # "x":I
    .end local v6    # "y":I
    :cond_16
    move v6, p1

    .restart local v6    # "y":I
    :goto_e
    if-lt v6, v7, :cond_2

    .line 293
    if-eqz v2, :cond_19

    .line 294
    move v4, p0

    .restart local v4    # "x":I
    :goto_f
    if-ge v4, v5, :cond_17

    .line 295
    mul-int v8, v6, p6

    add-int/2addr v8, v4

    aget v8, p5, v8

    if-gez v8, :cond_18

    .line 296
    const/4 v8, 0x0

    aput v4, v0, v8

    .line 297
    const/4 v8, 0x1

    aput v6, v0, v8

    .line 298
    const/4 v1, 0x1

    .line 312
    :cond_17
    :goto_10
    if-eqz v1, :cond_1b

    .line 313
    const/4 v1, 0x0

    .line 314
    goto/16 :goto_4

    .line 294
    :cond_18
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 303
    .end local v4    # "x":I
    :cond_19
    move v4, p0

    .restart local v4    # "x":I
    :goto_11
    if-lt v4, v5, :cond_17

    .line 304
    mul-int v8, v6, p6

    add-int/2addr v8, v4

    aget v8, p5, v8

    if-gez v8, :cond_1a

    .line 305
    const/4 v8, 0x0

    aput v4, v0, v8

    .line 306
    const/4 v8, 0x1

    aput v6, v0, v8

    .line 307
    const/4 v1, 0x1

    .line 308
    goto :goto_10

    .line 303
    :cond_1a
    add-int/lit8 v4, v4, -0x1

    goto :goto_11

    .line 292
    :cond_1b
    add-int/lit8 v6, v6, -0x1

    goto :goto_e
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/vivo/settings/ImageUtil;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    sget-object v0, Lcom/vivo/settings/ImageUtil;->mInstance:Lcom/vivo/settings/ImageUtil;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/vivo/settings/ImageUtil;

    invoke-direct {v0, p0}, Lcom/vivo/settings/ImageUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/vivo/settings/ImageUtil;->mInstance:Lcom/vivo/settings/ImageUtil;

    .line 46
    :cond_0
    sget-object v0, Lcom/vivo/settings/ImageUtil;->mInstance:Lcom/vivo/settings/ImageUtil;

    return-object v0
.end method

.method private static getSuitableBitmapSize(Landroid/graphics/Bitmap;Landroid/graphics/Rect;I)I
    .locals 22
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "factRect"    # Landroid/graphics/Rect;
    .param p2, "requesTimes"    # I

    .prologue
    .line 97
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 98
    .local v5, "dWidht":I
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 99
    .local v9, "dHeight":I
    mul-int v2, v5, v9

    new-array v3, v2, [I

    .line 100
    .local v3, "pix":[I
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 101
    const/16 v20, -0x1

    .line 102
    .local v20, "radius":I
    new-instance v19, Lcom/vivo/settings/ImageUtil$PointSolution;

    invoke-direct/range {v19 .. v19}, Lcom/vivo/settings/ImageUtil$PointSolution;-><init>()V

    .line 103
    .local v19, "pSolution":Lcom/vivo/settings/ImageUtil$PointSolution;
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    move/from16 v0, v18

    move/from16 v1, p2

    if-ge v0, v1, :cond_3

    .line 104
    if-nez v18, :cond_1

    .line 105
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x3e9

    const/16 v13, 0x3eb

    const/4 v14, 0x0

    move-object v15, v3

    move/from16 v16, v5

    move/from16 v17, v9

    invoke-static/range {v10 .. v17}, Lcom/vivo/settings/ImageUtil;->getFitableRector(IIIIZ[III)[I

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/vivo/settings/ImageUtil$PointSolution;->OrgtopLRector:[I

    .line 106
    add-int/lit8 v10, v5, -0x1

    const/4 v11, 0x0

    const/16 v12, 0x3ea

    const/16 v13, 0x3eb

    const/4 v14, 0x0

    move-object v15, v3

    move/from16 v16, v5

    move/from16 v17, v9

    invoke-static/range {v10 .. v17}, Lcom/vivo/settings/ImageUtil;->getFitableRector(IIIIZ[III)[I

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/vivo/settings/ImageUtil$PointSolution;->OrgtopRRector:[I

    .line 107
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x3e9

    const/16 v13, 0x3eb

    const/4 v14, 0x1

    move-object v15, v3

    move/from16 v16, v5

    move/from16 v17, v9

    invoke-static/range {v10 .. v17}, Lcom/vivo/settings/ImageUtil;->getFitableRector(IIIIZ[III)[I

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/vivo/settings/ImageUtil$PointSolution;->OrgleftTRector:[I

    .line 108
    const/4 v10, 0x0

    add-int/lit8 v11, v9, -0x1

    const/16 v12, 0x3e9

    const/16 v13, 0x3ec

    const/4 v14, 0x1

    move-object v15, v3

    move/from16 v16, v5

    move/from16 v17, v9

    invoke-static/range {v10 .. v17}, Lcom/vivo/settings/ImageUtil;->getFitableRector(IIIIZ[III)[I

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/vivo/settings/ImageUtil$PointSolution;->OrgleftBRector:[I

    .line 109
    add-int/lit8 v10, v5, -0x1

    const/4 v11, 0x0

    const/16 v12, 0x3ea

    const/16 v13, 0x3eb

    const/4 v14, 0x1

    move-object v15, v3

    move/from16 v16, v5

    move/from16 v17, v9

    invoke-static/range {v10 .. v17}, Lcom/vivo/settings/ImageUtil;->getFitableRector(IIIIZ[III)[I

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/vivo/settings/ImageUtil$PointSolution;->OrgrightTRector:[I

    .line 110
    add-int/lit8 v10, v5, -0x1

    add-int/lit8 v11, v9, -0x1

    const/16 v12, 0x3ea

    const/16 v13, 0x3ec

    const/4 v14, 0x1

    move-object v15, v3

    move/from16 v16, v5

    move/from16 v17, v9

    invoke-static/range {v10 .. v17}, Lcom/vivo/settings/ImageUtil;->getFitableRector(IIIIZ[III)[I

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/vivo/settings/ImageUtil$PointSolution;->OrgrightBRector:[I

    .line 111
    const/4 v10, 0x0

    add-int/lit8 v11, v9, -0x1

    const/16 v12, 0x3e9

    const/16 v13, 0x3ec

    const/4 v14, 0x0

    move-object v15, v3

    move/from16 v16, v5

    move/from16 v17, v9

    invoke-static/range {v10 .. v17}, Lcom/vivo/settings/ImageUtil;->getFitableRector(IIIIZ[III)[I

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/vivo/settings/ImageUtil$PointSolution;->OrgbottomLRector:[I

    .line 112
    add-int/lit8 v10, v5, -0x1

    add-int/lit8 v11, v9, -0x1

    const/16 v12, 0x3ea

    const/16 v13, 0x3ec

    const/4 v14, 0x0

    move-object v15, v3

    move/from16 v16, v5

    move/from16 v17, v9

    invoke-static/range {v10 .. v17}, Lcom/vivo/settings/ImageUtil;->getFitableRector(IIIIZ[III)[I

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/vivo/settings/ImageUtil$PointSolution;->OrgbottomRRector:[I

    .line 114
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/vivo/settings/ImageUtil$PointSolution;->access$000(Lcom/vivo/settings/ImageUtil$PointSolution;Landroid/graphics/Rect;)V

    .line 116
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/vivo/settings/ImageUtil$PointSolution;->OrgtopLRector:[I

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/vivo/settings/ImageUtil$PointSolution;->topLRector:[I

    .line 117
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/vivo/settings/ImageUtil$PointSolution;->OrgtopRRector:[I

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/vivo/settings/ImageUtil$PointSolution;->topRRector:[I

    .line 118
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/vivo/settings/ImageUtil$PointSolution;->OrgleftTRector:[I

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/vivo/settings/ImageUtil$PointSolution;->leftTRector:[I

    .line 119
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/vivo/settings/ImageUtil$PointSolution;->OrgleftBRector:[I

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/vivo/settings/ImageUtil$PointSolution;->leftBRector:[I

    .line 120
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/vivo/settings/ImageUtil$PointSolution;->OrgrightTRector:[I

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/vivo/settings/ImageUtil$PointSolution;->rightTRector:[I

    .line 121
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/vivo/settings/ImageUtil$PointSolution;->OrgrightBRector:[I

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/vivo/settings/ImageUtil$PointSolution;->rightBRector:[I

    .line 122
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/vivo/settings/ImageUtil$PointSolution;->OrgbottomLRector:[I

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/vivo/settings/ImageUtil$PointSolution;->bottomLRector:[I

    .line 123
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/vivo/settings/ImageUtil$PointSolution;->OrgbottomRRector:[I

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/vivo/settings/ImageUtil$PointSolution;->bottomRRector:[I

    .line 135
    :goto_1
    invoke-virtual/range {v19 .. v19}, Lcom/vivo/settings/ImageUtil$PointSolution;->getCurRawfourDirectionRadius()I

    move-result v20

    .line 140
    if-gez v20, :cond_0

    move/from16 v0, v18

    move/from16 v1, p2

    if-ne v0, v1, :cond_2

    :cond_0
    move/from16 v21, v20

    .line 144
    .end local v20    # "radius":I
    .local v21, "radius":I
    :goto_2
    return v21

    .line 125
    .end local v21    # "radius":I
    .restart local v20    # "radius":I
    :cond_1
    const/4 v10, 0x0

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/vivo/settings/ImageUtil$PointSolution;->topLRector:[I

    const/4 v4, 0x1

    aget v2, v2, v4

    add-int/lit8 v11, v2, 0x1

    const/16 v12, 0x3e9

    const/16 v13, 0x3eb

    const/4 v14, 0x0

    move-object v15, v3

    move/from16 v16, v5

    move/from16 v17, v9

    invoke-static/range {v10 .. v17}, Lcom/vivo/settings/ImageUtil;->getFitableRector(IIIIZ[III)[I

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/vivo/settings/ImageUtil$PointSolution;->topLRector:[I

    .line 126
    add-int/lit8 v10, v5, -0x1

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/vivo/settings/ImageUtil$PointSolution;->topRRector:[I

    const/4 v4, 0x1

    aget v2, v2, v4

    add-int/lit8 v11, v2, 0x1

    const/16 v12, 0x3ea

    const/16 v13, 0x3eb

    const/4 v14, 0x0

    move-object v15, v3

    move/from16 v16, v5

    move/from16 v17, v9

    invoke-static/range {v10 .. v17}, Lcom/vivo/settings/ImageUtil;->getFitableRector(IIIIZ[III)[I

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/vivo/settings/ImageUtil$PointSolution;->topRRector:[I

    .line 127
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/vivo/settings/ImageUtil$PointSolution;->leftTRector:[I

    const/4 v4, 0x0

    aget v2, v2, v4

    add-int/lit8 v10, v2, 0x1

    const/4 v11, 0x0

    const/16 v12, 0x3e9

    const/16 v13, 0x3eb

    const/4 v14, 0x1

    move-object v15, v3

    move/from16 v16, v5

    move/from16 v17, v9

    invoke-static/range {v10 .. v17}, Lcom/vivo/settings/ImageUtil;->getFitableRector(IIIIZ[III)[I

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/vivo/settings/ImageUtil$PointSolution;->leftTRector:[I

    .line 128
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/vivo/settings/ImageUtil$PointSolution;->leftBRector:[I

    const/4 v4, 0x0

    aget v2, v2, v4

    add-int/lit8 v10, v2, 0x1

    add-int/lit8 v11, v9, -0x1

    const/16 v12, 0x3e9

    const/16 v13, 0x3ec

    const/4 v14, 0x1

    move-object v15, v3

    move/from16 v16, v5

    move/from16 v17, v9

    invoke-static/range {v10 .. v17}, Lcom/vivo/settings/ImageUtil;->getFitableRector(IIIIZ[III)[I

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/vivo/settings/ImageUtil$PointSolution;->leftBRector:[I

    .line 129
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/vivo/settings/ImageUtil$PointSolution;->rightTRector:[I

    const/4 v4, 0x0

    aget v2, v2, v4

    add-int/lit8 v10, v2, -0x1

    const/4 v11, 0x0

    const/16 v12, 0x3ea

    const/16 v13, 0x3eb

    const/4 v14, 0x1

    move-object v15, v3

    move/from16 v16, v5

    move/from16 v17, v9

    invoke-static/range {v10 .. v17}, Lcom/vivo/settings/ImageUtil;->getFitableRector(IIIIZ[III)[I

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/vivo/settings/ImageUtil$PointSolution;->rightTRector:[I

    .line 130
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/vivo/settings/ImageUtil$PointSolution;->rightBRector:[I

    const/4 v4, 0x0

    aget v2, v2, v4

    add-int/lit8 v10, v2, -0x1

    add-int/lit8 v11, v9, -0x1

    const/16 v12, 0x3ea

    const/16 v13, 0x3ec

    const/4 v14, 0x1

    move-object v15, v3

    move/from16 v16, v5

    move/from16 v17, v9

    invoke-static/range {v10 .. v17}, Lcom/vivo/settings/ImageUtil;->getFitableRector(IIIIZ[III)[I

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/vivo/settings/ImageUtil$PointSolution;->rightBRector:[I

    .line 131
    const/4 v10, 0x0

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/vivo/settings/ImageUtil$PointSolution;->bottomLRector:[I

    const/4 v4, 0x1

    aget v2, v2, v4

    add-int/lit8 v11, v2, -0x1

    const/16 v12, 0x3e9

    const/16 v13, 0x3ec

    const/4 v14, 0x0

    move-object v15, v3

    move/from16 v16, v5

    move/from16 v17, v9

    invoke-static/range {v10 .. v17}, Lcom/vivo/settings/ImageUtil;->getFitableRector(IIIIZ[III)[I

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/vivo/settings/ImageUtil$PointSolution;->bottomLRector:[I

    .line 132
    add-int/lit8 v10, v5, -0x1

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/vivo/settings/ImageUtil$PointSolution;->bottomRRector:[I

    const/4 v4, 0x1

    aget v2, v2, v4

    add-int/lit8 v11, v2, -0x1

    const/16 v12, 0x3ea

    const/16 v13, 0x3ec

    const/4 v14, 0x0

    move-object v15, v3

    move/from16 v16, v5

    move/from16 v17, v9

    invoke-static/range {v10 .. v17}, Lcom/vivo/settings/ImageUtil;->getFitableRector(IIIIZ[III)[I

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/vivo/settings/ImageUtil$PointSolution;->bottomRRector:[I

    goto/16 :goto_1

    .line 103
    :cond_2
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0

    :cond_3
    move/from16 v21, v20

    .line 144
    .end local v20    # "radius":I
    .restart local v21    # "radius":I
    goto/16 :goto_2
.end method


# virtual methods
.method createNewCenterBitmap(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;
    .locals 23
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "srcIcon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "icon"    # Landroid/graphics/Bitmap;
    .param p4, "iconRect"    # Landroid/graphics/Rect;
    .param p5, "maskBitmap"    # Landroid/graphics/Bitmap;
    .param p6, "iconBg"    # Landroid/graphics/drawable/Drawable;
    .param p7, "scale"    # F

    .prologue
    .line 627
    const/high16 v7, 0x3f800000    # 1.0f

    .line 628
    .local v7, "factScale":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/settings/ImageUtil;->sIconBgWidth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/settings/ImageUtil;->sIconBgHeight:I

    move/from16 v20, v0

    sget-object v21, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v19 .. v21}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 630
    .local v13, "maskedBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vivo/settings/ImageUtil;->sMaskCanvas:Landroid/graphics/Canvas;

    .line 631
    .local v12, "maskCanvas":Landroid/graphics/Canvas;
    invoke-virtual {v12, v13}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/settings/ImageUtil;->sMaskRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->height()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x3f800000    # 1.0f

    mul-float v19, v19, v20

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v19, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/settings/ImageUtil;->sMaskRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->width()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x3f800000    # 1.0f

    mul-float v20, v20, v21

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/settings/ImageUtil;->sMaskRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->width()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/settings/ImageUtil;->sMaskRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v7

    sub-float v10, v19, v20

    .line 638
    .local v10, "marginLeft":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/settings/ImageUtil;->sMaskRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->height()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/settings/ImageUtil;->sMaskRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    add-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->height()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    move-object/from16 v0, p4

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v7

    sub-float v11, v19, v20

    .line 640
    .local v11, "marginTop":F
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v17, v7, v19

    .line 641
    .local v17, "targetWidth":F
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v16, v7, v19

    .line 649
    .local v16, "targetHeight":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/settings/ImageUtil;->sOldBounds:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 650
    float-to-int v0, v10

    move/from16 v19, v0

    float-to-int v0, v11

    move/from16 v20, v0

    add-float v21, v10, v17

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    add-float v22, v11, v16

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 651
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/settings/ImageUtil;->sOldBounds:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 654
    new-instance v14, Landroid/graphics/Matrix;

    invoke-direct {v14}, Landroid/graphics/Matrix;-><init>()V

    .line 655
    .local v14, "matrix":Landroid/graphics/Matrix;
    new-instance v15, Landroid/graphics/Paint;

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-direct {v15, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 658
    .local v15, "paint":Landroid/graphics/Paint;
    new-instance v19, Landroid/graphics/PorterDuffXfermode;

    sget-object v20, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v19 .. v20}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 659
    move-object/from16 v0, p5

    invoke-virtual {v12, v0, v14, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 661
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/settings/ImageUtil;->sIconBgWidth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/settings/ImageUtil;->sIconBgHeight:I

    move/from16 v20, v0

    sget-object v21, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v19 .. v21}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 663
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6}, Landroid/graphics/Canvas;-><init>()V

    .line 664
    .local v6, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v6, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 666
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/settings/ImageUtil;->sIconBgWidth:I

    move/from16 v19, v0

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v20

    sub-int v19, v19, v20

    div-int/lit8 v9, v19, 0x2

    .line 667
    .local v9, "left":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/vivo/settings/ImageUtil;->sIconBgHeight:I

    move/from16 v19, v0

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v20

    sub-int v19, v19, v20

    div-int/lit8 v18, v19, 0x2

    .line 668
    .local v18, "top":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/settings/ImageUtil;->sOldBounds:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 669
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v19

    add-int v19, v19, v9

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v20

    add-int v20, v20, v18

    move-object/from16 v0, p6

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v9, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 670
    move-object/from16 v0, p6

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/settings/ImageUtil;->sOldBounds:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, p6

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 672
    int-to-float v0, v9

    move/from16 v19, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v6, v13, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 674
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0200cb

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 675
    .local v8, "iconBorder":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v19

    add-int v19, v19, v9

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v20

    add-int v20, v20, v18

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v8, v9, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 676
    invoke-virtual {v8, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 678
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->recycle()V

    .line 679
    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 680
    return-object v5
.end method

.method public createRedrawIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "srcIconDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 488
    iget-object v0, p0, Lcom/vivo/settings/ImageUtil;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, v0, p2}, Lcom/vivo/settings/ImageUtil;->createRedrawIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public createRedrawIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 37
    .param p1, "srcIconDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "iconBg"    # Landroid/graphics/drawable/Drawable;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 493
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vivo/settings/ImageUtil;->sMaskBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_0

    .line 494
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200cc

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/vivo/settings/ImageUtil;->sMaskBitmap:Landroid/graphics/Bitmap;

    .line 495
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vivo/settings/ImageUtil;->sMaskBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/settings/ImageUtil;->sMaskRect:Landroid/graphics/Rect;

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/vivo/settings/ImageUtil;->getSuitableBitmapSize(Landroid/graphics/Bitmap;Landroid/graphics/Rect;I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/vivo/settings/ImageUtil;->sMaskRadius:I

    .line 496
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/vivo/settings/ImageUtil;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/settings/ImageUtil;->sIconBgRect:Landroid/graphics/Rect;

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/vivo/settings/ImageUtil;->getSuitableBitmapSize(Landroid/graphics/Bitmap;Landroid/graphics/Rect;I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/vivo/settings/ImageUtil;->sIconBgRadius:I

    .line 503
    :cond_0
    const/4 v15, -0x1

    .line 504
    .local v15, "iconRadius":I
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 505
    .local v7, "iconRect":Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p1}, Lcom/vivo/settings/ImageUtil;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 507
    .local v6, "iconBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vivo/settings/ImageUtil;->sMaskBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vivo/settings/ImageUtil;->sMaskRadius:I

    if-ltz v3, :cond_6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vivo/settings/ImageUtil;->sMaskRadius:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/settings/ImageUtil;->sMaskRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x3

    if-ge v3, v4, :cond_6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vivo/settings/ImageUtil;->sMaskRadius:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/settings/ImageUtil;->sMaskRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x3

    if-ge v3, v4, :cond_6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vivo/settings/ImageUtil;->sIconBgRadius:I

    if-ltz v3, :cond_6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vivo/settings/ImageUtil;->sIconBgRadius:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/settings/ImageUtil;->sIconBgRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x3

    if-ge v3, v4, :cond_6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vivo/settings/ImageUtil;->sIconBgRadius:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/settings/ImageUtil;->sIconBgRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x3

    if-ge v3, v4, :cond_6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vivo/settings/ImageUtil;->sMaskRadius:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vivo/settings/ImageUtil;->sIconBgRadius:I

    if-ne v3, v4, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vivo/settings/ImageUtil;->sMaskRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/settings/ImageUtil;->sIconBgRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-ne v3, v4, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vivo/settings/ImageUtil;->sMaskRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/settings/ImageUtil;->sIconBgRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-ne v3, v4, :cond_6

    .line 512
    const/4 v3, 0x1

    invoke-static {v6, v7, v3}, Lcom/vivo/settings/ImageUtil;->getSuitableBitmapSize(Landroid/graphics/Bitmap;Landroid/graphics/Rect;I)I

    move-result v15

    .line 518
    if-ltz v15, :cond_5

    int-to-float v3, v15

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3e99999a    # 0.3f

    mul-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_5

    int-to-float v3, v15

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3e99999a    # 0.3f

    mul-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_5

    .line 520
    move-object/from16 v0, p0

    iget v3, v0, Lcom/vivo/settings/ImageUtil;->sIconBgWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vivo/settings/ImageUtil;->sIconBgHeight:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v23

    .line 521
    .local v23, "maskedBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vivo/settings/ImageUtil;->sMaskCanvas:Landroid/graphics/Canvas;

    move-object/from16 v20, v0

    .line 522
    .local v20, "maskCanvas":Landroid/graphics/Canvas;
    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 525
    const/high16 v16, 0x3f800000    # 1.0f

    .line 527
    .local v16, "iconScale":F
    const/high16 v21, 0x3f800000    # 1.0f

    .line 528
    .local v21, "maskScaleX":F
    const/high16 v22, 0x3f800000    # 1.0f

    .line 530
    .local v22, "maskScaleY":F
    if-ltz v15, :cond_4

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    if-ge v15, v3, :cond_4

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    if-ge v15, v3, :cond_4

    .line 533
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vivo/settings/ImageUtil;->sIconBgRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/settings/ImageUtil;->sIconBgRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v4, v5

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v33

    .line 534
    .local v33, "temScale":F
    int-to-float v3, v15

    mul-float v29, v3, v33

    .line 535
    .local v29, "targetRadius":F
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float v32, v3, v33

    .line 536
    .local v32, "temIconRectWidth":F
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float v31, v3, v33

    .line 538
    .local v31, "temIconRectHeight":F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/vivo/settings/ImageUtil;->sIconBgRadius:I

    int-to-float v3, v3

    cmpl-float v3, v29, v3

    if-lez v3, :cond_3

    .line 540
    const/high16 v3, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vivo/settings/ImageUtil;->sIconBgRadius:I

    int-to-float v4, v4

    sub-float v4, v29, v4

    mul-float v13, v3, v4

    .line 541
    .local v13, "extra":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vivo/settings/ImageUtil;->sIconBgRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v13

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    div-float v3, v3, v32

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/settings/ImageUtil;->sIconBgRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v13

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v4, v5

    div-float v4, v4, v31

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v16

    .line 547
    .end local v13    # "extra":F
    :goto_0
    mul-float v16, v16, v33

    .line 553
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v30, v16, v3

    .line 554
    .local v30, "targetWidth":F
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v28, v16, v3

    .line 556
    .local v28, "targetHeight":F
    const/16 v25, 0x0

    .line 557
    .local v25, "offsetX":F
    const/16 v26, 0x0

    .line 558
    .local v26, "offsetY":F
    iget v3, v7, Landroid/graphics/Rect;->left:I

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget v5, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    if-eq v3, v4, :cond_1

    .line 559
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget v4, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    iget v4, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float v3, v3, v16

    const/high16 v4, 0x40000000    # 2.0f

    div-float v25, v3, v4

    .line 562
    :cond_1
    iget v3, v7, Landroid/graphics/Rect;->top:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget v5, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    if-eq v3, v4, :cond_2

    .line 563
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget v4, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    iget v4, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float v3, v3, v16

    const/high16 v4, 0x40000000    # 2.0f

    div-float v26, v3, v4

    .line 566
    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/vivo/settings/ImageUtil;->sIconBgWidth:I

    int-to-float v3, v3

    sub-float v3, v3, v30

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float v18, v3, v25

    .line 567
    .local v18, "marginLeft":F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/vivo/settings/ImageUtil;->sIconBgHeight:I

    int-to-float v3, v3

    sub-float v3, v3, v28

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float v19, v3, v26

    .line 569
    .local v19, "marginTop":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vivo/settings/ImageUtil;->sIconBgRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/settings/ImageUtil;->sMaskRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float v21, v3, v4

    .line 570
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vivo/settings/ImageUtil;->sIconBgRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/settings/ImageUtil;->sMaskRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float v22, v3, v4

    .line 572
    move-object/from16 v0, p0

    iget v3, v0, Lcom/vivo/settings/ImageUtil;->sIconBgWidth:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/settings/ImageUtil;->sMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v21

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v35, v3, v4

    .line 573
    .local v35, "transX":F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/vivo/settings/ImageUtil;->sIconBgHeight:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/settings/ImageUtil;->sMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v22

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v36, v3, v4

    .line 575
    .local v36, "transY":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vivo/settings/ImageUtil;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 576
    move/from16 v0, v18

    float-to-int v3, v0

    move/from16 v0, v19

    float-to-int v4, v0

    add-float v5, v18, v30

    float-to-int v5, v5

    add-float v8, v19, v28

    float-to-int v8, v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 577
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 578
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vivo/settings/ImageUtil;->sOldBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 580
    new-instance v24, Landroid/graphics/Matrix;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/Matrix;-><init>()V

    .line 581
    .local v24, "matrix":Landroid/graphics/Matrix;
    new-instance v27, Landroid/graphics/Paint;

    const/4 v3, 0x1

    move-object/from16 v0, v27

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 582
    .local v27, "paint":Landroid/graphics/Paint;
    move-object/from16 v0, v24

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 583
    move-object/from16 v0, v24

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 584
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 585
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vivo/settings/ImageUtil;->sMaskBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-object/from16 v2, v27

    invoke-virtual {v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 587
    move-object/from16 v0, p0

    iget v3, v0, Lcom/vivo/settings/ImageUtil;->sIconBgWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vivo/settings/ImageUtil;->sIconBgHeight:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 589
    .local v11, "bitmap":Landroid/graphics/Bitmap;
    new-instance v12, Landroid/graphics/Canvas;

    invoke-direct {v12}, Landroid/graphics/Canvas;-><init>()V

    .line 590
    .local v12, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v12, v11}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 592
    const/16 v17, 0x0

    .line 593
    .local v17, "left":I
    const/16 v34, 0x0

    .line 594
    .local v34, "top":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vivo/settings/ImageUtil;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 595
    move-object/from16 v0, p0

    iget v3, v0, Lcom/vivo/settings/ImageUtil;->sIconBgWidth:I

    add-int v3, v3, v17

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vivo/settings/ImageUtil;->sIconBgHeight:I

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 596
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 597
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vivo/settings/ImageUtil;->sOldBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 598
    move/from16 v0, v17

    int-to-float v3, v0

    move/from16 v0, v34

    int-to-float v4, v0

    const/4 v5, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v12, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 600
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200cb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 601
    .local v14, "iconBorder":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/vivo/settings/ImageUtil;->sIconBgWidth:I

    add-int v3, v3, v17

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vivo/settings/ImageUtil;->sIconBgHeight:I

    move/from16 v0, v17

    move/from16 v1, v34

    invoke-virtual {v14, v0, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 602
    invoke-virtual {v14, v12}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 604
    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 605
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 613
    .end local v11    # "bitmap":Landroid/graphics/Bitmap;
    .end local v12    # "canvas":Landroid/graphics/Canvas;
    .end local v14    # "iconBorder":Landroid/graphics/drawable/Drawable;
    .end local v16    # "iconScale":F
    .end local v17    # "left":I
    .end local v18    # "marginLeft":F
    .end local v19    # "marginTop":F
    .end local v20    # "maskCanvas":Landroid/graphics/Canvas;
    .end local v21    # "maskScaleX":F
    .end local v22    # "maskScaleY":F
    .end local v23    # "maskedBitmap":Landroid/graphics/Bitmap;
    .end local v24    # "matrix":Landroid/graphics/Matrix;
    .end local v25    # "offsetX":F
    .end local v26    # "offsetY":F
    .end local v27    # "paint":Landroid/graphics/Paint;
    .end local v28    # "targetHeight":F
    .end local v29    # "targetRadius":F
    .end local v30    # "targetWidth":F
    .end local v31    # "temIconRectHeight":F
    .end local v32    # "temIconRectWidth":F
    .end local v33    # "temScale":F
    .end local v34    # "top":I
    .end local v35    # "transX":F
    .end local v36    # "transY":F
    :goto_1
    return-object v11

    .line 544
    .restart local v16    # "iconScale":F
    .restart local v20    # "maskCanvas":Landroid/graphics/Canvas;
    .restart local v21    # "maskScaleX":F
    .restart local v22    # "maskScaleY":F
    .restart local v23    # "maskedBitmap":Landroid/graphics/Bitmap;
    .restart local v29    # "targetRadius":F
    .restart local v31    # "temIconRectHeight":F
    .restart local v32    # "temIconRectWidth":F
    .restart local v33    # "temScale":F
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vivo/settings/ImageUtil;->sIconBgRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3f8ccccd    # 1.1f

    mul-float/2addr v3, v4

    div-float v3, v3, v31

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/settings/ImageUtil;->sIconBgRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3f8ccccd    # 1.1f

    mul-float/2addr v4, v5

    div-float v4, v4, v32

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v16

    goto/16 :goto_0

    .line 550
    .end local v29    # "targetRadius":F
    .end local v31    # "temIconRectHeight":F
    .end local v32    # "temIconRectWidth":F
    .end local v33    # "temScale":F
    :cond_4
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/vivo/settings/ImageUtil;->sMaskBitmap:Landroid/graphics/Bitmap;

    const v10, 0x3f59999a    # 0.85f

    move-object/from16 v3, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p1

    move-object/from16 v9, p2

    invoke-virtual/range {v3 .. v10}, Lcom/vivo/settings/ImageUtil;->createNewCenterBitmap(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object v11

    goto :goto_1

    .line 609
    .end local v16    # "iconScale":F
    .end local v20    # "maskCanvas":Landroid/graphics/Canvas;
    .end local v21    # "maskScaleX":F
    .end local v22    # "maskScaleY":F
    .end local v23    # "maskedBitmap":Landroid/graphics/Bitmap;
    :cond_5
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/vivo/settings/ImageUtil;->sMaskBitmap:Landroid/graphics/Bitmap;

    const v10, 0x3f4ccccd    # 0.8f

    move-object/from16 v3, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p1

    move-object/from16 v9, p2

    invoke-virtual/range {v3 .. v10}, Lcom/vivo/settings/ImageUtil;->createNewCenterBitmap(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object v11

    goto :goto_1

    .line 612
    :cond_6
    const/4 v3, 0x1

    invoke-static {v6, v7, v3}, Lcom/vivo/settings/ImageUtil;->getSuitableBitmapSize(Landroid/graphics/Bitmap;Landroid/graphics/Rect;I)I

    move-result v15

    .line 613
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/vivo/settings/ImageUtil;->sMaskBitmap:Landroid/graphics/Bitmap;

    const/4 v10, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p1

    move-object/from16 v9, p2

    invoke-virtual/range {v3 .. v10}, Lcom/vivo/settings/ImageUtil;->createNewCenterBitmap(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object v11

    goto :goto_1
.end method

.method public drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v8, 0x0

    .line 59
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 60
    .local v4, "w":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 62
    .local v3, "h":I
    if-gtz v4, :cond_0

    .line 64
    const-string v5, "ImageUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "drawableToBitmap w:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " error,set to sIconBgWidth:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/vivo/settings/ImageUtil;->sIconBgWidth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget v4, p0, Lcom/vivo/settings/ImageUtil;->sIconBgWidth:I

    .line 68
    :cond_0
    if-gtz v3, :cond_1

    .line 70
    const-string v5, "ImageUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "drawableToBitmap h:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " error,set to sIconBgHeight:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/vivo/settings/ImageUtil;->sIconBgHeight:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget v3, p0, Lcom/vivo/settings/ImageUtil;->sIconBgHeight:I

    .line 75
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 78
    .local v2, "config":Landroid/graphics/Bitmap$Config;
    :goto_0
    invoke-static {v4, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 80
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 81
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1, v8, v8, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 83
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 84
    return-object v0

    .line 75
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "config":Landroid/graphics/Bitmap$Config;
    :cond_2
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method
