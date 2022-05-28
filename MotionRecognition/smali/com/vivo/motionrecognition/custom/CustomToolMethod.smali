.class public Lcom/vivo/motionrecognition/custom/CustomToolMethod;
.super Ljava/lang/Object;
.source "CustomToolMethod.java"


# static fields
.field public static final PAINT_COLOR:Ljava/lang/String; = "#1b1b1b"

.field private static final TAG:Ljava/lang/String;

.field private static final hexArray:[C

.field private static point_x_center:I

.field private static point_y_center:I

.field private static x_center:I

.field private static x_diff:I

.field private static y_center:I

.field private static y_diff:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    const-class v0, Lcom/vivo/motionrecognition/custom/CustomToolMethod;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vivo/motionrecognition/custom/CustomToolMethod;->TAG:Ljava/lang/String;

    .line 23
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/vivo/motionrecognition/custom/CustomToolMethod;->hexArray:[C

    .line 25
    sput v1, Lcom/vivo/motionrecognition/custom/CustomToolMethod;->x_center:I

    .line 26
    sput v1, Lcom/vivo/motionrecognition/custom/CustomToolMethod;->y_center:I

    .line 27
    sput v1, Lcom/vivo/motionrecognition/custom/CustomToolMethod;->x_diff:I

    .line 28
    sput v1, Lcom/vivo/motionrecognition/custom/CustomToolMethod;->y_diff:I

    .line 29
    sput v1, Lcom/vivo/motionrecognition/custom/CustomToolMethod;->point_x_center:I

    .line 30
    sput v1, Lcom/vivo/motionrecognition/custom/CustomToolMethod;->point_y_center:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static adaptPoint(Ljava/util/ArrayList;I)Ljava/util/ArrayList;
    .locals 17
    .param p1, "width"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Point;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v3, "mpoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Point;>;"
    const/4 v11, 0x0

    .line 113
    .local v11, "xMin":I
    const/4 v10, 0x0

    .line 114
    .local v10, "xMax":I
    const/4 v13, 0x0

    .line 115
    .local v13, "yMin":I
    const/4 v12, 0x0

    .line 116
    .local v12, "yMax":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v2, v14, :cond_5

    .line 117
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Point;

    .line 118
    .local v4, "p":Landroid/graphics/Point;
    if-nez v2, :cond_0

    .line 119
    iget v11, v4, Landroid/graphics/Point;->x:I

    .line 120
    iget v13, v4, Landroid/graphics/Point;->y:I

    .line 122
    :cond_0
    iget v14, v4, Landroid/graphics/Point;->x:I

    if-ge v14, v11, :cond_1

    .line 123
    iget v11, v4, Landroid/graphics/Point;->x:I

    .line 125
    :cond_1
    iget v14, v4, Landroid/graphics/Point;->x:I

    if-le v14, v10, :cond_2

    .line 126
    iget v10, v4, Landroid/graphics/Point;->x:I

    .line 128
    :cond_2
    iget v14, v4, Landroid/graphics/Point;->y:I

    if-ge v14, v13, :cond_3

    .line 129
    iget v13, v4, Landroid/graphics/Point;->y:I

    .line 131
    :cond_3
    iget v14, v4, Landroid/graphics/Point;->y:I

    if-le v14, v12, :cond_4

    .line 132
    iget v12, v4, Landroid/graphics/Point;->y:I

    .line 116
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 136
    .end local v4    # "p":Landroid/graphics/Point;
    :cond_5
    sub-int v6, v10, v11

    .line 137
    .local v6, "pointM":I
    sub-int v5, v12, v13

    .line 138
    .local v5, "pointH":I
    move/from16 v0, p1

    int-to-float v14, v0

    int-to-float v15, v6

    div-float v9, v14, v15

    .line 139
    .local v9, "ratioM":F
    move/from16 v0, p1

    int-to-float v14, v0

    int-to-float v15, v5

    div-float v8, v14, v15

    .line 141
    .local v8, "ratioH":F
    cmpg-float v14, v9, v8

    if-gez v14, :cond_6

    move v7, v9

    .line 142
    .local v7, "ratio":F
    :goto_1
    const v1, 0x3f333333    # 0.7f

    .line 143
    .local v1, "SCALE":F
    const/4 v2, 0x0

    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v2, v14, :cond_7

    .line 144
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Point;

    .line 145
    .restart local v4    # "p":Landroid/graphics/Point;
    new-instance v14, Landroid/graphics/Point;

    iget v15, v4, Landroid/graphics/Point;->x:I

    int-to-float v15, v15

    mul-float/2addr v15, v7

    mul-float/2addr v15, v1

    float-to-int v15, v15

    iget v0, v4, Landroid/graphics/Point;->y:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v16, v16, v7

    mul-float v16, v16, v1

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    invoke-direct/range {v14 .. v16}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v1    # "SCALE":F
    .end local v4    # "p":Landroid/graphics/Point;
    .end local v7    # "ratio":F
    :cond_6
    move v7, v8

    .line 141
    goto :goto_1

    .line 147
    .restart local v1    # "SCALE":F
    .restart local v7    # "ratio":F
    :cond_7
    return-object v3
.end method

.method private static calculationCenter(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Point;>;"
    const/4 v3, 0x0

    .line 84
    .local v3, "xMin":I
    const/4 v2, 0x0

    .line 85
    .local v2, "xMax":I
    const/4 v5, 0x0

    .line 86
    .local v5, "yMin":I
    const/4 v4, 0x0

    .line 87
    .local v4, "yMax":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_5

    .line 88
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    .line 89
    .local v1, "p":Landroid/graphics/Point;
    if-nez v0, :cond_0

    .line 90
    iget v3, v1, Landroid/graphics/Point;->x:I

    .line 91
    iget v5, v1, Landroid/graphics/Point;->y:I

    .line 93
    :cond_0
    iget v6, v1, Landroid/graphics/Point;->x:I

    if-ge v6, v3, :cond_1

    .line 94
    iget v3, v1, Landroid/graphics/Point;->x:I

    .line 96
    :cond_1
    iget v6, v1, Landroid/graphics/Point;->x:I

    if-le v6, v2, :cond_2

    .line 97
    iget v2, v1, Landroid/graphics/Point;->x:I

    .line 99
    :cond_2
    iget v6, v1, Landroid/graphics/Point;->y:I

    if-ge v6, v5, :cond_3

    .line 100
    iget v5, v1, Landroid/graphics/Point;->y:I

    .line 102
    :cond_3
    iget v6, v1, Landroid/graphics/Point;->y:I

    if-le v6, v4, :cond_4

    .line 103
    iget v4, v1, Landroid/graphics/Point;->y:I

    .line 87
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    .end local v1    # "p":Landroid/graphics/Point;
    :cond_5
    sub-int v6, v2, v3

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v3

    sput v6, Lcom/vivo/motionrecognition/custom/CustomToolMethod;->point_x_center:I

    .line 107
    sub-int v6, v4, v5

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v5

    sput v6, Lcom/vivo/motionrecognition/custom/CustomToolMethod;->point_y_center:I

    .line 108
    return-void
.end method

.method public static drawThumbNail(Ljava/util/ArrayList;IILandroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 22
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;II",
            "Landroid/content/Context;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Point;>;"
    const/16 v19, 0x0

    .line 34
    .local v19, "xMin":I
    const/16 v18, 0x0

    .line 35
    .local v18, "xMax":I
    const/16 v21, 0x0

    .line 36
    .local v21, "yMin":I
    const/16 v20, 0x0

    .line 37
    .local v20, "yMax":I
    const/4 v7, 0x4

    .line 38
    .local v7, "LineWidth":I
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02003d

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 39
    .local v8, "backBitmap":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {v8, v2, v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 40
    .local v9, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    .line 41
    .local v1, "canvas":Landroid/graphics/Canvas;
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x1

    invoke-virtual {v8, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 42
    invoke-virtual {v1, v9}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 43
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 44
    .local v6, "mDrawPaint":Landroid/graphics/Paint;
    new-instance v6, Landroid/graphics/Paint;

    .end local v6    # "mDrawPaint":Landroid/graphics/Paint;
    const/4 v2, 0x4

    invoke-direct {v6, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 45
    .restart local v6    # "mDrawPaint":Landroid/graphics/Paint;
    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 46
    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 47
    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 48
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 49
    const-string v2, "#1b1b1b"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 50
    int-to-float v2, v7

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 51
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/vivo/motionrecognition/custom/CustomToolMethod;->adaptPoint(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v12

    .line 52
    .local v12, "mGesStroke":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Point;>;"
    invoke-static {v12}, Lcom/vivo/motionrecognition/custom/CustomToolMethod;->calculationCenter(Ljava/util/ArrayList;)V

    .line 53
    new-instance v15, Landroid/graphics/Point;

    invoke-direct {v15}, Landroid/graphics/Point;-><init>()V

    .line 54
    .local v15, "sTd":Landroid/graphics/Point;
    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10}, Landroid/graphics/Point;-><init>()V

    .line 56
    .local v10, "eTd":Landroid/graphics/Point;
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sput v2, Lcom/vivo/motionrecognition/custom/CustomToolMethod;->x_center:I

    .line 57
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sput v2, Lcom/vivo/motionrecognition/custom/CustomToolMethod;->y_center:I

    .line 58
    sget v2, Lcom/vivo/motionrecognition/custom/CustomToolMethod;->x_center:I

    sget v3, Lcom/vivo/motionrecognition/custom/CustomToolMethod;->point_x_center:I

    sub-int/2addr v2, v3

    sput v2, Lcom/vivo/motionrecognition/custom/CustomToolMethod;->x_diff:I

    .line 59
    sget v2, Lcom/vivo/motionrecognition/custom/CustomToolMethod;->y_center:I

    sget v3, Lcom/vivo/motionrecognition/custom/CustomToolMethod;->point_y_center:I

    sub-int/2addr v2, v3

    sput v2, Lcom/vivo/motionrecognition/custom/CustomToolMethod;->y_diff:I

    .line 61
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v11, v2, :cond_0

    .line 63
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iput v2, v15, Landroid/graphics/Point;->x:I

    .line 64
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iput v2, v15, Landroid/graphics/Point;->y:I

    .line 65
    add-int/lit8 v2, v11, 0x1

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iput v2, v10, Landroid/graphics/Point;->x:I

    .line 66
    add-int/lit8 v2, v11, 0x1

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iput v2, v10, Landroid/graphics/Point;->y:I

    .line 68
    const/4 v13, 0x0

    .line 69
    .local v13, "oneX":I
    const/4 v14, 0x0

    .line 70
    .local v14, "oneY":I
    const/16 v16, 0x0

    .line 71
    .local v16, "twoX":I
    const/16 v17, 0x0

    .line 72
    .local v17, "twoY":I
    iget v2, v15, Landroid/graphics/Point;->x:I

    sget v3, Lcom/vivo/motionrecognition/custom/CustomToolMethod;->x_diff:I

    add-int v13, v2, v3

    .line 73
    iget v2, v15, Landroid/graphics/Point;->y:I

    sget v3, Lcom/vivo/motionrecognition/custom/CustomToolMethod;->y_diff:I

    add-int v14, v2, v3

    .line 74
    iget v2, v10, Landroid/graphics/Point;->x:I

    sget v3, Lcom/vivo/motionrecognition/custom/CustomToolMethod;->x_diff:I

    add-int v16, v2, v3

    .line 75
    iget v2, v10, Landroid/graphics/Point;->y:I

    sget v3, Lcom/vivo/motionrecognition/custom/CustomToolMethod;->y_diff:I

    add-int v17, v2, v3

    .line 77
    int-to-float v2, v13

    int-to-float v3, v14

    move/from16 v0, v16

    int-to-float v4, v0

    move/from16 v0, v17

    int-to-float v5, v0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 61
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 79
    .end local v13    # "oneX":I
    .end local v14    # "oneY":I
    .end local v16    # "twoX":I
    .end local v17    # "twoY":I
    :cond_0
    return-object v9
.end method
