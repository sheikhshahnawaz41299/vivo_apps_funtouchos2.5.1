.class public Lcom/android/systemui/vivo/common/ui/DragAnimationView;
.super Landroid/widget/ImageView;
.source "DragAnimationView.java"


# static fields
.field public static final ARROW_BLACK_STYLE:I

.field public static final ARROW_WHITE_STYLE:I

.field public static final MSG_KEEP_LINE:I = 0x2

.field public static final MSG_TO_ARROW:I = 0x0

.field public static final MSG_TO_LINE:I = 0x1

.field public static final NOT_TIP_ARROW:I = -0x1

.field public static final STATE_ARROW:I = 0x1

.field public static final STATE_LINE:I = 0x0

.field public static final TAG:Ljava/lang/String; = "DragAnimationView"


# instance fields
.field mAnim:Landroid/animation/ValueAnimator;

.field private mAnimProgress:F

.field private mArrowBitmap:Landroid/graphics/Bitmap;

.field private mArrowCanvas:Landroid/graphics/Canvas;

.field private mArrowCanvasHeight:I

.field private mArrowCanvasWidth:I

.field private mColor:I

.field private mContext:Landroid/content/Context;

.field private mDrawHander:Landroid/os/Handler;

.field private mDuration:J

.field private mHalfArrowLength:I

.field private mIsTipArrowState:Z

.field private mLastAnimProgress:F

.field private mLastRotation:I

.field private mLastViewState:I

.field private mMaxOffset:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mRotation:I

.field private mStrokeWidth:I

.field private mVertexA:[I

.field private mVertexB:[I

.field private mVertexC:[I

.field private mViewMinHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "#66000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->ARROW_BLACK_STYLE:I

    .line 36
    const-string v0, "#80ffffff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->ARROW_WHITE_STYLE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/vivo/common/ui/DragAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/vivo/common/ui/DragAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    iput v2, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mLastViewState:I

    .line 32
    iput v2, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mRotation:I

    .line 33
    iget v0, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mRotation:I

    iput v0, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mLastRotation:I

    .line 37
    sget v0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->ARROW_WHITE_STYLE:I

    iput v0, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mColor:I

    .line 46
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mDuration:J

    .line 47
    iput v4, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mAnimProgress:F

    .line 48
    iput v4, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mLastAnimProgress:F

    .line 49
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mIsTipArrowState:Z

    .line 52
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mVertexA:[I

    .line 53
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mVertexB:[I

    .line 54
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mVertexC:[I

    .line 298
    new-instance v0, Lcom/android/systemui/vivo/common/ui/DragAnimationView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/ui/DragAnimationView$2;-><init>(Lcom/android/systemui/vivo/common/ui/DragAnimationView;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mDrawHander:Landroid/os/Handler;

    .line 63
    iput-object p1, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mContext:Landroid/content/Context;

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0133

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mStrokeWidth:I

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0134

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mMaxOffset:I

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0135

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mHalfArrowLength:I

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0136

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mViewMinHeight:I

    .line 70
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mPaint:Landroid/graphics/Paint;

    .line 71
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 73
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 74
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mStrokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 75
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mPath:Landroid/graphics/Path;

    .line 76
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mArrowCanvas:Landroid/graphics/Canvas;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/vivo/common/ui/DragAnimationView;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/ui/DragAnimationView;

    .prologue
    .line 24
    iget v0, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mLastAnimProgress:F

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/vivo/common/ui/DragAnimationView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/ui/DragAnimationView;
    .param p1, "x1"    # F

    .prologue
    .line 24
    iput p1, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mLastAnimProgress:F

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/vivo/common/ui/DragAnimationView;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/ui/DragAnimationView;

    .prologue
    .line 24
    iget v0, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mAnimProgress:F

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/vivo/common/ui/DragAnimationView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/ui/DragAnimationView;
    .param p1, "x1"    # F

    .prologue
    .line 24
    iput p1, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mAnimProgress:F

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/vivo/common/ui/DragAnimationView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/ui/DragAnimationView;
    .param p1, "x1"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->startAnim(I)V

    return-void
.end method

.method private needRefesh()Z
    .locals 6

    .prologue
    .line 162
    const/4 v0, 0x0

    .line 163
    .local v0, "refesh":Z
    iget v1, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mAnimProgress:F

    float-to-double v2, v1

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v1, v2, v4

    if-gez v1, :cond_1

    .line 164
    const/4 v0, 0x1

    .line 172
    :cond_0
    :goto_0
    return v0

    .line 165
    :cond_1
    iget v1, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mAnimProgress:F

    float-to-double v2, v1

    const-wide v4, 0x3fc3333333333333L    # 0.15

    cmpl-double v1, v2, v4

    if-lez v1, :cond_2

    iget v1, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mAnimProgress:F

    float-to-double v2, v1

    const-wide v4, 0x3fd6666666666666L    # 0.35

    cmpg-double v1, v2, v4

    if-gez v1, :cond_2

    .line 166
    const/4 v0, 0x1

    goto :goto_0

    .line 167
    :cond_2
    iget v1, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mAnimProgress:F

    float-to-double v2, v1

    const-wide v4, 0x3fe199999999999aL    # 0.55

    cmpl-double v1, v2, v4

    if-lez v1, :cond_3

    iget v1, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mAnimProgress:F

    float-to-double v2, v1

    const-wide v4, 0x3fe6666666666666L    # 0.7

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_3

    .line 168
    const/4 v0, 0x1

    goto :goto_0

    .line 169
    :cond_3
    iget v1, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mAnimProgress:F

    float-to-double v2, v1

    const-wide v4, 0x3fee666666666666L    # 0.95

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_0

    .line 170
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private removeAllMessages()V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mDrawHander:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 319
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mDrawHander:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 320
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mDrawHander:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 321
    return-void
.end method

.method private startAnim(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    const/4 v1, 0x2

    .line 138
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 141
    :cond_0
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    .line 142
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mAnim:Landroid/animation/ValueAnimator;

    .line 143
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mAnimProgress:F

    .line 148
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mAnim:Landroid/animation/ValueAnimator;

    iget-wide v2, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mDuration:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 149
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/vivo/common/ui/DragAnimationView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/ui/DragAnimationView$1;-><init>(Lcom/android/systemui/vivo/common/ui/DragAnimationView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 158
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 159
    return-void

    .line 145
    :cond_1
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mAnim:Landroid/animation/ValueAnimator;

    .line 146
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mAnimProgress:F

    goto :goto_0

    .line 142
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 145
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private updateVertexCoordinate()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 176
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    .line 177
    .local v1, "halfViewWidth":I
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 178
    .local v0, "halfViewHeight":I
    iget v2, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mRotation:I

    packed-switch v2, :pswitch_data_0

    .line 224
    :goto_0
    return-void

    .line 180
    :pswitch_0
    iget-object v2, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mVertexA:[I

    iget v3, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mStrokeWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x0

    aput v3, v2, v6

    .line 181
    iget-object v2, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mVertexB:[I

    iget v3, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mHalfArrowLength:I

    iget v4, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mStrokeWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    aput v3, v2, v6

    .line 182
    iget-object v2, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mVertexC:[I

    iget v3, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mHalfArrowLength:I

    iget v4, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mHalfArrowLength:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mStrokeWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    aput v3, v2, v6

    .line 183
    iget-object v2, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mVertexA:[I

    iget-object v3, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mVertexB:[I

    iget-object v4, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mVertexC:[I

    aput v0, v4, v7

    aput v0, v3, v7

    aput v0, v2, v7

    .line 184
    iget-object v2, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mVertexA:[I

    aget v3, v2, v7

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mAnimProgress:F

    iget v5, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mMaxOffset:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v3, v3

    aput v3, v2, v7

    .line 185
    iget-object v2, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mVertexB:[I

    aget v3, v2, v7

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mAnimProgress:F

    iget v5, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mMaxOffset:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    aput v3, v2, v7

    .line 186
    iget-object v2, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mVertexC:[I

    aget v3, v2, v7

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mAnimProgress:F

    iget v5, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mMaxOffset:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v3, v3

    aput v3, v2, v7

    .line 187
    iget v2, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mHalfArrowLength:I

    iget v3, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mHalfArrowLength:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mStrokeWidth:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mArrowCanvasWidth:I

    .line 188
    add-int v2, v0, v0

    iput v2, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mArrowCanvasHeight:I

    goto :goto_0

    .line 191
    :pswitch_1
    iget-object v2, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mVertexA:[I

    iget v3, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mStrokeWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x0

    aput v3, v2, v6

    .line 192
    iget-object v2, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mVertexB:[I

    iget v3, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mHalfArrowLength:I

    iget v4, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mStrokeWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    aput v3, v2, v6

    .line 193
    iget-object v2, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mVertexC:[I

    iget v3, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mHalfArrowLength:I

    iget v4, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mHalfArrowLength:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mStrokeWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    aput v3, v2, v6

    .line 194
    iget-object v2, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mVertexA:[I

    iget-object v3, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mVertexB:[I

    iget-object v4, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mVertexC:[I

    aput v0, v4, v7

    aput v0, v3, v7

    aput v0, v2, v7

    .line 195
    iget-object v2, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mVertexA:[I

    aget v3, v2, v7

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mAnimProgress:F

    iget v5, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mMaxOffset:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    aput v3, v2, v7

    .line 196
    iget-object v2, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mVertexB:[I

    aget v3, v2, v7

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mAnimProgress:F

    iget v5, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mMaxOffset:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v3, v3

    aput v3, v2, v7

    .line 197
    iget-object v2, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mVertexC:[I

    aget v3, v2, v7

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mAnimProgress:F

    iget v5, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mMaxOffset:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    aput v3, v2, v7

    .line 198
    iget v2, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mHalfArrowLength:I

    iget v3, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mHalfArrowLength:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mStrokeWidth:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mArrowCanvasWidth:I

    .line 199
    add-int v2, v0, v0

    iput v2, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mArrowCanvasHeight:I

    goto/16 :goto_0

    .line 202
    :pswitch_2
    iget-object v2, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mVertexA:[I

    iget v3, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mStrokeWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x0

    aput v3, v2, v7

    .line 203
    iget-object v2, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mVertexB:[I

    iget v3, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mHalfArrowLength:I

    iget v4, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mStrokeWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    aput v3, v2, v7

    .line 204
    iget-object v2, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mVertexC:[I

    iget v3, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mHalfArrowLength:I

    iget v4, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mHalfArrowLength:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mStrokeWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    aput v3, v2, v7

    .line 205
    iget-object v2, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mVertexA:[I

    iget-object v3, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mVertexB:[I

    iget-object v4, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mVertexC:[I

    aput v1, v4, v6

    aput v1, v3, v6

    aput v1, v2, v6

    .line 206
    iget-object v2, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mVertexA:[I

    aget v3, v2, v6

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mAnimProgress:F

    iget v5, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mMaxOffset:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v3, v3

    aput v3, v2, v6

    .line 207
    iget-object v2, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mVertexB:[I

    aget v3, v2, v6

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mAnimProgress:F

    iget v5, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mMaxOffset:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    aput v3, v2, v6

    .line 208
    iget-object v2, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mVertexC:[I

    aget v3, v2, v6

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mAnimProgress:F

    iget v5, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mMaxOffset:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v3, v3

    aput v3, v2, v6

    .line 209
    add-int v2, v1, v1

    iput v2, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mArrowCanvasWidth:I

    .line 210
    iget v2, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mHalfArrowLength:I

    iget v3, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mHalfArrowLength:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mStrokeWidth:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mArrowCanvasHeight:I

    goto/16 :goto_0

    .line 213
    :pswitch_3
    iget-object v2, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mVertexA:[I

    iget v3, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mStrokeWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x0

    aput v3, v2, v7

    .line 214
    iget-object v2, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mVertexB:[I

    iget v3, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mHalfArrowLength:I

    iget v4, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mStrokeWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    aput v3, v2, v7

    .line 215
    iget-object v2, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mVertexC:[I

    iget v3, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mHalfArrowLength:I

    iget v4, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mHalfArrowLength:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mStrokeWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    aput v3, v2, v7

    .line 216
    iget-object v2, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mVertexA:[I

    iget-object v3, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mVertexB:[I

    iget-object v4, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mVertexC:[I

    aput v1, v4, v6

    aput v1, v3, v6

    aput v1, v2, v6

    .line 217
    iget-object v2, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mVertexA:[I

    aget v3, v2, v6

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mAnimProgress:F

    iget v5, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mMaxOffset:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    aput v3, v2, v6

    .line 218
    iget-object v2, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mVertexB:[I

    aget v3, v2, v6

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mAnimProgress:F

    iget v5, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mMaxOffset:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v3, v3

    aput v3, v2, v6

    .line 219
    iget-object v2, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mVertexC:[I

    aget v3, v2, v6

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mAnimProgress:F

    iget v5, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mMaxOffset:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    aput v3, v2, v6

    .line 220
    add-int v2, v1, v1

    iput v2, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mArrowCanvasWidth:I

    .line 221
    iget v2, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mHalfArrowLength:I

    iget v3, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mHalfArrowLength:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mStrokeWidth:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mArrowCanvasHeight:I

    goto/16 :goto_0

    .line 178
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public changeToArrow(I)V
    .locals 2
    .param p1, "rotation"    # I

    .prologue
    .line 91
    iget v0, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mLastViewState:I

    if-eqz v0, :cond_0

    .line 92
    const-string v0, "DragAnimationView"

    const-string v1, "has been Arrow state, return"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :goto_0
    return-void

    .line 95
    :cond_0
    const-string v0, "DragAnimationView"

    const-string v1, "changing to Arrow state"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mLastViewState:I

    .line 97
    iget v0, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mRotation:I

    iput v0, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mLastRotation:I

    .line 98
    iput p1, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mRotation:I

    .line 99
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->removeAllMessages()V

    .line 100
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mDrawHander:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public changeToLine(I)V
    .locals 2
    .param p1, "rotation"    # I

    .prologue
    .line 104
    iget v0, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mLastViewState:I

    if-nez v0, :cond_0

    .line 105
    const-string v0, "DragAnimationView"

    const-string v1, "has been Line state,, return"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :goto_0
    return-void

    .line 108
    :cond_0
    const-string v0, "DragAnimationView"

    const-string v1, "changing Line state"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mLastViewState:I

    .line 110
    iget v0, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mRotation:I

    iput v0, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mLastRotation:I

    .line 111
    iput p1, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mRotation:I

    .line 112
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->removeAllMessages()V

    .line 113
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mDrawHander:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public keepingLineState(I)V
    .locals 3
    .param p1, "rotation"    # I

    .prologue
    .line 117
    const-string v0, "DragAnimationView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keep in the line state, rotation ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mLastViewState:I

    .line 119
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mAnimProgress:F

    .line 120
    iget v0, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mRotation:I

    iput v0, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mLastRotation:I

    .line 121
    iput p1, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mRotation:I

    .line 122
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->removeAllMessages()V

    .line 123
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mDrawHander:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 124
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 275
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mIsTipArrowState:Z

    if-eqz v0, :cond_0

    .line 276
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 292
    :goto_0
    return-void

    .line 279
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->updateVertexCoordinate()V

    .line 280
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->updateArrowBitmap()V

    .line 281
    iget v0, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mRotation:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 284
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mArrowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mHalfArrowLength:I

    iget v3, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mStrokeWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 288
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mArrowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mHalfArrowLength:I

    iget v3, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mStrokeWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v4, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 281
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 251
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v7, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mIsTipArrowState:Z

    if-nez v7, :cond_2

    iget v7, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v8, -0x2

    if-ne v7, v8, :cond_2

    .line 252
    const-string v7, "DragAnimationView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "normal state: mRotation = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mRotation:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 255
    .local v6, "specModeWidth":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 257
    .local v5, "specModeHeight":I
    iget v7, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mRotation:I

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mRotation:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 258
    :cond_0
    iget-object v7, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v1, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 259
    .local v1, "dragViewWidth":I
    iget v0, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mViewMinHeight:I

    .line 264
    .local v0, "dragViewHeight":I
    :goto_0
    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 265
    .local v4, "newWidthMeasureSpec":I
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 266
    .local v3, "newHeightMeasureSpec":I
    invoke-virtual {p0, v4, v3}, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->setMeasuredDimension(II)V

    .line 270
    .end local v0    # "dragViewHeight":I
    .end local v1    # "dragViewWidth":I
    .end local v3    # "newHeightMeasureSpec":I
    .end local v4    # "newWidthMeasureSpec":I
    .end local v5    # "specModeHeight":I
    .end local v6    # "specModeWidth":I
    :goto_1
    return-void

    .line 261
    .restart local v5    # "specModeHeight":I
    .restart local v6    # "specModeWidth":I
    :cond_1
    iget v1, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mViewMinHeight:I

    .line 262
    .restart local v1    # "dragViewWidth":I
    iget-object v7, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v0, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    .restart local v0    # "dragViewHeight":I
    goto :goto_0

    .line 268
    .end local v0    # "dragViewHeight":I
    .end local v1    # "dragViewWidth":I
    .end local v5    # "specModeHeight":I
    .end local v6    # "specModeWidth":I
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    goto :goto_1
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    return-void
.end method

.method public setTipArrowState(ZII)V
    .locals 3
    .param p1, "state"    # Z
    .param p2, "arrowResId"    # I
    .param p3, "rotation"    # I

    .prologue
    .line 127
    const-string v0, "DragAnimationView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTipArrowState state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rotation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mIsTipArrowState:Z

    .line 129
    if-eqz p1, :cond_0

    .line 130
    invoke-virtual {p0, p2}, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->setBackgroundResource(I)V

    .line 135
    :goto_0
    return-void

    .line 132
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 133
    invoke-virtual {p0, p3}, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->keepingLineState(I)V

    goto :goto_0
.end method

.method public updateArrowBitmap()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 227
    iget-object v1, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mArrowBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mLastRotation:I

    iget v2, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mRotation:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mArrowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mArrowCanvasHeight:I

    if-eq v1, v2, :cond_2

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mArrowBitmap:Landroid/graphics/Bitmap;

    .line 229
    .local v0, "recyBitamp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 230
    iget-object v1, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager;->getsInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager;->releaseBitmap(Landroid/graphics/Bitmap;)V

    .line 232
    :cond_1
    const-string v1, "DragAnimationView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new arrow bitmap height ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mArrowCanvasHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mRotation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mRotation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget v1, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mArrowCanvasWidth:I

    iget v2, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mArrowCanvasHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mArrowBitmap:Landroid/graphics/Bitmap;

    .line 235
    .end local v0    # "recyBitamp":Landroid/graphics/Bitmap;
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mArrowBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 236
    iget-object v1, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mArrowBitmap:Landroid/graphics/Bitmap;

    const-string v2, "#00000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 238
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mArrowCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mArrowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 239
    iget-object v1, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mVertexA:[I

    aget v2, v2, v4

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mVertexA:[I

    aget v3, v3, v5

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 240
    iget-object v1, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mVertexB:[I

    aget v2, v2, v4

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mVertexB:[I

    aget v3, v3, v5

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 241
    iget-object v1, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mVertexC:[I

    aget v2, v2, v4

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mVertexC:[I

    aget v3, v3, v5

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 242
    iget-object v1, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mArrowCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 243
    iget-object v1, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 244
    iget-object v1, p0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->mArrowCanvas:Landroid/graphics/Canvas;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 245
    return-void
.end method
