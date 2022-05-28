.class public Lcom/android/systemui/vivo/common/utils/ImageUtil;
.super Ljava/lang/Object;
.source "ImageUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;
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

.field private static mDefaultIconSize:I

.field private static mInstance:Lcom/android/systemui/vivo/common/utils/ImageUtil;

.field private static mInstanceNotNeedPadding:Lcom/android/systemui/vivo/common/utils/ImageUtil;


# instance fields
.field private mBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mNeedPadding:Z

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

    sput-object v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    .line 42
    const/16 v0, 0xcc

    sput v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->mDefaultIconSize:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "needPadding"    # Z

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->mNeedPadding:Z

    .line 483
    iput v2, p0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sIconBgRadius:I

    .line 484
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sIconBgRect:Landroid/graphics/Rect;

    .line 487
    iput v2, p0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sMaskRadius:I

    .line 488
    iput v1, p0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sIconBgWidth:I

    .line 489
    iput v1, p0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sIconBgHeight:I

    .line 490
    iput v1, p0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sIconLeftOffset:I

    .line 491
    iput v1, p0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sIconTopOffset:I

    .line 492
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sMaskBitmap:Landroid/graphics/Bitmap;

    .line 493
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sMaskRect:Landroid/graphics/Rect;

    .line 494
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sMaskCanvas:Landroid/graphics/Canvas;

    .line 495
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sOldBounds:Landroid/graphics/Rect;

    .line 68
    iput-boolean p2, p0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->mNeedPadding:Z

    .line 69
    iget-object v0, p0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->mNeedPadding:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0200ce

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sIconBgWidth:I

    .line 73
    iget-object v0, p0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sIconBgHeight:I

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0145

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->mDefaultIconSize:I

    .line 76
    return-void

    .line 70
    :cond_1
    const v0, 0x7f02049a

    goto :goto_0
.end method

.method private createRedrawIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 37
    .param p1, "srcIconDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "iconBg"    # Landroid/graphics/drawable/Drawable;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 503
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sMaskBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_0

    .line 504
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->mNeedPadding:Z

    if-eqz v3, :cond_3

    const v3, 0x7f0200d0

    :goto_0
    invoke-static {v4, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sMaskBitmap:Landroid/graphics/Bitmap;

    .line 505
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sMaskBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sMaskRect:Landroid/graphics/Rect;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5}, Lcom/android/systemui/vivo/common/utils/ImageUtil;->getSuitableBitmapSize(Landroid/graphics/Bitmap;Landroid/graphics/Rect;I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sMaskRadius:I

    .line 506
    invoke-static/range {p2 .. p2}, Lcom/android/systemui/vivo/common/utils/ImageUtil;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sIconBgRect:Landroid/graphics/Rect;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5}, Lcom/android/systemui/vivo/common/utils/ImageUtil;->getSuitableBitmapSize(Landroid/graphics/Bitmap;Landroid/graphics/Rect;I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sIconBgRadius:I

    .line 513
    :cond_0
    const/4 v15, -0x1

    .line 514
    .local v15, "iconRadius":I
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 515
    .local v7, "iconRect":Landroid/graphics/Rect;
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/vivo/common/utils/ImageUtil;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 517
    .local v6, "iconBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sMaskBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sMaskRadius:I

    if-ltz v3, :cond_7

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sMaskRadius:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sMaskRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x3

    if-ge v3, v4, :cond_7

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sMaskRadius:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sMaskRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x3

    if-ge v3, v4, :cond_7

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sIconBgRadius:I

    if-ltz v3, :cond_7

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sIconBgRadius:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sIconBgRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x3

    if-ge v3, v4, :cond_7

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sIconBgRadius:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sIconBgRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x3

    if-ge v3, v4, :cond_7

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sMaskRadius:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sIconBgRadius:I

    if-ne v3, v4, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sMaskRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sIconBgRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-ne v3, v4, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sMaskRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sIconBgRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-ne v3, v4, :cond_7

    .line 522
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v3}, Lcom/android/systemui/vivo/common/utils/ImageUtil;->getSuitableBitmapSize(Landroid/graphics/Bitmap;Landroid/graphics/Rect;I)I

    move-result v15

    .line 528
    if-ltz v15, :cond_6

    int-to-float v3, v15

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3e99999a    # 0.3f

    mul-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_6

    int-to-float v3, v15

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3e99999a    # 0.3f

    mul-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_6

    .line 530
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sIconBgWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sIconBgHeight:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v23

    .line 531
    .local v23, "maskedBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sMaskCanvas:Landroid/graphics/Canvas;

    move-object/from16 v20, v0

    .line 532
    .local v20, "maskCanvas":Landroid/graphics/Canvas;
    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 535
    const/high16 v16, 0x3f800000    # 1.0f

    .line 537
    .local v16, "iconScale":F
    const/high16 v21, 0x3f800000    # 1.0f

    .line 538
    .local v21, "maskScaleX":F
    const/high16 v22, 0x3f800000    # 1.0f

    .line 540
    .local v22, "maskScaleY":F
    if-ltz v15, :cond_5

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    if-ge v15, v3, :cond_5

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    if-ge v15, v3, :cond_5

    .line 543
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sIconBgRect:Landroid/graphics/Rect;

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

    iget-object v4, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sIconBgRect:Landroid/graphics/Rect;

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

    .line 544
    .local v33, "temScale":F
    int-to-float v3, v15

    mul-float v29, v3, v33

    .line 545
    .local v29, "targetRadius":F
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float v32, v3, v33

    .line 546
    .local v32, "temIconRectWidth":F
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float v31, v3, v33

    .line 548
    .local v31, "temIconRectHeight":F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sIconBgRadius:I

    int-to-float v3, v3

    cmpl-float v3, v29, v3

    if-lez v3, :cond_4

    .line 550
    const/high16 v3, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sIconBgRadius:I

    int-to-float v4, v4

    sub-float v4, v29, v4

    mul-float v13, v3, v4

    .line 551
    .local v13, "extra":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sIconBgRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v13

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    div-float v3, v3, v32

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sIconBgRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v13

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v4, v5

    div-float v4, v4, v31

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v16

    .line 557
    .end local v13    # "extra":F
    :goto_1
    mul-float v16, v16, v33

    .line 563
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v30, v16, v3

    .line 564
    .local v30, "targetWidth":F
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v28, v16, v3

    .line 566
    .local v28, "targetHeight":F
    const/16 v25, 0x0

    .line 567
    .local v25, "offsetX":F
    const/16 v26, 0x0

    .line 568
    .local v26, "offsetY":F
    iget v3, v7, Landroid/graphics/Rect;->left:I

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget v5, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    if-eq v3, v4, :cond_1

    .line 569
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

    .line 572
    :cond_1
    iget v3, v7, Landroid/graphics/Rect;->top:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget v5, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    if-eq v3, v4, :cond_2

    .line 573
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

    .line 576
    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sIconBgWidth:I

    int-to-float v3, v3

    sub-float v3, v3, v30

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float v18, v3, v25

    .line 577
    .local v18, "marginLeft":F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sIconBgHeight:I

    int-to-float v3, v3

    sub-float v3, v3, v28

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float v19, v3, v26

    .line 579
    .local v19, "marginTop":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sIconBgRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sMaskRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float v21, v3, v4

    .line 580
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sIconBgRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sMaskRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float v22, v3, v4

    .line 582
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sIconBgWidth:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v21

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v35, v3, v4

    .line 583
    .local v35, "transX":F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sIconBgHeight:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sMaskBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v22

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v36, v3, v4

    .line 585
    .local v36, "transY":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 586
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

    .line 587
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 588
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sOldBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 590
    new-instance v24, Landroid/graphics/Matrix;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/Matrix;-><init>()V

    .line 591
    .local v24, "matrix":Landroid/graphics/Matrix;
    new-instance v27, Landroid/graphics/Paint;

    const/4 v3, 0x1

    move-object/from16 v0, v27

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 592
    .local v27, "paint":Landroid/graphics/Paint;
    move-object/from16 v0, v24

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 593
    move-object/from16 v0, v24

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 594
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 595
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sMaskBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    move-object/from16 v2, v27

    invoke-virtual {v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 597
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sIconBgWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sIconBgHeight:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 599
    .local v11, "bitmap":Landroid/graphics/Bitmap;
    new-instance v12, Landroid/graphics/Canvas;

    invoke-direct {v12}, Landroid/graphics/Canvas;-><init>()V

    .line 600
    .local v12, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v12, v11}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 602
    const/16 v17, 0x0

    .line 603
    .local v17, "left":I
    const/16 v34, 0x0

    .line 604
    .local v34, "top":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 605
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sIconBgWidth:I

    add-int v3, v3, v17

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sIconBgHeight:I

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 606
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 607
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sOldBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 608
    move/from16 v0, v17

    int-to-float v3, v0

    move/from16 v0, v34

    int-to-float v4, v0

    const/4 v5, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v12, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 610
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0200cf

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 611
    .local v14, "iconBorder":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sIconBgWidth:I

    add-int v3, v3, v17

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sIconBgHeight:I

    move/from16 v0, v17

    move/from16 v1, v34

    invoke-virtual {v14, v0, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 612
    invoke-virtual {v14, v12}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 614
    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 615
    invoke-static/range {p3 .. p3}, Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager;->getsInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager;->releaseBitmap(Landroid/graphics/Bitmap;)V

    .line 623
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
    :goto_2
    return-object v11

    .line 504
    .end local v6    # "iconBitmap":Landroid/graphics/Bitmap;
    .end local v7    # "iconRect":Landroid/graphics/Rect;
    .end local v15    # "iconRadius":I
    :cond_3
    const v3, 0x7f02049b

    goto/16 :goto_0

    .line 554
    .restart local v6    # "iconBitmap":Landroid/graphics/Bitmap;
    .restart local v7    # "iconRect":Landroid/graphics/Rect;
    .restart local v15    # "iconRadius":I
    .restart local v16    # "iconScale":F
    .restart local v20    # "maskCanvas":Landroid/graphics/Canvas;
    .restart local v21    # "maskScaleX":F
    .restart local v22    # "maskScaleY":F
    .restart local v23    # "maskedBitmap":Landroid/graphics/Bitmap;
    .restart local v29    # "targetRadius":F
    .restart local v31    # "temIconRectHeight":F
    .restart local v32    # "temIconRectWidth":F
    .restart local v33    # "temScale":F
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sIconBgRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3f8ccccd    # 1.1f

    mul-float/2addr v3, v4

    div-float v3, v3, v31

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sIconBgRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3f8ccccd    # 1.1f

    mul-float/2addr v4, v5

    div-float v4, v4, v32

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v16

    goto/16 :goto_1

    .line 560
    .end local v29    # "targetRadius":F
    .end local v31    # "temIconRectHeight":F
    .end local v32    # "temIconRectWidth":F
    .end local v33    # "temScale":F
    :cond_5
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sMaskBitmap:Landroid/graphics/Bitmap;

    const v10, 0x3f59999a    # 0.85f

    move-object/from16 v3, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p1

    move-object/from16 v9, p2

    invoke-virtual/range {v3 .. v10}, Lcom/android/systemui/vivo/common/utils/ImageUtil;->createNewCenterBitmap(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object v11

    goto :goto_2

    .line 619
    .end local v16    # "iconScale":F
    .end local v20    # "maskCanvas":Landroid/graphics/Canvas;
    .end local v21    # "maskScaleX":F
    .end local v22    # "maskScaleY":F
    .end local v23    # "maskedBitmap":Landroid/graphics/Bitmap;
    :cond_6
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sMaskBitmap:Landroid/graphics/Bitmap;

    const v10, 0x3f4ccccd    # 0.8f

    move-object/from16 v3, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p1

    move-object/from16 v9, p2

    invoke-virtual/range {v3 .. v10}, Lcom/android/systemui/vivo/common/utils/ImageUtil;->createNewCenterBitmap(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object v11

    goto :goto_2

    .line 622
    :cond_7
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v3}, Lcom/android/systemui/vivo/common/utils/ImageUtil;->getSuitableBitmapSize(Landroid/graphics/Bitmap;Landroid/graphics/Rect;I)I

    move-result v15

    .line 623
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sMaskBitmap:Landroid/graphics/Bitmap;

    const/4 v10, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p1

    move-object/from16 v9, p2

    invoke-virtual/range {v3 .. v10}, Lcom/android/systemui/vivo/common/utils/ImageUtil;->createNewCenterBitmap(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;F)Landroid/graphics/Bitmap;

    move-result-object v11

    goto :goto_2
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/16 v5, 0x1f4

    const/4 v7, 0x0

    .line 80
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 81
    .local v4, "w":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 82
    .local v3, "h":I
    if-le v4, v5, :cond_0

    .line 83
    const/16 v4, 0x1f4

    .line 85
    :cond_0
    if-le v3, v5, :cond_1

    .line 86
    const/16 v3, 0x1f4

    .line 88
    :cond_1
    if-lez v4, :cond_2

    if-gtz v3, :cond_4

    .line 89
    :cond_2
    const-string v5, "ImageUtil"

    const-string v6, "drawableToBitmap error : get drawable width and height error!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    if-gtz v4, :cond_3

    sget v4, Lcom/android/systemui/vivo/common/utils/ImageUtil;->mDefaultIconSize:I

    .line 91
    :cond_3
    if-gtz v3, :cond_4

    sget v3, Lcom/android/systemui/vivo/common/utils/ImageUtil;->mDefaultIconSize:I

    .line 95
    :cond_4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_5

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 98
    .local v2, "config":Landroid/graphics/Bitmap$Config;
    :goto_0
    invoke-static {v4, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 100
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 101
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0, v7, v7, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 103
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 104
    return-object v0

    .line 95
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "config":Landroid/graphics/Bitmap$Config;
    :cond_5
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0
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
    .line 184
    const/4 v5, 0x0

    .line 185
    .local v5, "xEnd":I
    const/4 v7, 0x0

    .line 186
    .local v7, "yEnd":I
    const/4 v2, 0x0

    .line 187
    .local v2, "sXIncrementally":Z
    const/4 v3, 0x0

    .line 189
    .local v3, "sYIncrementally":Z
    const/4 v8, 0x2

    new-array v0, v8, [I

    .line 191
    .local v0, "rector":[I
    const/16 v8, 0x3e9

    if-ne p2, v8, :cond_3

    const/16 v8, 0x3eb

    if-ne p3, v8, :cond_3

    .line 192
    move v5, p6

    .line 193
    move/from16 v7, p7

    .line 194
    const/4 v2, 0x1

    .line 195
    const/4 v3, 0x1

    .line 226
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 227
    .local v1, "sFetch":Z
    if-eqz p4, :cond_10

    .line 228
    if-eqz v2, :cond_a

    .line 229
    move v4, p0

    .local v4, "x":I
    :goto_1
    if-ge v4, v5, :cond_2

    .line 230
    if-eqz v3, :cond_7

    .line 231
    move v6, p1

    .local v6, "y":I
    :goto_2
    if-ge v6, v7, :cond_1

    .line 232
    mul-int v8, v6, p6

    add-int/2addr v8, v4

    aget v8, p5, v8

    if-gez v8, :cond_6

    .line 233
    const/4 v8, 0x0

    aput v4, v0, v8

    .line 234
    const/4 v8, 0x1

    aput v6, v0, v8

    .line 235
    const/4 v1, 0x1

    .line 250
    :cond_1
    :goto_3
    if-eqz v1, :cond_9

    .line 251
    const/4 v1, 0x0

    .line 338
    .end local v4    # "x":I
    .end local v6    # "y":I
    :cond_2
    :goto_4
    return-object v0

    .line 196
    .end local v1    # "sFetch":Z
    :cond_3
    const/16 v8, 0x3e9

    if-ne p2, v8, :cond_4

    const/16 v8, 0x3ec

    if-ne p3, v8, :cond_4

    .line 197
    move v5, p6

    .line 198
    const/4 v7, 0x0

    .line 199
    const/4 v2, 0x1

    .line 200
    const/4 v3, 0x0

    goto :goto_0

    .line 201
    :cond_4
    const/16 v8, 0x3ea

    if-ne p2, v8, :cond_5

    const/16 v8, 0x3eb

    if-ne p3, v8, :cond_5

    .line 202
    const/4 v5, 0x0

    .line 203
    move/from16 v7, p7

    .line 204
    const/4 v2, 0x0

    .line 205
    const/4 v3, 0x1

    goto :goto_0

    .line 206
    :cond_5
    const/16 v8, 0x3ea

    if-ne p2, v8, :cond_0

    const/16 v8, 0x3ec

    if-ne p3, v8, :cond_0

    .line 207
    const/4 v5, 0x0

    .line 208
    const/4 v7, 0x0

    .line 209
    const/4 v2, 0x0

    .line 210
    const/4 v3, 0x0

    goto :goto_0

    .line 231
    .restart local v1    # "sFetch":Z
    .restart local v4    # "x":I
    .restart local v6    # "y":I
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 240
    .end local v6    # "y":I
    :cond_7
    move v6, p1

    .restart local v6    # "y":I
    :goto_5
    if-lt v6, v7, :cond_1

    .line 241
    mul-int v8, v6, p6

    add-int/2addr v8, v4

    aget v8, p5, v8

    if-gez v8, :cond_8

    .line 242
    const/4 v8, 0x0

    aput v4, v0, v8

    .line 243
    const/4 v8, 0x1

    aput v6, v0, v8

    .line 244
    const/4 v1, 0x1

    .line 245
    goto :goto_3

    .line 240
    :cond_8
    add-int/lit8 v6, v6, -0x1

    goto :goto_5

    .line 229
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 256
    .end local v4    # "x":I
    .end local v6    # "y":I
    :cond_a
    move v4, p0

    .restart local v4    # "x":I
    :goto_6
    if-lt v4, v5, :cond_2

    .line 257
    if-eqz v3, :cond_d

    .line 258
    move v6, p1

    .restart local v6    # "y":I
    :goto_7
    if-ge v6, v7, :cond_b

    .line 259
    mul-int v8, v6, p6

    add-int/2addr v8, v4

    aget v8, p5, v8

    if-gez v8, :cond_c

    .line 260
    const/4 v8, 0x0

    aput v4, v0, v8

    .line 261
    const/4 v8, 0x1

    aput v6, v0, v8

    .line 262
    const/4 v1, 0x1

    .line 277
    :cond_b
    :goto_8
    if-eqz v1, :cond_f

    .line 278
    const/4 v1, 0x0

    .line 279
    goto :goto_4

    .line 258
    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 267
    .end local v6    # "y":I
    :cond_d
    move v6, p1

    .restart local v6    # "y":I
    :goto_9
    if-lt v6, v7, :cond_b

    .line 268
    mul-int v8, v6, p6

    add-int/2addr v8, v4

    aget v8, p5, v8

    if-gez v8, :cond_e

    .line 269
    const/4 v8, 0x0

    aput v4, v0, v8

    .line 270
    const/4 v8, 0x1

    aput v6, v0, v8

    .line 271
    const/4 v1, 0x1

    .line 272
    goto :goto_8

    .line 267
    :cond_e
    add-int/lit8 v6, v6, -0x1

    goto :goto_9

    .line 256
    :cond_f
    add-int/lit8 v4, v4, -0x1

    goto :goto_6

    .line 284
    .end local v4    # "x":I
    .end local v6    # "y":I
    :cond_10
    if-eqz v3, :cond_16

    .line 285
    move v6, p1

    .restart local v6    # "y":I
    :goto_a
    if-ge v6, v7, :cond_2

    .line 286
    if-eqz v2, :cond_13

    .line 287
    move v4, p0

    .restart local v4    # "x":I
    :goto_b
    if-ge v4, v5, :cond_11

    .line 288
    mul-int v8, v6, p6

    add-int/2addr v8, v4

    aget v8, p5, v8

    if-gez v8, :cond_12

    .line 289
    const/4 v8, 0x0

    aput v4, v0, v8

    .line 290
    const/4 v8, 0x1

    aput v6, v0, v8

    .line 291
    const/4 v1, 0x1

    .line 305
    :cond_11
    :goto_c
    if-eqz v1, :cond_15

    .line 306
    const/4 v1, 0x0

    .line 307
    goto/16 :goto_4

    .line 287
    :cond_12
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 296
    .end local v4    # "x":I
    :cond_13
    move v4, p0

    .restart local v4    # "x":I
    :goto_d
    if-lt v4, v5, :cond_11

    .line 297
    mul-int v8, v6, p6

    add-int/2addr v8, v4

    aget v8, p5, v8

    if-gez v8, :cond_14

    .line 298
    const/4 v8, 0x0

    aput v4, v0, v8

    .line 299
    const/4 v8, 0x1

    aput v6, v0, v8

    .line 300
    const/4 v1, 0x1

    .line 301
    goto :goto_c

    .line 296
    :cond_14
    add-int/lit8 v4, v4, -0x1

    goto :goto_d

    .line 285
    :cond_15
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    .line 311
    .end local v4    # "x":I
    .end local v6    # "y":I
    :cond_16
    move v6, p1

    .restart local v6    # "y":I
    :goto_e
    if-lt v6, v7, :cond_2

    .line 312
    if-eqz v2, :cond_19

    .line 313
    move v4, p0

    .restart local v4    # "x":I
    :goto_f
    if-ge v4, v5, :cond_17

    .line 314
    mul-int v8, v6, p6

    add-int/2addr v8, v4

    aget v8, p5, v8

    if-gez v8, :cond_18

    .line 315
    const/4 v8, 0x0

    aput v4, v0, v8

    .line 316
    const/4 v8, 0x1

    aput v6, v0, v8

    .line 317
    const/4 v1, 0x1

    .line 331
    :cond_17
    :goto_10
    if-eqz v1, :cond_1b

    .line 332
    const/4 v1, 0x0

    .line 333
    goto/16 :goto_4

    .line 313
    :cond_18
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 322
    .end local v4    # "x":I
    :cond_19
    move v4, p0

    .restart local v4    # "x":I
    :goto_11
    if-lt v4, v5, :cond_17

    .line 323
    mul-int v8, v6, p6

    add-int/2addr v8, v4

    aget v8, p5, v8

    if-gez v8, :cond_1a

    .line 324
    const/4 v8, 0x0

    aput v4, v0, v8

    .line 325
    const/4 v8, 0x1

    aput v6, v0, v8

    .line 326
    const/4 v1, 0x1

    .line 327
    goto :goto_10

    .line 322
    :cond_1a
    add-int/lit8 v4, v4, -0x1

    goto :goto_11

    .line 311
    :cond_1b
    add-int/lit8 v6, v6, -0x1

    goto :goto_e
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/utils/ImageUtil;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/systemui/vivo/common/utils/ImageUtil;->getInstance(Landroid/content/Context;Z)Lcom/android/systemui/vivo/common/utils/ImageUtil;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Z)Lcom/android/systemui/vivo/common/utils/ImageUtil;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "needPadding"    # Z

    .prologue
    .line 45
    if-eqz p1, :cond_1

    .line 46
    sget-object v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->mInstance:Lcom/android/systemui/vivo/common/utils/ImageUtil;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/vivo/common/utils/ImageUtil;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->mInstance:Lcom/android/systemui/vivo/common/utils/ImageUtil;

    .line 49
    :cond_0
    sget-object v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->mInstance:Lcom/android/systemui/vivo/common/utils/ImageUtil;

    .line 54
    :goto_0
    return-object v0

    .line 51
    :cond_1
    sget-object v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->mInstanceNotNeedPadding:Lcom/android/systemui/vivo/common/utils/ImageUtil;

    if-nez v0, :cond_2

    .line 52
    new-instance v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/vivo/common/utils/ImageUtil;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->mInstanceNotNeedPadding:Lcom/android/systemui/vivo/common/utils/ImageUtil;

    .line 54
    :cond_2
    sget-object v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->mInstanceNotNeedPadding:Lcom/android/systemui/vivo/common/utils/ImageUtil;

    goto :goto_0
.end method

.method private getSuitableBitmapSize(Landroid/graphics/Bitmap;Landroid/graphics/Rect;I)I
    .locals 22
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "factRect"    # Landroid/graphics/Rect;
    .param p3, "requesTimes"    # I

    .prologue
    .line 114
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 115
    .local v5, "dWidht":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 117
    .local v9, "dHeight":I
    const/16 v2, 0x1f4

    if-lt v5, v2, :cond_0

    .line 118
    const/16 v5, 0x1f4

    .line 120
    :cond_0
    const/16 v2, 0x1f4

    if-lt v9, v2, :cond_1

    .line 121
    const/16 v9, 0x1f4

    .line 123
    :cond_1
    mul-int v2, v5, v9

    new-array v3, v2, [I

    .line 124
    .local v3, "pix":[I
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p1

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 125
    const/16 v20, -0x1

    .line 126
    .local v20, "radius":I
    new-instance v19, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;

    invoke-direct/range {v19 .. v19}, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;-><init>()V

    .line 127
    .local v19, "pSolution":Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    move/from16 v0, v18

    move/from16 v1, p3

    if-ge v0, v1, :cond_5

    .line 128
    if-nez v18, :cond_3

    .line 129
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x3e9

    const/16 v13, 0x3eb

    const/4 v14, 0x0

    move-object v15, v3

    move/from16 v16, v5

    move/from16 v17, v9

    invoke-static/range {v10 .. v17}, Lcom/android/systemui/vivo/common/utils/ImageUtil;->getFitableRector(IIIIZ[III)[I

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->OrgtopLRector:[I

    .line 130
    add-int/lit8 v10, v5, -0x1

    const/4 v11, 0x0

    const/16 v12, 0x3ea

    const/16 v13, 0x3eb

    const/4 v14, 0x0

    move-object v15, v3

    move/from16 v16, v5

    move/from16 v17, v9

    invoke-static/range {v10 .. v17}, Lcom/android/systemui/vivo/common/utils/ImageUtil;->getFitableRector(IIIIZ[III)[I

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->OrgtopRRector:[I

    .line 131
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x3e9

    const/16 v13, 0x3eb

    const/4 v14, 0x1

    move-object v15, v3

    move/from16 v16, v5

    move/from16 v17, v9

    invoke-static/range {v10 .. v17}, Lcom/android/systemui/vivo/common/utils/ImageUtil;->getFitableRector(IIIIZ[III)[I

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->OrgleftTRector:[I

    .line 132
    const/4 v10, 0x0

    add-int/lit8 v11, v9, -0x1

    const/16 v12, 0x3e9

    const/16 v13, 0x3ec

    const/4 v14, 0x1

    move-object v15, v3

    move/from16 v16, v5

    move/from16 v17, v9

    invoke-static/range {v10 .. v17}, Lcom/android/systemui/vivo/common/utils/ImageUtil;->getFitableRector(IIIIZ[III)[I

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->OrgleftBRector:[I

    .line 133
    add-int/lit8 v10, v5, -0x1

    const/4 v11, 0x0

    const/16 v12, 0x3ea

    const/16 v13, 0x3eb

    const/4 v14, 0x1

    move-object v15, v3

    move/from16 v16, v5

    move/from16 v17, v9

    invoke-static/range {v10 .. v17}, Lcom/android/systemui/vivo/common/utils/ImageUtil;->getFitableRector(IIIIZ[III)[I

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->OrgrightTRector:[I

    .line 134
    add-int/lit8 v10, v5, -0x1

    add-int/lit8 v11, v9, -0x1

    const/16 v12, 0x3ea

    const/16 v13, 0x3ec

    const/4 v14, 0x1

    move-object v15, v3

    move/from16 v16, v5

    move/from16 v17, v9

    invoke-static/range {v10 .. v17}, Lcom/android/systemui/vivo/common/utils/ImageUtil;->getFitableRector(IIIIZ[III)[I

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->OrgrightBRector:[I

    .line 135
    const/4 v10, 0x0

    add-int/lit8 v11, v9, -0x1

    const/16 v12, 0x3e9

    const/16 v13, 0x3ec

    const/4 v14, 0x0

    move-object v15, v3

    move/from16 v16, v5

    move/from16 v17, v9

    invoke-static/range {v10 .. v17}, Lcom/android/systemui/vivo/common/utils/ImageUtil;->getFitableRector(IIIIZ[III)[I

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->OrgbottomLRector:[I

    .line 136
    add-int/lit8 v10, v5, -0x1

    add-int/lit8 v11, v9, -0x1

    const/16 v12, 0x3ea

    const/16 v13, 0x3ec

    const/4 v14, 0x0

    move-object v15, v3

    move/from16 v16, v5

    move/from16 v17, v9

    invoke-static/range {v10 .. v17}, Lcom/android/systemui/vivo/common/utils/ImageUtil;->getFitableRector(IIIIZ[III)[I

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->OrgbottomRRector:[I

    .line 138
    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->access$000(Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;Landroid/graphics/Rect;)V

    .line 140
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->OrgtopLRector:[I

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->topLRector:[I

    .line 141
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->OrgtopRRector:[I

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->topRRector:[I

    .line 142
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->OrgleftTRector:[I

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->leftTRector:[I

    .line 143
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->OrgleftBRector:[I

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->leftBRector:[I

    .line 144
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->OrgrightTRector:[I

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->rightTRector:[I

    .line 145
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->OrgrightBRector:[I

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->rightBRector:[I

    .line 146
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->OrgbottomLRector:[I

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->bottomLRector:[I

    .line 147
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->OrgbottomRRector:[I

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->bottomRRector:[I

    .line 159
    :goto_1
    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->getCurRawfourDirectionRadius()I

    move-result v20

    .line 164
    if-gez v20, :cond_2

    move/from16 v0, v18

    move/from16 v1, p3

    if-ne v0, v1, :cond_4

    :cond_2
    move/from16 v21, v20

    .line 168
    .end local v20    # "radius":I
    .local v21, "radius":I
    :goto_2
    return v21

    .line 149
    .end local v21    # "radius":I
    .restart local v20    # "radius":I
    :cond_3
    const/4 v10, 0x0

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->topLRector:[I

    const/4 v4, 0x1

    aget v2, v2, v4

    add-int/lit8 v11, v2, 0x1

    const/16 v12, 0x3e9

    const/16 v13, 0x3eb

    const/4 v14, 0x0

    move-object v15, v3

    move/from16 v16, v5

    move/from16 v17, v9

    invoke-static/range {v10 .. v17}, Lcom/android/systemui/vivo/common/utils/ImageUtil;->getFitableRector(IIIIZ[III)[I

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->topLRector:[I

    .line 150
    add-int/lit8 v10, v5, -0x1

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->topRRector:[I

    const/4 v4, 0x1

    aget v2, v2, v4

    add-int/lit8 v11, v2, 0x1

    const/16 v12, 0x3ea

    const/16 v13, 0x3eb

    const/4 v14, 0x0

    move-object v15, v3

    move/from16 v16, v5

    move/from16 v17, v9

    invoke-static/range {v10 .. v17}, Lcom/android/systemui/vivo/common/utils/ImageUtil;->getFitableRector(IIIIZ[III)[I

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->topRRector:[I

    .line 151
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->leftTRector:[I

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

    invoke-static/range {v10 .. v17}, Lcom/android/systemui/vivo/common/utils/ImageUtil;->getFitableRector(IIIIZ[III)[I

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->leftTRector:[I

    .line 152
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->leftBRector:[I

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

    invoke-static/range {v10 .. v17}, Lcom/android/systemui/vivo/common/utils/ImageUtil;->getFitableRector(IIIIZ[III)[I

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->leftBRector:[I

    .line 153
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->rightTRector:[I

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

    invoke-static/range {v10 .. v17}, Lcom/android/systemui/vivo/common/utils/ImageUtil;->getFitableRector(IIIIZ[III)[I

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->rightTRector:[I

    .line 154
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->rightBRector:[I

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

    invoke-static/range {v10 .. v17}, Lcom/android/systemui/vivo/common/utils/ImageUtil;->getFitableRector(IIIIZ[III)[I

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->rightBRector:[I

    .line 155
    const/4 v10, 0x0

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->bottomLRector:[I

    const/4 v4, 0x1

    aget v2, v2, v4

    add-int/lit8 v11, v2, -0x1

    const/16 v12, 0x3e9

    const/16 v13, 0x3ec

    const/4 v14, 0x0

    move-object v15, v3

    move/from16 v16, v5

    move/from16 v17, v9

    invoke-static/range {v10 .. v17}, Lcom/android/systemui/vivo/common/utils/ImageUtil;->getFitableRector(IIIIZ[III)[I

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->bottomLRector:[I

    .line 156
    add-int/lit8 v10, v5, -0x1

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->bottomRRector:[I

    const/4 v4, 0x1

    aget v2, v2, v4

    add-int/lit8 v11, v2, -0x1

    const/16 v12, 0x3ea

    const/16 v13, 0x3ec

    const/4 v14, 0x0

    move-object v15, v3

    move/from16 v16, v5

    move/from16 v17, v9

    invoke-static/range {v10 .. v17}, Lcom/android/systemui/vivo/common/utils/ImageUtil;->getFitableRector(IIIIZ[III)[I

    move-result-object v2

    move-object/from16 v0, v19

    iput-object v2, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil$PointSolution;->bottomRRector:[I

    goto/16 :goto_1

    .line 127
    :cond_4
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0

    :cond_5
    move/from16 v21, v20

    .line 168
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
    .line 636
    const/high16 v7, 0x3f800000    # 1.0f

    .line 637
    .local v7, "factScale":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sIconBgWidth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sIconBgHeight:I

    move/from16 v20, v0

    sget-object v21, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v19 .. v21}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 639
    .local v13, "maskedBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sMaskCanvas:Landroid/graphics/Canvas;

    .line 640
    .local v12, "maskCanvas":Landroid/graphics/Canvas;
    invoke-virtual {v12, v13}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sMaskRect:Landroid/graphics/Rect;

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

    iget-object v0, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sMaskRect:Landroid/graphics/Rect;

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

    .line 646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sMaskRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->width()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sMaskRect:Landroid/graphics/Rect;

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

    .line 647
    .local v10, "marginLeft":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sMaskRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->height()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sMaskRect:Landroid/graphics/Rect;

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

    .line 649
    .local v11, "marginTop":F
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v17, v7, v19

    .line 650
    .local v17, "targetWidth":F
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v16, v7, v19

    .line 658
    .local v16, "targetHeight":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sOldBounds:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 659
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

    .line 660
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sOldBounds:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 663
    new-instance v14, Landroid/graphics/Matrix;

    invoke-direct {v14}, Landroid/graphics/Matrix;-><init>()V

    .line 664
    .local v14, "matrix":Landroid/graphics/Matrix;
    new-instance v15, Landroid/graphics/Paint;

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-direct {v15, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 667
    .local v15, "paint":Landroid/graphics/Paint;
    new-instance v19, Landroid/graphics/PorterDuffXfermode;

    sget-object v20, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v19 .. v20}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 668
    move-object/from16 v0, p5

    invoke-virtual {v12, v0, v14, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 670
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sIconBgWidth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sIconBgHeight:I

    move/from16 v20, v0

    sget-object v21, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v19 .. v21}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 672
    .local v5, "bitmap":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6}, Landroid/graphics/Canvas;-><init>()V

    .line 673
    .local v6, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v6, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 675
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sIconBgWidth:I

    move/from16 v19, v0

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v20

    sub-int v19, v19, v20

    div-int/lit8 v9, v19, 0x2

    .line 676
    .local v9, "left":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sIconBgHeight:I

    move/from16 v19, v0

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v20

    sub-int v19, v19, v20

    div-int/lit8 v18, v19, 0x2

    .line 677
    .local v18, "top":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sOldBounds:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 678
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

    .line 679
    move-object/from16 v0, p6

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->sOldBounds:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, p6

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 681
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

    .line 683
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0200cf

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 684
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

    .line 685
    invoke-virtual {v8, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 687
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager;->getsInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager;->releaseBitmap(Landroid/graphics/Bitmap;)V

    .line 688
    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 689
    return-object v5
.end method

.method public createRedrawIconBitmap(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "srcIconDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 498
    iget-object v0, p0, Lcom/android/systemui/vivo/common/utils/ImageUtil;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p2, v0, p1}, Lcom/android/systemui/vivo/common/utils/ImageUtil;->createRedrawIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
