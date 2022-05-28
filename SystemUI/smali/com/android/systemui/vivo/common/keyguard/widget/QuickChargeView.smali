.class public Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;
.super Landroid/view/View;
.source "QuickChargeView.java"


# static fields
.field private static final COLOR_WHEELS:I = -0x55ff783f

.field private static final DEBUG:Z = false

.field private static final DEBUG_CLIP:Z = false

.field private static final PREX_PERCENT:Ljava/lang/String; = "%"

.field public static final REASON_HIDE_QUICK_CHARGE_CHARGE_FULL:I = 0x0

.field public static final REASON_HIDE_QUICK_CHARGE_EDIT:I = 0x6

.field public static final REASON_HIDE_QUICK_CHARGE_MODE_CHAGED:I = 0x7

.field public static final REASON_HIDE_QUICK_CHARGE_MUSIC_PLAYING:I = 0x2

.field public static final REASON_HIDE_QUICK_CHARGE_NOTIFICATION:I = 0x1

.field public static final REASON_HIDE_QUICK_CHARGE_PAUSE:I = 0x4

.field public static final REASON_HIDE_QUICK_CHARGE_PLUGGEDN_OUT:I = 0x3

.field public static final REASON_HIDE_QUICK_CHARGE_UNLOCK:I = 0x5

.field public static final TAG:Ljava/lang/String;

.field private static final WHOLE_BATTERY_LEVEL_COUNT:I = 0x48


# instance fields
.field private mBattery:Landroid/graphics/drawable/Drawable;

.field private mBatteryContainer:Landroid/graphics/drawable/Drawable;

.field private mBatteryLevel:I

.field private mBatteryLevelInDrawable:I

.field private mBound:Landroid/graphics/Rect;

.field private mClipPath:Landroid/graphics/Path;

.field private mContext:Landroid/content/Context;

.field private mDebugClipPaint:Landroid/graphics/Paint;

.field private mDeltaProgress:[I

.field private mDeltaRadiuses:[I

.field private final mDensity:F

.field private mDiagonal:D

.field private mDiameter:I

.field private mPrexPercentSize:F

.field private mScheduler:Landroid/animation/TimeAnimator;

.field private mSpace:F

.field private mStartAngles:[I

.field private mTextLocation:[F

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTextSize:F

.field private mViewMinHeight:I

.field private mViewMinWidth:I

.field private mWheelBarLengths:[I

.field private mWheelCircleBounds:[Landroid/graphics/RectF;

.field private mWheelPaint:Landroid/graphics/Paint;

.field private mWheelProgresses:[I

.field private mWheelRadius:[I

.field private mWheelStrokeWidths:[I

.field private mWheelsNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x4

    .line 89
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    iput v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mWheelsNum:I

    .line 42
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mWheelStrokeWidths:[I

    .line 44
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mWheelRadius:[I

    .line 45
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mWheelBarLengths:[I

    .line 47
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mDeltaProgress:[I

    .line 49
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mWheelProgresses:[I

    .line 50
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mStartAngles:[I

    .line 51
    new-array v0, v1, [Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mWheelCircleBounds:[Landroid/graphics/RectF;

    .line 53
    new-array v0, v1, [I

    fill-array-data v0, :array_5

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mDeltaRadiuses:[I

    .line 65
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mBatteryLevelInDrawable:I

    .line 75
    const/high16 v0, 0x41f00000    # 30.0f

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mTextSize:F

    .line 76
    const/high16 v0, 0x41980000    # 19.0f

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mPrexPercentSize:F

    .line 77
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mSpace:F

    .line 78
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_6

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mTextLocation:[F

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mBatteryLevel:I

    .line 90
    iput-object p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mContext:Landroid/content/Context;

    .line 91
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mDensity:F

    .line 92
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->loadResource()V

    .line 93
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->adjustDimensInDensity()V

    .line 94
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->setupPaint()V

    .line 95
    new-instance v0, Landroid/animation/TimeAnimator;

    invoke-direct {v0}, Landroid/animation/TimeAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mScheduler:Landroid/animation/TimeAnimator;

    .line 96
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mScheduler:Landroid/animation/TimeAnimator;

    new-instance v1, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView$1;-><init>(Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;)V

    invoke-virtual {v0, v1}, Landroid/animation/TimeAnimator;->setTimeListener(Landroid/animation/TimeAnimator$TimeListener;)V

    .line 104
    return-void

    .line 42
    nop

    :array_0
    .array-data 4
        0x3
        0x1
        0x5
        0x1
    .end array-data

    .line 45
    :array_1
    .array-data 4
        0x96
        0x6e
        0x82
        0xbe
    .end array-data

    .line 47
    :array_2
    .array-data 4
        -0x4
        0x4
        -0x4
        0x4
    .end array-data

    .line 49
    :array_3
    .array-data 4
        0x168
        0x0
        0x168
        0x0
    .end array-data

    .line 50
    :array_4
    .array-data 4
        0x0
        0x5a
        0x96
        0x118
    .end array-data

    .line 53
    :array_5
    .array-data 4
        0x4
        0x1
        0xa
        0x1
    .end array-data

    .line 78
    :array_6
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private adjustDimensInDensity()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x3

    .line 114
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mWheelsNum:I

    if-ge v0, v2, :cond_0

    .line 115
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mWheelStrokeWidths:[I

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mWheelStrokeWidths:[I

    aget v3, v3, v0

    invoke-direct {p0, v3}, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->dip2px(I)I

    move-result v3

    aput v3, v2, v0

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mWheelRadius:[I

    iget v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mDiameter:I

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mDeltaRadiuses:[I

    aget v4, v4, v6

    invoke-direct {p0, v4}, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->dip2px(I)I

    move-result v4

    add-int/2addr v3, v4

    aput v3, v2, v6

    .line 118
    const/4 v1, 0x1

    .local v1, "j":I
    :goto_1
    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mWheelsNum:I

    if-ge v1, v2, :cond_1

    .line 119
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mWheelRadius:[I

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mWheelRadius:[I

    add-int/lit8 v4, v1, -0x1

    aget v3, v3, v4

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mWheelStrokeWidths:[I

    aget v4, v4, v1

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mDeltaRadiuses:[I

    aget v4, v4, v1

    invoke-direct {p0, v4}, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->dip2px(I)I

    move-result v4

    add-int/2addr v3, v4

    aput v3, v2, v1

    .line 118
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 121
    :cond_1
    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mTextSize:F

    float-to-int v2, v2

    invoke-direct {p0, v2}, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->dip2px(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mTextSize:F

    .line 122
    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mPrexPercentSize:F

    float-to-int v2, v2

    invoke-direct {p0, v2}, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->dip2px(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mPrexPercentSize:F

    .line 123
    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mSpace:F

    float-to-int v2, v2

    invoke-direct {p0, v2}, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->dip2px(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mSpace:F

    .line 124
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mWheelRadius:[I

    aget v2, v2, v5

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mWheelStrokeWidths:[I

    aget v3, v3, v5

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mViewMinWidth:I

    .line 125
    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mWheelRadius:[I

    aget v2, v2, v5

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mWheelStrokeWidths:[I

    aget v3, v3, v5

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mViewMinHeight:I

    .line 126
    sget-object v2, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "density = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mDensity:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mViewMinWidth = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mViewMinWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mViewMinHeight = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mViewMinHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method private dip2px(I)I
    .locals 2
    .param p1, "dipValue"    # I

    .prologue
    .line 359
    int-to-float v0, p1

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mDensity:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private drawBatteryProcess(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 232
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 233
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 237
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mBattery:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 238
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 240
    return-void
.end method

.method public static hideNormalChargeView(I)Z
    .locals 1
    .param p0, "reason"    # I

    .prologue
    .line 362
    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadResource()V
    .locals 4

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02025c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mBattery:Landroid/graphics/drawable/Drawable;

    .line 108
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02025d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mBatteryContainer:Landroid/graphics/drawable/Drawable;

    .line 109
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mBatteryContainer:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mBatteryContainer:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mDiameter:I

    .line 110
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mDiameter:I

    div-int/lit8 v2, v2, 0x2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mDiagonal:D

    .line 111
    return-void
.end method

.method private setupBounds(II)V
    .locals 19
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 325
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->getPaddingTop()I

    move-result v7

    .line 326
    .local v7, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->getPaddingBottom()I

    move-result v4

    .line 327
    .local v4, "paddingBottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->getPaddingLeft()I

    move-result v5

    .line 328
    .local v5, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->getPaddingRight()I

    move-result v6

    .line 329
    .local v6, "paddingRight":I
    sub-int v12, p1, v5

    sub-int/2addr v12, v6

    sub-int v13, p2, v4

    sub-int/2addr v13, v7

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 330
    .local v3, "minValue":I
    sub-int v12, p1, v5

    sub-int/2addr v12, v6

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mDiameter:I

    sub-int/2addr v12, v13

    div-int/lit8 v12, v12, 0x2

    add-int v9, v12, v5

    .line 331
    .local v9, "xProcessOffset":I
    sub-int v12, p2, v7

    sub-int/2addr v12, v4

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mDiameter:I

    sub-int/2addr v12, v13

    div-int/lit8 v12, v12, 0x2

    add-int v11, v12, v7

    .line 332
    .local v11, "yProcessOffset":I
    new-instance v12, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mDiameter:I

    add-int/2addr v13, v9

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mDiameter:I

    add-int/2addr v14, v11

    invoke-direct {v12, v9, v11, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mBound:Landroid/graphics/Rect;

    .line 338
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mBatteryContainer:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 339
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mBattery:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 341
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mWheelsNum:I

    if-ge v2, v12, :cond_0

    .line 342
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mWheelRadius:[I

    aget v12, v12, v2

    mul-int/lit8 v12, v12, 0x2

    invoke-static {v3, v12}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 343
    .local v1, "circleDiameter":I
    sub-int v12, p1, v5

    sub-int/2addr v12, v6

    sub-int/2addr v12, v1

    div-int/lit8 v12, v12, 0x2

    add-int v8, v12, v5

    .line 344
    .local v8, "xOffset":I
    sub-int v12, p2, v7

    sub-int/2addr v12, v4

    sub-int/2addr v12, v1

    div-int/lit8 v12, v12, 0x2

    add-int v10, v12, v7

    .line 345
    .local v10, "yOffset":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mWheelCircleBounds:[Landroid/graphics/RectF;

    new-instance v13, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mWheelStrokeWidths:[I

    aget v14, v14, v2

    add-int/2addr v14, v8

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mWheelStrokeWidths:[I

    aget v15, v15, v2

    add-int/2addr v15, v10

    int-to-float v15, v15

    add-int v16, v8, v1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mWheelStrokeWidths:[I

    move-object/from16 v17, v0

    aget v17, v17, v2

    sub-int v16, v16, v17

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    add-int v17, v10, v1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mWheelStrokeWidths:[I

    move-object/from16 v18, v0

    aget v18, v18, v2

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-direct/range {v13 .. v17}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v13, v12, v2

    .line 341
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 356
    .end local v1    # "circleDiameter":I
    .end local v8    # "xOffset":I
    .end local v10    # "yOffset":I
    :cond_0
    return-void
.end method

.method private setupPaint()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 311
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mWheelPaint:Landroid/graphics/Paint;

    .line 312
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mWheelPaint:Landroid/graphics/Paint;

    const v1, -0x55ff783f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 313
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 314
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mWheelPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 315
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mClipPath:Landroid/graphics/Path;

    .line 316
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mTextPaint:Landroid/graphics/Paint;

    .line 317
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 323
    return-void
.end method

.method private updateClipPath()V
    .locals 14

    .prologue
    .line 258
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mBound:Landroid/graphics/Rect;

    if-nez v4, :cond_1

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    sget-object v4, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mBound = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mBound:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mBatteryLevelInDrawable:I

    if-ltz v4, :cond_0

    iget v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mBatteryLevelInDrawable:I

    const/16 v5, 0x48

    if-gt v4, v5, :cond_0

    .line 264
    iget v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mBatteryLevelInDrawable:I

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v4, v5

    const/high16 v5, 0x42900000    # 72.0f

    div-float/2addr v4, v5

    float-to-double v0, v4

    .line 265
    .local v0, "angle":D
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mBound:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mBound:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    div-int/lit8 v2, v4, 0x2

    .line 266
    .local v2, "centerX":I
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mBound:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mBound:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    div-int/lit8 v3, v4, 0x2

    .line 267
    .local v3, "centerY":I
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 268
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mClipPath:Landroid/graphics/Path;

    int-to-float v5, v2

    int-to-float v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 269
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mClipPath:Landroid/graphics/Path;

    add-int/lit8 v5, v2, -0x5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mBound:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 270
    const-wide/high16 v4, 0x3fc0000000000000L    # 0.125

    cmpl-double v4, v0, v4

    if-lez v4, :cond_2

    .line 271
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mClipPath:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mBound:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mBound:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 273
    :cond_2
    const-wide/high16 v4, 0x3fd8000000000000L    # 0.375

    cmpl-double v4, v0, v4

    if-lez v4, :cond_3

    .line 274
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mClipPath:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mBound:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mBound:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 276
    :cond_3
    const-wide/high16 v4, 0x3fe4000000000000L    # 0.625

    cmpl-double v4, v0, v4

    if-lez v4, :cond_4

    .line 277
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mClipPath:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mBound:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mBound:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 279
    :cond_4
    const-wide/high16 v4, 0x3fec000000000000L    # 0.875

    cmpl-double v4, v0, v4

    if-lez v4, :cond_5

    .line 280
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mClipPath:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mBound:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mBound:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 282
    :cond_5
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mClipPath:Landroid/graphics/Path;

    int-to-double v6, v2

    iget-wide v8, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mDiagonal:D

    const-wide v10, 0x401921fb54442d18L    # 6.283185307179586

    const-wide v12, 0x3f76c16c20000000L    # 0.0055555556900799274

    sub-double v12, v0, v12

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-float v5, v6

    int-to-double v6, v3

    iget-wide v8, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mDiagonal:D

    const-wide v10, 0x401921fb54442d18L    # 6.283185307179586

    const-wide v12, 0x3f76c16c20000000L    # 0.0055555556900799274

    sub-double v12, v0, v12

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    double-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 284
    iget-object v4, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    goto/16 :goto_0
.end method


# virtual methods
.method public onBatteryChanged(I)V
    .locals 4
    .param p1, "level"    # I

    .prologue
    .line 243
    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mBatteryLevel:I

    if-ne p1, v1, :cond_1

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    iput p1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mBatteryLevel:I

    .line 247
    mul-int/lit8 v1, p1, 0x48

    div-int/lit8 v0, v1, 0x64

    .line 248
    .local v0, "n":I
    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mBatteryLevelInDrawable:I

    if-eq v0, v1, :cond_0

    .line 251
    sget-object v1, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "n ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", level = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iput v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mBatteryLevelInDrawable:I

    .line 253
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->updateClipPath()V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 132
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 133
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mScheduler:Landroid/animation/TimeAnimator;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mScheduler:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->cancel()V

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mScheduler:Landroid/animation/TimeAnimator;

    .line 137
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v10, 0x41100000    # 9.0f

    const/high16 v9, 0x40400000    # 3.0f

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 196
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 197
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->drawBatteryProcess(Landroid/graphics/Canvas;)V

    .line 198
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mBatteryContainer:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 200
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mWheelsNum:I

    if-ge v6, v0, :cond_4

    .line 201
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mWheelPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mWheelStrokeWidths:[I

    aget v1, v1, v6

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 202
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mWheelCircleBounds:[Landroid/graphics/RectF;

    aget-object v1, v0, v6

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mStartAngles:[I

    aget v0, v0, v6

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mWheelProgresses:[I

    aget v2, v2, v6

    add-int/2addr v0, v2

    int-to-float v2, v0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mWheelBarLengths:[I

    aget v0, v0, v6

    int-to-float v3, v0

    iget-object v5, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mWheelPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 204
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mWheelProgresses:[I

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mWheelProgresses:[I

    aget v1, v1, v6

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mDeltaProgress:[I

    aget v2, v2, v6

    add-int/2addr v1, v2

    aput v1, v0, v6

    .line 205
    if-eq v6, v7, :cond_0

    const/4 v0, 0x3

    if-ne v6, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mWheelProgresses:[I

    aget v0, v0, v6

    const/16 v1, 0x168

    if-le v0, v1, :cond_1

    .line 206
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mWheelProgresses:[I

    aput v4, v0, v6

    .line 207
    :cond_1
    if-eqz v6, :cond_2

    const/4 v0, 0x2

    if-ne v6, v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mWheelProgresses:[I

    aget v0, v0, v6

    if-gez v0, :cond_3

    .line 208
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mWheelProgresses:[I

    const/16 v1, 0x168

    aput v1, v0, v6

    .line 200
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 211
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 212
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 213
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mTextPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 214
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mBatteryLevel:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_6

    .line 215
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mTextSize:F

    mul-float/2addr v1, v8

    div-float/2addr v1, v9

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 216
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mBatteryLevel:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mTextLocation:[F

    aget v1, v1, v4

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mTextLocation:[F

    aget v2, v2, v7

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 225
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 226
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mTextPaint:Landroid/graphics/Paint;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 227
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mPrexPercentSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 228
    const-string v0, "%"

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mTextLocation:[F

    aget v1, v1, v4

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mTextSize:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mSpace:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mTextLocation:[F

    aget v2, v2, v7

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 229
    return-void

    .line 217
    :cond_6
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mBatteryLevel:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_7

    .line 218
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mTextSize:F

    mul-float/2addr v1, v8

    div-float/2addr v1, v9

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 219
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mBatteryLevel:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mTextLocation:[F

    aget v1, v1, v4

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mTextSize:F

    mul-float/2addr v2, v8

    div-float/2addr v2, v10

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mTextLocation:[F

    aget v2, v2, v7

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 220
    :cond_7
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mBatteryLevel:I

    if-ltz v0, :cond_5

    .line 221
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mTextSize:F

    mul-float/2addr v1, v8

    div-float/2addr v1, v9

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 222
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mBatteryLevel:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mTextLocation:[F

    aget v1, v1, v4

    iget v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mTextSize:F

    const/high16 v3, 0x40800000    # 4.0f

    mul-float/2addr v2, v3

    div-float/2addr v2, v10

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mTextLocation:[F

    aget v2, v2, v7

    iget-object v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v7, -0x80000000

    .line 167
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 169
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 170
    .local v4, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 171
    .local v5, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 172
    .local v1, "heightMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 173
    .local v2, "heightSize":I
    if-ne v4, v8, :cond_0

    .line 174
    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mViewMinWidth:I

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 180
    .local v3, "width":I
    :goto_0
    if-ne v1, v8, :cond_2

    .line 181
    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mViewMinHeight:I

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 188
    .local v0, "height":I
    :goto_1
    invoke-virtual {p0, v3, v0}, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->setMeasuredDimension(II)V

    .line 189
    iget-object v6, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mTextLocation:[F

    const/4 v7, 0x0

    div-int/lit8 v8, v3, 0x2

    iget v9, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mDiameter:I

    div-int/lit8 v9, v9, 0x4

    sub-int/2addr v8, v9

    int-to-float v8, v8

    aput v8, v6, v7

    .line 190
    iget-object v6, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mTextLocation:[F

    const/4 v7, 0x1

    div-int/lit8 v8, v0, 0x2

    iget v9, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mDiameter:I

    div-int/lit8 v9, v9, 0x8

    add-int/2addr v8, v9

    int-to-float v8, v8

    iget v9, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mTextSize:F

    const/high16 v10, 0x40c00000    # 6.0f

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    aput v8, v6, v7

    .line 191
    return-void

    .line 175
    .end local v0    # "height":I
    .end local v3    # "width":I
    :cond_0
    if-ne v4, v7, :cond_1

    .line 176
    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mViewMinWidth:I

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .restart local v3    # "width":I
    goto :goto_0

    .line 178
    .end local v3    # "width":I
    :cond_1
    iget v3, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mViewMinWidth:I

    .restart local v3    # "width":I
    goto :goto_0

    .line 182
    :cond_2
    if-ne v1, v7, :cond_3

    .line 183
    iget v6, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mViewMinHeight:I

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .restart local v0    # "height":I
    goto :goto_1

    .line 185
    .end local v0    # "height":I
    :cond_3
    iget v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mViewMinHeight:I

    .restart local v0    # "height":I
    goto :goto_1
.end method

.method public onScreenStateChanged(I)V
    .locals 1
    .param p1, "screenState"    # I

    .prologue
    .line 290
    invoke-super {p0, p1}, Landroid/view/View;->onScreenStateChanged(I)V

    .line 291
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mScheduler:Landroid/animation/TimeAnimator;

    if-nez v0, :cond_0

    .line 299
    :goto_0
    return-void

    .line 294
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 295
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mScheduler:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->resume()V

    goto :goto_0

    .line 297
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mScheduler:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->pause()V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 159
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 160
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->setupBounds(II)V

    .line 161
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->updateClipPath()V

    .line 162
    return-void
.end method

.method public setVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 144
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mScheduler:Landroid/animation/TimeAnimator;

    if-nez v0, :cond_0

    .line 146
    sget-object v0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->TAG:Ljava/lang/String;

    const-string v1, "view has detached from window"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/keyguard/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :goto_0
    return-void

    .line 149
    :cond_0
    if-nez p1, :cond_1

    .line 150
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mScheduler:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->start()V

    goto :goto_0

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mScheduler:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->cancel()V

    goto :goto_0
.end method

.method public startSpin()V
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mScheduler:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->start()V

    .line 303
    return-void
.end method

.method public stopSpin()V
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/systemui/vivo/common/keyguard/widget/QuickChargeView;->mScheduler:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->cancel()V

    .line 307
    return-void
.end method
