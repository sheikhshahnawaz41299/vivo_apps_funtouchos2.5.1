.class public Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;
.super Landroid/widget/FrameLayout;
.source "UpSlidePanelView.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "UpSlidePanelView"

.field private static mContext:Landroid/content/Context;


# instance fields
.field private mBounceAnimator:Landroid/animation/ValueAnimator;

.field private mBounceDuration:J

.field private mBounceLevel:F

.field private mCollapseAnimator:Landroid/animation/ValueAnimator;

.field private mCollapsing:Z

.field private mCurrRotation:I

.field private mDimenUtils:Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;

.field private mDrawerLength:I

.field private mExpand:Z

.field private mFlingStartPointHeight:F

.field private mPanelLength:F

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mUpSlideTransparentView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

.field private mVel:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "floor"    # Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 27
    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mExpand:Z

    .line 28
    iput v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mCurrRotation:I

    .line 34
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mBounceDuration:J

    .line 35
    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mBounceLevel:F

    .line 42
    sput-object p1, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mContext:Landroid/content/Context;

    .line 43
    sget-object v0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mDimenUtils:Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;

    .line 44
    iput-object p2, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mUpSlideTransparentView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    .line 45
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->refreshDimens()V

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    .prologue
    .line 20
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mDrawerLength:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    .prologue
    .line 20
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mFlingStartPointHeight:F

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    .prologue
    .line 20
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mCurrRotation:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    .prologue
    .line 20
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mScreenHeight:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    .prologue
    .line 20
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mScreenWidth:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;)Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mUpSlideTransparentView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;
    .param p1, "x1"    # Z

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mCollapsing:Z

    return p1
.end method

.method private bounceToEnd()V
    .locals 6

    .prologue
    .line 227
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mBounceAnimator:Landroid/animation/ValueAnimator;

    .line 228
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mBounceAnimator:Landroid/animation/ValueAnimator;

    iget-wide v4, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mBounceDuration:J

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 229
    new-instance v0, Lcom/android/systemui/vivo/common/upslide/utils/BouncelnInterpolator;

    iget v2, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mBounceLevel:F

    invoke-direct {v0, v2}, Lcom/android/systemui/vivo/common/upslide/utils/BouncelnInterpolator;-><init>(F)V

    .line 230
    .local v0, "mBouncelnInterpolator":Lcom/android/systemui/vivo/common/upslide/utils/BouncelnInterpolator;
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mBounceAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 231
    iget v2, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mFlingStartPointHeight:F

    iget v3, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mDrawerLength:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v1, v2, v3

    .line 232
    .local v1, "startPointAlpha":F
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mBounceAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView$1;-><init>(Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;Lcom/android/systemui/vivo/common/upslide/utils/BouncelnInterpolator;F)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 255
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mBounceAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView$2;-><init>(Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 263
    const-string v2, "UpSlidePanelView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bounceToEnd :Duration = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mBounceDuration:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",Level ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mBounceLevel:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mBounceAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 265
    return-void

    .line 227
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private collapse()V
    .locals 4

    .prologue
    .line 268
    const-wide/16 v0, 0x12c

    .line 269
    .local v0, "duration":J
    iget v2, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mDrawerLength:I

    if-eqz v2, :cond_0

    .line 270
    long-to-float v2, v0

    iget v3, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mFlingStartPointHeight:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mDrawerLength:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-long v0, v2

    .line 272
    :cond_0
    const-wide/16 v2, 0x32

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 273
    const-wide/16 v0, 0x32

    .line 275
    :cond_1
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mCollapseAnimator:Landroid/animation/ValueAnimator;

    .line 276
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mCollapseAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 277
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mCollapseAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 278
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mCollapseAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView$3;-><init>(Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 297
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mCollapseAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView$4;

    invoke-direct {v3, p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView$4;-><init>(Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 307
    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mCollapseAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 308
    return-void

    .line 275
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private refreshDimens()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mDimenUtils:Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;

    if-nez v0, :cond_0

    .line 55
    const-string v0, "UpSlidePanelView"

    const-string v1, "refreshDimens error! mDimenUtils is null!"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :goto_0
    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mDimenUtils:Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getScreenWidth()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mScreenWidth:I

    .line 59
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mDimenUtils:Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getScreenHeight()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mScreenHeight:I

    .line 60
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mDimenUtils:Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getDrawerLength()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mDrawerLength:I

    goto :goto_0
.end method

.method private refreshDrawerLength()V
    .locals 1

    .prologue
    .line 64
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/LockTaskUtils;->isInLockTaskMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mDimenUtils:Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getNavigationBarLength()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mDrawerLength:I

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mDimenUtils:Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/utils/DimenUtils;->getDrawerLength()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mDrawerLength:I

    goto :goto_0
.end method


# virtual methods
.method public cancelAnim()V
    .locals 2

    .prologue
    .line 153
    const-string v0, "UpSlidePanelView"

    const-string v1, "Cancel Animator!"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mCollapseAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mCollapseAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mCollapseAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mBounceAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mBounceAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mBounceAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 160
    :cond_1
    return-void
.end method

.method public cancelExpandAnim()V
    .locals 2

    .prologue
    .line 163
    const-string v0, "UpSlidePanelView"

    const-string v1, "Cancel Expand Animator!"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mBounceAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mBounceAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mBounceAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 167
    :cond_0
    return-void
.end method

.method public getPanelLength()I
    .locals 2

    .prologue
    .line 117
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mPanelLength:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 118
    const/4 v0, 0x0

    .line 120
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mPanelLength:F

    float-to-int v0, v0

    goto :goto_0
.end method

.method public isAnimationRunning()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 124
    const/4 v0, 0x0

    .line 125
    .local v0, "isRunning":Z
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mCollapseAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_1

    .line 126
    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mCollapseAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_0
    move v0, v2

    .line 128
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mBounceAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_3

    .line 129
    if-nez v0, :cond_2

    iget-object v3, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mBounceAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_2
    move v0, v2

    .line 131
    :cond_3
    :goto_1
    return v0

    :cond_4
    move v0, v1

    .line 126
    goto :goto_0

    :cond_5
    move v0, v1

    .line 129
    goto :goto_1
.end method

.method public isCollapseAnimatorRunning()Z
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mCollapseAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mCollapseAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    .line 138
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCollapsing()Z
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mCollapsing:Z

    return v0
.end method

.method public isExpandAnimatorRunning()Z
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mBounceAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mBounceAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    .line 145
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 74
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-static {}, Lcom/android/systemui/vivo/common/utils/LockTaskUtils;->isInLockTaskMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 75
    const-string v1, "UpSlidePanelView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skip multiple finger touch event, pointer count is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onRotationChanged(I)V
    .locals 0
    .param p1, "newRotation"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mCurrRotation:I

    .line 50
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->refreshDimens()V

    .line 51
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mUpSlideTransparentView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mUpSlideTransparentView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->getViewState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 86
    const-string v0, "UpSlidePanelView"

    const-string v1, "Skip touch event when Panelview is expanded"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const/4 v0, 0x1

    .line 89
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setTranslationX(F)V
    .locals 3
    .param p1, "translationX"    # F

    .prologue
    const/4 v2, 0x1

    .line 95
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 96
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mCurrRotation:I

    if-ne v0, v2, :cond_2

    .line 97
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mScreenWidth:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mPanelLength:F

    .line 101
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mUpSlideTransparentView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mUpSlideTransparentView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->onPanelViewMoving(Z)V

    .line 103
    :cond_1
    return-void

    .line 98
    :cond_2
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mCurrRotation:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 99
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mScreenWidth:I

    int-to-float v0, v0

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mPanelLength:F

    goto :goto_0
.end method

.method public setTranslationY(F)V
    .locals 2
    .param p1, "translationY"    # F

    .prologue
    .line 108
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 109
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mCurrRotation:I

    if-nez v0, :cond_0

    .line 110
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mScreenHeight:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mPanelLength:F

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mUpSlideTransparentView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mUpSlideTransparentView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->onPanelViewMoving(Z)V

    .line 114
    :cond_1
    return-void
.end method

.method public startCollapsePanelAnim()V
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mDrawerLength:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mFlingStartPointHeight:F

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mCollapsing:Z

    .line 181
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->collapse()V

    .line 182
    return-void
.end method

.method public startExpandPanelAnim()V
    .locals 2

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->refreshDrawerLength()V

    .line 171
    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mBounceLevel:F

    .line 172
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mBounceDuration:J

    .line 173
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mFlingStartPointHeight:F

    .line 174
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mCollapsing:Z

    .line 175
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->bounceToEnd()V

    .line 176
    return-void
.end method

.method public startPanelAnim(F)V
    .locals 8
    .param p1, "vel"    # F

    .prologue
    const-wide/16 v6, 0x12c

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 185
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->isAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->refreshDrawerLength()V

    .line 189
    cmpl-float v0, p1, v4

    if-eqz v0, :cond_2

    .line 190
    iput p1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mVel:F

    .line 192
    :cond_2
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mVel:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_6

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mCollapsing:Z

    .line 193
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mCurrRotation:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    .line 194
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mVel:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_7

    :goto_2
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mCollapsing:Z

    .line 196
    :cond_3
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mPanelLength:F

    iput v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mFlingStartPointHeight:F

    .line 197
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mFlingStartPointHeight:F

    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mDrawerLength:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_8

    const-wide/16 v0, 0x1f4

    :goto_3
    iput-wide v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mBounceDuration:J

    .line 198
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mDrawerLength:I

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mFlingStartPointHeight:F

    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mDrawerLength:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    .line 199
    iget-wide v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mBounceDuration:J

    long-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mDrawerLength:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mFlingStartPointHeight:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mDrawerLength:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mBounceDuration:J

    .line 201
    :cond_4
    iget-wide v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mBounceDuration:J

    cmp-long v0, v0, v6

    if-gez v0, :cond_5

    .line 202
    iput-wide v6, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mBounceDuration:J

    .line 204
    :cond_5
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mFlingStartPointHeight:F

    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mDrawerLength:I

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_9

    const v0, 0x3e99999a    # 0.3f

    :goto_4
    iput v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mBounceLevel:F

    .line 205
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mPanelLength:F

    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mDrawerLength:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_c

    .line 206
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mCollapsing:Z

    if-eqz v0, :cond_a

    .line 207
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->collapse()V

    goto :goto_0

    :cond_6
    move v0, v2

    .line 192
    goto :goto_1

    :cond_7
    move v1, v2

    .line 194
    goto :goto_2

    .line 197
    :cond_8
    const-wide/16 v0, 0x2bc

    goto :goto_3

    .line 204
    :cond_9
    const v0, 0x3f4ccccd    # 0.8f

    goto :goto_4

    .line 209
    :cond_a
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/LockTaskUtils;->isInLockTaskMode()Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mFlingStartPointHeight:F

    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mDrawerLength:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_b

    .line 210
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mUpSlideTransparentView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mUpSlideTransparentView:Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlideTransparentView;->onExpandFinished()V

    goto/16 :goto_0

    .line 214
    :cond_b
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->bounceToEnd()V

    goto/16 :goto_0

    .line 218
    :cond_c
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->mVel:F

    const/high16 v1, 0x40a00000    # 5.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_d

    .line 219
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->collapse()V

    goto/16 :goto_0

    .line 221
    :cond_d
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/ui/UpSlidePanelView;->bounceToEnd()V

    goto/16 :goto_0
.end method
