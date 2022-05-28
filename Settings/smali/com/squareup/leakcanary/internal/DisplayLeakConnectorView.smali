.class public final Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;
.super Landroid/view/View;
.source "DisplayLeakConnectorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;
    }
.end annotation


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
    .line 15
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

    .line 25
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->iconPaint:Landroid/graphics/Paint;

    .line 26
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->rootPaint:Landroid/graphics/Paint;

    .line 27
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->leakPaint:Landroid/graphics/Paint;

    .line 28
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->clearPaint:Landroid/graphics/Paint;

    .line 29
    sget-object v0, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->iconPaint:Landroid/graphics/Paint;

    const v1, -0x454546

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 30
    sget-object v0, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->rootPaint:Landroid/graphics/Paint;

    const v1, -0x7b593b

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 31
    sget-object v0, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->leakPaint:Landroid/graphics/Paint;

    const v1, -0x4eaab2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 32
    sget-object v0, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->clearPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 33
    sget-object v0, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->clearPaint:Landroid/graphics/Paint;

    sget-object v1, Lcom/squareup/leakcanary/internal/LeakCanaryUi;->CLEAR_XFER_MODE:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    sget-object v0, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;->NODE:Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;

    iput-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->type:Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;

    .line 39
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->getWidth()I

    move-result v12

    .line 43
    .local v12, "width":I
    invoke-virtual {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->getHeight()I

    move-result v9

    .line 44
    .local v9, "height":I
    iget-object v2, p0, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->cache:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->cache:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v2, v12, :cond_0

    iget-object v2, p0, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->cache:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-eq v2, v9, :cond_1

    .line 45
    :cond_0
    iget-object v2, p0, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->cache:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 46
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->cache:Landroid/graphics/Bitmap;

    .line 48
    :cond_1
    iget-object v2, p0, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->cache:Landroid/graphics/Bitmap;

    if-nez v2, :cond_2

    .line 49
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v12, v9, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->cache:Landroid/graphics/Bitmap;

    .line 50
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->cache:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 51
    .local v0, "cacheCanvas":Landroid/graphics/Canvas;
    int-to-float v2, v12

    const/high16 v3, 0x40000000    # 2.0f

    div-float v1, v2, v3

    .line 52
    .local v1, "halfWidth":F
    int-to-float v2, v9

    const/high16 v3, 0x40000000    # 2.0f

    div-float v8, v2, v3

    .line 53
    .local v8, "halfHeight":F
    int-to-float v2, v12

    const/high16 v3, 0x40400000    # 3.0f

    div-float v11, v2, v3

    .line 54
    .local v11, "thirdWidth":F
    const/high16 v2, 0x40800000    # 4.0f

    invoke-virtual {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/squareup/leakcanary/internal/LeakCanaryUi;->dpToPixel(FLandroid/content/res/Resources;)F

    move-result v10

    .line 55
    .local v10, "strokeSize":F
    sget-object v2, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->iconPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 56
    sget-object v2, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->rootPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 57
    invoke-static {}, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->$SWITCH_TABLE$com$squareup$leakcanary$internal$DisplayLeakConnectorView$Type()[I

    move-result-object v2

    iget-object v3, p0, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->type:Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;

    invoke-virtual {v3}, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 76
    const/4 v2, 0x0

    sget-object v5, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->iconPaint:Landroid/graphics/Paint;

    move v3, v1

    move v4, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 77
    sget-object v2, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->leakPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v8, v11, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 82
    .end local v0    # "cacheCanvas":Landroid/graphics/Canvas;
    .end local v1    # "halfWidth":F
    .end local v8    # "halfHeight":F
    .end local v10    # "strokeSize":F
    .end local v11    # "thirdWidth":F
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->cache:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 83
    return-void

    .line 59
    .restart local v0    # "cacheCanvas":Landroid/graphics/Canvas;
    .restart local v1    # "halfWidth":F
    .restart local v8    # "halfHeight":F
    .restart local v10    # "strokeSize":F
    .restart local v11    # "thirdWidth":F
    :pswitch_0
    const/4 v2, 0x0

    int-to-float v4, v9

    sget-object v5, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->iconPaint:Landroid/graphics/Paint;

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 60
    sget-object v2, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->iconPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v8, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 61
    sget-object v2, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->clearPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v8, v11, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 65
    :pswitch_1
    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v10, v2

    sub-float v6, v1, v2

    .line 66
    .local v6, "radiusClear":F
    const/4 v3, 0x0

    const/4 v4, 0x0

    int-to-float v5, v12

    sget-object v7, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->rootPaint:Landroid/graphics/Paint;

    move-object v2, v0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 67
    const/4 v2, 0x0

    sget-object v3, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->clearPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v6, v6, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 68
    int-to-float v2, v12

    sget-object v3, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->clearPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v6, v6, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 69
    const/4 v2, 0x0

    sget-object v5, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->rootPaint:Landroid/graphics/Paint;

    move v3, v1

    move v4, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 70
    int-to-float v4, v9

    sget-object v5, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->iconPaint:Landroid/graphics/Paint;

    move v2, v8

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 71
    sget-object v2, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->iconPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v8, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 72
    sget-object v2, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->clearPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v8, v11, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 57
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setType(Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;)V
    .locals 1
    .param p1, "type"    # Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->type:Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;

    if-eq p1, v0, :cond_1

    .line 87
    iput-object p1, p0, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->type:Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView$Type;

    .line 88
    iget-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->cache:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->cache:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->cache:Landroid/graphics/Bitmap;

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/squareup/leakcanary/internal/DisplayLeakConnectorView;->invalidate()V

    .line 94
    :cond_1
    return-void
.end method
