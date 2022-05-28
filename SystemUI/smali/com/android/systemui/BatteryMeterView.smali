.class public Lcom/android/systemui/BatteryMeterView;
.super Landroid/view/View;
.source "BatteryMeterView.java"

# interfaces
.implements Lcom/android/systemui/DemoMode;
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/BatteryMeterView$1;,
        Lcom/android/systemui/BatteryMeterView$BatteryTracker;
    }
.end annotation


# static fields
.field public static final ACTION_LEVEL_TEST:Ljava/lang/String; = "com.android.systemui.BATTERY_LEVEL_TEST"

.field private static final BOLT_LEVEL_THRESHOLD:F = 0.3f

.field private static final ENABLE_PERCENT:Z = true

.field private static final FULL:I = 0x60

.field private static final SHOW_100_PERCENT:Z

.field private static final SINGLE_DIGIT_PERCENT:Z

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private final mBatteryPaint:Landroid/graphics/Paint;

.field private final mBoltFrame:Landroid/graphics/RectF;

.field private final mBoltPaint:Landroid/graphics/Paint;

.field private final mBoltPath:Landroid/graphics/Path;

.field private final mBoltPoints:[F

.field private final mButtonFrame:Landroid/graphics/RectF;

.field private mButtonHeightFraction:F

.field private final mChargeColor:I

.field private final mClipPath:Landroid/graphics/Path;

.field private final mColors:[I

.field private final mCriticalLevel:I

.field private mDemoMode:Z

.field private mDemoTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

.field private final mFrame:Landroid/graphics/RectF;

.field private final mFramePaint:Landroid/graphics/Paint;

.field private mHeight:I

.field private mPowerSaveEnabled:Z

.field private final mShapePath:Landroid/graphics/Path;

.field mShowPercent:Z

.field private mSubpixelSmoothingLeft:F

.field private mSubpixelSmoothingRight:F

.field private mTextHeight:F

.field private final mTextPaint:Landroid/graphics/Paint;

.field private final mTextPath:Landroid/graphics/Path;

.field mTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

.field private mWarningString:Ljava/lang/String;

.field private mWarningTextHeight:F

.field private final mWarningTextPaint:Landroid/graphics/Paint;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/BatteryMeterView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 178
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/BatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 179
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 182
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/BatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 183
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 186
    invoke-direct/range {p0 .. p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/systemui/BatteryMeterView;->mShowPercent:Z

    .line 66
    new-instance v12, Landroid/graphics/Path;

    invoke-direct {v12}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPath:Landroid/graphics/Path;

    .line 68
    new-instance v12, Landroid/graphics/RectF;

    invoke-direct {v12}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    .line 69
    new-instance v12, Landroid/graphics/RectF;

    invoke-direct {v12}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    .line 70
    new-instance v12, Landroid/graphics/RectF;

    invoke-direct {v12}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    .line 72
    new-instance v12, Landroid/graphics/Path;

    invoke-direct {v12}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;

    .line 73
    new-instance v12, Landroid/graphics/Path;

    invoke-direct {v12}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/BatteryMeterView;->mClipPath:Landroid/graphics/Path;

    .line 74
    new-instance v12, Landroid/graphics/Path;

    invoke-direct {v12}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/BatteryMeterView;->mTextPath:Landroid/graphics/Path;

    .line 152
    new-instance v12, Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v13}, Lcom/android/systemui/BatteryMeterView$BatteryTracker;-><init>(Lcom/android/systemui/BatteryMeterView;Lcom/android/systemui/BatteryMeterView$1;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/BatteryMeterView;->mTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    .line 455
    new-instance v12, Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v13}, Lcom/android/systemui/BatteryMeterView$BatteryTracker;-><init>(Lcom/android/systemui/BatteryMeterView;Lcom/android/systemui/BatteryMeterView$1;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/BatteryMeterView;->mDemoTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    .line 188
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 189
    .local v11, "res":Landroid/content/res/Resources;
    sget-object v12, Lcom/android/systemui/R$styleable;->BatteryMeterView:[I

    const/4 v13, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v12, v2, v13}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 191
    .local v4, "atts":Landroid/content/res/TypedArray;
    const/4 v12, 0x0

    const v13, 0x7f0a0006

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    invoke-virtual {v4, v12, v13}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    .line 193
    .local v8, "frameColor":I
    const/high16 v12, 0x7f090000

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v10

    .line 194
    .local v10, "levels":Landroid/content/res/TypedArray;
    const v12, 0x7f090001

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 196
    .local v5, "colors":Landroid/content/res/TypedArray;
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    .line 197
    .local v3, "N":I
    mul-int/lit8 v12, v3, 0x2

    new-array v12, v12, [I

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/BatteryMeterView;->mColors:[I

    .line 198
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v3, :cond_0

    .line 199
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/BatteryMeterView;->mColors:[I

    mul-int/lit8 v13, v9, 0x2

    const/4 v14, 0x0

    invoke-virtual {v10, v9, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    aput v14, v12, v13

    .line 200
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/BatteryMeterView;->mColors:[I

    mul-int/lit8 v13, v9, 0x2

    add-int/lit8 v13, v13, 0x1

    const/4 v14, 0x0

    invoke-virtual {v5, v9, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    aput v14, v12, v13

    .line 198
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 202
    :cond_0
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V

    .line 203
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 204
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 208
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "status_bar_show_battery_percent"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_1

    const/4 v12, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/systemui/BatteryMeterView;->mShowPercent:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :goto_2
    const v12, 0x7f0e0115

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/BatteryMeterView;->mWarningString:Ljava/lang/String;

    .line 215
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/BatteryMeterView;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x10e0044

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/BatteryMeterView;->mCriticalLevel:I

    .line 217
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f100002

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-virtual {v12, v13, v14, v15}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/BatteryMeterView;->mButtonHeightFraction:F

    .line 219
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f100003

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-virtual {v12, v13, v14, v15}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/BatteryMeterView;->mSubpixelSmoothingLeft:F

    .line 221
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f100004

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-virtual {v12, v13, v14, v15}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/BatteryMeterView;->mSubpixelSmoothingRight:F

    .line 224
    new-instance v12, Landroid/graphics/Paint;

    const/4 v13, 0x1

    invoke-direct {v12, v13}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/BatteryMeterView;->mFramePaint:Landroid/graphics/Paint;

    .line 225
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/BatteryMeterView;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 226
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/BatteryMeterView;->mFramePaint:Landroid/graphics/Paint;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setDither(Z)V

    .line 227
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/BatteryMeterView;->mFramePaint:Landroid/graphics/Paint;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 228
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/BatteryMeterView;->mFramePaint:Landroid/graphics/Paint;

    sget-object v13, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 230
    new-instance v12, Landroid/graphics/Paint;

    const/4 v13, 0x1

    invoke-direct {v12, v13}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/BatteryMeterView;->mBatteryPaint:Landroid/graphics/Paint;

    .line 231
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/BatteryMeterView;->mBatteryPaint:Landroid/graphics/Paint;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setDither(Z)V

    .line 232
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/BatteryMeterView;->mBatteryPaint:Landroid/graphics/Paint;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 233
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/BatteryMeterView;->mBatteryPaint:Landroid/graphics/Paint;

    sget-object v13, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 235
    new-instance v12, Landroid/graphics/Paint;

    const/4 v13, 0x1

    invoke-direct {v12, v13}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    .line 236
    const-string v12, "sans-serif-condensed"

    const/4 v13, 0x1

    invoke-static {v12, v13}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    .line 237
    .local v7, "font":Landroid/graphics/Typeface;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 238
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v13, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 240
    new-instance v12, Landroid/graphics/Paint;

    const/4 v13, 0x1

    invoke-direct {v12, v13}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/BatteryMeterView;->mWarningTextPaint:Landroid/graphics/Paint;

    .line 241
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/BatteryMeterView;->mWarningTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/BatteryMeterView;->mColors:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 242
    const-string v12, "sans-serif"

    const/4 v13, 0x1

    invoke-static {v12, v13}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    .line 243
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/BatteryMeterView;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v12, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 244
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/BatteryMeterView;->mWarningTextPaint:Landroid/graphics/Paint;

    sget-object v13, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 246
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/BatteryMeterView;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a0007

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/systemui/BatteryMeterView;->mChargeColor:I

    .line 248
    new-instance v12, Landroid/graphics/Paint;

    const/4 v13, 0x1

    invoke-direct {v12, v13}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPaint:Landroid/graphics/Paint;

    .line 249
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPaint:Landroid/graphics/Paint;

    const v13, 0x7f0a0008

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 250
    invoke-static {v11}, Lcom/android/systemui/BatteryMeterView;->loadBoltPoints(Landroid/content/res/Resources;)[F

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPoints:[F

    .line 251
    return-void

    .line 208
    .end local v7    # "font":Landroid/graphics/Typeface;
    :cond_1
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 210
    :catch_0
    move-exception v6

    .line 211
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2
.end method

.method private getColorForLevel(I)I
    .locals 5
    .param p1, "percent"    # I

    .prologue
    .line 295
    iget-boolean v3, p0, Lcom/android/systemui/BatteryMeterView;->mPowerSaveEnabled:Z

    if-eqz v3, :cond_1

    .line 296
    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mColors:[I

    iget-object v4, p0, Lcom/android/systemui/BatteryMeterView;->mColors:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget v0, v3, v4

    .line 304
    :cond_0
    return v0

    .line 298
    :cond_1
    const/4 v0, 0x0

    .line 299
    .local v0, "color":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mColors:[I

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 300
    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mColors:[I

    aget v2, v3, v1

    .line 301
    .local v2, "thresh":I
    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mColors:[I

    add-int/lit8 v4, v1, 0x1

    aget v0, v3, v4

    .line 302
    if-le p1, v2, :cond_0

    .line 299
    add-int/lit8 v1, v1, 0x2

    goto :goto_0
.end method

.method private static loadBoltPoints(Landroid/content/res/Resources;)[F
    .locals 8
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 270
    const v5, 0x7f090002

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 271
    .local v3, "pts":[I
    const/4 v1, 0x0

    .local v1, "maxX":I
    const/4 v2, 0x0

    .line 272
    .local v2, "maxY":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_0

    .line 273
    aget v5, v3, v0

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 274
    add-int/lit8 v5, v0, 0x1

    aget v5, v3, v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 272
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 276
    :cond_0
    array-length v5, v3

    new-array v4, v5, [F

    .line 277
    .local v4, "ptsF":[F
    const/4 v0, 0x0

    :goto_1
    array-length v5, v3

    if-ge v0, v5, :cond_1

    .line 278
    aget v5, v3, v0

    int-to-float v5, v5

    int-to-float v6, v1

    div-float/2addr v5, v6

    aput v5, v4, v0

    .line 279
    add-int/lit8 v5, v0, 0x1

    add-int/lit8 v6, v0, 0x1

    aget v6, v3, v6

    int-to-float v6, v6

    int-to-float v7, v2

    div-float/2addr v6, v7

    aput v6, v4, v5

    .line 277
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 281
    :cond_1
    return-object v4
.end method


# virtual methods
.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 459
    iget-boolean v2, p0, Lcom/android/systemui/BatteryMeterView;->mDemoMode:Z

    if-nez v2, :cond_1

    const-string v2, "enter"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 460
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/BatteryMeterView;->mDemoMode:Z

    .line 461
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mDemoTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    iget v3, v3, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->level:I

    iput v3, v2, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->level:I

    .line 462
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mDemoTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    iget-boolean v3, v3, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->plugged:Z

    iput-boolean v3, v2, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->plugged:Z

    .line 477
    :cond_0
    :goto_0
    return-void

    .line 463
    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/BatteryMeterView;->mDemoMode:Z

    if-eqz v2, :cond_2

    const-string v2, "exit"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 464
    iput-boolean v4, p0, Lcom/android/systemui/BatteryMeterView;->mDemoMode:Z

    .line 465
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->postInvalidate()V

    goto :goto_0

    .line 466
    :cond_2
    iget-boolean v2, p0, Lcom/android/systemui/BatteryMeterView;->mDemoMode:Z

    if-eqz v2, :cond_0

    const-string v2, "battery"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 467
    const-string v2, "level"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 468
    .local v0, "level":Ljava/lang/String;
    const-string v2, "plugged"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 469
    .local v1, "plugged":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 470
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mDemoTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/16 v4, 0x64

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v2, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->level:I

    .line 472
    :cond_3
    if-eqz v1, :cond_4

    .line 473
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mDemoTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v2, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->plugged:Z

    .line 475
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->postInvalidate()V

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 32
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 309
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/BatteryMeterView;->mDemoMode:Z

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mDemoTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    move-object/from16 v26, v0

    .line 310
    .local v26, "tracker":Lcom/android/systemui/BatteryMeterView$BatteryTracker;
    :goto_0
    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->level:I

    move/from16 v19, v0

    .line 312
    .local v19, "level":I
    const/4 v3, -0x1

    move/from16 v0, v19

    if-ne v0, v3, :cond_2

    .line 447
    :cond_0
    :goto_1
    return-void

    .line 309
    .end local v19    # "level":I
    .end local v26    # "tracker":Lcom/android/systemui/BatteryMeterView$BatteryTracker;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    move-object/from16 v26, v0

    goto :goto_0

    .line 314
    .restart local v19    # "level":I
    .restart local v26    # "tracker":Lcom/android/systemui/BatteryMeterView$BatteryTracker;
    :cond_2
    move/from16 v0, v19

    int-to-float v3, v0

    const/high16 v5, 0x42c80000    # 100.0f

    div-float v16, v3, v5

    .line 315
    .local v16, "drawFrac":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/BatteryMeterView;->getPaddingTop()I

    move-result v25

    .line 316
    .local v25, "pt":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/BatteryMeterView;->getPaddingLeft()I

    move-result v23

    .line 317
    .local v23, "pl":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/BatteryMeterView;->getPaddingRight()I

    move-result v24

    .line 318
    .local v24, "pr":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/BatteryMeterView;->getPaddingBottom()I

    move-result v21

    .line 319
    .local v21, "pb":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/BatteryMeterView;->mHeight:I

    sub-int v3, v3, v25

    sub-int v17, v3, v21

    .line 320
    .local v17, "height":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/BatteryMeterView;->mWidth:I

    sub-int v3, v3, v23

    sub-int v27, v3, v24

    .line 322
    .local v27, "width":I
    move/from16 v0, v17

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/BatteryMeterView;->mButtonHeightFraction:F

    mul-float/2addr v3, v5

    float-to-int v15, v3

    .line 324
    .local v15, "buttonHeight":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v0, v27

    int-to-float v9, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    invoke-virtual {v3, v5, v6, v9, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 325
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move/from16 v0, v23

    int-to-float v5, v0

    move/from16 v0, v25

    int-to-float v6, v0

    invoke-virtual {v3, v5, v6}, Landroid/graphics/RectF;->offset(FF)V

    .line 328
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    move/from16 v0, v27

    int-to-float v6, v0

    const/high16 v9, 0x3e800000    # 0.25f

    mul-float/2addr v6, v9

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v30, v0

    const/high16 v31, 0x3e800000    # 0.25f

    mul-float v30, v30, v31

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->round(F)I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    sub-float v9, v9, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v30, v0

    int-to-float v0, v15

    move/from16 v31, v0

    add-float v30, v30, v31

    move/from16 v0, v30

    invoke-virtual {v3, v5, v6, v9, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 334
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/BatteryMeterView;->mSubpixelSmoothingLeft:F

    add-float/2addr v5, v6

    iput v5, v3, Landroid/graphics/RectF;->top:F

    .line 335
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/BatteryMeterView;->mSubpixelSmoothingLeft:F

    add-float/2addr v5, v6

    iput v5, v3, Landroid/graphics/RectF;->left:F

    .line 336
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/BatteryMeterView;->mSubpixelSmoothingRight:F

    sub-float/2addr v5, v6

    iput v5, v3, Landroid/graphics/RectF;->right:F

    .line 339
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->top:F

    int-to-float v6, v15

    add-float/2addr v5, v6

    iput v5, v3, Landroid/graphics/RectF;->top:F

    .line 340
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/BatteryMeterView;->mSubpixelSmoothingLeft:F

    add-float/2addr v5, v6

    iput v5, v3, Landroid/graphics/RectF;->left:F

    .line 341
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/BatteryMeterView;->mSubpixelSmoothingLeft:F

    add-float/2addr v5, v6

    iput v5, v3, Landroid/graphics/RectF;->top:F

    .line 342
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/BatteryMeterView;->mSubpixelSmoothingRight:F

    sub-float/2addr v5, v6

    iput v5, v3, Landroid/graphics/RectF;->right:F

    .line 343
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/BatteryMeterView;->mSubpixelSmoothingRight:F

    sub-float/2addr v5, v6

    iput v5, v3, Landroid/graphics/RectF;->bottom:F

    .line 346
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mBatteryPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v26

    iget-boolean v3, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->plugged:Z

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/BatteryMeterView;->mChargeColor:I

    :goto_2
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 348
    const/16 v3, 0x60

    move/from16 v0, v19

    if-lt v0, v3, :cond_6

    .line 349
    const/high16 v16, 0x3f800000    # 1.0f

    .line 354
    :cond_3
    :goto_3
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v16, v3

    if-nez v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    iget v0, v3, Landroid/graphics/RectF;->top:F

    move/from16 v20, v0

    .line 358
    .local v20, "levelTop":F
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 359
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 360
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 361
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 362
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 363
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 364
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 365
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 366
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 367
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 369
    move-object/from16 v0, v26

    iget-boolean v3, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->plugged:Z

    if-eqz v3, :cond_a

    .line 371
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    const/high16 v6, 0x40900000    # 4.5f

    div-float/2addr v5, v6

    add-float v11, v3, v5

    .line 372
    .local v11, "bl":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    const/high16 v6, 0x40c00000    # 6.0f

    div-float/2addr v5, v6

    add-float v14, v3, v5

    .line 373
    .local v14, "bt":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    const/high16 v6, 0x40e00000    # 7.0f

    div-float/2addr v5, v6

    sub-float v13, v3, v5

    .line 374
    .local v13, "br":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    const/high16 v6, 0x41200000    # 10.0f

    div-float/2addr v5, v6

    sub-float v10, v3, v5

    .line 375
    .local v10, "bb":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    cmpl-float v3, v3, v11

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    cmpl-float v3, v3, v14

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    cmpl-float v3, v3, v13

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    cmpl-float v3, v3, v10

    if-eqz v3, :cond_9

    .line 377
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    invoke-virtual {v3, v11, v14, v13, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 378
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 379
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPoints:[F

    const/4 v9, 0x0

    aget v6, v6, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    mul-float/2addr v6, v9

    add-float/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPoints:[F

    const/16 v30, 0x1

    aget v9, v9, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/RectF;->height()F

    move-result v30

    mul-float v9, v9, v30

    add-float/2addr v6, v9

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 382
    const/16 v18, 0x2

    .local v18, "i":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPoints:[F

    array-length v3, v3

    move/from16 v0, v18

    if-ge v0, v3, :cond_8

    .line 383
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPoints:[F

    aget v6, v6, v18

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    mul-float/2addr v6, v9

    add-float/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPoints:[F

    add-int/lit8 v30, v18, 0x1

    aget v9, v9, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/RectF;->height()F

    move-result v30

    mul-float v9, v9, v30

    add-float/2addr v6, v9

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 382
    add-int/lit8 v18, v18, 0x2

    goto :goto_5

    .line 346
    .end local v10    # "bb":F
    .end local v11    # "bl":F
    .end local v13    # "br":F
    .end local v14    # "bt":F
    .end local v18    # "i":I
    .end local v20    # "levelTop":F
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/systemui/BatteryMeterView;->getColorForLevel(I)I

    move-result v3

    goto/16 :goto_2

    .line 350
    :cond_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/BatteryMeterView;->mCriticalLevel:I

    move/from16 v0, v19

    if-gt v0, v3, :cond_3

    .line 351
    const/16 v16, 0x0

    goto/16 :goto_3

    .line 354
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v6, v6, v16

    mul-float/2addr v5, v6

    add-float v20, v3, v5

    goto/16 :goto_4

    .line 387
    .restart local v10    # "bb":F
    .restart local v11    # "bl":F
    .restart local v13    # "br":F
    .restart local v14    # "bt":F
    .restart local v18    # "i":I
    .restart local v20    # "levelTop":F
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPoints:[F

    const/4 v9, 0x0

    aget v6, v6, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    mul-float/2addr v6, v9

    add-float/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPoints:[F

    const/16 v30, 0x1

    aget v9, v9, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/graphics/RectF;->height()F

    move-result v30

    mul-float v9, v9, v30

    add-float/2addr v6, v9

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 392
    .end local v18    # "i":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float v3, v3, v20

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v6

    div-float v12, v3, v5

    .line 393
    .local v12, "boltPct":F
    const/4 v3, 0x0

    invoke-static {v12, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 394
    const v3, 0x3e99999a    # 0.3f

    cmpg-float v3, v12, v3

    if-gtz v3, :cond_c

    .line 396
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 404
    .end local v10    # "bb":F
    .end local v11    # "bl":F
    .end local v12    # "boltPct":F
    .end local v13    # "br":F
    .end local v14    # "bt":F
    :cond_a
    :goto_6
    const/16 v22, 0x0

    .line 405
    .local v22, "pctOpaque":Z
    const/4 v7, 0x0

    .local v7, "pctX":F
    const/4 v8, 0x0

    .line 406
    .local v8, "pctY":F
    const/4 v4, 0x0

    .line 407
    .local v4, "pctText":Ljava/lang/String;
    move-object/from16 v0, v26

    iget-boolean v3, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->plugged:Z

    if-nez v3, :cond_b

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/BatteryMeterView;->mCriticalLevel:I

    move/from16 v0, v19

    if-le v0, v3, :cond_b

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/BatteryMeterView;->mShowPercent:Z

    if-eqz v3, :cond_b

    move-object/from16 v0, v26

    iget v3, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->level:I

    const/16 v5, 0x64

    if-ne v3, v5, :cond_d

    .line 427
    :cond_b
    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 430
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move/from16 v0, v20

    iput v0, v3, Landroid/graphics/RectF;->top:F

    .line 431
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 432
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mClipPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    sget-object v6, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 433
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mClipPath:Landroid/graphics/Path;

    sget-object v6, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 434
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mBatteryPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 436
    move-object/from16 v0, v26

    iget-boolean v3, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->plugged:Z

    if-nez v3, :cond_0

    .line 437
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/BatteryMeterView;->mCriticalLevel:I

    move/from16 v0, v19

    if-gt v0, v3, :cond_10

    .line 439
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/BatteryMeterView;->mWidth:I

    int-to-float v3, v3

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float v28, v3, v5

    .line 440
    .local v28, "x":F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/BatteryMeterView;->mHeight:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/BatteryMeterView;->mWarningTextHeight:F

    add-float/2addr v3, v5

    const v5, 0x3ef5c28f    # 0.48f

    mul-float v29, v3, v5

    .line 441
    .local v29, "y":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mWarningString:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mWarningTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v3, v1, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 399
    .end local v4    # "pctText":Ljava/lang/String;
    .end local v7    # "pctX":F
    .end local v8    # "pctY":F
    .end local v22    # "pctOpaque":Z
    .end local v28    # "x":F
    .end local v29    # "y":F
    .restart local v10    # "bb":F
    .restart local v11    # "bl":F
    .restart local v12    # "boltPct":F
    .restart local v13    # "br":F
    .restart local v14    # "bt":F
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPath:Landroid/graphics/Path;

    sget-object v6, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    goto/16 :goto_6

    .line 409
    .end local v10    # "bb":F
    .end local v11    # "bl":F
    .end local v12    # "boltPct":F
    .end local v13    # "br":F
    .end local v14    # "bt":F
    .restart local v4    # "pctText":Ljava/lang/String;
    .restart local v7    # "pctX":F
    .restart local v8    # "pctY":F
    .restart local v22    # "pctOpaque":Z
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/systemui/BatteryMeterView;->getColorForLevel(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 410
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    move/from16 v0, v17

    int-to-float v6, v0

    move-object/from16 v0, v26

    iget v3, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->level:I

    const/16 v9, 0x64

    if-ne v3, v9, :cond_e

    const v3, 0x3ec28f5c    # 0.38f

    :goto_8
    mul-float/2addr v3, v6

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 413
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/BatteryMeterView;->mTextHeight:F

    .line 414
    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 415
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/BatteryMeterView;->mWidth:I

    int-to-float v3, v3

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float v7, v3, v5

    .line 416
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/BatteryMeterView;->mHeight:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/BatteryMeterView;->mTextHeight:F

    add-float/2addr v3, v5

    const v5, 0x3ef0a3d7    # 0.47f

    mul-float v8, v3, v5

    .line 417
    cmpl-float v3, v20, v8

    if-lez v3, :cond_f

    const/16 v22, 0x1

    .line 418
    :goto_9
    if-nez v22, :cond_b

    .line 419
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mTextPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 420
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/BatteryMeterView;->mTextPath:Landroid/graphics/Path;

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Paint;->getTextPath(Ljava/lang/String;IIFFLandroid/graphics/Path;)V

    .line 422
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/BatteryMeterView;->mTextPath:Landroid/graphics/Path;

    sget-object v6, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    goto/16 :goto_7

    .line 410
    :cond_e
    const/high16 v3, 0x3f000000    # 0.5f

    goto :goto_8

    .line 417
    :cond_f
    const/16 v22, 0x0

    goto :goto_9

    .line 442
    :cond_10
    if-eqz v22, :cond_0

    .line 444
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v7, v8, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 451
    const/4 v0, 0x0

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 4

    .prologue
    .line 156
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 158
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 159
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 160
    const-string v2, "com.android.systemui.BATTERY_LEVEL_TEST"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 162
    .local v1, "sticky":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 164
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 166
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v2, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->addStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    .line 167
    return-void
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 0
    .param p1, "level"    # I
    .param p2, "pluggedIn"    # Z
    .param p3, "charging"    # Z

    .prologue
    .line 261
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 171
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 173
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 174
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->removeStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    .line 175
    return-void
.end method

.method public onPowerSaveChanged()V
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BatteryController;->isPowerSave()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mPowerSaveEnabled:Z

    .line 266
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->invalidate()V

    .line 267
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 286
    iput p2, p0, Lcom/android/systemui/BatteryMeterView;->mHeight:I

    .line 287
    iput p1, p0, Lcom/android/systemui/BatteryMeterView;->mWidth:I

    .line 288
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mWarningTextPaint:Landroid/graphics/Paint;

    int-to-float v1, p2

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 289
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v0, v0

    iput v0, p0, Lcom/android/systemui/BatteryMeterView;->mWarningTextHeight:F

    .line 290
    return-void
.end method

.method public setBatteryController(Lcom/android/systemui/statusbar/policy/BatteryController;)V
    .locals 1
    .param p1, "batteryController"    # Lcom/android/systemui/statusbar/policy/BatteryController;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 255
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BatteryController;->isPowerSave()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mPowerSaveEnabled:Z

    .line 256
    return-void
.end method
