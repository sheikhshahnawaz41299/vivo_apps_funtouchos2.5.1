.class public Lcom/android/systemui/vivo/common/utils/VivoImageUtil;
.super Ljava/lang/Object;
.source "VivoImageUtil.java"


# static fields
.field private static final BOTTOMDIRECTION:I = 0x3ec

.field private static final DEBUG:Z = false

.field private static final LEFTDIRECTION:I = 0x3e9

.field private static final RIGHTDIRECTION:I = 0x3ea

.field private static final TAG:Ljava/lang/String; = "ImageUtil"

.field private static final TOPDIRECTION:I = 0x3eb

.field private static mInstance:Lcom/android/systemui/vivo/common/utils/VivoImageUtil;

.field private static final sCanvas:Landroid/graphics/Canvas;

.field private static sIconHeight:I

.field private static sIconScaleHeight:I

.field private static sIconScaleWidth:I

.field private static sIconTextureHeight:I

.field private static sIconTextureWidth:I

.field private static sIconWidth:I

.field private static final sOldBounds:Landroid/graphics/Rect;


# instance fields
.field private final MIN_OS_VERSION:F

.field private mContext:Landroid/content/Context;

.field private mOldThemeId:I

.field private sInit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 47
    sput v1, Lcom/android/systemui/vivo/common/utils/VivoImageUtil;->sIconWidth:I

    .line 48
    sput v1, Lcom/android/systemui/vivo/common/utils/VivoImageUtil;->sIconHeight:I

    .line 49
    sput v1, Lcom/android/systemui/vivo/common/utils/VivoImageUtil;->sIconTextureWidth:I

    .line 50
    sput v1, Lcom/android/systemui/vivo/common/utils/VivoImageUtil;->sIconTextureHeight:I

    .line 52
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/systemui/vivo/common/utils/VivoImageUtil;->sOldBounds:Landroid/graphics/Rect;

    .line 53
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lcom/android/systemui/vivo/common/utils/VivoImageUtil;->sCanvas:Landroid/graphics/Canvas;

    .line 54
    sput v1, Lcom/android/systemui/vivo/common/utils/VivoImageUtil;->sIconScaleWidth:I

    .line 55
    sput v1, Lcom/android/systemui/vivo/common/utils/VivoImageUtil;->sIconScaleHeight:I

    .line 61
    sget-object v0, Lcom/android/systemui/vivo/common/utils/VivoImageUtil;->sCanvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 63
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/utils/VivoImageUtil;->sInit:Z

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/vivo/common/utils/VivoImageUtil;->mOldThemeId:I

    .line 58
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/android/systemui/vivo/common/utils/VivoImageUtil;->MIN_OS_VERSION:F

    .line 73
    iget-object v0, p0, Lcom/android/systemui/vivo/common/utils/VivoImageUtil;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 74
    iput-object p1, p0, Lcom/android/systemui/vivo/common/utils/VivoImageUtil;->mContext:Landroid/content/Context;

    .line 76
    :cond_0
    return-void
.end method

.method private clearInitFlags(I)V
    .locals 1
    .param p1, "themeId"    # I

    .prologue
    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/utils/VivoImageUtil;->sInit:Z

    .line 119
    iput p1, p0, Lcom/android/systemui/vivo/common/utils/VivoImageUtil;->mOldThemeId:I

    .line 120
    return-void
.end method

.method private drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v7, 0x0

    .line 88
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 89
    .local v4, "w":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 90
    .local v3, "h":I
    if-lez v4, :cond_0

    if-gtz v3, :cond_2

    .line 91
    :cond_0
    const-string v5, "ImageUtil"

    const-string v6, "drawableToBitmap error : get drawable width and height error!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    if-gtz v4, :cond_1

    sget v4, Lcom/android/systemui/vivo/common/utils/VivoImageUtil;->sIconWidth:I

    .line 93
    :cond_1
    if-gtz v3, :cond_2

    sget v3, Lcom/android/systemui/vivo/common/utils/VivoImageUtil;->sIconHeight:I

    .line 95
    :cond_2
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 96
    .local v2, "config":Landroid/graphics/Bitmap$Config;
    invoke-static {v4, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 97
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 98
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1, v7, v7, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 99
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 100
    return-object v0
.end method

.method private static getFactIconSize(Landroid/graphics/Bitmap;I)I
    .locals 11
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "direction"    # I

    .prologue
    const/4 v2, 0x0

    .line 226
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 227
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 228
    .local v7, "height":I
    mul-int v0, v3, v7

    new-array v1, v0, [I

    .local v1, "pix":[I
    move-object v0, p0

    move v4, v2

    move v5, v2

    move v6, v3

    .line 229
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 230
    const/4 v8, 0x0

    .line 231
    .local v8, "size":I
    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_2

    .line 232
    const/4 v9, 0x0

    .local v9, "x":I
    :goto_0
    if-ge v9, v3, :cond_b

    .line 233
    const/4 v10, 0x0

    .local v10, "y":I
    :goto_1
    if-ge v10, v7, :cond_0

    .line 234
    mul-int v0, v10, v3

    add-int/2addr v0, v9

    aget v0, v1, v0

    invoke-static {v0}, Lcom/android/systemui/vivo/common/utils/VivoImageUtil;->isActivePix(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    move v8, v9

    .line 232
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 233
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 240
    .end local v9    # "x":I
    .end local v10    # "y":I
    :cond_2
    const/16 v0, 0x3ea

    if-ne p1, v0, :cond_5

    .line 241
    add-int/lit8 v9, v3, -0x1

    .restart local v9    # "x":I
    :goto_2
    if-ltz v9, :cond_b

    .line 242
    const/4 v10, 0x0

    .restart local v10    # "y":I
    :goto_3
    if-ge v10, v7, :cond_3

    .line 243
    mul-int v0, v10, v3

    add-int/2addr v0, v9

    aget v0, v1, v0

    invoke-static {v0}, Lcom/android/systemui/vivo/common/utils/VivoImageUtil;->isActivePix(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 244
    move v8, v9

    .line 241
    :cond_3
    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    .line 242
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 249
    .end local v9    # "x":I
    .end local v10    # "y":I
    :cond_5
    const/16 v0, 0x3eb

    if-ne p1, v0, :cond_8

    .line 251
    const/4 v10, 0x0

    .restart local v10    # "y":I
    :goto_4
    if-ge v10, v7, :cond_b

    .line 252
    const/4 v9, 0x0

    .restart local v9    # "x":I
    :goto_5
    if-ge v10, v3, :cond_6

    .line 253
    mul-int v0, v10, v3

    add-int/2addr v0, v9

    :try_start_0
    aget v0, v1, v0

    invoke-static {v0}, Lcom/android/systemui/vivo/common/utils/VivoImageUtil;->isActivePix(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_7

    .line 254
    move v8, v10

    .line 251
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 252
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 261
    .end local v9    # "x":I
    .end local v10    # "y":I
    :cond_8
    const/16 v0, 0x3ec

    if-ne p1, v0, :cond_b

    .line 263
    add-int/lit8 v10, v7, -0x1

    .restart local v10    # "y":I
    :goto_6
    if-ltz v10, :cond_b

    .line 264
    const/4 v9, 0x0

    .restart local v9    # "x":I
    :goto_7
    if-ge v9, v3, :cond_9

    .line 265
    mul-int v0, v10, v3

    add-int/2addr v0, v9

    :try_start_1
    aget v0, v1, v0

    invoke-static {v0}, Lcom/android/systemui/vivo/common/utils/VivoImageUtil;->isActivePix(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-eqz v0, :cond_a

    .line 266
    move v8, v10

    .line 263
    :cond_9
    add-int/lit8 v10, v10, -0x1

    goto :goto_6

    .line 264
    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 271
    :catch_0
    move-exception v0

    .line 274
    .end local v9    # "x":I
    .end local v10    # "y":I
    :cond_b
    :goto_8
    return v8

    .line 259
    .restart local v9    # "x":I
    .restart local v10    # "y":I
    :catch_1
    move-exception v0

    goto :goto_8
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/utils/VivoImageUtil;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    sget-object v0, Lcom/android/systemui/vivo/common/utils/VivoImageUtil;->mInstance:Lcom/android/systemui/vivo/common/utils/VivoImageUtil;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/android/systemui/vivo/common/utils/VivoImageUtil;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/utils/VivoImageUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/vivo/common/utils/VivoImageUtil;->mInstance:Lcom/android/systemui/vivo/common/utils/VivoImageUtil;

    .line 69
    :cond_0
    sget-object v0, Lcom/android/systemui/vivo/common/utils/VivoImageUtil;->mInstance:Lcom/android/systemui/vivo/common/utils/VivoImageUtil;

    return-object v0
.end method

.method private initStatics(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 80
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x7f0f0181

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/android/systemui/vivo/common/utils/VivoImageUtil;->sIconHeight:I

    sput v1, Lcom/android/systemui/vivo/common/utils/VivoImageUtil;->sIconWidth:I

    .line 81
    sget v1, Lcom/android/systemui/vivo/common/utils/VivoImageUtil;->sIconWidth:I

    sput v1, Lcom/android/systemui/vivo/common/utils/VivoImageUtil;->sIconTextureHeight:I

    sput v1, Lcom/android/systemui/vivo/common/utils/VivoImageUtil;->sIconTextureWidth:I

    .line 82
    const v1, 0x7f0f0182

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/android/systemui/vivo/common/utils/VivoImageUtil;->sIconScaleHeight:I

    sput v1, Lcom/android/systemui/vivo/common/utils/VivoImageUtil;->sIconScaleWidth:I

    .line 84
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/utils/VivoImageUtil;->sInit:Z

    .line 85
    return-void
.end method

.method private static isActivePix(I)Z
    .locals 1
    .param p0, "color"    # I

    .prologue
    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, "sActivePix":Z
    if-gez p0, :cond_0

    .line 111
    const/4 v0, 0x1

    .line 113
    :cond_0
    return v0
.end method


# virtual methods
.method public createScaleIconBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 38
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 123
    sget-object v34, Lcom/android/systemui/vivo/common/utils/VivoImageUtil;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v34

    .line 125
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/utils/VivoImageUtil;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    .line 126
    .local v19, "resources":Landroid/content/res/Resources;
    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    .line 127
    .local v8, "config":Landroid/content/res/Configuration;
    if-nez v8, :cond_4

    .line 128
    const/16 v33, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/systemui/vivo/common/utils/VivoImageUtil;->clearInitFlags(I)V

    .line 149
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/vivo/common/utils/VivoImageUtil;->sInit:Z

    move/from16 v33, v0

    if-nez v33, :cond_1

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/utils/VivoImageUtil;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/systemui/vivo/common/utils/VivoImageUtil;->initStatics(Landroid/content/Context;)V

    .line 153
    :cond_1
    sget v28, Lcom/android/systemui/vivo/common/utils/VivoImageUtil;->sIconScaleWidth:I

    .line 154
    .local v28, "width":I
    sget v11, Lcom/android/systemui/vivo/common/utils/VivoImageUtil;->sIconScaleHeight:I

    .line 156
    .local v11, "height":I
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/graphics/drawable/PaintDrawable;

    move/from16 v33, v0

    if-eqz v33, :cond_7

    .line 157
    move-object/from16 v0, p1

    check-cast v0, Landroid/graphics/drawable/PaintDrawable;

    move-object/from16 v17, v0

    .line 158
    .local v17, "painter":Landroid/graphics/drawable/PaintDrawable;
    move-object/from16 v0, v17

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    .line 159
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    .line 169
    .end local v17    # "painter":Landroid/graphics/drawable/PaintDrawable;
    :cond_2
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    .line 170
    .local v12, "iconWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    .line 173
    .local v13, "iconeHeight":I
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v33, v0

    if-eqz v33, :cond_8

    .line 174
    move-object/from16 v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v5, v0

    .line 175
    .local v5, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 180
    .end local v5    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .local v6, "bmpIcon":Landroid/graphics/Bitmap;
    :goto_2
    const/16 v33, 0x3e9

    move/from16 v0, v33

    invoke-static {v6, v0}, Lcom/android/systemui/vivo/common/utils/VivoImageUtil;->getFactIconSize(Landroid/graphics/Bitmap;I)I

    move-result v30

    .line 181
    .local v30, "xStart":I
    const/16 v33, 0x3ea

    move/from16 v0, v33

    invoke-static {v6, v0}, Lcom/android/systemui/vivo/common/utils/VivoImageUtil;->getFactIconSize(Landroid/graphics/Bitmap;I)I

    move-result v29

    .line 182
    .local v29, "xEnd":I
    const/16 v33, 0x3eb

    move/from16 v0, v33

    invoke-static {v6, v0}, Lcom/android/systemui/vivo/common/utils/VivoImageUtil;->getFactIconSize(Landroid/graphics/Bitmap;I)I

    move-result v32

    .line 183
    .local v32, "yStart":I
    const/16 v33, 0x3ec

    move/from16 v0, v33

    invoke-static {v6, v0}, Lcom/android/systemui/vivo/common/utils/VivoImageUtil;->getFactIconSize(Landroid/graphics/Bitmap;I)I

    move-result v31

    .line 185
    .local v31, "yEnd":I
    sub-int v33, v29, v30

    invoke-static/range {v33 .. v33}, Ljava/lang/Math;->abs(I)I

    move-result v23

    .line 186
    .local v23, "sourceWidth":I
    sub-int v33, v31, v32

    invoke-static/range {v33 .. v33}, Ljava/lang/Math;->abs(I)I

    move-result v22

    .line 188
    .local v22, "sourceHeight":I
    if-lez v23, :cond_3

    if-lez v22, :cond_3

    .line 189
    int-to-float v0, v12

    move/from16 v33, v0

    int-to-float v0, v13

    move/from16 v35, v0

    div-float v18, v33, v35

    .line 190
    .local v18, "ratio":F
    sget v33, Lcom/android/systemui/vivo/common/utils/VivoImageUtil;->sIconScaleWidth:I

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v35, v0

    div-float v20, v33, v35

    .line 191
    .local v20, "scaleX":F
    sget v33, Lcom/android/systemui/vivo/common/utils/VivoImageUtil;->sIconScaleHeight:I

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v35, v0

    div-float v21, v33, v35

    .line 193
    .local v21, "scaleY":F
    move/from16 v0, v23

    move/from16 v1, v22

    if-le v0, v1, :cond_9

    .line 194
    int-to-float v0, v12

    move/from16 v33, v0

    mul-float v33, v33, v20

    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v28, v0

    .line 195
    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v33, v0

    div-float v33, v33, v18

    move/from16 v0, v33

    float-to-int v11, v0

    .line 203
    .end local v18    # "ratio":F
    .end local v20    # "scaleX":F
    .end local v21    # "scaleY":F
    :cond_3
    :goto_3
    sget v25, Lcom/android/systemui/vivo/common/utils/VivoImageUtil;->sIconTextureWidth:I

    .line 204
    .local v25, "textureWidth":I
    sget v24, Lcom/android/systemui/vivo/common/utils/VivoImageUtil;->sIconTextureHeight:I

    .line 206
    .local v24, "textureHeight":I
    sget-object v33, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v25

    move/from16 v1, v24

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 208
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    sget-object v7, Lcom/android/systemui/vivo/common/utils/VivoImageUtil;->sCanvas:Landroid/graphics/Canvas;

    .line 209
    .local v7, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v7, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 211
    sub-int v33, v25, v28

    div-int/lit8 v14, v33, 0x2

    .line 212
    .local v14, "left":I
    sub-int v33, v24, v11

    div-int/lit8 v26, v33, 0x2

    .line 214
    .local v26, "top":I
    sget-object v33, Lcom/android/systemui/vivo/common/utils/VivoImageUtil;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v35

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 215
    add-int v33, v14, v28

    add-int v35, v26, v11

    move-object/from16 v0, p1

    move/from16 v1, v26

    move/from16 v2, v33

    move/from16 v3, v35

    invoke-virtual {v0, v14, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 216
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 217
    sget-object v33, Lcom/android/systemui/vivo/common/utils/VivoImageUtil;->sOldBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 218
    const/16 v33, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v7, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 220
    const/16 v33, 0x0

    const/16 v35, 0x0

    sget v36, Lcom/android/systemui/vivo/common/utils/VivoImageUtil;->sIconTextureWidth:I

    sget v37, Lcom/android/systemui/vivo/common/utils/VivoImageUtil;->sIconTextureHeight:I

    move/from16 v0, v33

    move/from16 v1, v35

    move/from16 v2, v36

    move/from16 v3, v37

    invoke-static {v4, v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 221
    .local v10, "finalBitmap":Landroid/graphics/Bitmap;
    monitor-exit v34

    return-object v10

    .line 130
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "bmpIcon":Landroid/graphics/Bitmap;
    .end local v7    # "canvas":Landroid/graphics/Canvas;
    .end local v10    # "finalBitmap":Landroid/graphics/Bitmap;
    .end local v11    # "height":I
    .end local v12    # "iconWidth":I
    .end local v13    # "iconeHeight":I
    .end local v14    # "left":I
    .end local v22    # "sourceHeight":I
    .end local v23    # "sourceWidth":I
    .end local v24    # "textureHeight":I
    .end local v25    # "textureWidth":I
    .end local v26    # "top":I
    .end local v28    # "width":I
    .end local v29    # "xEnd":I
    .end local v30    # "xStart":I
    .end local v31    # "yEnd":I
    .end local v32    # "yStart":I
    :cond_4
    const-string v33, "ro.vivo.os.version"

    const-string v35, "Error"

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 131
    .local v27, "version":Ljava/lang/String;
    const-string v33, "OS"

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v33

    if-eqz v33, :cond_5

    .line 132
    const-string v33, "OS"

    const-string v35, ""

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v27

    .line 135
    :cond_5
    :try_start_1
    invoke-static/range {v27 .. v27}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Float;->floatValue()F

    move-result v16

    .line 136
    .local v16, "os":F
    const/high16 v33, 0x40000000    # 2.0f

    cmpl-float v33, v16, v33

    if-ltz v33, :cond_6

    .line 137
    invoke-virtual {v8}, Landroid/content/res/Configuration;->hashCode()I

    move-result v15

    .line 138
    .local v15, "mNewThemeId":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/vivo/common/utils/VivoImageUtil;->mOldThemeId:I

    move/from16 v33, v0

    move/from16 v0, v33

    if-eq v15, v0, :cond_0

    .line 139
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/systemui/vivo/common/utils/VivoImageUtil;->clearInitFlags(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 144
    .end local v15    # "mNewThemeId":I
    .end local v16    # "os":F
    :catch_0
    move-exception v9

    .line 145
    .local v9, "e":Ljava/lang/Exception;
    const/16 v33, -0x1

    :try_start_2
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/systemui/vivo/common/utils/VivoImageUtil;->clearInitFlags(I)V

    goto/16 :goto_0

    .line 222
    .end local v8    # "config":Landroid/content/res/Configuration;
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v19    # "resources":Landroid/content/res/Resources;
    .end local v27    # "version":Ljava/lang/String;
    :catchall_0
    move-exception v33

    monitor-exit v34
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v33

    .line 142
    .restart local v8    # "config":Landroid/content/res/Configuration;
    .restart local v16    # "os":F
    .restart local v19    # "resources":Landroid/content/res/Resources;
    .restart local v27    # "version":Ljava/lang/String;
    :cond_6
    const/16 v33, -0x1

    :try_start_3
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/systemui/vivo/common/utils/VivoImageUtil;->clearInitFlags(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 160
    .end local v16    # "os":F
    .end local v27    # "version":Ljava/lang/String;
    .restart local v11    # "height":I
    .restart local v28    # "width":I
    :cond_7
    :try_start_4
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v33, v0

    if-eqz v33, :cond_2

    .line 162
    move-object/from16 v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v5, v0

    .line 163
    .restart local v5    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 164
    .restart local v4    # "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v33

    if-nez v33, :cond_2

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/utils/VivoImageUtil;->mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    goto/16 :goto_1

    .line 177
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    .end local v5    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v12    # "iconWidth":I
    .restart local v13    # "iconeHeight":I
    :cond_8
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/vivo/common/utils/VivoImageUtil;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v6

    .restart local v6    # "bmpIcon":Landroid/graphics/Bitmap;
    goto/16 :goto_2

    .line 197
    .restart local v18    # "ratio":F
    .restart local v20    # "scaleX":F
    .restart local v21    # "scaleY":F
    .restart local v22    # "sourceHeight":I
    .restart local v23    # "sourceWidth":I
    .restart local v29    # "xEnd":I
    .restart local v30    # "xStart":I
    .restart local v31    # "yEnd":I
    .restart local v32    # "yStart":I
    :cond_9
    int-to-float v0, v13

    move/from16 v33, v0

    mul-float v33, v33, v21

    move/from16 v0, v33

    float-to-int v11, v0

    .line 198
    int-to-float v0, v11

    move/from16 v33, v0

    mul-float v33, v33, v18

    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v28, v0

    goto/16 :goto_3
.end method
