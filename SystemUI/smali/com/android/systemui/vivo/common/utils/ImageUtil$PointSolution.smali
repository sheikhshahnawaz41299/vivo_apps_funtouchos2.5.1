.class Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;
.super Ljava/lang/Object;
.source "ImageUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/vivo/common/utils/ImageUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PointSolution"
.end annotation


# instance fields
.field OrgbottomLRector:[I

.field OrgbottomRRector:[I

.field OrgleftBRector:[I

.field OrgleftTRector:[I

.field OrgrightBRector:[I

.field OrgrightTRector:[I

.field OrgtopLRector:[I

.field OrgtopRRector:[I

.field bottomLRector:[I

.field bottomRRector:[I

.field leftBRector:[I

.field leftTRector:[I

.field radius:I

.field rawRect:Landroid/graphics/Rect;

.field rightBRector:[I

.field rightTRector:[I

.field topLRector:[I

.field topRRector:[I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x2

    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 342
    iput v2, p0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->radius:I

    .line 343
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->rawRect:Landroid/graphics/Rect;

    .line 344
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->topLRector:[I

    .line 345
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->topRRector:[I

    .line 347
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->leftTRector:[I

    .line 348
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->leftBRector:[I

    .line 349
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->bottomLRector:[I

    .line 350
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->bottomRRector:[I

    .line 351
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->rightTRector:[I

    .line 352
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->rightBRector:[I

    .line 354
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->OrgtopLRector:[I

    .line 355
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->OrgtopRRector:[I

    .line 357
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->OrgleftTRector:[I

    .line 358
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->OrgleftBRector:[I

    .line 359
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->OrgbottomLRector:[I

    .line 360
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->OrgbottomRRector:[I

    .line 361
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->OrgrightTRector:[I

    .line 362
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->OrgrightBRector:[I

    .line 364
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->topLRector:[I

    .line 365
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->topRRector:[I

    .line 367
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->leftTRector:[I

    .line 368
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->leftBRector:[I

    .line 370
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    iput-object v0, p0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->bottomLRector:[I

    .line 371
    new-array v0, v1, [I

    fill-array-data v0, :array_5

    iput-object v0, p0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->bottomRRector:[I

    .line 373
    new-array v0, v1, [I

    fill-array-data v0, :array_6

    iput-object v0, p0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->rightTRector:[I

    .line 374
    new-array v0, v1, [I

    fill-array-data v0, :array_7

    iput-object v0, p0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->rightBRector:[I

    .line 376
    new-array v0, v1, [I

    fill-array-data v0, :array_8

    iput-object v0, p0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->OrgtopLRector:[I

    .line 377
    new-array v0, v1, [I

    fill-array-data v0, :array_9

    iput-object v0, p0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->OrgtopRRector:[I

    .line 379
    new-array v0, v1, [I

    fill-array-data v0, :array_a

    iput-object v0, p0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->OrgleftTRector:[I

    .line 380
    new-array v0, v1, [I

    fill-array-data v0, :array_b

    iput-object v0, p0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->OrgleftBRector:[I

    .line 382
    new-array v0, v1, [I

    fill-array-data v0, :array_c

    iput-object v0, p0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->OrgbottomLRector:[I

    .line 383
    new-array v0, v1, [I

    fill-array-data v0, :array_d

    iput-object v0, p0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->OrgbottomRRector:[I

    .line 385
    new-array v0, v1, [I

    fill-array-data v0, :array_e

    iput-object v0, p0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->OrgrightTRector:[I

    .line 386
    new-array v0, v1, [I

    fill-array-data v0, :array_f

    iput-object v0, p0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->OrgrightBRector:[I

    .line 387
    return-void

    .line 364
    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data

    .line 365
    :array_1
    .array-data 4
        -0x1
        -0x1
    .end array-data

    .line 367
    :array_2
    .array-data 4
        -0x1
        -0x1
    .end array-data

    .line 368
    :array_3
    .array-data 4
        -0x1
        -0x1
    .end array-data

    .line 370
    :array_4
    .array-data 4
        -0x1
        -0x1
    .end array-data

    .line 371
    :array_5
    .array-data 4
        -0x1
        -0x1
    .end array-data

    .line 373
    :array_6
    .array-data 4
        -0x1
        -0x1
    .end array-data

    .line 374
    :array_7
    .array-data 4
        -0x1
        -0x1
    .end array-data

    .line 376
    :array_8
    .array-data 4
        -0x1
        -0x1
    .end array-data

    .line 377
    :array_9
    .array-data 4
        -0x1
        -0x1
    .end array-data

    .line 379
    :array_a
    .array-data 4
        -0x1
        -0x1
    .end array-data

    .line 380
    :array_b
    .array-data 4
        -0x1
        -0x1
    .end array-data

    .line 382
    :array_c
    .array-data 4
        -0x1
        -0x1
    .end array-data

    .line 383
    :array_d
    .array-data 4
        -0x1
        -0x1
    .end array-data

    .line 385
    :array_e
    .array-data 4
        -0x1
        -0x1
    .end array-data

    .line 386
    :array_f
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;Landroid/graphics/Rect;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;
    .param p1, "x1"    # Landroid/graphics/Rect;

    .prologue
    .line 341
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->setOrgRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method private setOrgRect(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "factRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 461
    iget-object v0, p0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->OrgleftTRector:[I

    aget v0, v0, v2

    iget-object v1, p0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->OrgleftBRector:[I

    aget v1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 462
    iget-object v0, p0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->OrgtopLRector:[I

    aget v0, v0, v3

    iget-object v1, p0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->OrgtopRRector:[I

    aget v1, v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 463
    iget-object v0, p0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->OrgrightTRector:[I

    aget v0, v0, v2

    iget-object v1, p0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->OrgrightBRector:[I

    aget v1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 464
    iget-object v0, p0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->OrgbottomLRector:[I

    aget v0, v0, v3

    iget-object v1, p0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->OrgbottomRRector:[I

    aget v1, v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 465
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->rawRect:Landroid/graphics/Rect;

    .line 466
    return-void
.end method


# virtual methods
.method public getCurRawfourDirectionRadius()I
    .locals 20

    .prologue
    .line 392
    const/4 v11, -0x1

    .line 393
    .local v11, "temLTOvalR":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->topLRector:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->leftTRector:[I

    const/16 v16, 0x0

    aget v15, v15, v16

    sub-int/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 394
    .local v4, "leftTx":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->leftTRector:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->topLRector:[I

    const/16 v16, 0x1

    aget v15, v15, v16

    sub-int/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 395
    .local v5, "leftTy":I
    sub-int v14, v4, v5

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    const/4 v15, 0x6

    if-gt v14, v15, :cond_0

    .line 396
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 403
    :cond_0
    const/4 v13, -0x1

    .line 404
    .local v13, "temRTovalR":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->rightTRector:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->topRRector:[I

    const/16 v16, 0x0

    aget v15, v15, v16

    sub-int/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v8

    .line 405
    .local v8, "rightTx":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->rightTRector:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->topRRector:[I

    const/16 v16, 0x1

    aget v15, v15, v16

    sub-int/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v9

    .line 406
    .local v9, "rightTy":I
    sub-int v14, v8, v9

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    const/4 v15, 0x6

    if-gt v14, v15, :cond_1

    .line 407
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 414
    :cond_1
    const/4 v10, -0x1

    .line 415
    .local v10, "temLBovalR":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->bottomLRector:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->leftBRector:[I

    const/16 v16, 0x1

    aget v15, v15, v16

    sub-int/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 416
    .local v2, "leftBx":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->bottomLRector:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->leftBRector:[I

    const/16 v16, 0x0

    aget v15, v15, v16

    sub-int/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 417
    .local v3, "leftBy":I
    sub-int v14, v2, v3

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    const/4 v15, 0x6

    if-gt v14, v15, :cond_2

    .line 419
    add-int v14, v2, v3

    div-int/lit8 v10, v14, 0x2

    .line 425
    :cond_2
    const/4 v12, -0x1

    .line 426
    .local v12, "temRBovalR":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->rightBRector:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->bottomRRector:[I

    const/16 v16, 0x0

    aget v15, v15, v16

    sub-int/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 427
    .local v6, "rightBx":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->bottomRRector:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->rightBRector:[I

    const/16 v16, 0x1

    aget v15, v15, v16

    sub-int/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 428
    .local v7, "rightBy":I
    sub-int v14, v6, v7

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    const/4 v15, 0x6

    if-gt v14, v15, :cond_3

    .line 430
    add-int v14, v6, v7

    div-int/lit8 v12, v14, 0x2

    .line 441
    :cond_3
    if-ltz v10, :cond_4

    if-ltz v11, :cond_4

    if-ltz v12, :cond_4

    if-ltz v13, :cond_4

    .line 442
    sub-int v14, v10, v11

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    const/4 v15, 0x2

    if-gt v14, v15, :cond_5

    sub-int v14, v12, v13

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    const/4 v15, 0x2

    if-gt v14, v15, :cond_5

    sub-int v14, v10, v12

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    const/4 v15, 0x2

    if-gt v14, v15, :cond_5

    sub-int v14, v10, v13

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    const/4 v15, 0x2

    if-gt v14, v15, :cond_5

    sub-int v14, v12, v11

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    const/4 v15, 0x2

    if-gt v14, v15, :cond_5

    sub-int v14, v13, v11

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    const/4 v15, 0x2

    if-gt v14, v15, :cond_5

    .line 445
    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v14

    invoke-static {v12, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->radius:I

    .line 457
    :cond_4
    :goto_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->radius:I

    return v14

    .line 447
    :cond_5
    int-to-float v14, v10

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->rawRect:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v15

    int-to-float v15, v15

    const v16, 0x3e99999a    # 0.3f

    mul-float v15, v15, v16

    cmpl-float v14, v14, v15

    if-gez v14, :cond_6

    int-to-double v14, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->rawRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->height()I

    move-result v16

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0x3fd3333333333333L    # 0.3

    mul-double v16, v16, v18

    cmpl-double v14, v14, v16

    if-gez v14, :cond_6

    int-to-float v14, v12

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->rawRect:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v15

    int-to-float v15, v15

    const v16, 0x3e99999a    # 0.3f

    mul-float v15, v15, v16

    cmpl-float v14, v14, v15

    if-gez v14, :cond_6

    int-to-float v14, v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->rawRect:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v15

    int-to-float v15, v15

    const v16, 0x3e99999a    # 0.3f

    mul-float v15, v15, v16

    cmpl-float v14, v14, v15

    if-ltz v14, :cond_7

    .line 449
    :cond_6
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->radius:I

    goto :goto_0

    .line 451
    :cond_7
    add-int v14, v10, v11

    add-int/2addr v14, v12

    add-int/2addr v14, v13

    div-int/lit8 v14, v14, 0x4

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->radius:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "topLRector = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->topLRector:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->topLRector:[I

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] ,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " topRRector = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->topRRector:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->topRRector:[I

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] ,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " leftTRector = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->leftTRector:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->leftTRector:[I

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] ,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " leftBRector = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->leftBRector:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->leftBRector:[I

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] ,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bottomLRector = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->bottomLRector:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->bottomLRector:[I

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] ,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bottomRRector = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->bottomRRector:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->bottomRRector:[I

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] ,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rightTRector = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->rightTRector:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->rightTRector:[I

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] ,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rightBRector = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->rightBRector:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->rightBRector:[I

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
