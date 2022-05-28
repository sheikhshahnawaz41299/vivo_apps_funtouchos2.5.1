.class Lcom/android/settings/ChooseLockPatternView;
.super Landroid/view/View;
.source "ChooseLockPatternView.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field public mAnimator:Landroid/animation/ValueAnimator;

.field private mBitmapCircleGreen:Landroid/graphics/Bitmap;

.field private mDensity:F

.field private mEndx:F

.field private mPaint:Landroid/graphics/Paint;

.field private mVivoCellFour:Landroid/widget/ImageView;

.field private mVivoCellOne:Landroid/widget/ImageView;

.field private mVivoCellThree:Landroid/widget/ImageView;

.field private mVivoCellTwo:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 24
    const-string v0, "ChooseLockPatternView"

    iput-object v0, p0, Lcom/android/settings/ChooseLockPatternView;->TAG:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/ChooseLockPatternView;->mEndx:F

    .line 32
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPatternView;->init()V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const-string v0, "ChooseLockPatternView"

    iput-object v0, p0, Lcom/android/settings/ChooseLockPatternView;->TAG:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/ChooseLockPatternView;->mEndx:F

    .line 46
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPatternView;->init()V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    const-string v0, "ChooseLockPatternView"

    iput-object v0, p0, Lcom/android/settings/ChooseLockPatternView;->TAG:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/ChooseLockPatternView;->mEndx:F

    .line 39
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPatternView;->init()V

    .line 40
    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/ChooseLockPatternView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/ChooseLockPatternView;
    .param p1, "x1"    # F

    .prologue
    .line 20
    iput p1, p0, Lcom/android/settings/ChooseLockPatternView;->mEndx:F

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/ChooseLockPatternView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ChooseLockPatternView;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternView;->mVivoCellOne:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/ChooseLockPatternView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ChooseLockPatternView;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternView;->mVivoCellTwo:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/ChooseLockPatternView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ChooseLockPatternView;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternView;->mVivoCellThree:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/ChooseLockPatternView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ChooseLockPatternView;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternView;->mVivoCellFour:Landroid/widget/ImageView;

    return-object v0
.end method

.method private getBitmapFor(I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPatternView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/high16 v3, 0x40000000    # 2.0f

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/ChooseLockPatternView;->mPaint:Landroid/graphics/Paint;

    .line 51
    const v0, 0x7f0200f4

    invoke-direct {p0, v0}, Lcom/android/settings/ChooseLockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ChooseLockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    .line 52
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 53
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 54
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 59
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternView;->mPaint:Landroid/graphics/Paint;

    const v1, -0xb61e5a

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 64
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 65
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/settings/ChooseLockPatternView;->mDensity:F

    .line 67
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDensity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/ChooseLockPatternView;->mDensity:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/settings/Vlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget v0, p0, Lcom/android/settings/ChooseLockPatternView;->mDensity:F

    const/high16 v1, 0x40400000    # 3.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 75
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPatternView;->onDrawAnim()V

    .line 76
    return-void

    .line 70
    :cond_0
    iget v0, p0, Lcom/android/settings/ChooseLockPatternView;->mDensity:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_0

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_0
.end method

.method private onDrawAnim()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x7d0

    .line 190
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ChooseLockPatternView;->mAnimator:Landroid/animation/ValueAnimator;

    .line 191
    iget v0, p0, Lcom/android/settings/ChooseLockPatternView;->mDensity:F

    const/high16 v1, 0x40800000    # 4.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 198
    :goto_0
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/settings/ChooseLockPatternView$1;

    invoke-direct {v1, p0}, Lcom/android/settings/ChooseLockPatternView$1;-><init>(Lcom/android/settings/ChooseLockPatternView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 206
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/settings/ChooseLockPatternView$2;

    invoke-direct {v1, p0}, Lcom/android/settings/ChooseLockPatternView$2;-><init>(Lcom/android/settings/ChooseLockPatternView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 212
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/settings/ChooseLockPatternView$3;

    invoke-direct {v1, p0}, Lcom/android/settings/ChooseLockPatternView$3;-><init>(Lcom/android/settings/ChooseLockPatternView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 251
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternView;->mAnimator:Landroid/animation/ValueAnimator;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 252
    return-void

    .line 193
    :cond_0
    iget v0, p0, Lcom/android/settings/ChooseLockPatternView;->mDensity:F

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/settings/ChooseLockPatternView;->mDensity:F

    const/high16 v1, 0x40400000    # 3.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternView;->mAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x640

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_0

    .line 196
    :cond_2
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_0

    .line 190
    :array_0
    .array-data 4
        0x0
        0x44af0000    # 1400.0f
    .end array-data
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 21
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 80
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 84
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/ChooseLockPatternView;->mDensity:F

    const/high16 v2, 0x40800000    # 4.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 85
    const/16 v13, 0x11

    .line 86
    .local v13, "start_pos_y":I
    const/16 v10, 0x5a

    .line 87
    .local v10, "one_circle":I
    const/16 v19, 0x5c

    .line 88
    .local v19, "vertical_line_pos_x":I
    const/16 v20, 0xd9

    .line 89
    .local v20, "vertical_line_pos_y":I
    const/16 v11, 0x43

    .line 90
    .local v11, "one_circle_pos_x":I
    const/16 v12, 0xc0

    .line 91
    .local v12, "one_circle_pos_y":I
    const/16 v16, 0xb4

    .line 92
    .local v16, "two_circle":I
    const/16 v17, 0x118

    .line 93
    .local v17, "two_circle_pos_y":I
    const/16 v9, 0x131

    .line 94
    .local v9, "horizontal_line_pos_y":I
    const/16 v14, 0x10e

    .line 95
    .local v14, "three_circle":I
    const/16 v15, 0x9b

    .line 96
    .local v15, "three_circle_pos_x":I
    const/16 v7, 0x168

    .line 97
    .local v7, "four_circle":I
    const/16 v8, 0xf4

    .line 98
    .local v8, "four_circle_pos_x":I
    const/16 v18, 0x10e

    .line 147
    .local v18, "vertical_line_end_x":I
    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/ChooseLockPatternView;->mEndx:F

    int-to-float v2, v13

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/ChooseLockPatternView;->mDensity:F

    mul-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_3

    .line 188
    :goto_1
    return-void

    .line 99
    .end local v7    # "four_circle":I
    .end local v8    # "four_circle_pos_x":I
    .end local v9    # "horizontal_line_pos_y":I
    .end local v10    # "one_circle":I
    .end local v11    # "one_circle_pos_x":I
    .end local v12    # "one_circle_pos_y":I
    .end local v13    # "start_pos_y":I
    .end local v14    # "three_circle":I
    .end local v15    # "three_circle_pos_x":I
    .end local v16    # "two_circle":I
    .end local v17    # "two_circle_pos_y":I
    .end local v18    # "vertical_line_end_x":I
    .end local v19    # "vertical_line_pos_x":I
    .end local v20    # "vertical_line_pos_y":I
    :cond_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/ChooseLockPatternView;->mDensity:F

    const/high16 v2, 0x40400000    # 3.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    .line 100
    const/16 v13, 0x11

    .line 101
    .restart local v13    # "start_pos_y":I
    const/16 v10, 0x87

    .line 102
    .restart local v10    # "one_circle":I
    const/16 v19, 0x4f

    .line 103
    .restart local v19    # "vertical_line_pos_x":I
    const/16 v20, 0xa5

    .line 104
    .restart local v20    # "vertical_line_pos_y":I
    const/16 v11, 0x32

    .line 105
    .restart local v11    # "one_circle_pos_x":I
    const/16 v12, 0x86

    .line 106
    .restart local v12    # "one_circle_pos_y":I
    const/16 v16, 0xfe

    .line 107
    .restart local v16    # "two_circle":I
    const/16 v17, 0x103

    .line 108
    .restart local v17    # "two_circle_pos_y":I
    const/16 v9, 0x120

    .line 109
    .restart local v9    # "horizontal_line_pos_y":I
    const/16 v14, 0x154

    .line 110
    .restart local v14    # "three_circle":I
    const/16 v15, 0x97

    .line 111
    .restart local v15    # "three_circle_pos_x":I
    const/16 v7, 0x159

    .line 112
    .restart local v7    # "four_circle":I
    const/16 v8, 0xfd

    .line 113
    .restart local v8    # "four_circle_pos_x":I
    const/16 v18, 0x118

    .restart local v18    # "vertical_line_end_x":I
    goto :goto_0

    .line 114
    .end local v7    # "four_circle":I
    .end local v8    # "four_circle_pos_x":I
    .end local v9    # "horizontal_line_pos_y":I
    .end local v10    # "one_circle":I
    .end local v11    # "one_circle_pos_x":I
    .end local v12    # "one_circle_pos_y":I
    .end local v13    # "start_pos_y":I
    .end local v14    # "three_circle":I
    .end local v15    # "three_circle_pos_x":I
    .end local v16    # "two_circle":I
    .end local v17    # "two_circle_pos_y":I
    .end local v18    # "vertical_line_end_x":I
    .end local v19    # "vertical_line_pos_x":I
    .end local v20    # "vertical_line_pos_y":I
    :cond_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/ChooseLockPatternView;->mDensity:F

    const/high16 v2, 0x40000000    # 2.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    .line 115
    const/16 v13, 0x11

    .line 116
    .restart local v13    # "start_pos_y":I
    const/16 v10, 0x5f

    .line 117
    .restart local v10    # "one_circle":I
    const/16 v19, 0x49

    .line 118
    .restart local v19    # "vertical_line_pos_x":I
    const/16 v20, 0xcd

    .line 119
    .restart local v20    # "vertical_line_pos_y":I
    const/16 v11, 0x2b

    .line 120
    .restart local v11    # "one_circle_pos_x":I
    const/16 v12, 0xae

    .line 121
    .restart local v12    # "one_circle_pos_y":I
    const/16 v16, 0xfe

    .line 122
    .restart local v16    # "two_circle":I
    const/16 v17, 0x119

    .line 123
    .restart local v17    # "two_circle_pos_y":I
    const/16 v9, 0x137

    .line 124
    .restart local v9    # "horizontal_line_pos_y":I
    const/16 v14, 0x140

    .line 125
    .restart local v14    # "three_circle":I
    const/16 v15, 0x95

    .line 126
    .restart local v15    # "three_circle_pos_x":I
    const/16 v7, 0x159

    .line 127
    .restart local v7    # "four_circle":I
    const/16 v8, 0xfe

    .line 128
    .restart local v8    # "four_circle_pos_x":I
    const/16 v18, 0x118

    .restart local v18    # "vertical_line_end_x":I
    goto :goto_0

    .line 130
    .end local v7    # "four_circle":I
    .end local v8    # "four_circle_pos_x":I
    .end local v9    # "horizontal_line_pos_y":I
    .end local v10    # "one_circle":I
    .end local v11    # "one_circle_pos_x":I
    .end local v12    # "one_circle_pos_y":I
    .end local v13    # "start_pos_y":I
    .end local v14    # "three_circle":I
    .end local v15    # "three_circle_pos_x":I
    .end local v16    # "two_circle":I
    .end local v17    # "two_circle_pos_y":I
    .end local v18    # "vertical_line_end_x":I
    .end local v19    # "vertical_line_pos_x":I
    .end local v20    # "vertical_line_pos_y":I
    :cond_2
    const/16 v13, 0x11

    .line 131
    .restart local v13    # "start_pos_y":I
    const/16 v10, 0x5f

    .line 132
    .restart local v10    # "one_circle":I
    const/16 v19, 0x43

    .line 133
    .restart local v19    # "vertical_line_pos_x":I
    const/16 v20, 0xb4

    .line 134
    .restart local v20    # "vertical_line_pos_y":I
    const/16 v11, 0x2a

    .line 135
    .restart local v11    # "one_circle_pos_x":I
    const/16 v12, 0x9c

    .line 136
    .restart local v12    # "one_circle_pos_y":I
    const/16 v16, 0xc8

    .line 137
    .restart local v16    # "two_circle":I
    const/16 v17, 0xf9

    .line 138
    .restart local v17    # "two_circle_pos_y":I
    const/16 v9, 0x112

    .line 139
    .restart local v9    # "horizontal_line_pos_y":I
    const/16 v14, 0xdc

    .line 140
    .restart local v14    # "three_circle":I
    const/16 v15, 0x87

    .line 141
    .restart local v15    # "three_circle_pos_x":I
    const/16 v7, 0x159

    .line 142
    .restart local v7    # "four_circle":I
    const/16 v8, 0xe5

    .line 143
    .restart local v8    # "four_circle_pos_x":I
    const/16 v18, 0xff

    .restart local v18    # "vertical_line_end_x":I
    goto :goto_0

    .line 149
    :cond_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/ChooseLockPatternView;->mEndx:F

    int-to-float v2, v10

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/ChooseLockPatternView;->mDensity:F

    mul-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_4

    .line 150
    move/from16 v0, v19

    int-to-float v1, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/ChooseLockPatternView;->mDensity:F

    mul-float/2addr v2, v1

    move/from16 v0, v20

    int-to-float v1, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/ChooseLockPatternView;->mDensity:F

    mul-float/2addr v3, v1

    move/from16 v0, v19

    int-to-float v1, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/ChooseLockPatternView;->mDensity:F

    mul-float/2addr v4, v1

    move/from16 v0, v20

    int-to-float v1, v0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/ChooseLockPatternView;->mDensity:F

    mul-float/2addr v1, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/ChooseLockPatternView;->mEndx:F

    add-float/2addr v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/ChooseLockPatternView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 151
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ChooseLockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    int-to-float v2, v11

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/ChooseLockPatternView;->mDensity:F

    mul-float/2addr v2, v3

    int-to-float v3, v12

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/ChooseLockPatternView;->mDensity:F

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ChooseLockPatternView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 152
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ChooseLockPatternView;->mVivoCellOne:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 153
    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/ChooseLockPatternView;->mEndx:F

    move/from16 v0, v16

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/ChooseLockPatternView;->mDensity:F

    mul-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_5

    .line 154
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ChooseLockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    int-to-float v2, v11

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/ChooseLockPatternView;->mDensity:F

    mul-float/2addr v2, v3

    int-to-float v3, v12

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/ChooseLockPatternView;->mDensity:F

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ChooseLockPatternView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 155
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ChooseLockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    int-to-float v2, v11

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/ChooseLockPatternView;->mDensity:F

    mul-float/2addr v2, v3

    move/from16 v0, v17

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/ChooseLockPatternView;->mDensity:F

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ChooseLockPatternView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 156
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ChooseLockPatternView;->mVivoCellOne:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 157
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ChooseLockPatternView;->mVivoCellTwo:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 158
    move/from16 v0, v19

    int-to-float v1, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/ChooseLockPatternView;->mDensity:F

    mul-float/2addr v2, v1

    move/from16 v0, v20

    int-to-float v1, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/ChooseLockPatternView;->mDensity:F

    mul-float/2addr v3, v1

    move/from16 v0, v19

    int-to-float v1, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/ChooseLockPatternView;->mDensity:F

    mul-float/2addr v4, v1

    int-to-float v1, v9

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/ChooseLockPatternView;->mDensity:F

    mul-float/2addr v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/ChooseLockPatternView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 159
    move/from16 v0, v19

    int-to-float v1, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/ChooseLockPatternView;->mDensity:F

    mul-float/2addr v2, v1

    int-to-float v1, v9

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/ChooseLockPatternView;->mDensity:F

    mul-float/2addr v3, v1

    move/from16 v0, v19

    int-to-float v1, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/ChooseLockPatternView;->mDensity:F

    mul-float/2addr v1, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/ChooseLockPatternView;->mEndx:F

    add-float/2addr v1, v4

    int-to-float v4, v10

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/ChooseLockPatternView;->mDensity:F

    mul-float/2addr v4, v5

    sub-float v4, v1, v4

    int-to-float v1, v9

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/ChooseLockPatternView;->mDensity:F

    mul-float/2addr v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/ChooseLockPatternView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 160
    :cond_5
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/ChooseLockPatternView;->mEndx:F

    int-to-float v2, v14

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/ChooseLockPatternView;->mDensity:F

    mul-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_6

    .line 161
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ChooseLockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    int-to-float v2, v11

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/ChooseLockPatternView;->mDensity:F

    mul-float/2addr v2, v3

    int-to-float v3, v12

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/ChooseLockPatternView;->mDensity:F

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ChooseLockPatternView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 162
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ChooseLockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    int-to-float v2, v11

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/ChooseLockPatternView;->mDensity:F

    mul-float/2addr v2, v3

    move/from16 v0, v17

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/ChooseLockPatternView;->mDensity:F

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ChooseLockPatternView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 163
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ChooseLockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    int-to-float v2, v15

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/ChooseLockPatternView;->mDensity:F

    mul-float/2addr v2, v3

    move/from16 v0, v17

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/ChooseLockPatternView;->mDensity:F

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ChooseLockPatternView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 164
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ChooseLockPatternView;->mVivoCellOne:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 165
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ChooseLockPatternView;->mVivoCellTwo:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 166
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ChooseLockPatternView;->mVivoCellThree:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 167
    move/from16 v0, v19

    int-to-float v1, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/ChooseLockPatternView;->mDensity:F

    mul-float/2addr v2, v1

    move/from16 v0, v20

    int-to-float v1, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/ChooseLockPatternView;->mDensity:F

    mul-float/2addr v3, v1

    move/from16 v0, v19

    int-to-float v1, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/ChooseLockPatternView;->mDensity:F

    mul-float/2addr v4, v1

    int-to-float v1, v9

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/ChooseLockPatternView;->mDensity:F

    mul-float/2addr v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/ChooseLockPatternView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 168
    move/from16 v0, v19

    int-to-float v1, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/ChooseLockPatternView;->mDensity:F

    mul-float/2addr v2, v1

    int-to-float v1, v9

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/ChooseLockPatternView;->mDensity:F

    mul-float/2addr v3, v1

    move/from16 v0, v19

    int-to-float v1, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/ChooseLockPatternView;->mDensity:F

    mul-float/2addr v1, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/ChooseLockPatternView;->mEndx:F

    add-float/2addr v1, v4

    int-to-float v4, v10

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/ChooseLockPatternView;->mDensity:F

    mul-float/2addr v4, v5

    sub-float v4, v1, v4

    int-to-float v1, v9

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/ChooseLockPatternView;->mDensity:F

    mul-float/2addr v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/ChooseLockPatternView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 169
    :cond_6
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/ChooseLockPatternView;->mEndx:F

    int-to-float v2, v7

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/ChooseLockPatternView;->mDensity:F

    mul-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_7

    .line 170
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ChooseLockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    int-to-float v2, v11

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/ChooseLockPatternView;->mDensity:F

    mul-float/2addr v2, v3

    int-to-float v3, v12

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/ChooseLockPatternView;->mDensity:F

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ChooseLockPatternView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 171
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ChooseLockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    int-to-float v2, v11

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/ChooseLockPatternView;->mDensity:F

    mul-float/2addr v2, v3

    move/from16 v0, v17

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/ChooseLockPatternView;->mDensity:F

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ChooseLockPatternView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 172
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ChooseLockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    int-to-float v2, v15

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/ChooseLockPatternView;->mDensity:F

    mul-float/2addr v2, v3

    move/from16 v0, v17

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/ChooseLockPatternView;->mDensity:F

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ChooseLockPatternView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 173
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ChooseLockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    int-to-float v2, v8

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/ChooseLockPatternView;->mDensity:F

    mul-float/2addr v2, v3

    move/from16 v0, v17

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/ChooseLockPatternView;->mDensity:F

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ChooseLockPatternView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 174
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ChooseLockPatternView;->mVivoCellOne:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 175
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ChooseLockPatternView;->mVivoCellTwo:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 176
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ChooseLockPatternView;->mVivoCellThree:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 177
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ChooseLockPatternView;->mVivoCellFour:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 178
    move/from16 v0, v19

    int-to-float v1, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/ChooseLockPatternView;->mDensity:F

    mul-float/2addr v2, v1

    move/from16 v0, v20

    int-to-float v1, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/ChooseLockPatternView;->mDensity:F

    mul-float/2addr v3, v1

    move/from16 v0, v19

    int-to-float v1, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/ChooseLockPatternView;->mDensity:F

    mul-float/2addr v4, v1

    int-to-float v1, v9

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/ChooseLockPatternView;->mDensity:F

    mul-float/2addr v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/ChooseLockPatternView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 179
    move/from16 v0, v19

    int-to-float v1, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/ChooseLockPatternView;->mDensity:F

    mul-float/2addr v2, v1

    int-to-float v1, v9

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/ChooseLockPatternView;->mDensity:F

    mul-float/2addr v3, v1

    move/from16 v0, v18

    int-to-float v1, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/ChooseLockPatternView;->mDensity:F

    mul-float/2addr v4, v1

    int-to-float v1, v9

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/ChooseLockPatternView;->mDensity:F

    mul-float/2addr v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/ChooseLockPatternView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 181
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ChooseLockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    int-to-float v2, v11

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/ChooseLockPatternView;->mDensity:F

    mul-float/2addr v2, v3

    int-to-float v3, v12

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/ChooseLockPatternView;->mDensity:F

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ChooseLockPatternView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 182
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ChooseLockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    int-to-float v2, v11

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/ChooseLockPatternView;->mDensity:F

    mul-float/2addr v2, v3

    move/from16 v0, v17

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/ChooseLockPatternView;->mDensity:F

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ChooseLockPatternView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 183
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ChooseLockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    int-to-float v2, v15

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/ChooseLockPatternView;->mDensity:F

    mul-float/2addr v2, v3

    move/from16 v0, v17

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/ChooseLockPatternView;->mDensity:F

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ChooseLockPatternView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 184
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/ChooseLockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    int-to-float v2, v8

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/ChooseLockPatternView;->mDensity:F

    mul-float/2addr v2, v3

    move/from16 v0, v17

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/ChooseLockPatternView;->mDensity:F

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/ChooseLockPatternView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 185
    move/from16 v0, v19

    int-to-float v1, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/ChooseLockPatternView;->mDensity:F

    mul-float/2addr v2, v1

    move/from16 v0, v20

    int-to-float v1, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/ChooseLockPatternView;->mDensity:F

    mul-float/2addr v3, v1

    move/from16 v0, v19

    int-to-float v1, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/ChooseLockPatternView;->mDensity:F

    mul-float/2addr v4, v1

    int-to-float v1, v9

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/ChooseLockPatternView;->mDensity:F

    mul-float/2addr v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/ChooseLockPatternView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 186
    move/from16 v0, v19

    int-to-float v1, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/ChooseLockPatternView;->mDensity:F

    mul-float/2addr v2, v1

    int-to-float v1, v9

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/ChooseLockPatternView;->mDensity:F

    mul-float/2addr v3, v1

    move/from16 v0, v18

    int-to-float v1, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/ChooseLockPatternView;->mDensity:F

    mul-float/2addr v4, v1

    int-to-float v1, v9

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/ChooseLockPatternView;->mDensity:F

    mul-float/2addr v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/ChooseLockPatternView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_1
.end method

.method public startAnima(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "VivoCellOne"    # Landroid/widget/ImageView;
    .param p2, "VivoCellTwo"    # Landroid/widget/ImageView;
    .param p3, "VivoCellThree"    # Landroid/widget/ImageView;
    .param p4, "VivoCellFour"    # Landroid/widget/ImageView;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/android/settings/ChooseLockPatternView;->mVivoCellOne:Landroid/widget/ImageView;

    .line 260
    iput-object p2, p0, Lcom/android/settings/ChooseLockPatternView;->mVivoCellTwo:Landroid/widget/ImageView;

    .line 261
    iput-object p3, p0, Lcom/android/settings/ChooseLockPatternView;->mVivoCellThree:Landroid/widget/ImageView;

    .line 262
    iput-object p4, p0, Lcom/android/settings/ChooseLockPatternView;->mVivoCellFour:Landroid/widget/ImageView;

    .line 263
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 264
    return-void
.end method

.method public stopAnima()V
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/settings/ChooseLockPatternView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 268
    return-void
.end method
