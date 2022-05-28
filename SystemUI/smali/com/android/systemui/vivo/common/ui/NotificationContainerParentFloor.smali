.class public Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;
.super Landroid/widget/FrameLayout;
.source "NotificationContainerParentFloor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NotificationContainerParentFloor"

.field private static sInstance:Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;


# instance fields
.field private mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mBlurDrawable:Landroid/graphics/drawable/Drawable;

.field private mBlurManager:Lcom/android/systemui/vivo/common/utils/BlurManager;

.field private mBlurView:Landroid/view/View;

.field private mBottomAnimator:Landroid/animation/ValueAnimator;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCollapsing:Z

.field private mContext:Landroid/content/Context;

.field private final mCurrRotation:I

.field private mDragger:Lcom/android/systemui/vivo/common/ui/DragAnimationView;

.field private mDraggerHeight:I

.field private mFloorView:Landroid/view/View;

.field private mFlowHelper:Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;

.field private mHeightMeasureSpec:I

.field private mIsSpsOn:Z

.field private mLastEvent:I

.field private mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field private mReceiverRegistered:Z

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mWholeThemeStyle:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->sInstance:Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 90
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 62
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mIsSpsOn:Z

    .line 63
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mCollapsing:Z

    .line 82
    iput v2, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mScreenWidth:I

    .line 83
    iput v2, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mScreenHeight:I

    .line 85
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mLastEvent:I

    .line 86
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mCurrRotation:I

    .line 508
    iput-boolean v2, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mReceiverRegistered:Z

    .line 509
    new-instance v1, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor$4;-><init>(Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;)V

    iput-object v1, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 91
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 92
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    iput-object p1, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mContext:Landroid/content/Context;

    .line 95
    new-instance v1, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;

    invoke-direct {v1, p1}, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mFlowHelper:Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;

    .line 96
    iget-object v1, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/utils/BlurManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/utils/BlurManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mBlurManager:Lcom/android/systemui/vivo/common/utils/BlurManager;

    .line 98
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->initValues(Landroid/content/Context;)V

    .line 99
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->initViews(Landroid/content/Context;)V

    .line 102
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->registerReceiver(Landroid/content/Context;)V

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;Ljava/lang/Boolean;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->onFloorAnimateEnd(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mFloorView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->reloadBackgroundByThemeChanged(Z)V

    return-void
.end method

.method private animTo(FLandroid/animation/AnimatorListenerAdapter;)V
    .locals 4
    .param p1, "to"    # F
    .param p2, "adapter"    # Landroid/animation/AnimatorListenerAdapter;

    .prologue
    .line 276
    const-string v0, "NotificationContainerParentFloor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animTo, to = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mHeightMeasureSpec = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mHeightMeasureSpec:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget v0, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mHeightMeasureSpec:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setHeightAnimatorNull()V

    .line 328
    :goto_0
    return-void

    .line 284
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mCollapsing:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->isAnimatorRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 285
    const-string v0, "NotificationContainerParentFloor"

    const-string v1, "Panel is collapsing, return"

    invoke-static {v0, v1}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mBottomAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    .line 290
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mBottomAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 293
    :cond_2
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mHeightMeasureSpec:I

    int-to-float v2, v2

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mBottomAnimator:Landroid/animation/ValueAnimator;

    .line 294
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mBottomAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor$1;-><init>(Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 306
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mBottomAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor$2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor$2;-><init>(Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 323
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mBottomAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mHeightMeasureSpec:I

    int-to-float v1, v1

    sub-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/utils/DisplayUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x43960000    # 300.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 324
    if-eqz p2, :cond_3

    .line 327
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mBottomAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method private changeDragTipToArrow()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 414
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mWholeThemeStyle:Z

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mDragger:Lcom/android/systemui/vivo/common/ui/DragAnimationView;

    const/4 v1, 0x1

    const v2, 0x7f0204ad

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->setTipArrowState(ZII)V

    .line 419
    :goto_0
    return-void

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mDragger:Lcom/android/systemui/vivo/common/ui/DragAnimationView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->changeToArrow(I)V

    goto :goto_0
.end method

.method private changeDragTipToLine()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 406
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mWholeThemeStyle:Z

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mDragger:Lcom/android/systemui/vivo/common/ui/DragAnimationView;

    const/4 v1, 0x1

    const v2, 0x7f0204ae

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->setTipArrowState(ZII)V

    .line 411
    :goto_0
    return-void

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mDragger:Lcom/android/systemui/vivo/common/ui/DragAnimationView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->changeToLine(I)V

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    sget-object v0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->sInstance:Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;

    invoke-direct {v0, p0}, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->sInstance:Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;

    .line 58
    :cond_0
    sget-object v0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->sInstance:Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;

    return-object v0
.end method

.method private initValues(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 108
    invoke-static {p1}, Lcom/android/systemui/vivo/common/utils/DisplayUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mScreenWidth:I

    .line 109
    invoke-static {p1}, Lcom/android/systemui/vivo/common/utils/DisplayUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mScreenHeight:I

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0126

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mDraggerHeight:I

    .line 111
    invoke-static {p1}, Lcom/android/systemui/vivo/common/utils/FunctionConfig;->isWholeThemeStyle(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mWholeThemeStyle:Z

    .line 112
    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, -0x1

    .line 115
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mBlurView:Landroid/view/View;

    .line 116
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mBlurView:Landroid/view/View;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mScreenHeight:I

    invoke-direct {v1, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mBlurView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->addView(Landroid/view/View;)V

    .line 119
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mFloorView:Landroid/view/View;

    .line 120
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mFloorView:Landroid/view/View;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mWholeThemeStyle:Z

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mFloorView:Landroid/view/View;

    const v1, 0x7f0205bd

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 126
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mFloorView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->addView(Landroid/view/View;)V

    .line 128
    new-instance v0, Lcom/android/systemui/vivo/common/ui/DragAnimationView;

    invoke-direct {v0, p1}, Lcom/android/systemui/vivo/common/ui/DragAnimationView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mDragger:Lcom/android/systemui/vivo/common/ui/DragAnimationView;

    .line 129
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mDragger:Lcom/android/systemui/vivo/common/ui/DragAnimationView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mDraggerHeight:I

    invoke-direct {v1, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mDragger:Lcom/android/systemui/vivo/common/ui/DragAnimationView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->addView(Landroid/view/View;)V

    .line 131
    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mFloorView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private onFloorAnimateEnd(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "collapse"    # Ljava/lang/Boolean;

    .prologue
    .line 244
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isUpSlideShowing()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->collapseUpSlideView()V

    .line 249
    :cond_0
    return-void
.end method

.method private reflushBlurRes()V
    .locals 3

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mBlurDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->clearBlurDrawable()V

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mBlurManager:Lcom/android/systemui/vivo/common/utils/BlurManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/vivo/common/utils/BlurManager;->getBlurBackground(Landroid/graphics/Rect;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mBlurDrawable:Landroid/graphics/drawable/Drawable;

    .line 222
    return-void
.end method

.method private refreshBg(Z)V
    .locals 4
    .param p1, "isWholeTheme"    # Z

    .prologue
    .line 458
    new-instance v0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor$3;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor$3;-><init>(Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;Z)V

    const-wide/16 v2, 0x12c

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 479
    return-void
.end method

.method private refreshScreenMetrics()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 422
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/utils/DisplayUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mScreenWidth:I

    .line 423
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/utils/DisplayUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mScreenHeight:I

    .line 424
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mBlurView:Landroid/view/View;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mScreenHeight:I

    invoke-direct {v1, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 425
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mFloorView:Landroid/view/View;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mScreenHeight:I

    invoke-direct {v1, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 426
    return-void
.end method

.method private registerReceiver(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 498
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 499
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "intent.action.theme.changed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 500
    iget-object v1, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mReceiverRegistered:Z

    .line 501
    return-void

    .line 500
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private reloadBackgroundByThemeChanged(Z)V
    .locals 5
    .param p1, "forceReplace"    # Z

    .prologue
    .line 485
    iget-object v1, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/utils/FunctionConfig;->isWholeThemeStyle(Landroid/content/Context;)Z

    move-result v0

    .line 486
    .local v0, "isWholeTheme":Z
    const-string v1, "NotificationContainerParentFloor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reloadBackgroundByThemeChanged, mWholeThemeStyle = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mWholeThemeStyle:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isWholeTheme = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/vivo/common/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    if-nez p1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mWholeThemeStyle:Z

    if-eq v0, v1, :cond_2

    .line 489
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->refreshBg(Z)V

    .line 490
    if-nez v0, :cond_1

    .line 491
    iget-object v1, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mDragger:Lcom/android/systemui/vivo/common/ui/DragAnimationView;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mDragger:Lcom/android/systemui/vivo/common/ui/DragAnimationView;

    const/4 v3, -0x1

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->setTipArrowState(ZII)V

    .line 493
    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mWholeThemeStyle:Z

    .line 495
    :cond_2
    return-void
.end method

.method private unregisterReceiver(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 504
    iget-boolean v0, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 506
    :cond_0
    return-void
.end method

.method private updateViewsBlurView(I)V
    .locals 2
    .param p1, "blurLevel"    # I

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mBlurDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mBlurDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 213
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mBlurView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mBlurView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mBlurDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public animateCollapse(Landroid/animation/AnimatorListenerAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/animation/AnimatorListenerAdapter;

    .prologue
    .line 257
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->changeDragTipToLine()V

    .line 259
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->animTo(FLandroid/animation/AnimatorListenerAdapter;)V

    .line 260
    return-void
.end method

.method public animateExpand()V
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/vivo/common/utils/DisplayUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->animTo(FLandroid/animation/AnimatorListenerAdapter;)V

    .line 253
    return-void
.end method

.method public clearBlurDrawable()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 226
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mBlurView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mBlurView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mBlurDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mBlurDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 231
    iput-object v1, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mBlurDrawable:Landroid/graphics/drawable/Drawable;

    .line 233
    :cond_1
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 348
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 349
    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mIsSpsOn:Z

    if-eqz v1, :cond_0

    .line 354
    :goto_0
    return-void

    .line 351
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mDraggerHeight:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->getPaddingBottom()I

    move-result v2

    sub-int v0, v1, v2

    .line 352
    .local v0, "off":I
    const/4 v1, 0x0

    int-to-float v2, v0

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 353
    iget-object v1, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mFlowHelper:Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;

    invoke-virtual {v1, p1}, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->drawFlowText(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public getBottomPosition()F
    .locals 1

    .prologue
    .line 236
    iget v0, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mHeightMeasureSpec:I

    int-to-float v0, v0

    return v0
.end method

.method public getFloorBottomContentHeight()F
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mFlowHelper:Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;

    invoke-virtual {v0}, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->getFloorBottomContentHeight()F

    move-result v0

    return v0
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 369
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 370
    .local v0, "action":I
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mCollapsing:Z

    .line 371
    iget v1, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mLastEvent:I

    if-ne v1, v0, :cond_1

    .line 403
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    iput v0, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mLastEvent:I

    .line 374
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 377
    :pswitch_0
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->changeDragTipToLine()V

    goto :goto_0

    .line 381
    :pswitch_1
    iget v1, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mHeightMeasureSpec:I

    iget v2, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mScreenHeight:I

    if-lt v1, v2, :cond_2

    .line 382
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->changeDragTipToArrow()V

    .line 386
    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mIsSpsOn:Z

    if-nez v1, :cond_0

    .line 391
    iget-object v1, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mFlowHelper:Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->touchingInsideTip(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mFlowHelper:Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->touchingValid(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 393
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mCollapsing:Z

    .line 394
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->animateCollapse(Landroid/animation/AnimatorListenerAdapter;)V

    .line 395
    iget-object v1, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mFlowHelper:Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->playAudio()V

    .line 396
    iget-object v1, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mFlowHelper:Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->startNetSpeedDetailActivty()V

    goto :goto_0

    .line 374
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isAnimatorRunning()Z
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mBottomAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mBottomAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    const/4 v0, 0x1

    .line 266
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFullyExpand()Z
    .locals 2

    .prologue
    .line 339
    iget v0, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mHeightMeasureSpec:I

    iget-object v1, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/utils/DisplayUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 431
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->refreshScreenMetrics()V

    .line 436
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->reloadBackgroundByThemeChanged(Z)V

    .line 440
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mFlowHelper:Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mFlowHelper:Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 442
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 333
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 334
    iget v0, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mHeightMeasureSpec:I

    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 335
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->setMeasuredDimension(II)V

    .line 336
    return-void
.end method

.method public setBackgroundBlur()V
    .locals 1

    .prologue
    .line 362
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->reflushBlurRes()V

    .line 363
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->updateViewsBlurView(I)V

    .line 364
    return-void
.end method

.method public setBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 2
    .param p1, "bar"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 135
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mFlowHelper:Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;

    iget-object v1, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, v1}, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->setStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 136
    return-void
.end method

.method public setBottomPosition(F)V
    .locals 5
    .param p1, "p"    # F

    .prologue
    const/4 v3, 0x1

    .line 147
    float-to-int v0, p1

    .line 149
    .local v0, "heightSpec":I
    iget v1, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mScreenHeight:I

    iget-object v2, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/vivo/common/utils/DisplayUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 150
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->refreshScreenMetrics()V

    .line 153
    :cond_0
    iget v1, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mScreenHeight:I

    if-le v0, v1, :cond_1

    .line 154
    iget v0, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mScreenHeight:I

    .line 157
    :cond_1
    iget v1, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mHeightMeasureSpec:I

    if-ne v1, v0, :cond_2

    .line 205
    :goto_0
    return-void

    .line 160
    :cond_2
    iget v1, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mHeightMeasureSpec:I

    if-gtz v1, :cond_7

    float-to-int v1, p1

    if-lez v1, :cond_7

    .line 161
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/StateUtils;->getInstance()Lcom/android/systemui/vivo/common/utils/StateUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/utils/StateUtils;->isKeyguardShowingWithoutShade()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 162
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/StateUtils;->getInstance()Lcom/android/systemui/vivo/common/utils/StateUtils;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/systemui/vivo/common/utils/StateUtils;->setStatsBarState(I)V

    .line 163
    iget-object v1, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->exitKeyguardState(Z)V

    .line 176
    :cond_3
    :goto_1
    iput v0, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mHeightMeasureSpec:I

    .line 178
    iget-object v2, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mDragger:Lcom/android/systemui/vivo/common/ui/DragAnimationView;

    iget v1, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mHeightMeasureSpec:I

    iget v3, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mDraggerHeight:I

    if-le v1, v3, :cond_9

    iget v1, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mHeightMeasureSpec:I

    iget v3, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mDraggerHeight:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    :goto_2
    invoke-virtual {v2, v1}, Lcom/android/systemui/vivo/common/ui/DragAnimationView;->setTranslationY(F)V

    .line 179
    iget-object v1, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mFloorView:Landroid/view/View;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    iget v4, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mHeightMeasureSpec:I

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    iget-object v1, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mBlurDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_4

    .line 192
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->reflushBlurRes()V

    .line 194
    :cond_4
    iget v1, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mHeightMeasureSpec:I

    mul-int/lit16 v1, v1, 0x2710

    iget v2, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mScreenHeight:I

    div-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->updateViewsBlurView(I)V

    .line 198
    iget v1, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mHeightMeasureSpec:I

    if-nez v1, :cond_a

    .line 199
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mCollapsing:Z

    .line 204
    :cond_5
    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->requestLayout()V

    goto :goto_0

    .line 164
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->getState()I

    move-result v1

    if-ne v1, v3, :cond_3

    .line 165
    iget-object v1, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->exitKeyguardState(Z)V

    goto :goto_1

    .line 167
    :cond_7
    iget v1, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mHeightMeasureSpec:I

    if-lez v1, :cond_3

    float-to-int v1, p1

    if-gtz v1, :cond_3

    .line 168
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/StateUtils;->getInstance()Lcom/android/systemui/vivo/common/utils/StateUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/utils/StateUtils;->isKeyguardShowingWithShade()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 169
    invoke-static {}, Lcom/android/systemui/vivo/common/utils/StateUtils;->getInstance()Lcom/android/systemui/vivo/common/utils/StateUtils;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/systemui/vivo/common/utils/StateUtils;->setStatsBarState(I)V

    .line 170
    iget-object v1, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->enterKeyguardState(Z)V

    goto :goto_1

    .line 171
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->getState()I

    move-result v1

    if-ne v1, v3, :cond_3

    .line 172
    iget-object v1, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/systemui/vivo/common/notification/KeyguardNotificationManager;->enterKeyguardState(Z)V

    goto/16 :goto_1

    .line 178
    :cond_9
    iget v1, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mDraggerHeight:I

    neg-int v1, v1

    int-to-float v1, v1

    goto :goto_2

    .line 200
    :cond_a
    iget v1, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mHeightMeasureSpec:I

    iget v2, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mScreenHeight:I

    if-lt v1, v2, :cond_5

    .line 201
    invoke-direct {p0}, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->changeDragTipToArrow()V

    goto :goto_3
.end method

.method public setNotificationPanelView(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .locals 0
    .param p1, "npv"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 140
    return-void
.end method

.method public setSimCardFlow(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "flow1"    # Ljava/lang/String;
    .param p2, "flow2"    # Ljava/lang/String;

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mFlowHelper:Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/vivo/common/ui/SimcardFlowHelper;->setSimCardFlow(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    return-void
.end method

.method public setSpsOn(Z)V
    .locals 0
    .param p1, "mIsSpsOn"    # Z

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mIsSpsOn:Z

    .line 144
    return-void
.end method

.method public stopAnimator()V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mBottomAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mBottomAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/android/systemui/vivo/common/ui/NotificationContainerParentFloor;->mBottomAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 273
    :cond_0
    return-void
.end method
