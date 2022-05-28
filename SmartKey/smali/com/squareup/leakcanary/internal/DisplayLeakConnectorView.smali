.class public final Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;
.super Landroid/view/View;
.source "DisplayLeakConnectorView.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$squareup$leakcanary$internal$DisplayLeakConnectorView$Type:[I

.field private static final clearPaint:Landroid/graphics/Paint;

.field private static final iconPaint:Landroid/graphics/Paint;

.field private static final leakPaint:Landroid/graphics/Paint;

.field private static final rootPaint:Landroid/graphics/Paint;


# instance fields
.field private cache:Landroid/graphics/Bitmap;

.field private type:Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;


# direct methods
.method static synthetic $SWITCH_TABLE$com$squareup$leakcanary$internal$DisplayLeakConnectorView$Type()[I
    .locals 3

    .prologue
    .line 28
    sget-object v0, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->$SWITCH_TABLE$com$squareup$leakcanary$internal$DisplayLeakConnectorView$Type:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;->values()[Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;->END:Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;

    invoke-virtual {v1}, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;->NODE:Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;

    invoke-virtual {v1}, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;->START:Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;

    invoke-virtual {v1}, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->$SWITCH_TABLE$com$squareup$leakcanary$internal$DisplayLeakConnectorView$Type:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 30
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->iconPaint:Landroid/graphics/Paint;

    .line 31
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->rootPaint:Landroid/graphics/Paint;

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->leakPaint:Landroid/graphics/Paint;

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->clearPaint:Landroid/graphics/Paint;

    .line 36
    sget-object v0, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->iconPaint:Landroid/graphics/Paint;

    const v1, -0x454546

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 37
    sget-object v0, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->rootPaint:Landroid/graphics/Paint;

    const v1, -0x7b593b

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 38
    sget-object v0, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->leakPaint:Landroid/graphics/Paint;

    const v1, -0x4eaab2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 39
    sget-object v0, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->clearPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 40
    sget-object v0, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->clearPaint:Landroid/graphics/Paint;

    sget-object v1, Lcom/squareup/leakcanary/internal/LeakCanaryUi;->CLEAR_XFER_MODE:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    sget-object v0, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;->NODE:Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;

    iput-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->type:Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;

    .line 54
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    const/4 v2, 0x0

    .line 57
    invoke-virtual {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->getWidth()I

    move-result v9

    .line 58
    invoke-virtual {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->getHeight()I

    move-result v10

    .line 60
    iget-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->cache:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->cache:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, v9, :cond_0

    iget-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->cache:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, v10, :cond_1

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->cache:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 62
    iput-object v13, p0, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->cache:Landroid/graphics/Bitmap;

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->cache:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 66
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->cache:Landroid/graphics/Bitmap;

    .line 68
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->cache:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 70
    int-to-float v1, v9

    div-float/2addr v1, v6

    .line 71
    int-to-float v3, v10

    div-float v11, v3, v6

    .line 72
    int-to-float v3, v9

    const/high16 v4, 0x40400000    # 3.0f

    div-float v12, v3, v4

    .line 74
    const/high16 v3, 0x40800000    # 4.0f

    invoke-virtual {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/squareup/leakcanary/internal/LeakCanaryUi;->dpToPixel(FLandroid/content/res/Resources;)F

    move-result v3

    .line 76
    sget-object v4, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->iconPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 77
    sget-object v4, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->rootPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 79
    invoke-static {}, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->$SWITCH_TABLE$com$squareup$leakcanary$internal$DisplayLeakConnectorView$Type()[I

    move-result-object v4

    iget-object v5, p0, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->type:Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;

    invoke-virtual {v5}, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 96
    sget-object v5, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->iconPaint:Landroid/graphics/Paint;

    move v3, v1

    move v4, v11

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 97
    sget-object v3, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->leakPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v11, v12, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 101
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->cache:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v2, v2, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 102
    return-void

    .line 81
    :pswitch_0
    int-to-float v4, v10

    sget-object v5, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->iconPaint:Landroid/graphics/Paint;

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 82
    sget-object v3, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->iconPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v11, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 83
    sget-object v3, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->clearPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v11, v12, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 86
    :pswitch_1
    div-float/2addr v3, v6

    sub-float v7, v1, v3

    .line 87
    int-to-float v6, v9

    sget-object v8, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->rootPaint:Landroid/graphics/Paint;

    move-object v3, v0

    move v4, v2

    move v5, v2

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 88
    sget-object v3, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->clearPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v7, v7, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 89
    int-to-float v3, v9

    sget-object v4, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->clearPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v7, v7, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 90
    sget-object v5, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->rootPaint:Landroid/graphics/Paint;

    move v3, v1

    move v4, v11

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 91
    int-to-float v7, v10

    sget-object v8, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->iconPaint:Landroid/graphics/Paint;

    move-object v3, v0

    move v4, v1

    move v5, v11

    move v6, v1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 92
    sget-object v3, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->iconPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v11, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 93
    sget-object v3, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->clearPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v11, v12, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setType(Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;)V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->type:Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;

    if-eq p1, v0, :cond_1

    .line 106
    iput-object p1, p0, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->type:Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;

    .line 107
    iget-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->cache:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->cache:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->cache:Landroid/graphics/Bitmap;

    .line 111
    :cond_0
    invoke-virtual {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->invalidate()V

    .line 113
    :cond_1
    return-void
.end method
