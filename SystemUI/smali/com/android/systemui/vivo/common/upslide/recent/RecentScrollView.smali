.class public Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "RecentScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$TranslationTask;
    }
.end annotation


# static fields
.field private static final DIRECTION_HORIZONTAL:I = 0x1

.field private static final DIRECTION_NONE:I = 0x0

.field private static final DIRECTION_VERTICAL:I = 0x2

.field private static final DURATION_ANIM_DOWN:I = 0xc8

.field private static final DURATION_LAYOUT_TRANS:I = 0xc8

.field private static final DURATION_TEXT_FADE:I = 0x32

.field private static final INVALID_POINTER:I = -0x1

.field private static final MSG_END_ANIM:I = 0x3e9

.field private static final SLOPE_BORDER:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "RecentScrollView"


# instance fields
.field private mActivePointerId:I

.field private mAdjust:Lcom/android/systemui/vivo/common/upslide/utils/ScrollViewAdjust;

.field private mDistanceSlop:I

.field private mDummyView:Landroid/widget/ImageView;

.field private mDummyViewBitmap:Landroid/graphics/Bitmap;

.field private mHandler:Landroid/os/Handler;

.field private mIsAnimating:Z

.field private mMaxFlingVelocity:I

.field private mMaxTranslation:F

.field private mMaximumVelocity:I

.field private mMinFlingVelocity:I

.field private mMinTranslation:F

.field private mMovedChild:Landroid/view/View;

.field private mRecentHelper:Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

.field private mRecentItemsContainer:Landroid/widget/LinearLayout;

.field private mScrollDirection:I

.field private mSelectedUnitWidth:I

.field private mSimpleAnimStyle:Z

.field private mStartRawX:F

.field private mStartRawY:F

.field private mStartTransX:F

.field private mStartTransY:F

.field private mUnitCountLimit:I

.field private mUnitLength:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 92
    invoke-direct {p0, p1, p2, v2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    iput v2, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mScrollDirection:I

    .line 57
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mSimpleAnimStyle:Z

    .line 59
    iput-object v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mDummyViewBitmap:Landroid/graphics/Bitmap;

    .line 61
    iput-object v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 65
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mActivePointerId:I

    .line 67
    iput v2, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mSelectedUnitWidth:I

    .line 76
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mIsAnimating:Z

    .line 80
    new-instance v1, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$1;-><init>(Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;)V

    iput-object v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mHandler:Landroid/os/Handler;

    .line 93
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 94
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mDistanceSlop:I

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mWidth:I

    .line 97
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mMaximumVelocity:I

    .line 99
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0155

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mMaxTranslation:F

    .line 100
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    mul-int/lit8 v1, v1, 0xa

    iput v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mMinFlingVelocity:I

    .line 101
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mMaxFlingVelocity:I

    .line 103
    new-instance v1, Lcom/android/systemui/vivo/common/upslide/utils/ScrollViewAdjust;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/upslide/utils/ScrollViewAdjust;-><init>(Landroid/widget/HorizontalScrollView;)V

    iput-object v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mAdjust:Lcom/android/systemui/vivo/common/upslide/utils/ScrollViewAdjust;

    .line 104
    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mIsAnimating:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mMovedChild:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000()I
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->getRandomAngle()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;

    .prologue
    .line 27
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mSelectedUnitWidth:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->resetDummyView()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mSimpleAnimStyle:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->removeItemFromRoot(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;)Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mRecentHelper:Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->bringRecentDummyViewToFront(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;

    .prologue
    .line 27
    iget v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mMaxTranslation:F

    return v0
.end method

.method private bringRecentDummyViewToFront(Z)V
    .locals 1
    .param p1, "bringToFront"    # Z

    .prologue
    .line 550
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mRecentHelper:Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

    if-eqz v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mRecentHelper:Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->bringRecentDummyViewToFront(Z)V

    .line 553
    :cond_0
    return-void
.end method

.method private static getRandomAngle()I
    .locals 3

    .prologue
    .line 540
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 541
    .local v0, "random":Ljava/util/Random;
    const/16 v2, 0x28

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v1, v2, 0x3c

    .line 542
    .local v1, "tmp":I
    invoke-virtual {v0}, Ljava/util/Random;->nextBoolean()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 545
    .end local v1    # "tmp":I
    :goto_0
    return v1

    .restart local v1    # "tmp":I
    :cond_0
    neg-int v1, v1

    goto :goto_0
.end method

.method private removeItemFromRoot(Landroid/view/View;)V
    .locals 8
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 343
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    .line 344
    .local v2, "start":J
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;

    .line 345
    .local v0, "item":Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mRecentHelper:Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

    invoke-virtual {v1, v0}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->removeRecentItem(Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;)V

    .line 346
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mRecentHelper:Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

    invoke-virtual {v1, v0}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->handleRemoveLoadedRecent(Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;)V

    .line 347
    const-string v1, "RecentScrollView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeItemFromRoot use time : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    return-void
.end method

.method private resetDummyView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 523
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mDummyView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 524
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mDummyView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 525
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mDummyView:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 527
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mDummyViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 528
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager;->getsInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mDummyViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/android/systemui/vivo/common/utils/ResourceSettingsManager;->releaseBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 534
    :cond_0
    :goto_0
    invoke-direct {p0, v4}, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->showLockView(Z)V

    .line 535
    invoke-direct {p0, v4}, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->showTaskLockView(Z)V

    .line 536
    iput-object v5, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mMovedChild:Landroid/view/View;

    .line 537
    return-void

    .line 530
    :catch_0
    move-exception v0

    .line 531
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "RecentScrollView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recycle DummyViewBitmap error! e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showLockView(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    .line 396
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mMovedChild:Landroid/view/View;

    if-nez v1, :cond_1

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 399
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mMovedChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;

    iget-boolean v1, v1, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->isProtected:Z

    if-eqz v1, :cond_0

    .line 402
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mMovedChild:Landroid/view/View;

    const v2, 0x7f11027c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 403
    .local v0, "lock":Landroid/widget/ImageView;
    if-eqz p1, :cond_2

    .line 404
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 406
    :cond_2
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private showTaskLockView(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    .line 411
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mMovedChild:Landroid/view/View;

    if-nez v1, :cond_1

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 414
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mMovedChild:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;

    iget-boolean v1, v1, Lcom/android/systemui/vivo/common/upslide/model/VivoRecentItem;->showingPin:Z

    if-eqz v1, :cond_0

    .line 417
    iget-object v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mMovedChild:Landroid/view/View;

    const v2, 0x7f11027d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 418
    .local v0, "lock":Landroid/widget/ImageView;
    if-eqz p1, :cond_2

    .line 419
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 421
    :cond_2
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private startBackoffAnimation(Landroid/view/View;Landroid/view/View;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "moveView"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 430
    const-string v3, "translationY"

    new-array v4, v8, [F

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v5

    aput v5, v4, v6

    aput v9, v4, v7

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 431
    .local v2, "translatonY":Landroid/animation/PropertyValuesHolder;
    const-string v3, "rotation"

    new-array v4, v8, [F

    invoke-virtual {p1}, Landroid/view/View;->getRotation()F

    move-result v5

    aput v5, v4, v6

    aput v9, v4, v7

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 432
    .local v1, "rotation":Landroid/animation/PropertyValuesHolder;
    new-array v3, v8, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v3, v6

    aput-object v1, v3, v7

    invoke-static {p1, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 433
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    const-wide/16 v4, 0x96

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 434
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 435
    new-instance v3, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$2;-><init>(Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;)V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 454
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 455
    return-void
.end method

.method private startThrowAnimation(Landroid/view/View;Landroid/view/View;IF)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "removeView"    # Landroid/view/View;
    .param p3, "upDuraton"    # I
    .param p4, "maxTranslation"    # F

    .prologue
    .line 458
    const-string v1, "translationY"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x1

    aput p4, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 460
    .local v0, "tYUp":Landroid/animation/ObjectAnimator;
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 461
    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 462
    new-instance v1, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView$3;-><init>(Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 519
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 520
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 2

    .prologue
    .line 171
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->computeScroll()V

    .line 172
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mScrollDirection:I

    if-eq v0, v1, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mAdjust:Lcom/android/systemui/vivo/common/upslide/utils/ScrollViewAdjust;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/upslide/utils/ScrollViewAdjust;->computeScroll()V

    .line 175
    :cond_0
    return-void
.end method

.method public init(Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;)V
    .locals 0
    .param p1, "helper"    # Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mRecentHelper:Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

    .line 108
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x2

    const/high16 v12, -0x40800000    # -1.0f

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 121
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 122
    .local v0, "action":I
    const-string v6, "RecentScrollView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onInterceptTouchEvent: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    if-lt v8, v6, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_2

    :cond_0
    move v8, v9

    .line 166
    :cond_1
    :goto_0
    return v8

    .line 128
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mRecentHelper:Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

    invoke-virtual {v6}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->isPopupToolbarShowing()Z

    move-result v6

    if-nez v6, :cond_1

    .line 132
    packed-switch v0, :pswitch_data_0

    :cond_3
    :pswitch_0
    move v8, v9

    .line 166
    goto :goto_0

    .line 134
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    iput v6, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mStartRawX:F

    .line 135
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    iput v6, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mStartRawY:F

    .line 136
    iput v12, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mStartTransX:F

    .line 137
    iput v12, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mStartTransY:F

    .line 138
    iput v9, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mScrollDirection:I

    .line 139
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    goto :goto_0

    .line 142
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    .line 143
    .local v1, "currRawX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    .line 144
    .local v2, "currRawY":F
    iget v6, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mStartRawX:F

    sub-float v3, v1, v6

    .line 145
    .local v3, "deltaRawX":F
    iget v6, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mStartRawY:F

    sub-float v4, v2, v6

    .line 148
    .local v4, "deltaRawY":F
    const-string v6, "RecentScrollView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mDistanceSlop = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mDistanceSlop:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", deltaRawX ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", deltaRawY="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",direction = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mScrollDirection:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget v6, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mScrollDirection:I

    if-nez v6, :cond_5

    .line 150
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v10, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mDistanceSlop:I

    int-to-float v10, v10

    cmpl-float v6, v6, v10

    if-gtz v6, :cond_4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v10, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mDistanceSlop:I

    int-to-float v10, v10

    cmpl-float v6, v6, v10

    if-lez v6, :cond_5

    .line 151
    :cond_4
    div-float v6, v4, v3

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 152
    .local v5, "slope":F
    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v5, v6

    if-lez v6, :cond_6

    move v6, v7

    :goto_1
    iput v6, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mScrollDirection:I

    .line 153
    iget v6, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mScrollDirection:I

    if-eq v7, v6, :cond_1

    .line 158
    .end local v5    # "slope":F
    :cond_5
    iget v6, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mScrollDirection:I

    if-ne v8, v6, :cond_3

    .line 159
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    goto/16 :goto_0

    .restart local v5    # "slope":F
    :cond_6
    move v6, v8

    .line 152
    goto :goto_1

    .line 132
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 20
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 198
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->isEnabled()Z

    move-result v17

    if-nez v17, :cond_1

    .line 199
    const/4 v11, 0x1

    .line 330
    :cond_0
    :goto_0
    return v11

    .line 201
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mIsAnimating:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 202
    const/4 v11, 0x1

    goto :goto_0

    .line 205
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mRecentHelper:Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/systemui/vivo/common/upslide/recent/RecentHelper;->isPopupToolbarShowing()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 206
    const/4 v11, 0x1

    goto :goto_0

    .line 209
    :cond_3
    const/4 v11, 0x0

    .line 210
    .local v11, "result":Z
    const/4 v7, 0x0

    .line 211
    .local v7, "handled":Z
    const/16 v17, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mScrollDirection:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    .line 212
    invoke-super/range {p0 .. p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v11

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mAdjust:Lcom/android/systemui/vivo/common/upslide/utils/ScrollViewAdjust;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/upslide/utils/ScrollViewAdjust;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 214
    const/4 v7, 0x1

    .line 217
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    if-nez v17, :cond_5

    .line 218
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 220
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 222
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 223
    .local v4, "action":I
    const-string v17, "RecentScrollView"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "onTouchEvent: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", mScrollDirection = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mScrollDirection:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    packed-switch v4, :pswitch_data_0

    .line 330
    :cond_6
    :goto_1
    if-nez v7, :cond_0

    invoke-super/range {p0 .. p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v11

    goto/16 :goto_0

    .line 226
    :pswitch_0
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mActivePointerId:I

    goto :goto_1

    .line 229
    :pswitch_1
    const/16 v17, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mScrollDirection:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mRecentItemsContainer:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mRecentItemsContainer:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v17

    if-lez v17, :cond_6

    .line 234
    const/high16 v17, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mStartTransY:F

    move/from16 v18, v0

    cmpl-float v17, v17, v18

    if-nez v17, :cond_7

    .line 235
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v16, v0

    .line 236
    .local v16, "wl":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mRecentItemsContainer:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getLocationInWindow([I)V

    .line 237
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v17

    const/16 v18, 0x0

    aget v18, v16, v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mUnitLength:I

    move/from16 v18, v0

    div-int v9, v17, v18

    .line 238
    .local v9, "index":I
    const-string v17, "RecentScrollView"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "move recent item at index "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", arg1 = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", arg2 = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x0

    aget v19, v16, v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", arg3 = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mUnitLength:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mRecentItemsContainer:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mMovedChild:Landroid/view/View;

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mMovedChild:Landroid/view/View;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mMovedChild:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getWidth()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mSelectedUnitWidth:I

    .line 248
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->setDummyViewParams()V

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mDummyView:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ImageView;->getTranslationY()F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mStartTransY:F

    .line 250
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->bringRecentDummyViewToFront(Z)V

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mMovedChild:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f11027b

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 252
    .local v8, "imageView":Landroid/widget/ImageView;
    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    const/16 v18, 0x3e8

    invoke-virtual/range {v17 .. v18}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v17

    const/16 v18, 0x0

    cmpg-float v17, v17, v18

    if-gez v17, :cond_7

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mMovedChild:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f11027e

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 257
    .local v13, "textView":Landroid/widget/TextView;
    invoke-virtual {v13}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v17

    const-wide/16 v18, 0x32

    invoke-virtual/range {v17 .. v19}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 261
    .end local v8    # "imageView":Landroid/widget/ImageView;
    .end local v9    # "index":I
    .end local v13    # "textView":Landroid/widget/TextView;
    .end local v16    # "wl":[I
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    .line 262
    .local v5, "currRawY":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mStartRawY:F

    move/from16 v17, v0

    sub-float v6, v5, v17

    .line 263
    .local v6, "distance":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mMovedChild:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTranslationY()F

    move-result v17

    add-float v12, v17, v6

    .line 264
    .local v12, "target":F
    const/16 v17, 0x0

    cmpg-float v17, v17, v6

    if-gez v17, :cond_c

    .line 265
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mStartTransY:F

    move/from16 v17, v0

    add-float v17, v17, v6

    cmpl-float v17, v12, v17

    if-lez v17, :cond_8

    .line 266
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mStartTransY:F

    move/from16 v17, v0

    add-float v12, v17, v6

    .line 268
    :cond_8
    const/16 v17, 0x0

    cmpg-float v17, v17, v12

    if-gez v17, :cond_9

    .line 269
    const/4 v12, 0x0

    .line 275
    :cond_9
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mDummyView:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ImageView;->getTranslationY()F

    move-result v17

    cmpl-float v17, v12, v17

    if-eqz v17, :cond_b

    .line 276
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mMaxTranslation:F

    move/from16 v17, v0

    cmpg-float v17, v12, v17

    if-gez v17, :cond_a

    .line 277
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mMaxTranslation:F

    .line 280
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mDummyView:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 283
    :cond_b
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 271
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mStartTransY:F

    move/from16 v17, v0

    add-float v17, v17, v6

    cmpg-float v17, v12, v17

    if-gez v17, :cond_9

    .line 272
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mStartTransY:F

    move/from16 v17, v0

    add-float v12, v17, v6

    goto :goto_2

    .line 288
    .end local v5    # "currRawY":F
    .end local v6    # "distance":F
    .end local v12    # "target":F
    :pswitch_2
    const/16 v17, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mScrollDirection:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mMovedChild:Landroid/view/View;

    move-object/from16 v17, v0

    if-eqz v17, :cond_12

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    const/16 v18, 0x3e8

    invoke-virtual/range {v17 .. v18}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v15

    .line 291
    .local v15, "velocityY":F
    const-string v17, "RecentScrollView"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "ACTION_UP: mSimpleAnimStyle= "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mSimpleAnimStyle:Z

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", velocityY= "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", mMinFlingVelocity= "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mMinFlingVelocity:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", mMaxFlingVelocity= "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mMaxFlingVelocity:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", mMovedChild.TranslationY= "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mMovedChild:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTranslationY()F

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/systemui/vivo/common/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mDummyView:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ImageView;->getTranslationY()F

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mMovedChild:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getHeight()I

    move-result v18

    mul-int/lit8 v18, v18, 0x2

    div-int/lit8 v18, v18, 0x5

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    cmpl-float v17, v17, v18

    if-gtz v17, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mMinFlingVelocity:I

    move/from16 v17, v0

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpg-float v17, v15, v17

    if-gez v17, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mMaxFlingVelocity:I

    move/from16 v17, v0

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpl-float v17, v15, v17

    if-lez v17, :cond_11

    .line 298
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mMinFlingVelocity:I

    move/from16 v17, v0

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpg-float v17, v15, v17

    if-gez v17, :cond_f

    .line 299
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mMaxTranslation:F

    .line 300
    .local v10, "maxTranslation":F
    const/high16 v17, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mDummyView:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ImageView;->getTranslationY()F

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mMaxTranslation:F

    move/from16 v19, v0

    div-float v18, v18, v19

    sub-float v17, v17, v18

    const/high16 v18, 0x43480000    # 200.0f

    mul-float v14, v17, v18

    .line 310
    .local v14, "upDuration":F
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mDummyView:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mMovedChild:Landroid/view/View;

    move-object/from16 v18, v0

    float-to-int v0, v14

    move/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3, v10}, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->startThrowAnimation(Landroid/view/View;Landroid/view/View;IF)V

    .line 314
    .end local v10    # "maxTranslation":F
    .end local v14    # "upDuration":F
    :goto_4
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mScrollDirection:I

    .line 319
    .end local v15    # "velocityY":F
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    if-eqz v17, :cond_e

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/VelocityTracker;->recycle()V

    .line 321
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 323
    :cond_e
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mActivePointerId:I

    .line 324
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mScrollDirection:I

    .line 326
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 302
    .restart local v15    # "velocityY":F
    :cond_f
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mMaxTranslation:F

    .line 303
    .restart local v10    # "maxTranslation":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mMaxTranslation:F

    move/from16 v17, v0

    cmpg-float v17, v10, v17

    if-gez v17, :cond_10

    .line 304
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mMaxTranslation:F

    .line 306
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mDummyView:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/ImageView;->getTranslationY()F

    move-result v17

    sub-float v17, v10, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mMinTranslation:F

    move/from16 v18, v0

    move/from16 v0, v18

    neg-float v0, v0

    move/from16 v18, v0

    div-float v17, v17, v18

    const/high16 v18, 0x43480000    # 200.0f

    mul-float v17, v17, v18

    const/high16 v18, 0x40000000    # 2.0f

    div-float v14, v17, v18

    .restart local v14    # "upDuration":F
    goto/16 :goto_3

    .line 312
    .end local v10    # "maxTranslation":F
    .end local v14    # "upDuration":F
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mDummyView:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mMovedChild:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->startBackoffAnimation(Landroid/view/View;Landroid/view/View;)V

    goto/16 :goto_4

    .line 316
    .end local v15    # "velocityY":F
    :cond_12
    invoke-super/range {p0 .. p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_5

    .line 224
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public refreshAnimStyle(I)V
    .locals 1
    .param p1, "rotation"    # I

    .prologue
    .line 426
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mSimpleAnimStyle:Z

    .line 427
    return-void

    .line 426
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDummyView(Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "v"    # Landroid/widget/ImageView;

    .prologue
    .line 351
    iput-object p1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mDummyView:Landroid/widget/ImageView;

    .line 352
    return-void
.end method

.method public setDummyViewParams()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 355
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mMovedChild:Landroid/view/View;

    const v5, 0x7f11027a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 356
    .local v1, "itemView":Landroid/view/View;
    invoke-virtual {v1, v8}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 357
    invoke-virtual {v1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 358
    .local v0, "bitmapCache":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 359
    const-string v4, "RecentScrollView"

    const-string v5, "setDummyViewParams: bitmapCache is null, return!"

    invoke-static {v4, v5}, Lcom/android/systemui/vivo/common/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    :goto_0
    return-void

    .line 362
    :cond_0
    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mDummyViewBitmap:Landroid/graphics/Bitmap;

    .line 363
    invoke-virtual {v1, v7}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 364
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mDummyViewBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1

    .line 365
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mDummyView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mDummyViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 371
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mDummyView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 373
    .local v2, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mDummyViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 374
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mDummyViewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 376
    const/4 v4, 0x2

    new-array v3, v4, [I

    .line 377
    .local v3, "wl":[I
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mMovedChild:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 380
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/ExportUtils;->isRtlMode()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 381
    iget v4, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mWidth:I

    aget v5, v3, v7

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 386
    :goto_1
    aget v4, v3, v8

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 388
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mDummyView:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 389
    iget-object v4, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mDummyView:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 390
    invoke-direct {p0, v7}, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->showLockView(Z)V

    .line 391
    invoke-direct {p0, v7}, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->showTaskLockView(Z)V

    .line 392
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0xa

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iput v4, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mMinTranslation:F

    goto :goto_0

    .line 367
    .end local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "wl":[I
    :cond_1
    const-string v4, "RecentScrollView"

    const-string v5, "An error occured! Can not get the bitmap from the original icon\'s view!"

    invoke-static {v4, v5}, Lcom/android/systemui/vivo/common/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 383
    .restart local v2    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v3    # "wl":[I
    :cond_2
    aget v4, v3, v7

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_1
.end method

.method public setRecentItemsContainer(Landroid/widget/LinearLayout;)V
    .locals 1
    .param p1, "recentItemsContainer"    # Landroid/widget/LinearLayout;

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mRecentItemsContainer:Landroid/widget/LinearLayout;

    .line 112
    return-void
.end method

.method public setRootViewGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mRecentItemsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 116
    return-void
.end method

.method public setUnitCountLimit(I)V
    .locals 3
    .param p1, "limit"    # I

    .prologue
    .line 334
    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mUnitCountLimit:I

    if-eq v1, p1, :cond_1

    .line 335
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->getWidth()I

    move-result v0

    .line 336
    .local v0, "newWidth":I
    if-eqz v0, :cond_0

    iput v0, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mWidth:I

    .line 337
    :cond_0
    iput p1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mUnitCountLimit:I

    .line 338
    iget v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mWidth:I

    iget v2, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mUnitCountLimit:I

    div-int/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/vivo/common/upslide/recent/RecentScrollView;->mUnitLength:I

    .line 340
    .end local v0    # "newWidth":I
    :cond_1
    return-void
.end method
