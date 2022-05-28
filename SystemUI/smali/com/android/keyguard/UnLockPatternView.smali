.class public Lcom/android/keyguard/UnLockPatternView;
.super Landroid/view/View;
.source "UnLockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/UnLockPatternView$SavedState;,
        Lcom/android/keyguard/UnLockPatternView$OnPatternListener;
    }
.end annotation


# static fields
.field private static final ASPECT_LOCK_HEIGHT:I = 0x2

.field private static final ASPECT_LOCK_WIDTH:I = 0x1

.field private static final ASPECT_SQUARE:I = 0x0

.field private static final DRAG_THRESHHOLD:F = 0.0f

.field private static final MILLIS_PER_CIRCLE_ANIMATING:I = 0x2bc

.field private static final PROFILE_DRAWING:Z = false

.field private static final TAG:Ljava/lang/String; = "UnLockPatternView"


# instance fields
.field private mAnimatingPeriodStart:J

.field private mAspect:I

.field private mBitmapCircleDefault:Landroid/graphics/Bitmap;

.field private mBitmapCircleGreen:Landroid/graphics/Bitmap;

.field private mBitmapCircleRed:Landroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private mBitmapWidth:I

.field private mBlack:Ljava/lang/Boolean;

.field private final mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

.field private final mCircleMatrix:Landroid/graphics/Matrix;

.field private mColorBlackStyleRight:I

.field private mColorBlackStyleWrong:I

.field private mColorWhiteStyleRight:I

.field private mColorWhiteStyleWrong:I

.field private final mCurrentPath:Landroid/graphics/Path;

.field private mDiameterFactor:F

.field private final mDotSize:I

.field private final mDotSizeActivated:I

.field private mDrawingProfilingStarted:Z

.field private mEnableHapticFeedback:Z

.field private mErrorColor:I

.field private mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mHitFactor:F

.field private mInProgressX:F

.field private mInProgressY:F

.field private mInStealthMode:Z

.field private mInputEnabled:Z

.field private final mInvalidate:Landroid/graphics/Rect;

.field private mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mOnPatternListener:Lcom/android/keyguard/UnLockPatternView$OnPatternListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mPathPaint:Landroid/graphics/Paint;

.field private mPattern:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

.field private mPatternDrawLookup:[[Z

.field private mPatternInProgress:Z

.field private mRegularColor:I

.field private mSquareHeight:F

.field private mSquareWidth:F

.field private mStrokeAlpha:I

.field private mSuccessColor:I

.field private final mTmpInvalidateRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 190
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/UnLockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 191
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v10, 0x2

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 194
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    iput-boolean v6, p0, Lcom/android/keyguard/UnLockPatternView;->mDrawingProfilingStarted:Z

    .line 82
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/android/keyguard/UnLockPatternView;->mPaint:Landroid/graphics/Paint;

    .line 83
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/android/keyguard/UnLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    .line 99
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0x9

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/android/keyguard/UnLockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 107
    filled-new-array {v8, v8}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[Z

    iput-object v4, p0, Lcom/android/keyguard/UnLockPatternView;->mPatternDrawLookup:[[Z

    .line 114
    iput v9, p0, Lcom/android/keyguard/UnLockPatternView;->mInProgressX:F

    .line 115
    iput v9, p0, Lcom/android/keyguard/UnLockPatternView;->mInProgressY:F

    .line 119
    sget-object v4, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    iput-object v4, p0, Lcom/android/keyguard/UnLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 120
    iput-boolean v7, p0, Lcom/android/keyguard/UnLockPatternView;->mInputEnabled:Z

    .line 121
    iput-boolean v6, p0, Lcom/android/keyguard/UnLockPatternView;->mInStealthMode:Z

    .line 122
    iput-boolean v7, p0, Lcom/android/keyguard/UnLockPatternView;->mEnableHapticFeedback:Z

    .line 123
    iput-boolean v6, p0, Lcom/android/keyguard/UnLockPatternView;->mPatternInProgress:Z

    .line 125
    const v4, 0x3ca3d70a    # 0.02f

    iput v4, p0, Lcom/android/keyguard/UnLockPatternView;->mDiameterFactor:F

    .line 126
    const/16 v4, 0xff

    iput v4, p0, Lcom/android/keyguard/UnLockPatternView;->mStrokeAlpha:I

    .line 127
    const v4, 0x3f19999a    # 0.6f

    iput v4, p0, Lcom/android/keyguard/UnLockPatternView;->mHitFactor:F

    .line 139
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    iput-object v4, p0, Lcom/android/keyguard/UnLockPatternView;->mCurrentPath:Landroid/graphics/Path;

    .line 140
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/android/keyguard/UnLockPatternView;->mInvalidate:Landroid/graphics/Rect;

    .line 141
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/android/keyguard/UnLockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    .line 152
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    iput-object v4, p0, Lcom/android/keyguard/UnLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    .line 154
    const v4, -0xb61e5a

    iput v4, p0, Lcom/android/keyguard/UnLockPatternView;->mColorWhiteStyleRight:I

    .line 155
    const v4, -0x19a9b

    iput v4, p0, Lcom/android/keyguard/UnLockPatternView;->mColorWhiteStyleWrong:I

    .line 156
    const v4, -0xaa78fd

    iput v4, p0, Lcom/android/keyguard/UnLockPatternView;->mColorBlackStyleRight:I

    .line 157
    const v4, -0x57cfcd

    iput v4, p0, Lcom/android/keyguard/UnLockPatternView;->mColorBlackStyleWrong:I

    .line 158
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/UnLockPatternView;->mBlack:Ljava/lang/Boolean;

    .line 196
    sget-object v4, Lcom/android/internal/R$styleable;->LockPatternView:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 198
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, "aspect":Ljava/lang/String;
    const-string v4, "square"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 201
    iput v6, p0, Lcom/android/keyguard/UnLockPatternView;->mAspect:I

    .line 210
    :goto_0
    invoke-virtual {p0, v7}, Lcom/android/keyguard/UnLockPatternView;->setClickable(Z)V

    .line 213
    iget-object v4, p0, Lcom/android/keyguard/UnLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 214
    iget-object v4, p0, Lcom/android/keyguard/UnLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setDither(Z)V

    .line 215
    iget-object v4, p0, Lcom/android/keyguard/UnLockPatternView;->mBlack:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 216
    iget-object v4, p0, Lcom/android/keyguard/UnLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/keyguard/UnLockPatternView;->mColorBlackStyleRight:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 220
    :goto_1
    iget-object v4, p0, Lcom/android/keyguard/UnLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/keyguard/UnLockPatternView;->mStrokeAlpha:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 221
    iget-object v4, p0, Lcom/android/keyguard/UnLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 222
    iget-object v4, p0, Lcom/android/keyguard/UnLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 223
    iget-object v4, p0, Lcom/android/keyguard/UnLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 228
    sget v4, Lcom/android/keyguard/R$drawable;->pattern_default:I

    invoke-direct {p0, v4}, Lcom/android/keyguard/UnLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/UnLockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    .line 229
    sget v4, Lcom/android/keyguard/R$drawable;->pattern_green:I

    invoke-direct {p0, v4}, Lcom/android/keyguard/UnLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/UnLockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    .line 230
    sget v4, Lcom/android/keyguard/R$drawable;->pattern_red:I

    invoke-direct {p0, v4}, Lcom/android/keyguard/UnLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/UnLockPatternView;->mBitmapCircleRed:Landroid/graphics/Bitmap;

    .line 231
    invoke-virtual {p0}, Lcom/android/keyguard/UnLockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10500a0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/keyguard/UnLockPatternView;->mDotSize:I

    .line 232
    invoke-virtual {p0}, Lcom/android/keyguard/UnLockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10500a1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/keyguard/UnLockPatternView;->mDotSizeActivated:I

    .line 234
    filled-new-array {v8, v8}, [I

    move-result-object v4

    const-class v5, Lcom/android/internal/widget/LockPatternView$CellState;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[Lcom/android/internal/widget/LockPatternView$CellState;

    iput-object v4, p0, Lcom/android/keyguard/UnLockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    .line 235
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v8, :cond_5

    .line 236
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_3
    if-ge v3, v8, :cond_4

    .line 237
    iget-object v4, p0, Lcom/android/keyguard/UnLockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    aget-object v4, v4, v2

    new-instance v5, Lcom/android/internal/widget/LockPatternView$CellState;

    invoke-direct {v5}, Lcom/android/internal/widget/LockPatternView$CellState;-><init>()V

    aput-object v5, v4, v3

    .line 238
    iget-object v4, p0, Lcom/android/keyguard/UnLockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    aget-object v4, v4, v2

    aget-object v4, v4, v3

    iget v5, p0, Lcom/android/keyguard/UnLockPatternView;->mDotSize:I

    int-to-float v5, v5

    iput v5, v4, Lcom/android/internal/widget/LockPatternView$CellState;->size:F

    .line 236
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 202
    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_0
    const-string v4, "lock_width"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 203
    iput v7, p0, Lcom/android/keyguard/UnLockPatternView;->mAspect:I

    goto/16 :goto_0

    .line 204
    :cond_1
    const-string v4, "lock_height"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 205
    iput v10, p0, Lcom/android/keyguard/UnLockPatternView;->mAspect:I

    goto/16 :goto_0

    .line 207
    :cond_2
    iput v6, p0, Lcom/android/keyguard/UnLockPatternView;->mAspect:I

    goto/16 :goto_0

    .line 218
    :cond_3
    iget-object v4, p0, Lcom/android/keyguard/UnLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/keyguard/UnLockPatternView;->mColorWhiteStyleRight:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_1

    .line 235
    .restart local v2    # "i":I
    .restart local v3    # "j":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 242
    .end local v3    # "j":I
    :cond_5
    const v4, 0x10c000d

    invoke-static {p1, v4}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/UnLockPatternView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 244
    const v4, 0x10c000e

    invoke-static {p1, v4}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/UnLockPatternView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 246
    iget-object v4, p0, Lcom/android/keyguard/UnLockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/android/keyguard/UnLockPatternView;->mBitmapWidth:I

    .line 247
    iget-object v4, p0, Lcom/android/keyguard/UnLockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iput v4, p0, Lcom/android/keyguard/UnLockPatternView;->mBitmapHeight:I

    .line 248
    const/4 v4, 0x0

    invoke-virtual {p0, v10, v4}, Lcom/android/keyguard/UnLockPatternView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 249
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/UnLockPatternView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/UnLockPatternView;

    .prologue
    .line 67
    iget v0, p0, Lcom/android/keyguard/UnLockPatternView;->mDotSizeActivated:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/keyguard/UnLockPatternView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/UnLockPatternView;

    .prologue
    .line 67
    iget v0, p0, Lcom/android/keyguard/UnLockPatternView;->mDotSize:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/keyguard/UnLockPatternView;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/UnLockPatternView;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/keyguard/UnLockPatternView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/keyguard/UnLockPatternView;FFJLandroid/view/animation/Interpolator;Lcom/android/internal/widget/LockPatternView$CellState;Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/UnLockPatternView;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # J
    .param p5, "x4"    # Landroid/view/animation/Interpolator;
    .param p6, "x5"    # Lcom/android/internal/widget/LockPatternView$CellState;
    .param p7, "x6"    # Ljava/lang/Runnable;

    .prologue
    .line 67
    invoke-direct/range {p0 .. p7}, Lcom/android/keyguard/UnLockPatternView;->startSizeAnimation(FFJLandroid/view/animation/Interpolator;Lcom/android/internal/widget/LockPatternView$CellState;Ljava/lang/Runnable;)V

    return-void
.end method

.method private calculateLastSegmentAlpha(FFFF)F
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "lastX"    # F
    .param p4, "lastY"    # F

    .prologue
    .line 968
    sub-float v0, p1, p3

    .line 969
    .local v0, "diffX":F
    sub-float v1, p2, p4

    .line 970
    .local v1, "diffY":F
    mul-float v4, v0, v0

    mul-float v5, v1, v1

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v2, v4

    .line 971
    .local v2, "dist":F
    iget v4, p0, Lcom/android/keyguard/UnLockPatternView;->mSquareWidth:F

    div-float v3, v2, v4

    .line 972
    .local v3, "frac":F
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const v6, 0x3e99999a    # 0.3f

    sub-float v6, v3, v6

    const/high16 v7, 0x40800000    # 4.0f

    mul-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    return v4
.end method

.method private cancelLineAnimations()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 801
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_2

    .line 802
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v5, :cond_1

    .line 803
    iget-object v3, p0, Lcom/android/keyguard/UnLockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    aget-object v3, v3, v0

    aget-object v2, v3, v1

    .line 804
    .local v2, "state":Lcom/android/internal/widget/LockPatternView$CellState;
    iget-object v3, v2, Lcom/android/internal/widget/LockPatternView$CellState;->lineAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_0

    .line 805
    iget-object v3, v2, Lcom/android/internal/widget/LockPatternView$CellState;->lineAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 806
    iput v4, v2, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndX:F

    .line 807
    iput v4, v2, Lcom/android/internal/widget/LockPatternView$CellState;->lineEndY:F

    .line 802
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 801
    .end local v2    # "state":Lcom/android/internal/widget/LockPatternView$CellState;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 811
    .end local v1    # "j":I
    :cond_2
    return-void
.end method

.method private checkForNewHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v2, 0x0

    .line 594
    invoke-direct {p0, p2}, Lcom/android/keyguard/UnLockPatternView;->getRowHit(F)I

    move-result v1

    .line 595
    .local v1, "rowHit":I
    if-gez v1, :cond_1

    .line 606
    :cond_0
    :goto_0
    return-object v2

    .line 598
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/keyguard/UnLockPatternView;->getColumnHit(F)I

    move-result v0

    .line 599
    .local v0, "columnHit":I
    if-ltz v0, :cond_0

    .line 603
    iget-object v3, p0, Lcom/android/keyguard/UnLockPatternView;->mPatternDrawLookup:[[Z

    aget-object v3, v3, v1

    aget-boolean v3, v3, v0

    if-nez v3, :cond_0

    .line 606
    invoke-static {v1, v0}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v2

    goto :goto_0
.end method

.method private clearPatternDrawLookup()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 390
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_1

    .line 391
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v4, :cond_0

    .line 392
    iget-object v2, p0, Lcom/android/keyguard/UnLockPatternView;->mPatternDrawLookup:[[Z

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aput-boolean v3, v2, v1

    .line 391
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 390
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 395
    .end local v1    # "j":I
    :cond_1
    return-void
.end method

.method private detectAndAddHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;
    .locals 13
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v12, 0x2

    const/4 v10, -0x1

    const/4 v9, 0x1

    .line 481
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/UnLockPatternView;->checkForNewHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v0

    .line 482
    .local v0, "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    if-eqz v0, :cond_7

    .line 485
    const/4 v4, 0x0

    .line 486
    .local v4, "fillInGapCell":Lcom/android/internal/widget/LockPatternView$Cell;
    iget-object v7, p0, Lcom/android/keyguard/UnLockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 487
    .local v7, "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 488
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 489
    .local v6, "lastCell":Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v8

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v11

    sub-int v2, v8, v11

    .line 490
    .local v2, "dRow":I
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v8

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v11

    sub-int v1, v8, v11

    .line 492
    .local v1, "dColumn":I
    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v5

    .line 493
    .local v5, "fillInRow":I
    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v3

    .line 495
    .local v3, "fillInColumn":I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ne v8, v12, :cond_0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-eq v8, v9, :cond_0

    .line 496
    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v11

    if-lez v2, :cond_6

    move v8, v9

    :goto_0
    add-int v5, v11, v8

    .line 499
    :cond_0
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ne v8, v12, :cond_2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-eq v8, v9, :cond_2

    .line 500
    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v8

    if-lez v1, :cond_1

    move v10, v9

    :cond_1
    add-int v3, v8, v10

    .line 503
    :cond_2
    invoke-static {v5, v3}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v4

    .line 506
    .end local v1    # "dColumn":I
    .end local v2    # "dRow":I
    .end local v3    # "fillInColumn":I
    .end local v5    # "fillInRow":I
    .end local v6    # "lastCell":Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_3
    if-eqz v4, :cond_4

    iget-object v8, p0, Lcom/android/keyguard/UnLockPatternView;->mPatternDrawLookup:[[Z

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v10

    aget-object v8, v8, v10

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v10

    aget-boolean v8, v8, v10

    if-nez v8, :cond_4

    .line 508
    invoke-virtual {p0, v4}, Lcom/android/keyguard/UnLockPatternView;->addCellToPattern(Lcom/android/internal/widget/LockPatternView$Cell;)V

    .line 510
    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/keyguard/UnLockPatternView;->addCellToPattern(Lcom/android/internal/widget/LockPatternView$Cell;)V

    .line 511
    iget-boolean v8, p0, Lcom/android/keyguard/UnLockPatternView;->mEnableHapticFeedback:Z

    if-eqz v8, :cond_5

    .line 512
    const/4 v8, 0x3

    invoke-virtual {p0, v9, v8}, Lcom/android/keyguard/UnLockPatternView;->performHapticFeedback(II)Z

    .line 518
    .end local v0    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v4    # "fillInGapCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v7    # "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    :cond_5
    :goto_1
    return-object v0

    .restart local v0    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    .restart local v1    # "dColumn":I
    .restart local v2    # "dRow":I
    .restart local v3    # "fillInColumn":I
    .restart local v4    # "fillInGapCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .restart local v5    # "fillInRow":I
    .restart local v6    # "lastCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .restart local v7    # "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    :cond_6
    move v8, v10

    .line 496
    goto :goto_0

    .line 518
    .end local v1    # "dColumn":I
    .end local v2    # "dRow":I
    .end local v3    # "fillInColumn":I
    .end local v4    # "fillInGapCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v5    # "fillInRow":I
    .end local v6    # "lastCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v7    # "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    :cond_7
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private drawCircle(Landroid/graphics/Canvas;IIZ)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "leftX"    # I
    .param p3, "topY"    # I
    .param p4, "partOfPattern"    # Z

    .prologue
    .line 1009
    if-eqz p4, :cond_0

    iget-boolean v9, p0, Lcom/android/keyguard/UnLockPatternView;->mInStealthMode:Z

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/keyguard/UnLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v10, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-eq v9, v10, :cond_4

    .line 1011
    :cond_0
    iget-object v9, p0, Lcom/android/keyguard/UnLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v10, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v9, v10, :cond_2

    .line 1013
    iget-object v3, p0, Lcom/android/keyguard/UnLockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    .line 1016
    .local v3, "outerCircle":Landroid/graphics/Bitmap;
    iget-object v9, p0, Lcom/android/keyguard/UnLockPatternView;->mBlack:Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1017
    iget-object v9, p0, Lcom/android/keyguard/UnLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    iget v10, p0, Lcom/android/keyguard/UnLockPatternView;->mColorBlackStyleWrong:I

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 1075
    :goto_0
    iget v8, p0, Lcom/android/keyguard/UnLockPatternView;->mBitmapWidth:I

    .line 1076
    .local v8, "width":I
    iget v0, p0, Lcom/android/keyguard/UnLockPatternView;->mBitmapHeight:I

    .line 1078
    .local v0, "height":I
    iget v5, p0, Lcom/android/keyguard/UnLockPatternView;->mSquareWidth:F

    .line 1079
    .local v5, "squareWidth":F
    iget v4, p0, Lcom/android/keyguard/UnLockPatternView;->mSquareHeight:F

    .line 1081
    .local v4, "squareHeight":F
    int-to-float v9, v8

    sub-float v9, v5, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    float-to-int v1, v9

    .line 1082
    .local v1, "offsetX":I
    int-to-float v9, v0

    sub-float v9, v4, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    float-to-int v2, v9

    .line 1085
    .local v2, "offsetY":I
    iget v9, p0, Lcom/android/keyguard/UnLockPatternView;->mSquareWidth:F

    iget v10, p0, Lcom/android/keyguard/UnLockPatternView;->mBitmapWidth:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 1086
    .local v6, "sx":F
    iget v9, p0, Lcom/android/keyguard/UnLockPatternView;->mSquareHeight:F

    iget v10, p0, Lcom/android/keyguard/UnLockPatternView;->mBitmapHeight:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 1088
    .local v7, "sy":F
    iget-object v9, p0, Lcom/android/keyguard/UnLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    add-int v10, p2, v1

    int-to-float v10, v10

    add-int v11, p3, v2

    int-to-float v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 1089
    iget-object v9, p0, Lcom/android/keyguard/UnLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget v10, p0, Lcom/android/keyguard/UnLockPatternView;->mBitmapWidth:I

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    iget v11, p0, Lcom/android/keyguard/UnLockPatternView;->mBitmapHeight:I

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1090
    iget-object v9, p0, Lcom/android/keyguard/UnLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v9, v6, v7}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 1091
    iget-object v9, p0, Lcom/android/keyguard/UnLockPatternView;->mCircleMatrix:Landroid/graphics/Matrix;

    iget v10, p0, Lcom/android/keyguard/UnLockPatternView;->mBitmapWidth:I

    neg-int v10, v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    iget v11, p0, Lcom/android/keyguard/UnLockPatternView;->mBitmapHeight:I

    neg-int v11, v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1096
    add-int v9, p2, v1

    int-to-float v9, v9

    add-int v10, p3, v2

    int-to-float v10, v10

    iget-object v11, p0, Lcom/android/keyguard/UnLockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1098
    return-void

    .line 1019
    .end local v0    # "height":I
    .end local v1    # "offsetX":I
    .end local v2    # "offsetY":I
    .end local v4    # "squareHeight":F
    .end local v5    # "squareWidth":F
    .end local v6    # "sx":F
    .end local v7    # "sy":F
    .end local v8    # "width":I
    :cond_1
    iget-object v9, p0, Lcom/android/keyguard/UnLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    iget v10, p0, Lcom/android/keyguard/UnLockPatternView;->mColorWhiteStyleWrong:I

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 1023
    .end local v3    # "outerCircle":Landroid/graphics/Bitmap;
    :cond_2
    iget-object v3, p0, Lcom/android/keyguard/UnLockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    .line 1026
    .restart local v3    # "outerCircle":Landroid/graphics/Bitmap;
    iget-object v9, p0, Lcom/android/keyguard/UnLockPatternView;->mBlack:Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1027
    iget-object v9, p0, Lcom/android/keyguard/UnLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    iget v10, p0, Lcom/android/keyguard/UnLockPatternView;->mColorBlackStyleRight:I

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 1031
    :goto_1
    iget-object v9, p0, Lcom/android/keyguard/UnLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    iget v10, p0, Lcom/android/keyguard/UnLockPatternView;->mStrokeAlpha:I

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_0

    .line 1029
    :cond_3
    iget-object v9, p0, Lcom/android/keyguard/UnLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    iget v10, p0, Lcom/android/keyguard/UnLockPatternView;->mColorWhiteStyleRight:I

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 1034
    .end local v3    # "outerCircle":Landroid/graphics/Bitmap;
    :cond_4
    iget-boolean v9, p0, Lcom/android/keyguard/UnLockPatternView;->mPatternInProgress:Z

    if-eqz v9, :cond_6

    .line 1036
    iget-object v3, p0, Lcom/android/keyguard/UnLockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    .line 1039
    .restart local v3    # "outerCircle":Landroid/graphics/Bitmap;
    iget-object v9, p0, Lcom/android/keyguard/UnLockPatternView;->mBlack:Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1040
    iget-object v9, p0, Lcom/android/keyguard/UnLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    iget v10, p0, Lcom/android/keyguard/UnLockPatternView;->mColorBlackStyleRight:I

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 1044
    :goto_2
    iget-object v9, p0, Lcom/android/keyguard/UnLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    iget v10, p0, Lcom/android/keyguard/UnLockPatternView;->mStrokeAlpha:I

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_0

    .line 1042
    :cond_5
    iget-object v9, p0, Lcom/android/keyguard/UnLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    iget v10, p0, Lcom/android/keyguard/UnLockPatternView;->mColorWhiteStyleRight:I

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    .line 1046
    .end local v3    # "outerCircle":Landroid/graphics/Bitmap;
    :cond_6
    iget-object v9, p0, Lcom/android/keyguard/UnLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v10, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v9, v10, :cond_8

    .line 1048
    iget-object v3, p0, Lcom/android/keyguard/UnLockPatternView;->mBitmapCircleRed:Landroid/graphics/Bitmap;

    .line 1051
    .restart local v3    # "outerCircle":Landroid/graphics/Bitmap;
    iget-object v9, p0, Lcom/android/keyguard/UnLockPatternView;->mBlack:Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1052
    iget-object v9, p0, Lcom/android/keyguard/UnLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    iget v10, p0, Lcom/android/keyguard/UnLockPatternView;->mColorBlackStyleWrong:I

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 1056
    :goto_3
    iget-object v9, p0, Lcom/android/keyguard/UnLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    iget v10, p0, Lcom/android/keyguard/UnLockPatternView;->mStrokeAlpha:I

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_0

    .line 1054
    :cond_7
    iget-object v9, p0, Lcom/android/keyguard/UnLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    iget v10, p0, Lcom/android/keyguard/UnLockPatternView;->mColorWhiteStyleWrong:I

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_3

    .line 1058
    .end local v3    # "outerCircle":Landroid/graphics/Bitmap;
    :cond_8
    iget-object v9, p0, Lcom/android/keyguard/UnLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v10, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-eq v9, v10, :cond_9

    iget-object v9, p0, Lcom/android/keyguard/UnLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v10, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v9, v10, :cond_b

    .line 1061
    :cond_9
    iget-object v3, p0, Lcom/android/keyguard/UnLockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    .line 1064
    .restart local v3    # "outerCircle":Landroid/graphics/Bitmap;
    iget-object v9, p0, Lcom/android/keyguard/UnLockPatternView;->mBlack:Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 1065
    iget-object v9, p0, Lcom/android/keyguard/UnLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    iget v10, p0, Lcom/android/keyguard/UnLockPatternView;->mColorBlackStyleRight:I

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 1069
    :goto_4
    iget-object v9, p0, Lcom/android/keyguard/UnLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    iget v10, p0, Lcom/android/keyguard/UnLockPatternView;->mStrokeAlpha:I

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_0

    .line 1067
    :cond_a
    iget-object v9, p0, Lcom/android/keyguard/UnLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    iget v10, p0, Lcom/android/keyguard/UnLockPatternView;->mColorWhiteStyleRight:I

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_4

    .line 1072
    .end local v3    # "outerCircle":Landroid/graphics/Bitmap;
    :cond_b
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unknown display mode "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/keyguard/UnLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method private getBitmapFor(I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/android/keyguard/UnLockPatternView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private getCenterXForColumn(I)F
    .locals 3
    .param p1, "column"    # I

    .prologue
    .line 846
    iget v0, p0, Lcom/android/keyguard/UnLockPatternView;->mPaddingLeft:I

    int-to-float v0, v0

    int-to-float v1, p1

    iget v2, p0, Lcom/android/keyguard/UnLockPatternView;->mSquareWidth:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/keyguard/UnLockPatternView;->mSquareWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private getCenterYForRow(I)F
    .locals 3
    .param p1, "row"    # I

    .prologue
    .line 850
    iget v0, p0, Lcom/android/keyguard/UnLockPatternView;->mPaddingTop:I

    int-to-float v0, v0

    int-to-float v1, p1

    iget v2, p0, Lcom/android/keyguard/UnLockPatternView;->mSquareHeight:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/keyguard/UnLockPatternView;->mSquareHeight:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private getColumnHit(F)I
    .locals 8
    .param p1, "x"    # F

    .prologue
    .line 636
    iget v4, p0, Lcom/android/keyguard/UnLockPatternView;->mSquareWidth:F

    .line 637
    .local v4, "squareWidth":F
    iget v5, p0, Lcom/android/keyguard/UnLockPatternView;->mHitFactor:F

    mul-float v1, v4, v5

    .line 639
    .local v1, "hitSize":F
    iget v5, p0, Lcom/android/keyguard/UnLockPatternView;->mPaddingLeft:I

    int-to-float v5, v5

    sub-float v6, v4, v1

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float v3, v5, v6

    .line 640
    .local v3, "offset":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v5, 0x3

    if-ge v2, v5, :cond_1

    .line 642
    int-to-float v5, v2

    mul-float/2addr v5, v4

    add-float v0, v3, v5

    .line 643
    .local v0, "hitLeft":F
    cmpl-float v5, p1, v0

    if-ltz v5, :cond_0

    add-float v5, v0, v1

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_0

    .line 647
    .end local v0    # "hitLeft":F
    .end local v2    # "i":I
    :goto_1
    return v2

    .line 640
    .restart local v0    # "hitLeft":F
    .restart local v2    # "i":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 647
    .end local v0    # "hitLeft":F
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method private getCurrentColor(Z)I
    .locals 3
    .param p1, "partOfPattern"    # Z

    .prologue
    .line 976
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/UnLockPatternView;->mInStealthMode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/UnLockPatternView;->mPatternInProgress:Z

    if-eqz v0, :cond_1

    .line 978
    :cond_0
    iget v0, p0, Lcom/android/keyguard/UnLockPatternView;->mRegularColor:I

    .line 984
    :goto_0
    return v0

    .line 979
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/UnLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v0, v1, :cond_2

    .line 981
    iget v0, p0, Lcom/android/keyguard/UnLockPatternView;->mErrorColor:I

    goto :goto_0

    .line 982
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/UnLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/UnLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v0, v1, :cond_4

    .line 984
    :cond_3
    iget v0, p0, Lcom/android/keyguard/UnLockPatternView;->mSuccessColor:I

    goto :goto_0

    .line 986
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown display mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/UnLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getRowHit(F)I
    .locals 8
    .param p1, "y"    # F

    .prologue
    .line 616
    iget v4, p0, Lcom/android/keyguard/UnLockPatternView;->mSquareHeight:F

    .line 617
    .local v4, "squareHeight":F
    iget v5, p0, Lcom/android/keyguard/UnLockPatternView;->mHitFactor:F

    mul-float v0, v4, v5

    .line 619
    .local v0, "hitSize":F
    iget v5, p0, Lcom/android/keyguard/UnLockPatternView;->mPaddingTop:I

    int-to-float v5, v5

    sub-float v6, v4, v0

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float v3, v5, v6

    .line 620
    .local v3, "offset":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v5, 0x3

    if-ge v2, v5, :cond_1

    .line 622
    int-to-float v5, v2

    mul-float/2addr v5, v4

    add-float v1, v3, v5

    .line 623
    .local v1, "hitTop":F
    cmpl-float v5, p1, v1

    if-ltz v5, :cond_0

    add-float v5, v1, v0

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_0

    .line 627
    .end local v1    # "hitTop":F
    .end local v2    # "i":I
    :goto_1
    return v2

    .line 620
    .restart local v1    # "hitTop":F
    .restart local v2    # "i":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 627
    .end local v1    # "hitTop":F
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method private handleActionDown(Landroid/view/MotionEvent;)V
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 813
    invoke-direct {p0}, Lcom/android/keyguard/UnLockPatternView;->resetPattern()V

    .line 814
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 815
    .local v5, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 816
    .local v6, "y":F
    invoke-direct {p0, v5, v6}, Lcom/android/keyguard/UnLockPatternView;->detectAndAddHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v1

    .line 817
    .local v1, "hitCell":Lcom/android/internal/widget/LockPatternView$Cell;
    if-eqz v1, :cond_2

    .line 818
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/keyguard/UnLockPatternView;->mPatternInProgress:Z

    .line 819
    sget-object v7, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    iput-object v7, p0, Lcom/android/keyguard/UnLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 820
    invoke-direct {p0}, Lcom/android/keyguard/UnLockPatternView;->notifyPatternStarted()V

    .line 825
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 826
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/keyguard/UnLockPatternView;->getCenterXForColumn(I)F

    move-result v2

    .line 827
    .local v2, "startX":F
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/keyguard/UnLockPatternView;->getCenterYForRow(I)F

    move-result v3

    .line 829
    .local v3, "startY":F
    iget v7, p0, Lcom/android/keyguard/UnLockPatternView;->mSquareWidth:F

    div-float v4, v7, v8

    .line 830
    .local v4, "widthOffset":F
    iget v7, p0, Lcom/android/keyguard/UnLockPatternView;->mSquareHeight:F

    div-float v0, v7, v8

    .line 832
    .local v0, "heightOffset":F
    sub-float v7, v2, v4

    float-to-int v7, v7

    sub-float v8, v3, v0

    float-to-int v8, v8

    add-float v9, v2, v4

    float-to-int v9, v9

    add-float v10, v3, v0

    float-to-int v10, v10

    invoke-virtual {p0, v7, v8, v9, v10}, Lcom/android/keyguard/UnLockPatternView;->invalidate(IIII)V

    .line 835
    .end local v0    # "heightOffset":F
    .end local v2    # "startX":F
    .end local v3    # "startY":F
    .end local v4    # "widthOffset":F
    :cond_1
    iput v5, p0, Lcom/android/keyguard/UnLockPatternView;->mInProgressX:F

    .line 836
    iput v6, p0, Lcom/android/keyguard/UnLockPatternView;->mInProgressY:F

    .line 843
    return-void

    .line 821
    :cond_2
    iget-boolean v7, p0, Lcom/android/keyguard/UnLockPatternView;->mPatternInProgress:Z

    if-eqz v7, :cond_0

    .line 822
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/keyguard/UnLockPatternView;->mPatternInProgress:Z

    .line 823
    invoke-direct {p0}, Lcom/android/keyguard/UnLockPatternView;->notifyPatternCleared()V

    goto :goto_0
.end method

.method private handleActionMove(Landroid/view/MotionEvent;)V
    .locals 30
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 719
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/UnLockPatternView;->mSquareWidth:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/UnLockPatternView;->mDiameterFactor:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    const/high16 v26, 0x3f000000    # 0.5f

    mul-float v19, v25, v26

    .line 720
    .local v19, "radius":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v7

    .line 721
    .local v7, "historySize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/UnLockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->setEmpty()V

    .line 722
    const/4 v12, 0x0

    .line 723
    .local v12, "invalidateNow":Z
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    add-int/lit8 v25, v7, 0x1

    move/from16 v0, v25

    if-ge v11, v0, :cond_7

    .line 724
    if-ge v11, v7, :cond_5

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v23

    .line 725
    .local v23, "x":F
    :goto_1
    if-ge v11, v7, :cond_6

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v24

    .line 726
    .local v24, "y":F
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/UnLockPatternView;->detectAndAddHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v8

    .line 727
    .local v8, "hitCell":Lcom/android/internal/widget/LockPatternView$Cell;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/UnLockPatternView;->mPattern:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 728
    .local v18, "patternSize":I
    if-eqz v8, :cond_0

    const/16 v25, 0x1

    move/from16 v0, v18

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 729
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/keyguard/UnLockPatternView;->mPatternInProgress:Z

    .line 730
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/UnLockPatternView;->notifyPatternStarted()V

    .line 733
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/UnLockPatternView;->mInProgressX:F

    move/from16 v25, v0

    sub-float v25, v23, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 734
    .local v4, "dx":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/UnLockPatternView;->mInProgressY:F

    move/from16 v25, v0

    sub-float v25, v24, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 735
    .local v5, "dy":F
    const/16 v25, 0x0

    cmpl-float v25, v4, v25

    if-gtz v25, :cond_1

    const/16 v25, 0x0

    cmpl-float v25, v5, v25

    if-lez v25, :cond_2

    .line 736
    :cond_1
    const/4 v12, 0x1

    .line 739
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/UnLockPatternView;->mPatternInProgress:Z

    move/from16 v25, v0

    if-eqz v25, :cond_4

    if-lez v18, :cond_4

    .line 740
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/UnLockPatternView;->mPattern:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    .line 741
    .local v17, "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    add-int/lit8 v25, v18, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 742
    .local v13, "lastCell":Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v13}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/keyguard/UnLockPatternView;->getCenterXForColumn(I)F

    move-result v14

    .line 743
    .local v14, "lastCellCenterX":F
    invoke-virtual {v13}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/keyguard/UnLockPatternView;->getCenterYForRow(I)F

    move-result v15

    .line 746
    .local v15, "lastCellCenterY":F
    move/from16 v0, v23

    invoke-static {v14, v0}, Ljava/lang/Math;->min(FF)F

    move-result v25

    sub-float v16, v25, v19

    .line 747
    .local v16, "left":F
    move/from16 v0, v23

    invoke-static {v14, v0}, Ljava/lang/Math;->max(FF)F

    move-result v25

    add-float v20, v25, v19

    .line 748
    .local v20, "right":F
    move/from16 v0, v24

    invoke-static {v15, v0}, Ljava/lang/Math;->min(FF)F

    move-result v25

    sub-float v21, v25, v19

    .line 749
    .local v21, "top":F
    move/from16 v0, v24

    invoke-static {v15, v0}, Ljava/lang/Math;->max(FF)F

    move-result v25

    add-float v3, v25, v19

    .line 752
    .local v3, "bottom":F
    if-eqz v8, :cond_3

    .line 753
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/UnLockPatternView;->mSquareWidth:F

    move/from16 v25, v0

    const/high16 v26, 0x3f000000    # 0.5f

    mul-float v22, v25, v26

    .line 754
    .local v22, "width":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/UnLockPatternView;->mSquareHeight:F

    move/from16 v25, v0

    const/high16 v26, 0x3f000000    # 0.5f

    mul-float v6, v25, v26

    .line 755
    .local v6, "height":F
    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/keyguard/UnLockPatternView;->getCenterXForColumn(I)F

    move-result v9

    .line 756
    .local v9, "hitCellCenterX":F
    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/keyguard/UnLockPatternView;->getCenterYForRow(I)F

    move-result v10

    .line 758
    .local v10, "hitCellCenterY":F
    sub-float v25, v9, v22

    move/from16 v0, v25

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v16

    .line 759
    add-float v25, v9, v22

    move/from16 v0, v25

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v20

    .line 760
    sub-float v25, v10, v6

    move/from16 v0, v25

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v21

    .line 761
    add-float v25, v10, v6

    move/from16 v0, v25

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 765
    .end local v6    # "height":F
    .end local v9    # "hitCellCenterX":F
    .end local v10    # "hitCellCenterY":F
    .end local v22    # "width":F
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/UnLockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v26

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v27

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v28

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v29

    invoke-virtual/range {v25 .. v29}, Landroid/graphics/Rect;->union(IIII)V

    .line 723
    .end local v3    # "bottom":F
    .end local v13    # "lastCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v14    # "lastCellCenterX":F
    .end local v15    # "lastCellCenterY":F
    .end local v16    # "left":F
    .end local v17    # "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    .end local v20    # "right":F
    .end local v21    # "top":F
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 724
    .end local v4    # "dx":F
    .end local v5    # "dy":F
    .end local v8    # "hitCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v18    # "patternSize":I
    .end local v23    # "x":F
    .end local v24    # "y":F
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v23

    goto/16 :goto_1

    .line 725
    .restart local v23    # "x":F
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v24

    goto/16 :goto_2

    .line 769
    .end local v23    # "x":F
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/UnLockPatternView;->mInProgressX:F

    .line 770
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/UnLockPatternView;->mInProgressY:F

    .line 773
    if-eqz v12, :cond_8

    .line 774
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/UnLockPatternView;->mInvalidate:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/UnLockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 775
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/UnLockPatternView;->mInvalidate:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/keyguard/UnLockPatternView;->invalidate(Landroid/graphics/Rect;)V

    .line 776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/UnLockPatternView;->mInvalidate:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/UnLockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 778
    :cond_8
    return-void
.end method

.method private handleActionUp(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 786
    iget-object v0, p0, Lcom/android/keyguard/UnLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 787
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/UnLockPatternView;->mPatternInProgress:Z

    .line 788
    invoke-direct {p0}, Lcom/android/keyguard/UnLockPatternView;->cancelLineAnimations()V

    .line 789
    invoke-direct {p0}, Lcom/android/keyguard/UnLockPatternView;->notifyPatternDetected()V

    .line 790
    invoke-virtual {p0}, Lcom/android/keyguard/UnLockPatternView;->invalidate()V

    .line 798
    :cond_0
    return-void
.end method

.method private notifyCellAdded()V
    .locals 2

    .prologue
    .line 342
    const v0, 0x10403ca

    invoke-direct {p0, v0}, Lcom/android/keyguard/UnLockPatternView;->sendAccessEvent(I)V

    .line 343
    iget-object v0, p0, Lcom/android/keyguard/UnLockPatternView;->mOnPatternListener:Lcom/android/keyguard/UnLockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/android/keyguard/UnLockPatternView;->mOnPatternListener:Lcom/android/keyguard/UnLockPatternView$OnPatternListener;

    iget-object v1, p0, Lcom/android/keyguard/UnLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/android/keyguard/UnLockPatternView$OnPatternListener;->onPatternCellAdded(Ljava/util/List;)V

    .line 346
    :cond_0
    return-void
.end method

.method private notifyPatternCleared()V
    .locals 1

    .prologue
    .line 363
    const v0, 0x10403c9

    invoke-direct {p0, v0}, Lcom/android/keyguard/UnLockPatternView;->sendAccessEvent(I)V

    .line 364
    iget-object v0, p0, Lcom/android/keyguard/UnLockPatternView;->mOnPatternListener:Lcom/android/keyguard/UnLockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/android/keyguard/UnLockPatternView;->mOnPatternListener:Lcom/android/keyguard/UnLockPatternView$OnPatternListener;

    invoke-interface {v0}, Lcom/android/keyguard/UnLockPatternView$OnPatternListener;->onPatternCleared()V

    .line 367
    :cond_0
    return-void
.end method

.method private notifyPatternDetected()V
    .locals 2

    .prologue
    .line 356
    const v0, 0x10403cb

    invoke-direct {p0, v0}, Lcom/android/keyguard/UnLockPatternView;->sendAccessEvent(I)V

    .line 357
    iget-object v0, p0, Lcom/android/keyguard/UnLockPatternView;->mOnPatternListener:Lcom/android/keyguard/UnLockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/android/keyguard/UnLockPatternView;->mOnPatternListener:Lcom/android/keyguard/UnLockPatternView$OnPatternListener;

    iget-object v1, p0, Lcom/android/keyguard/UnLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/android/keyguard/UnLockPatternView$OnPatternListener;->onPatternDetected(Ljava/util/List;)V

    .line 360
    :cond_0
    return-void
.end method

.method private notifyPatternStarted()V
    .locals 1

    .prologue
    .line 349
    const v0, 0x10403c8

    invoke-direct {p0, v0}, Lcom/android/keyguard/UnLockPatternView;->sendAccessEvent(I)V

    .line 350
    iget-object v0, p0, Lcom/android/keyguard/UnLockPatternView;->mOnPatternListener:Lcom/android/keyguard/UnLockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/android/keyguard/UnLockPatternView;->mOnPatternListener:Lcom/android/keyguard/UnLockPatternView$OnPatternListener;

    invoke-interface {v0}, Lcom/android/keyguard/UnLockPatternView$OnPatternListener;->onPatternStart()V

    .line 353
    :cond_0
    return-void
.end method

.method private resetPattern()V
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/keyguard/UnLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 381
    invoke-direct {p0}, Lcom/android/keyguard/UnLockPatternView;->clearPatternDrawLookup()V

    .line 382
    sget-object v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    iput-object v0, p0, Lcom/android/keyguard/UnLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 383
    invoke-virtual {p0}, Lcom/android/keyguard/UnLockPatternView;->invalidate()V

    .line 384
    return-void
.end method

.method private resolveMeasured(II)I
    .locals 3
    .param p1, "measureSpec"    # I
    .param p2, "desired"    # I

    .prologue
    .line 423
    const/4 v0, 0x0

    .line 424
    .local v0, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 425
    .local v1, "specSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 434
    move v0, v1

    .line 436
    :goto_0
    return v0

    .line 427
    :sswitch_0
    move v0, p2

    .line 428
    goto :goto_0

    .line 430
    :sswitch_1
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 431
    goto :goto_0

    .line 425
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method private sendAccessEvent(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 781
    iget-object v0, p0, Lcom/android/keyguard/UnLockPatternView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/UnLockPatternView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 782
    return-void
.end method

.method private startCellActivatedAnimation(Lcom/android/internal/widget/LockPatternView$Cell;)V
    .locals 12
    .param p1, "cell"    # Lcom/android/internal/widget/LockPatternView$Cell;

    .prologue
    .line 531
    iget-object v0, p0, Lcom/android/keyguard/UnLockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v1

    aget-object v7, v0, v1

    .line 532
    .local v7, "cellState":Lcom/android/internal/widget/LockPatternView$CellState;
    iget v0, p0, Lcom/android/keyguard/UnLockPatternView;->mDotSize:I

    int-to-float v2, v0

    iget v0, p0, Lcom/android/keyguard/UnLockPatternView;->mDotSizeActivated:I

    int-to-float v3, v0

    const-wide/16 v4, 0x60

    iget-object v6, p0, Lcom/android/keyguard/UnLockPatternView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    new-instance v8, Lcom/android/keyguard/UnLockPatternView$1;

    invoke-direct {v8, p0, v7}, Lcom/android/keyguard/UnLockPatternView$1;-><init>(Lcom/android/keyguard/UnLockPatternView;Lcom/android/internal/widget/LockPatternView$CellState;)V

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/keyguard/UnLockPatternView;->startSizeAnimation(FFJLandroid/view/animation/Interpolator;Lcom/android/internal/widget/LockPatternView$CellState;Ljava/lang/Runnable;)V

    .line 540
    iget v8, p0, Lcom/android/keyguard/UnLockPatternView;->mInProgressX:F

    iget v9, p0, Lcom/android/keyguard/UnLockPatternView;->mInProgressY:F

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/keyguard/UnLockPatternView;->getCenterXForColumn(I)F

    move-result v10

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/keyguard/UnLockPatternView;->getCenterYForRow(I)F

    move-result v11

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/android/keyguard/UnLockPatternView;->startLineEndAnimation(Lcom/android/internal/widget/LockPatternView$CellState;FFFF)V

    .line 542
    return-void
.end method

.method private startLineEndAnimation(Lcom/android/internal/widget/LockPatternView$CellState;FFFF)V
    .locals 8
    .param p1, "state"    # Lcom/android/internal/widget/LockPatternView$CellState;
    .param p2, "startX"    # F
    .param p3, "startY"    # F
    .param p4, "targetX"    # F
    .param p5, "targetY"    # F

    .prologue
    .line 546
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 547
    .local v7, "valueAnimator":Landroid/animation/ValueAnimator;
    new-instance v0, Lcom/android/keyguard/UnLockPatternView$2;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p4

    move v5, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/UnLockPatternView$2;-><init>(Lcom/android/keyguard/UnLockPatternView;Lcom/android/internal/widget/LockPatternView$CellState;FFFF)V

    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 556
    new-instance v0, Lcom/android/keyguard/UnLockPatternView$3;

    invoke-direct {v0, p0, p1}, Lcom/android/keyguard/UnLockPatternView$3;-><init>(Lcom/android/keyguard/UnLockPatternView;Lcom/android/internal/widget/LockPatternView$CellState;)V

    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 562
    iget-object v0, p0, Lcom/android/keyguard/UnLockPatternView;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 563
    const-wide/16 v0, 0x64

    invoke-virtual {v7, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 564
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    .line 565
    iput-object v7, p1, Lcom/android/internal/widget/LockPatternView$CellState;->lineAnimator:Landroid/animation/ValueAnimator;

    .line 566
    return-void

    .line 546
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startSizeAnimation(FFJLandroid/view/animation/Interpolator;Lcom/android/internal/widget/LockPatternView$CellState;Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "start"    # F
    .param p2, "end"    # F
    .param p3, "duration"    # J
    .param p5, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p6, "state"    # Lcom/android/internal/widget/LockPatternView$CellState;
    .param p7, "endRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 570
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 571
    .local v0, "valueAnimator":Landroid/animation/ValueAnimator;
    new-instance v1, Lcom/android/keyguard/UnLockPatternView$4;

    invoke-direct {v1, p0, p6}, Lcom/android/keyguard/UnLockPatternView$4;-><init>(Lcom/android/keyguard/UnLockPatternView;Lcom/android/internal/widget/LockPatternView$CellState;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 578
    if-eqz p7, :cond_0

    .line 579
    new-instance v1, Lcom/android/keyguard/UnLockPatternView$5;

    invoke-direct {v1, p0, p7}, Lcom/android/keyguard/UnLockPatternView$5;-><init>(Lcom/android/keyguard/UnLockPatternView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 586
    :cond_0
    invoke-virtual {v0, p5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 587
    invoke-virtual {v0, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 588
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 589
    return-void
.end method


# virtual methods
.method public addCellToPattern(Lcom/android/internal/widget/LockPatternView$Cell;)V
    .locals 3
    .param p1, "newCell"    # Lcom/android/internal/widget/LockPatternView$Cell;

    .prologue
    .line 522
    iget-object v0, p0, Lcom/android/keyguard/UnLockPatternView;->mPatternDrawLookup:[[Z

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v1

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 523
    iget-object v0, p0, Lcom/android/keyguard/UnLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
    iget-boolean v0, p0, Lcom/android/keyguard/UnLockPatternView;->mInStealthMode:Z

    if-nez v0, :cond_0

    .line 525
    invoke-direct {p0, p1}, Lcom/android/keyguard/UnLockPatternView;->startCellActivatedAnimation(Lcom/android/internal/widget/LockPatternView$Cell;)V

    .line 527
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/UnLockPatternView;->notifyCellAdded()V

    .line 528
    return-void
.end method

.method public clearPattern()V
    .locals 0

    .prologue
    .line 373
    invoke-direct {p0}, Lcom/android/keyguard/UnLockPatternView;->resetPattern()V

    .line 374
    return-void
.end method

.method public disableInput()V
    .locals 1

    .prologue
    .line 402
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/UnLockPatternView;->mInputEnabled:Z

    .line 403
    return-void
.end method

.method public enableInput()V
    .locals 1

    .prologue
    .line 409
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/UnLockPatternView;->mInputEnabled:Z

    .line 410
    return-void
.end method

.method public getCellStates()[[Lcom/android/internal/widget/LockPatternView$CellState;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/keyguard/UnLockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    return-object v0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 1

    .prologue
    .line 448
    iget v0, p0, Lcom/android/keyguard/UnLockPatternView;->mBitmapWidth:I

    mul-int/lit8 v0, v0, 0x3

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 1

    .prologue
    .line 442
    iget v0, p0, Lcom/android/keyguard/UnLockPatternView;->mBitmapWidth:I

    mul-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public isInStealthMode()Z
    .locals 1

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/android/keyguard/UnLockPatternView;->mInStealthMode:Z

    return v0
.end method

.method public isTactileFeedbackEnabled()Z
    .locals 1

    .prologue
    .line 270
    iget-boolean v0, p0, Lcom/android/keyguard/UnLockPatternView;->mEnableHapticFeedback:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 38
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 855
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/UnLockPatternView;->mPattern:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    .line 856
    .local v27, "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 857
    .local v10, "count":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/UnLockPatternView;->mPatternDrawLookup:[[Z

    .line 859
    .local v13, "drawLookup":[[Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/UnLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    move-object/from16 v34, v0

    sget-object v35, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    if-ne v0, v1, :cond_2

    .line 864
    add-int/lit8 v34, v10, 0x1

    move/from16 v0, v34

    mul-int/lit16 v0, v0, 0x2bc

    move/from16 v24, v0

    .line 865
    .local v24, "oneCycle":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v34

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/keyguard/UnLockPatternView;->mAnimatingPeriodStart:J

    move-wide/from16 v36, v0

    sub-long v34, v34, v36

    move-wide/from16 v0, v34

    long-to-int v0, v0

    move/from16 v34, v0

    rem-int v30, v34, v24

    .line 867
    .local v30, "spotInCycle":I
    move/from16 v0, v30

    div-int/lit16 v0, v0, 0x2bc

    move/from16 v22, v0

    .line 869
    .local v22, "numCircles":I
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/UnLockPatternView;->clearPatternDrawLookup()V

    .line 870
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_0
    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_0

    .line 871
    move-object/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 872
    .local v7, "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v34

    aget-object v34, v13, v34

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v35

    const/16 v36, 0x1

    aput-boolean v36, v34, v35

    .line 870
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 877
    .end local v7    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_0
    if-lez v22, :cond_3

    move/from16 v0, v22

    if-ge v0, v10, :cond_3

    const/16 v20, 0x1

    .line 880
    .local v20, "needToUpdateInProgressPoint":Z
    :goto_1
    if-eqz v20, :cond_1

    .line 881
    move/from16 v0, v30

    rem-int/lit16 v0, v0, 0x2bc

    move/from16 v34, v0

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    const/high16 v35, 0x442f0000    # 700.0f

    div-float v28, v34, v35

    .line 885
    .local v28, "percentageOfNextCircle":F
    add-int/lit8 v34, v22, -0x1

    move-object/from16 v0, v27

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 886
    .local v11, "currentCell":Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v11}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v34

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/keyguard/UnLockPatternView;->getCenterXForColumn(I)F

    move-result v8

    .line 887
    .local v8, "centerX":F
    invoke-virtual {v11}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v34

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/keyguard/UnLockPatternView;->getCenterYForRow(I)F

    move-result v9

    .line 889
    .local v9, "centerY":F
    move-object/from16 v0, v27

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 890
    .local v21, "nextCell":Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v34

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/keyguard/UnLockPatternView;->getCenterXForColumn(I)F

    move-result v34

    sub-float v34, v34, v8

    mul-float v15, v28, v34

    .line 892
    .local v15, "dx":F
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v34

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/keyguard/UnLockPatternView;->getCenterYForRow(I)F

    move-result v34

    sub-float v34, v34, v9

    mul-float v16, v28, v34

    .line 894
    .local v16, "dy":F
    add-float v34, v8, v15

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/UnLockPatternView;->mInProgressX:F

    .line 895
    add-float v34, v9, v16

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/UnLockPatternView;->mInProgressY:F

    .line 898
    .end local v8    # "centerX":F
    .end local v9    # "centerY":F
    .end local v11    # "currentCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v15    # "dx":F
    .end local v16    # "dy":F
    .end local v21    # "nextCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v28    # "percentageOfNextCircle":F
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/UnLockPatternView;->invalidate()V

    .line 901
    .end local v17    # "i":I
    .end local v20    # "needToUpdateInProgressPoint":Z
    .end local v22    # "numCircles":I
    .end local v24    # "oneCycle":I
    .end local v30    # "spotInCycle":I
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/UnLockPatternView;->mSquareWidth:F

    move/from16 v32, v0

    .line 902
    .local v32, "squareWidth":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/UnLockPatternView;->mSquareHeight:F

    move/from16 v31, v0

    .line 904
    .local v31, "squareHeight":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/UnLockPatternView;->mDiameterFactor:F

    move/from16 v34, v0

    mul-float v34, v34, v32

    const/high16 v35, 0x3f000000    # 0.5f

    mul-float v29, v34, v35

    .line 905
    .local v29, "radius":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/UnLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 907
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/keyguard/UnLockPatternView;->mCurrentPath:Landroid/graphics/Path;

    .line 908
    .local v12, "currentPath":Landroid/graphics/Path;
    invoke-virtual {v12}, Landroid/graphics/Path;->rewind()V

    .line 911
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/UnLockPatternView;->mPaddingTop:I

    move/from16 v26, v0

    .line 912
    .local v26, "paddingTop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/UnLockPatternView;->mPaddingLeft:I

    move/from16 v25, v0

    .line 914
    .local v25, "paddingLeft":I
    const/16 v17, 0x0

    .restart local v17    # "i":I
    :goto_2
    const/16 v34, 0x3

    move/from16 v0, v17

    move/from16 v1, v34

    if-ge v0, v1, :cond_5

    .line 915
    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v34, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v35, v0

    mul-float v35, v35, v31

    add-float v33, v34, v35

    .line 917
    .local v33, "topY":F
    const/16 v18, 0x0

    .local v18, "j":I
    :goto_3
    const/16 v34, 0x3

    move/from16 v0, v18

    move/from16 v1, v34

    if-ge v0, v1, :cond_4

    .line 918
    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v34, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v35, v0

    mul-float v35, v35, v32

    add-float v19, v34, v35

    .line 919
    .local v19, "leftX":F
    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v34, v0

    move/from16 v0, v33

    float-to-int v0, v0

    move/from16 v35, v0

    aget-object v36, v13, v17

    aget-boolean v36, v36, v18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v34

    move/from16 v3, v35

    move/from16 v4, v36

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/keyguard/UnLockPatternView;->drawCircle(Landroid/graphics/Canvas;IIZ)V

    .line 917
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .line 877
    .end local v12    # "currentPath":Landroid/graphics/Path;
    .end local v18    # "j":I
    .end local v19    # "leftX":F
    .end local v25    # "paddingLeft":I
    .end local v26    # "paddingTop":I
    .end local v29    # "radius":F
    .end local v31    # "squareHeight":F
    .end local v32    # "squareWidth":F
    .end local v33    # "topY":F
    .restart local v22    # "numCircles":I
    .restart local v24    # "oneCycle":I
    .restart local v30    # "spotInCycle":I
    :cond_3
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 914
    .end local v22    # "numCircles":I
    .end local v24    # "oneCycle":I
    .end local v30    # "spotInCycle":I
    .restart local v12    # "currentPath":Landroid/graphics/Path;
    .restart local v18    # "j":I
    .restart local v25    # "paddingLeft":I
    .restart local v26    # "paddingTop":I
    .restart local v29    # "radius":F
    .restart local v31    # "squareHeight":F
    .restart local v32    # "squareWidth":F
    .restart local v33    # "topY":F
    :cond_4
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 927
    .end local v18    # "j":I
    .end local v33    # "topY":F
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/UnLockPatternView;->mInStealthMode:Z

    move/from16 v34, v0

    if-eqz v34, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/UnLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    move-object/from16 v34, v0

    sget-object v35, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    if-ne v0, v1, :cond_b

    :cond_6
    const/4 v14, 0x1

    .line 931
    .local v14, "drawPath":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/UnLockPatternView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/graphics/Paint;->getFlags()I

    move-result v34

    and-int/lit8 v34, v34, 0x2

    if-eqz v34, :cond_c

    const/16 v23, 0x1

    .line 932
    .local v23, "oldFlag":Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/UnLockPatternView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v34, v0

    const/16 v35, 0x1

    invoke-virtual/range {v34 .. v35}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 934
    if-eqz v14, :cond_a

    .line 935
    const/4 v6, 0x0

    .line 936
    .local v6, "anyCircles":Z
    const/16 v17, 0x0

    :goto_6
    move/from16 v0, v17

    if-ge v0, v10, :cond_7

    .line 937
    move-object/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 942
    .restart local v7    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v34

    aget-object v34, v13, v34

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v35

    aget-boolean v34, v34, v35

    if-nez v34, :cond_d

    .line 957
    .end local v7    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/UnLockPatternView;->mPatternInProgress:Z

    move/from16 v34, v0

    if-nez v34, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/UnLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    move-object/from16 v34, v0

    sget-object v35, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    if-ne v0, v1, :cond_9

    :cond_8
    if-eqz v6, :cond_9

    .line 959
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/UnLockPatternView;->mInProgressX:F

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/UnLockPatternView;->mInProgressY:F

    move/from16 v35, v0

    move/from16 v0, v34

    move/from16 v1, v35

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 961
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/UnLockPatternView;->mPathPaint:Landroid/graphics/Paint;

    move-object/from16 v34, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-virtual {v0, v12, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 964
    .end local v6    # "anyCircles":Z
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/UnLockPatternView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 965
    return-void

    .line 927
    .end local v14    # "drawPath":Z
    .end local v23    # "oldFlag":Z
    :cond_b
    const/4 v14, 0x0

    goto/16 :goto_4

    .line 931
    .restart local v14    # "drawPath":Z
    :cond_c
    const/16 v23, 0x0

    goto :goto_5

    .line 945
    .restart local v6    # "anyCircles":Z
    .restart local v7    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    .restart local v23    # "oldFlag":Z
    :cond_d
    const/4 v6, 0x1

    .line 947
    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v34

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/keyguard/UnLockPatternView;->getCenterXForColumn(I)F

    move-result v8

    .line 948
    .restart local v8    # "centerX":F
    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v34

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/keyguard/UnLockPatternView;->getCenterYForRow(I)F

    move-result v9

    .line 949
    .restart local v9    # "centerY":F
    if-nez v17, :cond_e

    .line 950
    invoke-virtual {v12, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 936
    :goto_7
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_6

    .line 952
    :cond_e
    invoke-virtual {v12, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_7
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 652
    iget-object v1, p0, Lcom/android/keyguard/UnLockPatternView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 653
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 654
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 665
    :goto_0
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/android/keyguard/UnLockPatternView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 666
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 668
    .end local v0    # "action":I
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 656
    .restart local v0    # "action":I
    :pswitch_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 659
    :pswitch_2
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 662
    :pswitch_3
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 654
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 453
    invoke-virtual {p0}, Lcom/android/keyguard/UnLockPatternView;->getSuggestedMinimumWidth()I

    move-result v1

    .line 454
    .local v1, "minimumWidth":I
    invoke-virtual {p0}, Lcom/android/keyguard/UnLockPatternView;->getSuggestedMinimumHeight()I

    move-result v0

    .line 455
    .local v0, "minimumHeight":I
    invoke-direct {p0, p1, v1}, Lcom/android/keyguard/UnLockPatternView;->resolveMeasured(II)I

    move-result v3

    .line 456
    .local v3, "viewWidth":I
    invoke-direct {p0, p2, v0}, Lcom/android/keyguard/UnLockPatternView;->resolveMeasured(II)I

    move-result v2

    .line 458
    .local v2, "viewHeight":I
    iget v4, p0, Lcom/android/keyguard/UnLockPatternView;->mAspect:I

    packed-switch v4, :pswitch_data_0

    .line 470
    :goto_0
    invoke-virtual {p0, v3, v2}, Lcom/android/keyguard/UnLockPatternView;->setMeasuredDimension(II)V

    .line 471
    return-void

    .line 460
    :pswitch_0
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v3, v2

    .line 461
    goto :goto_0

    .line 463
    :pswitch_1
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 464
    goto :goto_0

    .line 466
    :pswitch_2
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_0

    .line 458
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1111
    move-object v0, p1

    check-cast v0, Lcom/android/keyguard/UnLockPatternView$SavedState;

    .line 1112
    .local v0, "ss":Lcom/android/keyguard/UnLockPatternView$SavedState;
    invoke-virtual {v0}, Lcom/android/keyguard/UnLockPatternView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1113
    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0}, Lcom/android/keyguard/UnLockPatternView$SavedState;->getSerializedPattern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/keyguard/UnLockPatternView;->setPattern(Lcom/android/internal/widget/LockPatternView$DisplayMode;Ljava/util/List;)V

    .line 1116
    invoke-static {}, Lcom/android/internal/widget/LockPatternView$DisplayMode;->values()[Lcom/android/internal/widget/LockPatternView$DisplayMode;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/keyguard/UnLockPatternView$SavedState;->getDisplayMode()I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/keyguard/UnLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 1117
    invoke-virtual {v0}, Lcom/android/keyguard/UnLockPatternView$SavedState;->isInputEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/keyguard/UnLockPatternView;->mInputEnabled:Z

    .line 1118
    invoke-virtual {v0}, Lcom/android/keyguard/UnLockPatternView$SavedState;->isInStealthMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/keyguard/UnLockPatternView;->mInStealthMode:Z

    .line 1119
    invoke-virtual {v0}, Lcom/android/keyguard/UnLockPatternView$SavedState;->isTactileFeedbackEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/keyguard/UnLockPatternView;->mEnableHapticFeedback:Z

    .line 1120
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 8

    .prologue
    .line 1102
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1103
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/android/keyguard/UnLockPatternView$SavedState;

    iget-object v2, p0, Lcom/android/keyguard/UnLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/UnLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternView$DisplayMode;->ordinal()I

    move-result v3

    iget-boolean v4, p0, Lcom/android/keyguard/UnLockPatternView;->mInputEnabled:Z

    iget-boolean v5, p0, Lcom/android/keyguard/UnLockPatternView;->mInStealthMode:Z

    iget-boolean v6, p0, Lcom/android/keyguard/UnLockPatternView;->mEnableHapticFeedback:Z

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/keyguard/UnLockPatternView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/lang/String;IZZZLcom/android/keyguard/UnLockPatternView$1;)V

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/high16 v4, 0x40400000    # 3.0f

    .line 414
    iget v2, p0, Lcom/android/keyguard/UnLockPatternView;->mPaddingLeft:I

    sub-int v2, p1, v2

    iget v3, p0, Lcom/android/keyguard/UnLockPatternView;->mPaddingRight:I

    sub-int v1, v2, v3

    .line 415
    .local v1, "width":I
    int-to-float v2, v1

    div-float/2addr v2, v4

    iput v2, p0, Lcom/android/keyguard/UnLockPatternView;->mSquareWidth:F

    .line 417
    iget v2, p0, Lcom/android/keyguard/UnLockPatternView;->mPaddingTop:I

    sub-int v2, p2, v2

    iget v3, p0, Lcom/android/keyguard/UnLockPatternView;->mPaddingBottom:I

    sub-int v0, v2, v3

    .line 418
    .local v0, "height":I
    int-to-float v2, v0

    div-float/2addr v2, v4

    iput v2, p0, Lcom/android/keyguard/UnLockPatternView;->mSquareHeight:F

    .line 419
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 673
    iget-boolean v2, p0, Lcom/android/keyguard/UnLockPatternView;->mInputEnabled:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/UnLockPatternView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 713
    :goto_0
    return v0

    .line 676
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/keyguard/UnLockPatternView;->setFinger(Z)V

    .line 678
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 713
    goto :goto_0

    .line 680
    :pswitch_0
    invoke-static {v0}, Lcom/android/keyguard/KeyguardUtils;->setDrawingPattern(Z)V

    .line 681
    invoke-virtual {p0, v3, v4}, Lcom/android/keyguard/UnLockPatternView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 682
    invoke-direct {p0, p1}, Lcom/android/keyguard/UnLockPatternView;->handleActionDown(Landroid/view/MotionEvent;)V

    .line 683
    const-string v1, "UnLockPatternView"

    const-string v2, " ACTION_DOWN "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 686
    :pswitch_1
    invoke-static {v1}, Lcom/android/keyguard/KeyguardUtils;->setDrawingPattern(Z)V

    .line 687
    invoke-direct {p0, p1}, Lcom/android/keyguard/UnLockPatternView;->handleActionUp(Landroid/view/MotionEvent;)V

    .line 688
    invoke-virtual {p0, v3, v4}, Lcom/android/keyguard/UnLockPatternView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 689
    const-string v1, "UnLockPatternView"

    const-string v2, " ACTION_UP "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 692
    :pswitch_2
    invoke-static {v0}, Lcom/android/keyguard/KeyguardUtils;->setDrawingPattern(Z)V

    .line 693
    invoke-direct {p0, p1}, Lcom/android/keyguard/UnLockPatternView;->handleActionMove(Landroid/view/MotionEvent;)V

    .line 694
    const-string v1, "UnLockPatternView"

    const-string v2, " ACTION_MOVE "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 697
    :pswitch_3
    invoke-static {v1}, Lcom/android/keyguard/KeyguardUtils;->setDrawingPattern(Z)V

    .line 698
    invoke-virtual {p0, v3, v4}, Lcom/android/keyguard/UnLockPatternView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 699
    iget-boolean v2, p0, Lcom/android/keyguard/UnLockPatternView;->mPatternInProgress:Z

    if-eqz v2, :cond_2

    .line 700
    iput-boolean v1, p0, Lcom/android/keyguard/UnLockPatternView;->mPatternInProgress:Z

    .line 701
    invoke-direct {p0}, Lcom/android/keyguard/UnLockPatternView;->resetPattern()V

    .line 702
    invoke-direct {p0}, Lcom/android/keyguard/UnLockPatternView;->notifyPatternCleared()V

    .line 710
    :cond_2
    const-string v1, "UnLockPatternView"

    const-string v2, " ACTION_CANCEL "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 678
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setBlackStyle()V
    .locals 1

    .prologue
    .line 1201
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/UnLockPatternView;->mBlack:Ljava/lang/Boolean;

    .line 1202
    return-void
.end method

.method public setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V
    .locals 4
    .param p1, "displayMode"    # Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .prologue
    .line 326
    iput-object p1, p0, Lcom/android/keyguard/UnLockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 327
    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne p1, v1, :cond_1

    .line 328
    iget-object v1, p0, Lcom/android/keyguard/UnLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 329
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "you must have a pattern to animate if you want to set the display mode to animate"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 332
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/keyguard/UnLockPatternView;->mAnimatingPeriodStart:J

    .line 333
    iget-object v1, p0, Lcom/android/keyguard/UnLockPatternView;->mPattern:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 334
    .local v0, "first":Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/keyguard/UnLockPatternView;->getCenterXForColumn(I)F

    move-result v1

    iput v1, p0, Lcom/android/keyguard/UnLockPatternView;->mInProgressX:F

    .line 335
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/keyguard/UnLockPatternView;->getCenterYForRow(I)F

    move-result v1

    iput v1, p0, Lcom/android/keyguard/UnLockPatternView;->mInProgressY:F

    .line 336
    invoke-direct {p0}, Lcom/android/keyguard/UnLockPatternView;->clearPatternDrawLookup()V

    .line 338
    .end local v0    # "first":Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/UnLockPatternView;->invalidate()V

    .line 339
    return-void
.end method

.method public setFinger(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 1205
    if-eqz p1, :cond_0

    .line 1206
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/UnLockPatternView;->mStrokeAlpha:I

    .line 1210
    :goto_0
    return-void

    .line 1208
    :cond_0
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/keyguard/UnLockPatternView;->mStrokeAlpha:I

    goto :goto_0
.end method

.method public setInStealthMode(Z)V
    .locals 0
    .param p1, "inStealthMode"    # Z

    .prologue
    .line 280
    iput-boolean p1, p0, Lcom/android/keyguard/UnLockPatternView;->mInStealthMode:Z

    .line 281
    return-void
.end method

.method public setOnPatternListener(Lcom/android/keyguard/UnLockPatternView$OnPatternListener;)V
    .locals 0
    .param p1, "onPatternListener"    # Lcom/android/keyguard/UnLockPatternView$OnPatternListener;

    .prologue
    .line 299
    iput-object p1, p0, Lcom/android/keyguard/UnLockPatternView;->mOnPatternListener:Lcom/android/keyguard/UnLockPatternView$OnPatternListener;

    .line 300
    return-void
.end method

.method public setPattern(Lcom/android/internal/widget/LockPatternView$DisplayMode;Ljava/util/List;)V
    .locals 5
    .param p1, "displayMode"    # Lcom/android/internal/widget/LockPatternView$DisplayMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/LockPatternView$DisplayMode;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 309
    .local p2, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    iget-object v2, p0, Lcom/android/keyguard/UnLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 310
    iget-object v2, p0, Lcom/android/keyguard/UnLockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 311
    invoke-direct {p0}, Lcom/android/keyguard/UnLockPatternView;->clearPatternDrawLookup()V

    .line 312
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 313
    .local v0, "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    iget-object v2, p0, Lcom/android/keyguard/UnLockPatternView;->mPatternDrawLookup:[[Z

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v3

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    goto :goto_0

    .line 316
    .end local v0    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/keyguard/UnLockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 317
    return-void
.end method

.method public setTactileFeedbackEnabled(Z)V
    .locals 0
    .param p1, "tactileFeedbackEnabled"    # Z

    .prologue
    .line 290
    iput-boolean p1, p0, Lcom/android/keyguard/UnLockPatternView;->mEnableHapticFeedback:Z

    .line 291
    return-void
.end method
